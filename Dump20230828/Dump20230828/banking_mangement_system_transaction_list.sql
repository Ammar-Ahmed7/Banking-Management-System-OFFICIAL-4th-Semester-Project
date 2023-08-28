-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: banking_mangement_system
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `transaction_list`
--

DROP TABLE IF EXISTS `transaction_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_list` (
  `accNo` varchar(40) DEFAULT NULL,
  `Name` varchar(45) NOT NULL,
  `deposit` varchar(45) DEFAULT NULL,
  `withdraw` varchar(45) DEFAULT NULL,
  `rem_balance` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Name`),
  KEY `accNo_idx` (`accNo`),
  CONSTRAINT `accNo` FOREIGN KEY (`accNo`) REFERENCES `clients` (`accNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_list`
--

LOCK TABLES `transaction_list` WRITE;
/*!40000 ALTER TABLE `transaction_list` DISABLE KEYS */;
INSERT INTO `transaction_list` VALUES ('PKAM002','Ammar Ahmed','1000.0','900.0','10000.0'),('PKAM002','Ammar Zaman','-100.0','10000.0','9900.0'),(NULL,'Saad','1000.0',NULL,'5000.0'),('PKAM001','Zaman Designs','650.0','1000.0','4170.0'),('PKAM001','Zaman Khan','1000.0','170.0','10000.0');
/*!40000 ALTER TABLE `transaction_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-28 18:01:09
