-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: app
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'DEFAULT','2026-09-03 14:58:05','2026-09-03 14:58:05'),(5,'Jedzenie','2026-09-04 09:43:54','2026-09-04 09:43:54');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20260903125313','2026-09-03 12:53:58',141),('DoctrineMigrations\\Version20260903125900','2026-09-03 12:59:47',743),('DoctrineMigrations\\Version20260903151228','2026-09-03 15:47:29',180);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Budyń',12.34,'2026-09-03 14:03:21','2026-09-04 09:39:31'),(2,'Budyń proteinowy',12.34,'2026-09-03 14:03:59','2026-09-03 16:39:12'),(3,'Kisiel',2.34,'2026-09-04 09:37:30','2026-09-04 09:46:08'),(5,'Budyń mango-marakuja',3.45,'2026-09-04 09:53:08','2026-09-04 09:53:08'),(6,'Budyń mango-marakuja',3.45,'2026-09-04 10:05:18','2026-09-04 10:05:18'),(7,'Budyń mango-marakuja',3.45,'2026-09-04 10:11:06','2026-09-04 10:11:06'),(8,'Budyń mango-marakuja',3.45,'2026-09-04 10:11:14','2026-09-04 10:11:14'),(9,'Budyń mango-marakuja',3.45,'2026-09-04 10:13:48','2026-09-04 10:13:48'),(10,'Budyń mango-marakuja',3.45,'2026-09-04 10:17:59','2026-09-04 10:17:59'),(11,'Budyń mango-marakuja',3.45,'2026-09-04 10:18:03','2026-09-04 10:18:03'),(16,'Żeberka w sosie',7.77,'2026-09-04 10:33:26','2026-09-04 10:33:26'),(17,'Żeberka w sosie',7.77,'2026-09-04 10:36:13','2026-09-04 10:36:13'),(18,'Żeberka w sosie',7.77,'2026-09-04 10:36:18','2026-09-04 10:36:18'),(19,'Żeberka w sosie',7.77,'2026-09-04 10:36:43','2026-09-04 10:36:43'),(20,'Żeberka w sosie',7.77,'2026-09-04 10:37:11','2026-09-04 10:37:11'),(31,'Żeberka w sosie',7.77,'2026-09-04 10:42:27','2026-09-04 10:42:27'),(32,'Żeberka w sosie',7.77,'2026-09-04 10:45:45','2026-09-04 10:45:45'),(33,'Żeberka w sosie',7.77,'2026-09-04 10:45:51','2026-09-04 10:45:51'),(34,'Żeberka w sosie',7.77,'2026-09-04 10:48:36','2026-09-04 10:48:36'),(35,'Żeberka w sosie pomidorowym',7.77,'2026-09-04 10:48:58','2026-09-04 11:44:39'),(36,'Żeberka w sosie',7.77,'2026-09-04 10:50:50','2026-09-04 10:50:50'),(38,'Żeberka w sosie',7.77,'2026-09-04 11:02:21','2026-09-04 11:02:21'),(39,'Żeberka w sosie',7.77,'2026-09-04 11:02:21','2026-09-04 11:02:21'),(40,'Żeberka w sosie',7.77,'2026-09-04 11:03:24','2026-09-04 11:03:24'),(41,'Żeberka w sosie',7.77,'2026-09-04 11:30:38','2026-09-04 11:30:38'),(42,'Żeberka w sosie',7.77,'2026-09-04 11:40:16','2026-09-04 11:40:16'),(47,'Żeberka w sosie',7.77,'2026-09-04 12:19:17','2026-09-04 12:19:17');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `IDX_CDFC73564584665A` (`product_id`),
  KEY `IDX_CDFC735612469DE2` (`category_id`),
  CONSTRAINT `FK_CDFC735612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CDFC73564584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (3,5),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(16,1),(17,1),(18,1),(19,1),(20,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(38,1),(39,1),(40,1),(41,1),(42,1),(47,1);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-04 12:25:19
