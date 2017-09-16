-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: Elem3ntalDevelopment
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.10.1

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
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `Mess_id` int(11) NOT NULL AUTO_INCREMENT,
  `Mess_email` varchar(45) NOT NULL,
  `Mess_text` text NOT NULL,
  `Mess_date` datetime NOT NULL,
  PRIMARY KEY (`Mess_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'javier08@hotmail.com','Hola Javier!','2017-03-23 00:24:51'),(2,'javier08@hotmail.com','Hola Javier!','2017-03-23 00:24:51'),(3,'correo','un lindo mensje','2017-03-23 19:47:37'),(4,'javier.rodriguez.benavente@gmail.com','este es un mensaje de prueba!','2017-03-24 01:34:48'),(5,'javier.rodriguez.benavente@gmail.com','este es un mensaje de prueba!','2017-03-24 01:35:41');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitas`
--

DROP TABLE IF EXISTS `visitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitas` (
  `visitas_id` int(11) NOT NULL AUTO_INCREMENT,
  `visitas_IP` varchar(70) NOT NULL,
  `visitas_date` datetime NOT NULL,
  PRIMARY KEY (`visitas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitas`
--

LOCK TABLES `visitas` WRITE;
/*!40000 ALTER TABLE `visitas` DISABLE KEYS */;
INSERT INTO `visitas` VALUES (1,'asdasd','2017-03-22 23:47:20'),(2,'25.62.86.177','2017-03-22 23:50:45'),(3,'191.126.99.160','2017-03-22 23:51:43'),(4,'25.62.86.177','2017-03-23 00:20:45'),(5,'191.126.99.160','2017-03-23 00:22:08'),(6,'25.62.86.177','2017-03-23 09:15:26'),(7,'25.62.86.177','2017-03-23 11:47:16'),(8,'192.168.1.35','2017-03-23 12:49:29'),(9,'192.168.1.35','2017-03-23 12:49:40'),(10,'191.126.227.42','2017-03-23 17:34:48'),(11,'191.126.227.42','2017-03-23 17:41:56'),(12,'191.126.227.42','2017-03-23 17:42:11'),(13,'191.126.227.42','2017-03-23 17:42:57'),(14,'191.126.227.42','2017-03-23 17:53:04'),(15,'191.126.227.42','2017-03-23 18:00:59'),(16,'191.126.227.42','2017-03-23 18:01:06'),(17,'186.67.134.66','2017-03-23 18:41:06'),(18,'186.67.134.66','2017-03-23 18:42:03'),(19,'191.126.227.42','2017-03-23 18:43:26'),(20,'191.126.227.42','2017-03-23 19:47:06'),(21,'186.67.134.66','2017-03-23 19:47:15'),(22,'25.62.86.177','2017-03-23 21:50:53'),(23,'25.62.86.177','2017-03-24 01:33:16'),(24,'190.196.69.194','2017-03-24 09:03:05'),(25,'25.62.86.177','2017-03-24 21:53:39'),(26,'25.62.86.177','2017-03-25 16:38:48'),(27,'25.62.86.177','2017-03-26 20:52:13'),(28,'25.62.86.177','2017-03-26 20:54:03'),(29,'25.62.86.177','2017-03-31 19:53:56'),(30,'25.62.86.177','2017-04-10 17:08:57'),(31,'25.62.86.177','2017-04-10 17:09:48'),(32,'25.62.86.177','2017-04-10 17:10:03'),(33,'25.62.86.177','2017-04-10 17:24:56'),(34,'25.62.86.177','2017-04-10 17:44:43'),(35,'25.62.86.177','2017-04-10 17:46:36'),(36,'190.82.115.19','2017-04-10 19:11:10'),(37,'190.82.115.19','2017-04-10 19:12:55'),(38,'190.82.115.19','2017-04-10 19:16:03'),(39,'190.82.115.19','2017-04-10 19:16:45'),(40,'190.82.115.19','2017-04-10 19:22:44'),(41,'190.82.115.19','2017-04-10 19:24:36'),(42,'25.62.86.177','2017-04-10 19:25:11'),(43,'25.62.86.177','2017-04-10 21:48:06'),(44,'192.168.1.34','2017-05-11 14:52:11'),(45,'192.168.1.34','2017-05-11 14:52:14'),(46,'25.62.86.177','2017-05-24 16:44:47'),(47,'25.62.86.177','2017-06-26 10:22:28'),(48,'25.62.86.177','2017-06-26 10:22:37'),(49,'25.62.86.177','2017-06-29 12:44:23');
/*!40000 ALTER TABLE `visitas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-01  1:24:06
