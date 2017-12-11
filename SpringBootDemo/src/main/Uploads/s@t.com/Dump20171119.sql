-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: kayak
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `carDetails`
--

DROP TABLE IF EXISTS `carDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carDetails` (
  `carID` int(11) NOT NULL AUTO_INCREMENT,
  `carName` varchar(45) NOT NULL,
  `operator` varchar(45) NOT NULL,
  `fromCity` varchar(45) NOT NULL,
  `toCity` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `seatsCount` int(11) NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  PRIMARY KEY (`carID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carDetails`
--

LOCK TABLES `carDetails` WRITE;
/*!40000 ALTER TABLE `carDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `carDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightDetails`
--

DROP TABLE IF EXISTS `flightDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flightDetails` (
  `flightID` int(11) NOT NULL AUTO_INCREMENT,
  `flightName` varchar(45) NOT NULL,
  `operator` varchar(45) NOT NULL,
  `fromCity` varchar(45) NOT NULL,
  `toCity` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `seatsCount` int(11) NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  PRIMARY KEY (`flightID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightDetails`
--

LOCK TABLES `flightDetails` WRITE;
/*!40000 ALTER TABLE `flightDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `flightDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelDetails`
--

DROP TABLE IF EXISTS `hotelDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotelDetails` (
  `hotelID` int(11) NOT NULL AUTO_INCREMENT,
  `hotelName` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `time` time NOT NULL,
  `roomCount` int(11) NOT NULL,
  `guestCount` int(11) NOT NULL,
  `reviews` varchar(45) DEFAULT NULL,
  `amount` decimal(5,2) NOT NULL,
  PRIMARY KEY (`hotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelDetails`
--

LOCK TABLES `hotelDetails` WRITE;
/*!40000 ALTER TABLE `hotelDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotelDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionCars`
--

DROP TABLE IF EXISTS `transactionCars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionCars` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `carID` int(11) NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `noOfCars` int(11) NOT NULL,
  `cardNo` varchar(45) NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionCars`
--

LOCK TABLES `transactionCars` WRITE;
/*!40000 ALTER TABLE `transactionCars` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionCars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionFlights`
--

DROP TABLE IF EXISTS `transactionFlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionFlights` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `flightID` int(11) NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `noOfSeats` int(11) NOT NULL,
  `cardNo` varchar(20) NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionFlights`
--

LOCK TABLES `transactionFlights` WRITE;
/*!40000 ALTER TABLE `transactionFlights` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionFlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionHotels`
--

DROP TABLE IF EXISTS `transactionHotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionHotels` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `hotelID` int(11) NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `noOfRooms` int(11) NOT NULL,
  `cardNo` varchar(20) NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionHotels`
--

LOCK TABLES `transactionHotels` WRITE;
/*!40000 ALTER TABLE `transactionHotels` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionHotels` ENABLE KEYS */;
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
  `password` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2017-11-19 18:38:51
