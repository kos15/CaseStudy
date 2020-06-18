-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: Bank
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AccountStatus`
--

DROP TABLE IF EXISTS `AccountStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AccountStatus` (
  `CustomerSSNId` int NOT NULL,
  `AccountId` int DEFAULT NULL,
  `AccountType` varchar(20) DEFAULT NULL,
  `AccountStatus` varchar(9) DEFAULT NULL,
  `Message` varchar(40) DEFAULT NULL,
  `LastUpdated` datetime NOT NULL,
  PRIMARY KEY (`CustomerSSNId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AccountStatus`
--

LOCK TABLES `AccountStatus` WRITE;
/*!40000 ALTER TABLE `AccountStatus` DISABLE KEYS */;
INSERT INTO `AccountStatus` VALUES (165,0,'','Pending','Customer Created successfully','2020-06-17 19:35:36'),(555,0,'','Pending','Customer Created successfully','2020-06-17 19:35:36'),(666,12,'Current Account','Active','Account Created Successfully..','2020-06-17 21:30:23'),(777,10,'Savings Account','Active','Account Created Successfully..','2020-06-17 19:36:13'),(1234,4,'Savings Account','Active','Account Created Successfully..','2020-06-17 19:36:13'),(3598,0,'','Pending','Customer Created successfully','2020-06-17 19:35:36'),(4568,9,'Current Account','Active','Account Created Successfully..','2020-06-17 20:39:55'),(5249,0,'','Pending','Customer Created successfully','2020-06-17 19:35:36'),(5684,0,'','Pending','Customer Created successfully','2020-06-17 19:35:36'),(7688,0,'','Pending','Customer Created successfully','2020-06-17 19:35:36'),(18961,0,'','Pending','Customer Created successfully','2020-06-17 19:35:36'),(100091,0,'','Pending','Customer Created successfully','2020-06-17 19:35:36');
/*!40000 ALTER TABLE `AccountStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Accounts`
--

DROP TABLE IF EXISTS `Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accounts` (
  `AccountId` int NOT NULL AUTO_INCREMENT,
  `CustomerSSNId` int NOT NULL,
  `AccountType` varchar(20) NOT NULL,
  `DepositeAmount` float(10,3) DEFAULT NULL,
  `AccountCreated` datetime DEFAULT CURRENT_TIMESTAMP,
  `Balance` float(10,2) NOT NULL DEFAULT (0.0),
  PRIMARY KEY (`AccountId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts`
--

LOCK TABLES `Accounts` WRITE;
/*!40000 ALTER TABLE `Accounts` DISABLE KEYS */;
INSERT INTO `Accounts` VALUES (4,1234,'Savings Account',8000.000,'2020-06-15 21:28:59',8000.00),(9,4568,'Current Account',10000.000,'2020-06-16 02:22:45',9400.00),(10,777,'Savings Account',3000.000,'2020-06-16 21:34:03',3000.00),(12,666,'Current Account',50000.000,'2020-06-16 22:12:24',62010.00);
/*!40000 ALTER TABLE `Accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_account_insert` AFTER INSERT ON `Accounts` FOR EACH ROW update AccountStatus set AccountId=NEW.AccountId, AccountType=NEW.AccountType, AccountStatus="Active", Message="Account Created Successfully..", LastUpdated=CURRENT_TIMESTAMP where AccountStatus.CustomerSSNId=NEW.CustomerSSNId */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `CustomerSSNId` int NOT NULL,
  `CustomerName` varchar(30) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Address1` varchar(50) DEFAULT NULL,
  `Address2` varchar(50) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CustomerSSNId`),
  UNIQUE KEY `CustomerID` (`CustomerID`),
  UNIQUE KEY `CustomerID_2` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=100002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (165,'Namrata',22,'Hatnur Dam','Ainpur','Jalgaon','Maharashtra',85),(555,'Rajkumar Mishra',50,'Plot no.51 Trupti Corner','Ayodhya Nagar, Old MIDC','Jalgaon','Maharashtra',100000),(666,'Asha',40,'Plot no.51 Trupti Corner','Ayodhya Nagar, Old MIDC','Jalgaon','Maharashtra',100001),(777,'ABCD',20,'jhVJ','hgvjhv','Jalgaon','Maharashtra',100),(1234,'Satish Sharma',24,'Plot no.52 Mahadev nagar','Ayodhya Nagar, Old MIDC','Jalgaon','Maharashtra',86),(3598,'Om Mishra',15,'Ayodhya Nagar','vh,jgv','bhgg,','nvj, ',87),(4568,'Koustubh Mishra',22,'Plot no.51 Trupti Corner','Ayodhya Nagar, Old MIDC','Jalgaon','Maharashtra',88),(5249,'Asha Mishra',48,'Ronak Colony','Ayodhya nagar','Jalgaon','Maharashtra',90),(5684,'Ankita',22,'SSBT College','Bambhori','Jalgaon','Maharashtra',91),(7688,'Priyanka',22,'Ganesh Colony','xyz','Jalgaon','Maharashtra',92),(18961,'Ritesh Patil',22,'SSBT College','','Jalgaon','Maharashtra',93),(100091,'Ganesh',22,'Jalgaon','asddf','Jalgaon','Maharashtra',95);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_customer_insert` AFTER INSERT ON `Customer` FOR EACH ROW insert into Bank.AccountStatus(CustomerSSNID,AccountID,AccountType,AccountStatus,Message,LastUpdated) values(new.CustomerSSNID,0,"","Pending","Customer Created successfully",CURRENT_TIMESTAMP) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Transactions`
--

DROP TABLE IF EXISTS `Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transactions` (
  `TID` int NOT NULL AUTO_INCREMENT,
  `SenderAccId` int DEFAULT NULL,
  `ReciverAccId` int DEFAULT NULL,
  `Amount` float(10,2) NOT NULL,
  `Time` datetime NOT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB AUTO_INCREMENT=10000005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transactions`
--

LOCK TABLES `Transactions` WRITE;
/*!40000 ALTER TABLE `Transactions` DISABLE KEYS */;
INSERT INTO `Transactions` VALUES (10000000,9,12,1.00,'2020-06-17 19:45:52'),(10000001,0,9,1.00,'2020-06-17 19:45:52'),(10000002,12,0,22.00,'2020-06-17 19:45:52'),(10000003,9,0,100.00,'2020-06-17 20:38:44'),(10000004,0,12,10.00,'2020-06-17 21:29:43');
/*!40000 ALTER TABLE `Transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `uid` int NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (101,'Kos','Koustubh@91'),(102,'Ganesh','Ganesh@123'),(103,'Priyanka','Priyanka@123'),(104,'Ankita','Ankita@123'),(105,'Ritesh','Ritesh@123'),(106,'Koustubh91','koustubh91'),(107,'KOS@91','kos@91');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-18 12:54:38
