-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: book_lending
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `ISBN(PK)` varchar(20) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `Introduction` text,
  PRIMARY KEY (`ISBN(PK)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('9789862763815','資料庫系統概論','Ramez Elmasri、Shamkant B. Navathe','介紹資料庫系統的基本概念、設計原則和應用。'),('9789862766342','Java 程式設計','Paul Deitel、Harvey Deitel','全面涵蓋 Java 程式設計的基礎知識，適合初學者入門。'),('9789863798478','資料結構與演算法使用 Python','柯博文（Bill Carter）','學習如何使用 Python 實作常見的資料結構與演算法。'),('9789864343366','JavaScript DOM 高級程式設計','佩尔·米勒（Pello Xabier Altadill Izura）','深入理解 JavaScript DOM 操作，掌握高級網頁程式設計技巧。'),('9789864343946','麻省理工學院演算法筆記','Thomas H. Cormen、Charles E. Leiserson、Ronald L. Rivest、Clifford Stein','經典的演算法參考書籍，提供詳盡的演算法介紹與分析。'),('9789864344868','C# 程式設計','Ian Griffiths','介紹 C# 語言與 .NET 平台的基礎知識和程式設計概念。'),('9789864345810','程式設計進階實戰：使用 Python','畢恆達','進階 Python 程式設計的實戰指南，包含設計模式、程式效能優化等主題。'),('9789864765857','Python 自學聖經','蔡明志','適合初學者的 Python 自學教材，從基礎到進階輕鬆掌握 Python 程式語言。'),('9789864778918','JavaScript 高效能程式設計','尼古拉斯·泽卡斯（Nicholas C. Zakas）','本書將幫助你了解如何優化 JavaScript 程式碼，以提升網頁應用程式的速度與效能。'),('9789865024473','深度學習入門：使用 Python','斎藤康毅','深入淺出解說深度學習的基礎概念與實作方法，以 Python 實作神經網路模型。');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowing record`
--

DROP TABLE IF EXISTS `borrowing record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowing record` (
  `User Id(index 1)` int NOT NULL,
  `Inventory Id(index 2)` int NOT NULL,
  `Borrowing Time` datetime DEFAULT NULL,
  `Return Time` datetime DEFAULT NULL,
  PRIMARY KEY (`User Id(index 1)`,`Inventory Id(index 2)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowing record`
--

LOCK TABLES `borrowing record` WRITE;
/*!40000 ALTER TABLE `borrowing record` DISABLE KEYS */;
/*!40000 ALTER TABLE `borrowing record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `Inventory Id(PK)` int NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(20) NOT NULL,
  `Store Time` datetime DEFAULT NULL,
  `Status` enum('在庫','出借中','整理中(歸還後未入庫)','遺失','損毀','廢棄') DEFAULT '在庫',
  PRIMARY KEY (`Inventory Id(PK)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `User Id(PK)` int NOT NULL AUTO_INCREMENT,
  `Phone Number` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `User Name` varchar(255) NOT NULL,
  `Registration Time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Last Login Time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`User Id(PK)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 16:13:24
