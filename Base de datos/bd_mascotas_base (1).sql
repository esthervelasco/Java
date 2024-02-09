CREATE DATABASE  IF NOT EXISTS `bd_mascotas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_mascotas`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_mascotas
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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'perros'),(2,'gatos'),(3,'hurones');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunidades_autonomas`
--

DROP TABLE IF EXISTS `comunidades_autonomas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunidades_autonomas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comunidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunidades_autonomas`
--

LOCK TABLES `comunidades_autonomas` WRITE;
/*!40000 ALTER TABLE `comunidades_autonomas` DISABLE KEYS */;
INSERT INTO `comunidades_autonomas` VALUES (1,'Andalucía'),(2,'Aragón'),(3,'Asturias'),(4,'Islas Baleares'),(5,'Canarias'),(6,'Cantabria'),(7,'Castilla y León'),(8,'Castilla-La Mancha'),(9,'Cataluña'),(10,'Extremadura'),(11,'Galicia'),(12,'Madrid'),(13,'Murcia'),(14,'Navarra'),(15,'País Vasco'),(16,'La Rioja'),(17,'Comunidad Valenciana');
/*!40000 ALTER TABLE `comunidades_autonomas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascotas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `edad` int DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `FK_categoria` int DEFAULT NULL,
  `FK_comunidad` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_categoria` (`FK_categoria`),
  KEY `FK_comunidad` (`FK_comunidad`),
  CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`FK_categoria`) REFERENCES `categorias` (`id`),
  CONSTRAINT `mascotas_ibfk_2` FOREIGN KEY (`FK_comunidad`) REFERENCES `comunidades_autonomas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascotas`
--

LOCK TABLES `mascotas` WRITE;
/*!40000 ALTER TABLE `mascotas` DISABLE KEYS */;
INSERT INTO `mascotas` VALUES (141,'Max',3,'Es muy juguetón',1,1),(142,'Luna',2,'Le encanta dormir',2,2),(143,'Rin Tin Tin',5,'Heroico y leal',1,3),(144,'Bella',1,'Adora los mimos',2,4),(145,'Toby',4,'Muy activo',1,5),(146,'Nala',2,'Curiosa y juguetona',2,6),(147,'Oliver',3,'Amigable y sociable',1,7),(148,'Whiskers',2,'Amante del sol',2,8),(149,'Simba',1,'Rey de la casa',1,9),(150,'Coco',3,'Duerme en lugares extraños',2,10),(151,'Rocky',2,'Energético y juguetón',1,11),(152,'Mia',1,'Pequeña exploradora',2,12),(153,'Lady',4,'Amigable con otros perros',1,13),(154,'Salem',3,'Gato misterioso',2,14),(155,'Canela',2,'Siempre hambrienta',1,15),(156,'Whiskey',1,'Inquieto pero adorable',2,16),(157,'Lucky',5,'Rescatado de la calle',1,17),(158,'Chispa',2,'Amante de las alturas',2,6),(159,'Buddy',3,'Siempre feliz',1,8),(160,'Misty',1,'Pelaje suave como la seda',2,4),(161,'Lola',4,'Guardiana del hogar',1,1),(162,'Leo',2,'Observador y curioso',2,2),(163,'Charlie',3,'Le encanta correr',1,3),(164,'Bella',1,'Duerme todo el día',2,4),(165,'Duke',4,'Adora nadar',1,5),(166,'Mochi',2,'Amante de las cajas',2,6),(167,'Maximus',1,'Explorador intrépido',1,7),(168,'Mango',3,'Persigue sombras',2,8),(169,'Zeus',2,'Siempre alerta',1,9),(170,'Oreo',1,'Duerme en posiciones extrañas',2,10),(171,'Rocco',3,'Entusiasta de la pelota',1,11),(172,'Lola',2,'Amante de las caricias',2,12),(173,'Daisy',4,'Siempre alerta',1,13),(174,'Smokey',2,'Siempre relajado',2,14),(175,'Coco',1,'Explorador intrépido',1,15),(176,'Mittens',3,'Jugador experto',2,16),(177,'Rocky',5,'Fanático de las siestas',1,17),(178,'Milo',1,'Cazador de juguetes',2,7),(179,'Ruby',4,'Guardiana del jardín',1,16),(180,'Lily',2,'Exploradora incansable',2,15),(181,'Max',3,'Adora correr al aire libre',1,1),(182,'Whiskers',1,'Maestro del escondite',2,2),(183,'Bentley',2,'Siempre contento',1,3),(184,'Mia',1,'Amante del sol',2,4),(185,'Duke',4,'Le encanta nadar en verano',1,5),(186,'Olivia',2,'Maullidos melódicos',2,6),(187,'Rusty',1,'Explorador y cazador',1,7),(188,'Tiger',3,'Amigo de todos',2,8),(189,'Bella',2,'Le encanta jugar con la manguera',1,9),(190,'Oscar',1,'Persigue sombras imaginarias',2,10),(191,'Rosie',3,'Fanática de las pelotas de papel',2,11),(192,'Baxter',2,'Le gusta ver por la ventana',1,12),(193,'Mochi',4,'Adicto a los premios',1,13),(194,'Sasha',2,'Siempre en busca de aventuras',2,14),(195,'Leo',1,'Experto cazador de insectos',1,15),(196,'Lucy',3,'Maullidos melódicos',2,16),(197,'Bentley',5,'Amante de los paseos largos',1,17),(198,'Misty',1,'Le encanta dormir en lugares extraños',2,6),(199,'Cocoa',4,'Guardián del hogar',1,9),(200,'Mango',2,'Siempre jugando con su cola',2,2),(201,'Whiskey',3,'Le gusta jugar con la manguera',1,1),(202,'Cleo',1,'Adora dormir en lugares elevados',2,2),(203,'Rocky',2,'Le encanta nadar en el río',1,3),(204,'Nina',1,'Curiosa y exploradora',2,4),(205,'Charlie',4,'Fanático de los juguetes chirriantes',1,5),(206,'Ziggy',2,'Siempre alerta y juguetón',2,6),(207,'Mila',1,'Le encanta perseguir mariposas',1,7),(208,'Casper',3,'Explorador nocturno',2,8),(209,'Maximus',2,'Amante de las siestas al sol',1,9),(210,'Nala',1,'Persigue sombras imaginarias',2,10);
/*!40000 ALTER TABLE `mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_mascotas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21 10:28:40
