CREATE DATABASE  IF NOT EXISTS `r.s.i` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `r.s.i`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: r.s.i
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id_inventario` int NOT NULL AUTO_INCREMENT,
  `responsable` varchar(45) DEFAULT NULL,
  `producto` varchar(45) DEFAULT NULL,
  `descripccion` varchar(200) DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `reportes_fk` int NOT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `reportes_fk_idx` (`reportes_fk`),
  CONSTRAINT `reportes_fk` FOREIGN KEY (`reportes_fk`) REFERENCES `reportes` (`id_reportes`)
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (450,'Maria','Caja de herramientas','Posee todo lo necesario para que pueda realizar la reparación',1,NULL,100),(479,'Ernesto','bote de pintura','puede escojer el color que desea pintar al igual utilizarla para dar color a un determinado sitio',2,NULL,101),(480,'Miguel','Caja de herramientas','Posee todo lo necesario para que pueda realizar la reparación',1,NULL,102),(481,'Danna','trapero','util para limpiar pisos para dejarlos limpios',1,NULL,103),(482,'David','Caja de herramientas','Posee todo lo necesario para que pueda realizar la reparación',1,NULL,104);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportes`
--

DROP TABLE IF EXISTS `reportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportes` (
  `id_reportes` int NOT NULL,
  `Descripción` text,
  `Torre` double DEFAULT NULL,
  `Apartamento` double DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `usuarios_fk` int NOT NULL,
  PRIMARY KEY (`id_reportes`),
  KEY `id_usuarios_idx` (`usuarios_fk`),
  CONSTRAINT `usuarios_id` FOREIGN KEY (`usuarios_fk`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportes`
--

LOCK TABLES `reportes` WRITE;
/*!40000 ALTER TABLE `reportes` DISABLE KEYS */;
INSERT INTO `reportes` VALUES (100,'se necesita reparacion de una tuberia',12,500,'2024-01-23',1048674516),(101,'se necesita pintar una pared cerca de un apartamento',2,200,'2024-02-25',1837492743),(102,'se necesita hacer mantenimiento a los baños de los residentes',4,250,'2024-12-20',1836492847),(103,'se necesita realizar limpieza al píso',3,600,'2024-12-21',1937492845),(104,'se necesita haer reparación a los elevadores',6,300,'2024-03-11',1738484628);
/*!40000 ALTER TABLE `reportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguimiento`
--

DROP TABLE IF EXISTS `seguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguimiento` (
  `id_seguimiento` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `Prioridad` varchar(45) DEFAULT NULL,
  `Responsable` varchar(45) DEFAULT NULL,
  `Estado` varchar(30) DEFAULT NULL,
  `reportes_fk` int NOT NULL,
  PRIMARY KEY (`id_seguimiento`),
  KEY `reportes_fk_idx` (`reportes_fk`),
  CONSTRAINT `reportes_fk2` FOREIGN KEY (`reportes_fk`) REFERENCES `reportes` (`id_reportes`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguimiento`
--

LOCK TABLES `seguimiento` WRITE;
/*!40000 ALTER TABLE `seguimiento` DISABLE KEYS */;
INSERT INTO `seguimiento` VALUES (120,'2024-02-12','Alta','Maria','En espera',100),(158,'2024-12-31','Baja','Ernesto','En proceso',101),(159,'2024-03-12','Media','Miguel','Aprobado',102),(160,'2024-10-27','Alta','Danna','Pendiente de asignación',103),(161,'2024-12-23','Alta','David','Cancelado',104);
/*!40000 ALTER TABLE `seguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `Telefono` double DEFAULT NULL,
  `Rol` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1048674516,'Maria','Gonzales','annam12@gmail.com',32018273518,'Administrador'),(1738484628,'David','Estupiñan','david_free12!@gmail.com',3371928371,'Auxiliar de mantenimiento'),(1836492847,'Miguel','Yaguara','angeldark@gmail.com',33819384715,'Auxiliar de mantenimiento'),(1837492743,'Ernesto','Perez','perezfinal2@gmail.com',38172839183,'Auxiliar de mantenimiento'),(1937492845,'Danna','Mosquera','dannis08@gmail.com',33718391937,'Auxiliar de mantenimiento');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'r.s.i'
--

--
-- Dumping routines for database 'r.s.i'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-23 17:24:20
