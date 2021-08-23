CREATE DATABASE  IF NOT EXISTS `dbmantenmiento` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `dbmantenmiento`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: dbmantenmiento
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `accesorio_equipo`
--

DROP TABLE IF EXISTS `accesorio_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesorio_equipo` (
  `idaccesorio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_accesorio` varchar(400) COLLATE latin1_general_cs NOT NULL,
  `descripcion_accesorio` varchar(400) COLLATE latin1_general_cs DEFAULT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `numero_parte_accesorio` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idaccesorio`),
  KEY `fk_accesorio_equipo_equipo1_idx` (`idequipo`),
  CONSTRAINT `fk_accesorio_equipo_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesorio_equipo`
--

LOCK TABLES `accesorio_equipo` WRITE;
/*!40000 ALTER TABLE `accesorio_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesorio_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accion`
--

DROP TABLE IF EXISTS `accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accion` (
  `idaccion` int(11) NOT NULL,
  `accion` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accion`
--

LOCK TABLES `accion` WRITE;
/*!40000 ALTER TABLE `accion` DISABLE KEYS */;
/*!40000 ALTER TABLE `accion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertencia`
--

DROP TABLE IF EXISTS `advertencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertencia` (
  `idadvertencia` int(11) NOT NULL,
  `nombre_advertencia` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `valor_advertencia` varchar(450) COLLATE latin1_general_cs DEFAULT NULL,
  `equipo_idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idadvertencia`),
  KEY `fk_advertencia_equipo1_idx` (`equipo_idequipo`),
  CONSTRAINT `fk_advertencia_equipo1` FOREIGN KEY (`equipo_idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertencia`
--

LOCK TABLES `advertencia` WRITE;
/*!40000 ALTER TABLE `advertencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `idarea` varchar(2) COLLATE latin1_general_cs NOT NULL,
  `nombre_area` varchar(50) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idarea`),
  UNIQUE KEY `idarea_UNIQUE` (`idarea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES ('AA','Área Arquitectura'),('AB','Área Biomédica'),('AC','Área Civil'),('AE','Área Eléctrica'),('AH','Área Hidrosanitaria'),('AI','Área Informática'),('AM','Área Mecánica'),('EB','Equipo Básico '),('EM','Equipo Médico '),('IC','Equipos de Informática y Comunicación '),('MH','Mobiliario Hospitalario '),('MT','Equipos para Mantenimiento '),('OC','Obra Civil (Edificio Infraestructura) '),('SO','Área Seguridad y Salud Ocupacional'),('VT','Vehículo de Transporte ');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_mantenimiento`
--

DROP TABLE IF EXISTS `area_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_mantenimiento` (
  `idarea_mantenimiento` int(11) NOT NULL AUTO_INCREMENT,
  `area_mantenimiento` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idarea_mantenimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_mantenimiento`
--

LOCK TABLES `area_mantenimiento` WRITE;
/*!40000 ALTER TABLE `area_mantenimiento` DISABLE KEYS */;
INSERT INTO `area_mantenimiento` VALUES (1,'ejemplo 1'),(2,'Pintura e Impermeabilización'),(3,'Plomería y Drenajes'),(4,'Electricidad'),(5,'Autoclaves'),(6,'Calderas'),(7,'Albañiles'),(8,'Herrería'),(9,'Carpintería'),(10,'Plantas Electrícas'),(11,'Equipos Médicos'),(12,'Otros');
/*!40000 ALTER TABLE `area_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `idbitacora` int(11) NOT NULL,
  `idusuario` int(11) DEFAULT NULL,
  `idequipo` int(11) DEFAULT NULL,
  `idrutina` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `idaccion` int(11) NOT NULL,
  PRIMARY KEY (`idbitacora`),
  KEY `fk_bitacora_accion1_idx` (`idaccion`),
  CONSTRAINT `fk_bitacora_accion1` FOREIGN KEY (`idaccion`) REFERENCES `accion` (`idaccion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracteristica_especial_funcionamiento`
--

DROP TABLE IF EXISTS `caracteristica_especial_funcionamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristica_especial_funcionamiento` (
  `idcaracteristica_especial` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_caracteristica_especial` varchar(100) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idcaracteristica_especial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristica_especial_funcionamiento`
--

LOCK TABLES `caracteristica_especial_funcionamiento` WRITE;
/*!40000 ALTER TABLE `caracteristica_especial_funcionamiento` DISABLE KEYS */;
INSERT INTO `caracteristica_especial_funcionamiento` VALUES (1,'característica 1');
/*!40000 ALTER TABLE `caracteristica_especial_funcionamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracteristica_rutina`
--

DROP TABLE IF EXISTS `caracteristica_rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristica_rutina` (
  `idcaracteristica_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `caracteristica_rutina` varchar(255) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idcaracteristica_rutina`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristica_rutina`
--

LOCK TABLES `caracteristica_rutina` WRITE;
/*!40000 ALTER TABLE `caracteristica_rutina` DISABLE KEYS */;
INSERT INTO `caracteristica_rutina` VALUES (1,'ejemplo 1'),(2,'Balastro');
/*!40000 ALTER TABLE `caracteristica_rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracteristica_tecnica`
--

DROP TABLE IF EXISTS `caracteristica_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristica_tecnica` (
  `idcaracteristica_tecnica` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_caracteristica_tecnica` varchar(100) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idcaracteristica_tecnica`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristica_tecnica`
--

LOCK TABLES `caracteristica_tecnica` WRITE;
/*!40000 ALTER TABLE `caracteristica_tecnica` DISABLE KEYS */;
INSERT INTO `caracteristica_tecnica` VALUES (1,'Capacidad'),(2,'Voltaje');
/*!40000 ALTER TABLE `caracteristica_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conf_corr`
--

DROP TABLE IF EXISTS `conf_corr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conf_corr` (
  `idconf_corr` int(11) NOT NULL AUTO_INCREMENT,
  `inicio` int(11) NOT NULL,
  `fin` int(11) NOT NULL,
  `actual` int(4) unsigned zerofill NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `idsubgrupo` int(11) NOT NULL,
  PRIMARY KEY (`idconf_corr`),
  KEY `fk_conf_corr_subgrupo1_idx` (`idsubgrupo`),
  CONSTRAINT `fk_conf_corr_subgrupo1` FOREIGN KEY (`idsubgrupo`) REFERENCES `subgrupo` (`idsubgrupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conf_corr`
--

LOCK TABLES `conf_corr` WRITE;
/*!40000 ALTER TABLE `conf_corr` DISABLE KEYS */;
INSERT INTO `conf_corr` VALUES (1,0,9999,0000,1,1),(2,0,9999,0000,1,2),(3,0,9999,0000,1,3),(4,0,9999,0000,1,4),(5,0,9999,0000,1,5),(6,0,9999,0000,1,6),(7,0,9999,0000,1,7),(8,0,9999,0000,1,8),(9,0,9999,0000,1,9),(10,0,9999,0000,1,10),(11,0,9999,0000,1,11),(12,0,9999,0000,1,12),(13,0,9999,0000,1,13),(14,0,9999,0000,1,14),(15,0,9999,0000,1,15),(16,0,9999,0000,1,16),(17,0,9999,0000,1,17),(18,0,9999,0000,1,18),(19,0,9999,0000,1,19),(20,0,9999,0000,1,20),(21,0,9999,0000,1,21),(22,0,9999,0000,1,22),(23,0,9999,0000,1,23),(24,0,9999,0000,1,24),(25,0,9999,0000,1,25),(26,0,9999,0000,1,26),(27,0,9999,0000,1,27),(28,0,9999,0000,1,28),(29,0,9999,0000,1,29),(30,0,9999,0000,1,30),(31,0,9999,0000,1,31),(32,0,9999,0000,1,32),(33,0,9999,0000,1,33),(34,0,9999,0000,1,34),(35,0,9999,0000,1,35),(36,0,9999,0000,1,36),(37,0,9999,0000,1,37),(38,0,9999,0000,1,38),(39,0,9999,0000,1,39),(40,0,9999,0000,1,40),(41,0,9999,0000,1,41),(42,0,9999,0000,1,42),(43,0,9999,0000,1,43),(44,0,9999,0000,1,44),(45,0,9999,0000,1,45),(46,0,9999,0000,1,46),(47,0,9999,0000,1,47),(48,0,9999,0000,1,48),(49,0,9999,0000,1,49),(50,0,9999,0000,1,50),(51,0,9999,0000,1,51),(52,0,9999,0000,1,52),(53,0,9999,0000,1,53),(54,0,9999,0000,1,54),(55,0,9999,0000,1,55),(56,0,9999,0000,1,56),(57,0,9999,0000,1,57),(58,0,9999,0000,1,58),(59,0,9999,0000,1,59),(60,0,9999,0000,1,60),(61,0,9999,0000,1,61),(62,0,9999,0000,1,62),(63,0,9999,0000,1,63),(64,0,9999,0000,1,64),(65,0,9999,0000,1,65),(66,0,9999,0000,1,66),(67,0,9999,0000,1,67),(68,0,9999,0000,1,68),(69,0,9999,0000,1,69),(70,0,9999,0000,1,70),(71,0,9999,0000,1,71),(72,0,9999,0000,1,72),(73,0,9999,0000,1,73),(74,0,9999,0000,1,74),(75,0,9999,0000,1,75),(76,0,9999,0000,1,76),(77,0,9999,0000,1,77),(78,0,9999,0000,1,78),(79,0,9999,0000,1,79),(80,0,9999,0000,1,80),(81,0,9999,0000,1,81),(82,0,9999,0000,1,82),(83,0,9999,0000,1,83),(84,0,9999,0000,1,84),(85,0,9999,0000,1,85),(86,0,9999,0000,1,86),(87,0,9999,0000,1,87),(88,0,9999,0000,1,88),(89,0,9999,0000,1,89),(90,0,9999,0000,1,90),(91,0,9999,0000,1,91),(92,0,9999,0000,1,92),(93,0,9999,0000,1,93),(94,0,9999,0000,1,94),(95,0,9999,0000,1,95),(96,0,9999,0000,1,96),(97,0,9999,0000,1,97),(98,0,9999,0000,1,98),(99,0,9999,0000,1,99),(100,0,9999,0000,1,100),(101,0,9999,0000,1,101),(102,0,9999,0000,1,102),(103,0,9999,0000,1,103),(104,0,9999,0000,1,104),(105,0,9999,0000,1,105),(106,0,9999,0000,1,106),(107,0,9999,0000,1,107),(108,0,9999,0000,1,108),(109,0,9999,0000,1,109),(110,0,9999,0000,1,110),(111,0,9999,0000,1,111),(112,0,9999,0000,1,112),(113,0,9999,0000,1,113),(114,0,9999,0000,1,114),(115,0,9999,0000,1,115),(116,0,9999,0000,1,116),(117,0,9999,0000,1,117),(118,0,9999,0000,1,118),(119,0,9999,0000,1,119),(120,0,9999,0000,1,120),(121,0,9999,0000,1,121),(122,0,9999,0000,1,122),(123,0,9999,0000,1,123),(124,0,9999,0000,1,124),(125,0,9999,0000,1,125),(126,0,9999,0000,1,126),(127,0,9999,0000,1,127),(128,0,9999,0000,1,128),(129,0,9999,0000,1,129),(130,0,9999,0000,1,130),(131,0,9999,0000,1,131),(132,0,9999,0000,1,132),(133,0,9999,0000,1,133),(134,0,9999,0000,1,134),(135,0,9999,0000,1,135),(136,0,9999,0000,1,136),(137,0,9999,0000,1,137),(138,0,9999,0000,1,138),(139,0,9999,0000,1,139),(140,0,9999,0000,1,140),(141,0,9999,0000,1,141),(142,0,9999,0000,1,142),(143,0,9999,0000,1,143),(144,0,9999,0000,1,144),(145,0,9999,0000,1,145),(146,0,9999,0000,1,146),(147,0,9999,0000,1,147),(148,0,9999,0000,1,148),(149,0,9999,0000,1,149),(150,0,9999,0000,1,150),(151,0,9999,0000,1,151),(152,0,9999,0000,1,152),(153,0,9999,0000,1,153),(154,0,9999,0000,1,154),(155,0,9999,0000,1,155),(156,0,9999,0000,1,156),(157,0,9999,0000,1,157),(158,0,9999,0000,1,158),(159,0,9999,0000,1,159),(160,0,9999,0000,1,160),(161,0,9999,0000,1,161),(162,0,9999,0000,1,162),(163,0,9999,0000,1,163),(164,0,9999,0000,1,164),(165,0,9999,0000,1,165),(166,0,9999,0000,1,166),(167,0,9999,0000,1,167),(168,0,9999,0000,1,168),(169,0,9999,0000,1,169),(170,0,9999,0000,1,170),(171,0,9999,0000,1,171),(172,0,9999,0000,1,172),(173,0,9999,0000,1,173),(174,0,9999,0000,1,174),(175,0,9999,0000,1,175),(176,0,9999,0000,1,176),(177,0,9999,0000,1,177),(178,0,9999,0000,1,178),(179,0,9999,0000,1,179),(180,0,9999,0000,1,180),(181,0,9999,0000,1,181),(182,0,9999,0000,1,182),(183,0,9999,0000,1,183),(184,0,9999,0000,1,184),(185,0,9999,0000,1,185),(186,0,9999,0000,1,186),(187,0,9999,0000,1,187),(188,0,9999,0000,1,188),(189,0,9999,0000,1,189),(190,0,9999,0000,1,190),(191,0,9999,0000,1,191),(192,0,9999,0000,1,192),(193,0,9999,0000,1,193),(194,0,9999,0000,1,194),(195,0,9999,0000,1,195),(196,0,9999,0000,1,196),(197,0,9999,0000,1,197),(198,0,9999,0000,1,198),(199,0,9999,0000,1,199),(200,0,9999,0000,1,200),(201,0,9999,0000,1,201),(202,0,9999,0000,1,202),(203,0,9999,0000,1,203),(204,0,9999,0000,1,204),(205,0,9999,0000,1,205),(206,0,9999,0000,1,206),(207,0,9999,0000,1,207),(208,0,9999,0000,1,208),(209,0,9999,0000,1,209),(210,0,9999,0000,1,210),(211,0,9999,0000,1,211),(212,0,9999,0000,1,212),(213,0,9999,0000,1,213),(214,0,9999,0000,1,214),(215,0,9999,0000,1,215),(216,0,9999,0000,1,216),(217,0,9999,0000,1,217),(218,0,9999,0000,1,218),(219,0,9999,0000,1,219),(220,0,9999,0000,1,220),(221,0,9999,0000,1,221),(222,0,9999,0000,1,222),(223,0,9999,0000,1,223),(224,0,9999,0000,1,224),(225,0,9999,0000,1,225),(226,0,9999,0000,1,226),(227,0,9999,0000,1,227),(228,0,9999,0000,1,228),(229,0,9999,0000,1,229),(230,0,9999,0000,1,230),(231,0,9999,0000,1,231),(232,0,9999,0000,1,232),(233,0,9999,0000,1,233),(234,0,9999,0000,1,234),(235,0,9999,0000,1,235),(236,0,9999,0000,1,236),(237,0,9999,0000,1,237),(238,0,9999,0000,1,238),(239,0,9999,0000,1,239),(240,0,9999,0000,1,240),(241,0,9999,0000,1,241),(242,0,9999,0000,1,242),(243,0,9999,0000,1,243),(244,0,9999,0000,1,244),(245,0,9999,0000,1,245),(246,0,9999,0000,1,246),(247,0,9999,0000,1,247),(248,0,9999,0000,1,248),(249,0,9999,0000,1,249),(250,0,9999,0000,1,250),(251,0,9999,0000,1,251),(252,0,9999,0000,1,252),(253,0,9999,0000,1,253),(254,0,9999,0000,1,254),(255,0,9999,0000,1,255),(256,0,9999,0000,1,256),(257,0,9999,0000,1,257),(258,0,9999,0000,1,258),(259,0,9999,0000,1,259),(260,0,9999,0000,1,260),(261,0,9999,0000,1,261),(262,0,9999,0000,1,262),(263,0,9999,0000,1,263),(264,0,9999,0000,1,264),(265,0,9999,0000,1,265),(266,0,9999,0000,1,266),(267,0,9999,0000,1,267),(268,0,9999,0000,1,268),(269,0,9999,0000,1,269),(270,0,9999,0000,1,270),(271,0,9999,0000,1,271),(272,0,9999,0000,1,272),(273,0,9999,0000,1,273),(274,0,9999,0000,1,274),(275,0,9999,0000,1,275),(276,0,9999,0000,1,276),(277,0,9999,0000,1,277),(278,0,9999,0000,1,278),(279,0,9999,0000,1,279),(280,0,9999,0000,1,280),(281,0,9999,0000,1,281),(282,0,9999,0000,1,282),(283,0,9999,0000,1,283),(284,0,9999,0000,1,284),(285,0,9999,0000,1,285),(286,0,9999,0000,1,286),(287,0,9999,0000,1,287),(288,0,9999,0000,1,288),(289,0,9999,0000,1,289),(290,0,9999,0000,1,290),(291,0,9999,0000,1,291),(292,0,9999,0000,1,292),(293,0,9999,0000,1,293),(294,0,9999,0000,1,294),(295,0,9999,0000,1,295),(296,0,9999,0000,1,296),(297,0,9999,0000,1,297),(298,0,9999,0000,1,298),(299,0,9999,0000,1,299),(300,0,9999,0000,1,300),(301,0,9999,0000,1,301),(302,0,9999,0000,1,302),(303,0,9999,0000,1,303),(304,0,9999,0000,1,304),(305,0,9999,0000,1,305),(306,0,9999,0000,1,306),(307,0,9999,0000,1,307),(308,0,9999,0000,1,308),(309,0,9999,0000,1,309),(310,0,9999,0000,1,310),(311,0,9999,0000,1,311),(312,0,9999,0000,1,312),(313,0,9999,0000,1,313),(314,0,9999,0000,1,314),(315,0,9999,0000,1,315),(316,0,9999,0000,1,316),(317,0,9999,0000,1,317),(318,0,9999,0000,1,318),(319,0,9999,0000,1,319),(320,0,9999,0000,1,320),(321,0,9999,0000,1,321),(322,0,9999,0000,1,322),(323,0,9999,0000,1,323),(324,0,9999,0000,1,324),(325,0,9999,0000,1,325),(326,0,9999,0000,1,326),(327,0,9999,0000,1,327),(328,0,9999,0000,1,328),(329,0,9999,0000,1,329),(330,0,9999,0000,1,330),(331,0,9999,0000,1,331),(332,0,9999,0000,1,332),(333,0,9999,0000,1,333),(334,0,9999,0000,1,334),(335,0,9999,0000,1,335),(336,0,9999,0000,1,336),(337,0,9999,0000,1,337),(338,0,9999,0000,1,338),(339,0,9999,0000,1,339),(340,0,9999,0000,1,340),(341,0,9999,0000,1,341),(342,0,9999,0000,1,342),(343,0,9999,0000,1,343),(344,0,9999,0000,1,344),(345,0,9999,0000,1,345),(346,0,9999,0000,1,346),(347,0,9999,0000,1,347),(348,0,9999,0000,1,348),(349,0,9999,0000,1,349),(350,0,9999,0000,1,350),(351,0,9999,0000,1,351),(352,0,9999,0000,1,352),(353,0,9999,0000,1,353),(354,0,9999,0000,1,354),(355,0,9999,0000,1,355),(356,0,9999,0000,1,356),(357,0,9999,0000,1,357),(358,0,9999,0000,1,358),(359,0,9999,0000,1,359),(360,0,9999,0000,1,360),(361,0,9999,0000,1,361),(362,0,9999,0000,1,362),(363,0,9999,0000,1,363),(364,0,9999,0000,1,364),(365,0,9999,0000,1,365),(366,0,9999,0000,1,366),(367,0,9999,0000,1,367),(368,0,9999,0000,1,368),(369,0,9999,0000,1,369),(370,0,9999,0000,1,370),(371,0,9999,0000,1,371),(372,0,9999,0000,1,372),(373,0,9999,0000,1,373),(374,0,9999,0000,1,374),(375,0,9999,0000,1,375),(376,0,9999,0000,1,376),(377,0,9999,0000,1,377),(378,0,9999,0000,1,378),(379,0,9999,0000,1,379),(380,0,9999,0000,1,380),(381,0,9999,0000,1,381),(382,0,9999,0000,1,382),(383,0,9999,0000,1,383),(384,0,9999,0000,1,384),(385,0,9999,0000,1,385),(386,0,9999,0000,1,386),(387,0,9999,0000,1,387),(388,0,9999,0000,1,388),(389,0,9999,0000,1,389),(390,0,9999,0000,1,390),(391,0,9999,0000,1,391),(392,0,9999,0000,1,392),(393,0,9999,0000,1,393),(394,0,9999,0000,1,394),(395,0,9999,0000,1,395),(396,0,9999,0000,1,396),(397,0,9999,0000,1,397),(398,0,9999,0000,1,398),(399,0,9999,0000,1,399),(400,0,9999,0000,1,400),(401,0,9999,0000,1,401),(402,0,9999,0000,1,402),(403,0,9999,0000,1,403),(404,0,9999,0000,1,404),(405,0,9999,0000,1,405),(406,0,9999,0000,1,406),(407,0,9999,0000,1,407),(408,0,9999,0000,1,408),(409,0,9999,0000,1,409),(410,0,9999,0000,1,410),(411,0,9999,0000,1,411),(412,0,9999,0000,1,412),(413,0,9999,0000,1,413),(414,0,9999,0000,1,414),(415,0,9999,0000,1,415),(416,0,9999,0000,1,416),(417,0,9999,0000,1,417),(418,0,9999,0000,1,418),(419,0,9999,0000,1,419),(420,0,9999,0000,1,420),(421,0,9999,0000,1,421),(422,0,9999,0000,1,422),(423,0,9999,0000,1,423),(424,0,9999,0000,1,424),(425,0,9999,0000,1,425),(426,0,9999,0000,1,426),(427,0,9999,0000,1,427),(428,0,9999,0000,1,428),(429,0,9999,0000,1,429),(430,0,9999,0000,1,430),(431,0,9999,0000,1,431),(432,0,9999,0000,1,432),(433,0,9999,0000,1,433),(434,0,9999,0000,1,434),(435,0,9999,0000,1,435),(436,0,9999,0000,1,436),(437,0,9999,0000,1,437),(438,0,9999,0000,1,438),(439,0,9999,0000,1,439),(440,0,9999,0000,1,440),(441,0,9999,0000,1,441),(442,0,9999,0000,1,442),(443,0,9999,0000,1,443),(444,0,9999,0000,1,444),(445,0,9999,0000,1,445),(446,0,9999,0000,1,446),(447,0,9999,0000,1,447),(448,0,9999,0000,1,448),(449,0,9999,0000,1,449),(450,0,9999,0000,1,450),(451,0,9999,0000,1,451),(452,0,9999,0000,1,452),(453,0,9999,0000,1,453),(454,0,9999,0000,1,454),(455,0,9999,0000,1,455),(456,0,9999,0000,1,456),(457,0,9999,0000,1,457),(458,0,9999,0000,1,458),(459,0,9999,0000,1,459),(460,0,9999,0000,1,460),(461,0,9999,0000,1,461),(462,0,9999,0000,1,462),(463,0,9999,0000,1,463),(464,0,9999,0000,1,464),(465,0,9999,0000,1,465),(466,0,9999,0000,1,466),(467,0,9999,0000,1,467),(468,0,9999,0000,1,468),(469,0,9999,0000,1,469),(470,0,9999,0000,1,470),(471,0,9999,0000,1,471),(472,0,9999,0000,1,472),(473,0,9999,0000,1,473),(474,0,9999,0000,1,474),(475,0,9999,0000,1,475),(476,0,9999,0000,1,476),(477,0,9999,0000,1,477),(478,0,9999,0000,1,478),(479,0,9999,0000,1,479),(480,0,9999,0000,1,480),(481,0,9999,0000,1,481),(482,0,9999,0000,1,482),(483,0,9999,0000,1,483),(484,0,9999,0000,1,484),(485,0,9999,0000,1,485),(486,0,9999,0000,1,486),(487,0,9999,0000,1,487),(488,0,9999,0000,1,488),(489,0,9999,0000,1,489),(490,0,9999,0000,1,490),(491,0,9999,0000,1,491),(492,0,9999,0000,1,492),(493,0,9999,0000,1,493),(494,0,9999,0000,1,494),(495,0,9999,0000,1,495),(496,0,9999,0000,1,496),(497,0,9999,0000,1,497),(498,0,9999,0000,1,498),(499,0,9999,0000,1,499),(500,0,9999,0000,1,500),(501,0,9999,0000,1,501),(502,0,9999,0000,1,502),(503,0,9999,0000,1,503),(504,0,9999,0000,1,504),(505,0,9999,0000,1,505),(506,0,9999,0000,1,506),(507,0,9999,0000,1,507),(508,0,9999,0000,1,508),(509,0,9999,0000,1,509),(510,0,9999,0000,1,510),(511,0,9999,0000,1,511),(512,0,9999,0000,1,512),(513,0,9999,0000,1,513),(514,0,9999,0000,1,514),(515,0,9999,0000,1,515),(516,0,9999,0000,1,516),(517,0,9999,0000,1,517),(518,0,9999,0000,1,518),(519,0,9999,0000,1,519),(520,0,9999,0000,1,520),(521,0,9999,0000,1,521),(522,0,9999,0000,1,522),(523,0,9999,0000,1,523),(524,0,9999,0000,1,524),(525,0,9999,0000,1,525),(526,0,9999,0000,1,526),(527,0,9999,0000,1,527),(528,0,9999,0000,1,528),(529,0,9999,0000,1,529),(530,0,9999,0000,1,530),(531,0,9999,0000,1,531),(532,0,9999,0000,1,532),(533,0,9999,0000,1,533),(534,0,9999,0000,1,534),(535,0,9999,0000,1,535),(536,0,9999,0000,1,536),(537,0,9999,0000,1,537),(538,0,9999,0000,1,538),(539,0,9999,0000,1,539),(540,0,9999,0000,1,540),(541,0,9999,0000,1,541),(542,0,9999,0000,1,542),(543,0,9999,0000,1,543),(544,0,9999,0000,1,544),(545,0,9999,0000,1,545),(546,0,9999,0000,1,546),(547,0,9999,0000,1,547),(548,0,9999,0000,1,548),(549,0,9999,0000,1,549),(550,0,9999,0000,1,550),(551,0,9999,0000,1,551),(552,0,9999,0000,1,552),(553,0,9999,0000,1,553),(554,0,9999,0000,1,554),(555,0,9999,0000,1,555),(556,0,9999,0000,1,556),(557,0,9999,0000,1,557),(558,0,9999,0000,1,558),(559,0,9999,0000,1,559),(560,0,9999,0000,1,560),(561,0,9999,0000,1,561),(562,0,9999,0000,1,562),(563,0,9999,0000,1,563),(564,0,9999,0000,1,564),(565,0,9999,0000,1,565),(566,0,9999,0000,1,566),(567,0,9999,0000,1,567),(568,0,9999,0000,1,568),(569,0,9999,0000,1,569),(570,0,9999,0000,1,570),(571,0,9999,0000,1,571),(572,0,9999,0000,1,572),(573,0,9999,0000,1,573),(574,0,9999,0000,1,574),(575,0,9999,0000,1,575),(576,0,9999,0000,1,576),(577,0,9999,0000,1,577),(578,0,9999,0000,1,578),(579,0,9999,0000,1,579),(580,0,9999,0000,1,580),(581,0,9999,0000,1,581),(582,0,9999,0000,1,582),(583,0,9999,0000,1,583),(584,0,9999,0000,1,584),(585,0,9999,0000,1,585),(586,0,9999,0000,1,586),(587,0,9999,0000,1,587),(588,0,9999,0000,1,588),(589,0,9999,0000,1,589),(590,0,9999,0000,1,590),(591,0,9999,0000,1,591),(592,0,9999,0000,1,592),(593,0,9999,0000,1,593),(594,0,9999,0000,1,594),(595,0,9999,0000,1,595),(596,0,9999,0000,1,596),(597,0,9999,0000,1,597),(598,0,9999,0000,1,598),(599,0,9999,0000,1,599),(600,0,9999,0000,1,600),(601,0,9999,0000,1,601),(602,0,9999,0000,1,602),(603,0,9999,0000,1,603),(604,0,9999,0000,1,604),(605,0,9999,0000,1,605),(606,0,9999,0000,1,606),(607,0,9999,0000,1,607),(608,0,9999,0000,1,608),(609,0,9999,0000,1,609),(610,0,9999,0000,1,610),(611,0,9999,0000,1,611),(612,0,9999,0000,1,612),(613,0,9999,0000,1,613),(614,0,9999,0000,1,614),(615,0,9999,0000,1,615),(616,0,9999,0000,1,616),(617,0,9999,0000,1,617),(618,0,9999,0000,1,618),(619,0,9999,0000,1,619),(620,0,9999,0000,1,620),(621,0,9999,0000,1,621),(622,0,9999,0000,1,622),(623,0,9999,0000,1,623),(624,0,9999,0000,1,624),(625,0,9999,0000,1,625),(626,0,9999,0000,1,626),(627,0,9999,0000,1,627),(628,0,9999,0000,1,628),(629,0,9999,0000,1,629),(630,0,9999,0000,1,630),(631,0,9999,0000,1,631),(632,0,9999,0000,1,632),(633,0,9999,0000,1,633),(634,0,9999,0000,1,634),(635,0,9999,0000,1,635),(636,0,9999,0000,1,636),(637,0,9999,0000,1,637),(638,0,9999,0000,1,638),(639,0,9999,0000,1,639),(640,0,9999,0000,1,640),(641,0,9999,0000,1,641),(642,0,9999,0000,1,642),(643,0,9999,0000,1,643),(644,0,9999,0000,1,644),(645,0,9999,0000,1,645),(646,0,9999,0000,1,646),(647,0,9999,0000,1,647),(648,0,9999,0000,1,648),(649,0,9999,0000,1,649),(650,0,9999,0000,1,650),(651,0,9999,0000,1,651),(652,0,9999,0000,1,652),(653,0,9999,0000,1,653),(654,0,9999,0000,1,654),(655,0,9999,0000,1,655),(656,0,9999,0000,1,656),(657,0,9999,0000,1,657),(658,0,9999,0000,1,658),(659,0,9999,0000,1,659),(660,0,9999,0000,1,660),(661,0,9999,0000,1,661),(662,0,9999,0000,1,662),(663,0,9999,0000,1,663),(664,0,9999,0000,1,664),(665,0,9999,0000,1,665),(666,0,9999,0000,1,666),(667,0,9999,0000,1,667),(668,0,9999,0000,1,668),(669,0,9999,0000,1,669),(670,0,9999,0000,1,670),(671,0,9999,0000,1,671),(672,0,9999,0000,1,672),(673,0,9999,0000,1,673),(674,0,9999,0000,1,674),(675,0,9999,0000,1,675),(676,0,9999,0000,1,676),(677,0,9999,0000,1,677),(678,0,9999,0000,1,678),(679,0,9999,0000,1,679),(680,0,9999,0000,1,680),(681,0,9999,0000,1,682),(682,0,9999,0000,1,683),(683,0,9999,0000,1,684),(684,0,9999,0000,1,685),(685,0,9999,0000,1,686),(686,0,9999,0000,1,687),(687,0,9999,0000,1,688),(688,0,9999,0000,1,689),(689,0,9999,0000,1,690),(690,0,9999,0000,1,691),(691,0,9999,0000,1,692),(692,0,9999,0000,1,693),(693,0,9999,0035,1,681),(694,0,9999,0000,1,694),(695,0,9999,0000,1,695),(696,0,9999,0000,1,696),(697,0,9999,0000,1,697),(698,0,9999,0000,1,698),(699,0,9999,0000,1,699),(700,0,9999,0000,1,700),(701,0,9999,0000,1,701),(702,0,9999,0000,1,702),(703,0,9999,0000,1,703),(704,0,9999,0000,1,704),(705,0,9999,0000,1,705),(706,0,9999,0000,1,706),(707,0,9999,0000,1,707),(708,0,9999,0000,1,708),(709,0,9999,0000,1,709),(710,0,9999,0000,1,710),(711,0,9999,0000,1,711),(712,0,9999,0000,1,712),(713,0,9999,0000,1,713),(714,0,9999,0000,1,714),(715,0,9999,0000,1,715),(716,0,9999,0000,1,716),(717,0,9999,0000,1,717),(718,0,9999,0000,1,718),(719,0,9999,0000,1,719),(720,0,9999,0000,1,720),(721,0,9999,0000,1,721),(722,0,9999,0000,1,722),(723,0,9999,0000,1,723),(724,0,9999,0000,1,724),(725,0,9999,0000,1,725),(726,0,9999,0000,1,726),(727,0,9999,0000,1,727),(728,0,9999,0000,1,728),(729,0,9999,0000,1,729),(730,0,9999,0000,1,730),(731,0,9999,0000,1,731),(732,0,9999,0000,1,732),(733,0,9999,0000,1,733),(734,0,9999,0000,1,734),(735,0,9999,0000,1,735),(736,0,9999,0000,1,736),(737,0,9999,0000,1,737),(738,0,9999,0000,1,738),(739,0,9999,0000,1,739),(740,0,9999,0000,1,740),(741,0,9999,0000,1,741),(742,0,9999,0000,1,742),(743,0,9999,0000,1,743),(744,0,9999,0000,1,744),(745,0,9999,0000,1,745),(746,0,9999,0000,1,746),(747,0,9999,0000,1,747),(748,0,9999,0000,1,748),(749,0,9999,0000,1,749),(750,0,9999,0000,1,750),(751,0,9999,0000,1,751),(752,0,9999,0000,1,752),(753,0,9999,0000,1,753),(754,0,9999,0000,1,754),(755,0,9999,0000,1,755),(756,0,9999,0000,1,756),(757,0,9999,0000,1,757),(758,0,9999,0000,1,3);
/*!40000 ALTER TABLE `conf_corr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conf_subgrupo`
--

DROP TABLE IF EXISTS `conf_subgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conf_subgrupo` (
  `idconf_subgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `inicio` int(11) NOT NULL,
  `fin` int(11) NOT NULL,
  `actual` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `idgrupo` int(2) unsigned zerofill NOT NULL,
  PRIMARY KEY (`idconf_subgrupo`),
  KEY `fk_conf_subgrupo_grupo1_idx` (`idgrupo`),
  CONSTRAINT `fk_conf_subgrupo_grupo1` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conf_subgrupo`
--

LOCK TABLES `conf_subgrupo` WRITE;
/*!40000 ALTER TABLE `conf_subgrupo` DISABLE KEYS */;
INSERT INTO `conf_subgrupo` VALUES (1,0,99,0,1,01),(2,0,99,0,1,06),(3,0,99,0,1,05),(4,0,99,0,1,02),(5,0,99,0,1,03),(6,0,99,0,1,04),(7,0,99,0,1,07),(8,0,99,0,1,08),(9,0,99,0,1,09),(10,0,99,0,1,10),(11,0,99,0,1,11),(12,0,99,0,1,12),(13,0,99,0,1,13),(14,0,99,0,1,14),(15,0,99,0,1,15),(16,0,99,0,1,16),(17,0,99,0,1,17),(18,0,99,0,1,18),(19,0,99,0,1,19),(20,0,99,0,1,20),(21,0,99,0,1,21),(22,0,99,0,1,22),(23,0,99,0,1,23),(24,0,99,0,1,24),(25,0,99,0,1,25),(26,0,99,0,1,26),(27,0,99,0,1,27),(28,0,99,0,1,28),(29,0,99,0,1,29),(30,0,99,0,1,30),(31,0,99,0,1,31),(32,0,99,0,1,32),(33,0,99,0,1,33),(34,0,99,0,1,34),(35,0,99,0,1,35),(36,0,99,0,1,36),(37,0,99,0,1,37),(38,0,99,0,1,38),(39,0,99,0,1,39),(40,0,99,0,1,40),(41,0,99,0,1,41),(42,0,99,0,1,42),(43,0,99,0,1,43),(44,0,99,0,1,44),(45,0,99,0,1,45),(46,0,99,0,1,46),(47,0,99,0,1,47),(48,0,99,0,1,48),(49,0,99,0,1,49),(50,0,99,0,1,50),(51,0,99,0,1,51),(52,0,99,0,1,52),(53,0,99,0,1,53),(54,0,99,0,1,54),(55,0,99,0,1,55),(56,0,99,0,1,56),(57,0,99,0,1,57),(58,0,99,0,1,58),(59,0,99,0,1,59),(60,0,99,0,1,60),(61,0,99,0,1,61),(62,0,99,1,1,00),(63,0,99,0,1,62),(64,0,99,0,1,63),(65,0,99,0,1,64),(66,0,99,0,1,65),(67,0,99,0,1,66),(68,0,99,0,1,67),(69,0,99,0,1,00),(70,0,99,0,1,68),(71,0,99,0,1,69);
/*!40000 ALTER TABLE `conf_subgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `iddepartamento` varchar(3) COLLATE latin1_general_cs NOT NULL,
  `depto` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `idhospital` int(11) NOT NULL,
  `idregion` varchar(1) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`iddepartamento`),
  UNIQUE KEY `iddepartamento_UNIQUE` (`iddepartamento`),
  KEY `fk_departamento_hospital1_idx` (`idhospital`),
  KEY `fk_departamento_region1_idx` (`idregion`),
  CONSTRAINT `fk_departamento_hospital1` FOREIGN KEY (`idhospital`) REFERENCES `hospital` (`idhospital`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_departamento_region1` FOREIGN KEY (`idregion`) REFERENCES `region` (`idregion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES ('-n-','QUETZALTENANGO (Norte)',1,'D');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_area_matenimiento`
--

DROP TABLE IF EXISTS `detalle_area_matenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_area_matenimiento` (
  `iddetalle_area_matenimiento` int(11) NOT NULL AUTO_INCREMENT,
  `idarea_mantenimiento` int(11) NOT NULL,
  `idsolitud_trabajo` int(11) NOT NULL,
  `estado_detalle_area_matenimiento` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iddetalle_area_matenimiento`),
  KEY `fk_table1_area_mantenimiento1_idx` (`idarea_mantenimiento`),
  KEY `fk_table1_solitud_trabajo1_idx` (`idsolitud_trabajo`),
  CONSTRAINT `fk_table1_area_mantenimiento1` FOREIGN KEY (`idarea_mantenimiento`) REFERENCES `area_mantenimiento` (`idarea_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_table1_solitud_trabajo1` FOREIGN KEY (`idsolitud_trabajo`) REFERENCES `solitud_trabajo` (`idsolitud_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_area_matenimiento`
--

LOCK TABLES `detalle_area_matenimiento` WRITE;
/*!40000 ALTER TABLE `detalle_area_matenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_area_matenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_caracteristica_especial`
--

DROP TABLE IF EXISTS `detalle_caracteristica_especial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_caracteristica_especial` (
  `iddetalle_caracteristica_especial` int(11) NOT NULL AUTO_INCREMENT,
  `idcaracteristica_especial` int(11) NOT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `idvalor_ref_esp` int(11) NOT NULL,
  `estado_detalle_caracteristica_especial` tinyint(1) DEFAULT NULL,
  `descripcion_detalle_caracteristica_especial` varchar(400) COLLATE latin1_general_cs DEFAULT NULL,
  `valor_detalle_caracteristica_especial` float DEFAULT NULL,
  PRIMARY KEY (`iddetalle_caracteristica_especial`),
  KEY `fk_caracteristica_especial_funcionamiento_has_equipo_equipo_idx` (`idequipo`),
  KEY `fk_caracteristica_especial_funcionamiento_has_equipo_caract_idx` (`idcaracteristica_especial`),
  KEY `fk_caracteristica_especial_funcionamiento_has_equipo_valor__idx` (`idvalor_ref_esp`),
  CONSTRAINT `fk_caracteristica_especial_funcionamiento_has_equipo_caracter1` FOREIGN KEY (`idcaracteristica_especial`) REFERENCES `caracteristica_especial_funcionamiento` (`idcaracteristica_especial`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_caracteristica_especial_funcionamiento_has_equipo_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_caracteristica_especial_funcionamiento_has_equipo_valor_re1` FOREIGN KEY (`idvalor_ref_esp`) REFERENCES `valor_ref_esp` (`idvalor_ref_esp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_caracteristica_especial`
--

LOCK TABLES `detalle_caracteristica_especial` WRITE;
/*!40000 ALTER TABLE `detalle_caracteristica_especial` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_caracteristica_especial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_caracteristica_rutina`
--

DROP TABLE IF EXISTS `detalle_caracteristica_rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_caracteristica_rutina` (
  `iddetalle_caracteristica_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `idcaracteristica_rutina` int(11) NOT NULL,
  `idrutina_mantenimiento` int(11) NOT NULL,
  `idvalor_ref_rutina` int(11) NOT NULL,
  `idsubgrupo_rutina` int(11) NOT NULL,
  `estado_detalle_caracteristica_rutina` tinyint(1) DEFAULT NULL,
  `fecha_detalle_caracteristica_rutina` date DEFAULT NULL,
  `comentario_detalle_caracteristica_rutina` varchar(400) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`iddetalle_caracteristica_rutina`),
  KEY `fk_caracteristica_rutina_has_rutina_mantenimiento_rutina_ma_idx` (`idrutina_mantenimiento`),
  KEY `fk_caracteristica_rutina_has_rutina_mantenimiento_caracteri_idx` (`idcaracteristica_rutina`),
  KEY `fk_caracteristica_rutina_has_rutina_mantenimiento_valor_ref_idx` (`idvalor_ref_rutina`),
  KEY `fk_caracteristica_rutina_has_rutina_mantenimiento_subgrupo__idx` (`idsubgrupo_rutina`),
  CONSTRAINT `fk_caracteristica_rutina_has_rutina_mantenimiento_caracterist1` FOREIGN KEY (`idcaracteristica_rutina`) REFERENCES `caracteristica_rutina` (`idcaracteristica_rutina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_caracteristica_rutina_has_rutina_mantenimiento_rutina_mant1` FOREIGN KEY (`idrutina_mantenimiento`) REFERENCES `rutina_mantenimiento` (`idrutina_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_caracteristica_rutina_has_rutina_mantenimiento_subgrupo_ru1` FOREIGN KEY (`idsubgrupo_rutina`) REFERENCES `subgrupo_rutina` (`idsubgrupo_rutina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_caracteristica_rutina_has_rutina_mantenimiento_valor_ref_r1` FOREIGN KEY (`idvalor_ref_rutina`) REFERENCES `valor_ref_rutina` (`idvalor_ref_rutina`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_caracteristica_rutina`
--

LOCK TABLES `detalle_caracteristica_rutina` WRITE;
/*!40000 ALTER TABLE `detalle_caracteristica_rutina` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_caracteristica_rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_caracteristica_tecnica`
--

DROP TABLE IF EXISTS `detalle_caracteristica_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_caracteristica_tecnica` (
  `iddetalle_caracteristica_tecnica` int(11) NOT NULL AUTO_INCREMENT,
  `idcaracteristica_tecnica` int(11) NOT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `idvalor_ref_tec` int(11) NOT NULL,
  `idsubgrupo_carac_tecnica` int(11) NOT NULL,
  `estado_detalle_caracteristica_tecnica` tinyint(1) DEFAULT NULL,
  `descripcion_detalle_caracteristica_tecnica` varchar(450) COLLATE latin1_general_cs DEFAULT NULL,
  `valor_detalle_caracteristica_tecnica` float DEFAULT NULL,
  PRIMARY KEY (`iddetalle_caracteristica_tecnica`),
  KEY `fk_caracteristica_tecnica_has_equipo_equipo1_idx` (`idequipo`),
  KEY `fk_caracteristica_tecnica_has_equipo_caracteristica_tecnica_idx` (`idcaracteristica_tecnica`),
  KEY `fk_caracteristica_tecnica_has_equipo_valor_ref_tec1_idx` (`idvalor_ref_tec`),
  KEY `fk_caracteristica_tecnica_has_equipo_subgrupo_carac_tecnica_idx` (`idsubgrupo_carac_tecnica`),
  CONSTRAINT `fk_caracteristica_tecnica_has_equipo_caracteristica_tecnica` FOREIGN KEY (`idcaracteristica_tecnica`) REFERENCES `caracteristica_tecnica` (`idcaracteristica_tecnica`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_caracteristica_tecnica_has_equipo_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_caracteristica_tecnica_has_equipo_subgrupo_carac_tecnica1` FOREIGN KEY (`idsubgrupo_carac_tecnica`) REFERENCES `subgrupo_carac_tecnica` (`idsubgrupo_carac_tecnica`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_caracteristica_tecnica_has_equipo_valor_ref_tec1` FOREIGN KEY (`idvalor_ref_tec`) REFERENCES `valor_ref_tec` (`idvalor_ref_tec`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_caracteristica_tecnica`
--

LOCK TABLES `detalle_caracteristica_tecnica` WRITE;
/*!40000 ALTER TABLE `detalle_caracteristica_tecnica` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_caracteristica_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_herramienta`
--

DROP TABLE IF EXISTS `detalle_herramienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_herramienta` (
  `iddetalle_herramienta` int(11) NOT NULL AUTO_INCREMENT,
  `idrutina_mantenimiento` int(11) NOT NULL,
  `idherramienta` int(11) NOT NULL,
  PRIMARY KEY (`iddetalle_herramienta`),
  KEY `fk_rutina_mantenimiento_has_herramientas_herramientas1_idx` (`idherramienta`),
  KEY `fk_rutina_mantenimiento_has_herramientas_rutina_mantenimien_idx` (`idrutina_mantenimiento`),
  CONSTRAINT `fk_rutina_mantenimiento_has_herramientas_herramientas1` FOREIGN KEY (`idherramienta`) REFERENCES `herramienta` (`idherramienta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rutina_mantenimiento_has_herramientas_rutina_mantenimiento1` FOREIGN KEY (`idrutina_mantenimiento`) REFERENCES `rutina_mantenimiento` (`idrutina_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_herramienta`
--

LOCK TABLES `detalle_herramienta` WRITE;
/*!40000 ALTER TABLE `detalle_herramienta` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_herramienta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ingreso_insumo`
--

DROP TABLE IF EXISTS `detalle_ingreso_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_ingreso_insumo` (
  `iddetalle_ingreso_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `idingreso_insumo` int(11) NOT NULL,
  `idinsumo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`iddetalle_ingreso_insumo`),
  KEY `fk_repuesto_has_ingreso_repuesto_ingreso_repuesto1_idx` (`idingreso_insumo`),
  KEY `fk_repuesto_has_ingreso_repuesto_repuesto1_idx` (`idinsumo`),
  CONSTRAINT `fk_repuesto_has_ingreso_repuesto_ingreso_repuesto10` FOREIGN KEY (`idingreso_insumo`) REFERENCES `ingreso_insumo` (`idingreso_insumo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_repuesto_has_ingreso_repuesto_repuesto10` FOREIGN KEY (`idinsumo`) REFERENCES `insumo` (`idinsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ingreso_insumo`
--

LOCK TABLES `detalle_ingreso_insumo` WRITE;
/*!40000 ALTER TABLE `detalle_ingreso_insumo` DISABLE KEYS */;
INSERT INTO `detalle_ingreso_insumo` VALUES (1,1,420,-65),(2,2,618,2000),(3,3,420,1000);
/*!40000 ALTER TABLE `detalle_ingreso_insumo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_updIngresoInsumo` AFTER INSERT ON `detalle_ingreso_insumo`
 FOR EACH ROW UPDATE insumo set insumo.stock=insumo.stock + NEW.cantidad 
WHERE insumo.idinsumo=NEW.idinsumo */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalle_ingreso_repuesto`
--

DROP TABLE IF EXISTS `detalle_ingreso_repuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_ingreso_repuesto` (
  `iddetalle_ingreso_repuesto` int(11) NOT NULL AUTO_INCREMENT,
  `idrepuesto` int(11) NOT NULL,
  `idingreso_repuesto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`iddetalle_ingreso_repuesto`),
  KEY `fk_repuesto_has_ingreso_repuesto_ingreso_repuesto1_idx` (`idingreso_repuesto`),
  KEY `fk_repuesto_has_ingreso_repuesto_repuesto1_idx` (`idrepuesto`),
  CONSTRAINT `fk_repuesto_has_ingreso_repuesto_ingreso_repuesto1` FOREIGN KEY (`idingreso_repuesto`) REFERENCES `ingreso_repuesto` (`idingreso_repuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_repuesto_has_ingreso_repuesto_repuesto1` FOREIGN KEY (`idrepuesto`) REFERENCES `repuesto` (`idrepuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ingreso_repuesto`
--

LOCK TABLES `detalle_ingreso_repuesto` WRITE;
/*!40000 ALTER TABLE `detalle_ingreso_repuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_ingreso_repuesto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_updIngresoRepuesto` AFTER INSERT ON `detalle_ingreso_repuesto`
 FOR EACH ROW UPDATE repuesto set repuesto.stock=repuesto.stock + NEW.cantidad 
WHERE repuesto.idrepuesto=NEW.idrepuesto */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalle_insumo_rutina`
--

DROP TABLE IF EXISTS `detalle_insumo_rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_insumo_rutina` (
  `iddetalle_insumo_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `idrutina_mantenimiento` int(11) NOT NULL,
  `idinsumo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`iddetalle_insumo_rutina`),
  KEY `fk_rutina_mantenimiento_has_repuesto_repuesto1_idx` (`idinsumo`),
  KEY `fk_rutina_mantenimiento_has_repuesto_rutina_mantenimiento1_idx` (`idrutina_mantenimiento`),
  CONSTRAINT `fk_rutina_mantenimiento_has_repuesto_repuesto10` FOREIGN KEY (`idinsumo`) REFERENCES `insumo` (`idinsumo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rutina_mantenimiento_has_repuesto_rutina_mantenimiento10` FOREIGN KEY (`idrutina_mantenimiento`) REFERENCES `rutina_mantenimiento` (`idrutina_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_insumo_rutina`
--

LOCK TABLES `detalle_insumo_rutina` WRITE;
/*!40000 ALTER TABLE `detalle_insumo_rutina` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_insumo_rutina` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_updEgresoInsumo` AFTER INSERT ON `detalle_insumo_rutina`
 FOR EACH ROW UPDATE insumo 
set insumo.stock=insumo.stock - NEW.cantidad 
WHERE insumo.idinsumo=NEW.idinsumo */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalle_manual`
--

DROP TABLE IF EXISTS `detalle_manual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_manual` (
  `iddetalle_manual` int(11) NOT NULL AUTO_INCREMENT,
  `idtipomanual` int(11) NOT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `link_detalle_manual` varchar(400) COLLATE latin1_general_cs NOT NULL,
  `observacion_detalle_manual` varchar(450) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`iddetalle_manual`),
  KEY `fk_tipomanual_has_equipo_tipomanual1_idx` (`idtipomanual`),
  KEY `fk_detalle_manual_equipo1_idx` (`idequipo`),
  CONSTRAINT `fk_detalle_manual_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tipomanual_has_equipo_tipomanual1` FOREIGN KEY (`idtipomanual`) REFERENCES `tipomanual` (`idtipomanual`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_manual`
--

LOCK TABLES `detalle_manual` WRITE;
/*!40000 ALTER TABLE `detalle_manual` DISABLE KEYS */;
INSERT INTO `detalle_manual` VALUES (1,1,'AC0000-D-n-E040025','24.04.2020 Resolucion Junta Monetaria 42-2020 Riesgo Tecnologico.pdf','prueba'),(2,1,'AC0000-D-n-E040025','24.04.2020 Resolucion Junta Monetaria 42-2020 Riesgo Tecnologico.pdf','prueba'),(3,1,'AC0000-D-n-E040025','Caso de estudio planeacion estrategica.pdf','prueba');
/*!40000 ALTER TABLE `detalle_manual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_naturaleza_peligro`
--

DROP TABLE IF EXISTS `detalle_naturaleza_peligro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_naturaleza_peligro` (
  `iddetalle_naturaleza_peligro` int(11) NOT NULL AUTO_INCREMENT,
  `idnaturaleza_peligro` int(11) NOT NULL,
  `idpermiso_trabajo` int(11) NOT NULL,
  `estado_detalle_naturaleza_peligro` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iddetalle_naturaleza_peligro`),
  KEY `fk_naturaleza_peligro_has_permiso_trabajo_permiso_trabajo1_idx` (`idpermiso_trabajo`),
  KEY `fk_naturaleza_peligro_has_permiso_trabajo_naturaleza_peligr_idx` (`idnaturaleza_peligro`),
  CONSTRAINT `fk_naturaleza_peligro_has_permiso_trabajo_naturaleza_peligro1` FOREIGN KEY (`idnaturaleza_peligro`) REFERENCES `naturaleza_peligro` (`idnaturaleza_peligro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_naturaleza_peligro_has_permiso_trabajo_permiso_trabajo1` FOREIGN KEY (`idpermiso_trabajo`) REFERENCES `permiso_trabajo` (`idpermiso_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_naturaleza_peligro`
--

LOCK TABLES `detalle_naturaleza_peligro` WRITE;
/*!40000 ALTER TABLE `detalle_naturaleza_peligro` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_naturaleza_peligro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_precaucion_ejecutante`
--

DROP TABLE IF EXISTS `detalle_precaucion_ejecutante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_precaucion_ejecutante` (
  `iddetalle_precaucion_ejecutante` int(11) NOT NULL AUTO_INCREMENT,
  `idpermiso_trabajo` int(11) NOT NULL,
  `idprecaucion_ejecutante` int(11) NOT NULL,
  `estado_detalle_precaucion_ejecutante` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iddetalle_precaucion_ejecutante`),
  KEY `fk_permiso_trabajo_has_precaucion_ejecutante_precaucion_eje_idx` (`idprecaucion_ejecutante`),
  KEY `fk_permiso_trabajo_has_precaucion_ejecutante_permiso_trabaj_idx` (`idpermiso_trabajo`),
  CONSTRAINT `fk_permiso_trabajo_has_precaucion_ejecutante_permiso_trabajo1` FOREIGN KEY (`idpermiso_trabajo`) REFERENCES `permiso_trabajo` (`idpermiso_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_permiso_trabajo_has_precaucion_ejecutante_precaucion_ejecu1` FOREIGN KEY (`idprecaucion_ejecutante`) REFERENCES `precaucion_ejecutante` (`idprecaucion_ejecutante`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_precaucion_ejecutante`
--

LOCK TABLES `detalle_precaucion_ejecutante` WRITE;
/*!40000 ALTER TABLE `detalle_precaucion_ejecutante` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_precaucion_ejecutante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_precaucion_responsable`
--

DROP TABLE IF EXISTS `detalle_precaucion_responsable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_precaucion_responsable` (
  `iddetalle_precaucion_responsable` int(11) NOT NULL AUTO_INCREMENT,
  `idpermiso_trabajo` int(11) NOT NULL,
  `idprecaucion_responsable` int(11) NOT NULL,
  `estado_detalle_precaucion_responsable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iddetalle_precaucion_responsable`),
  KEY `fk_permiso_trabajo_has_precaucion_responsable_precaucion_re_idx` (`idprecaucion_responsable`),
  KEY `fk_permiso_trabajo_has_precaucion_responsable_permiso_traba_idx` (`idpermiso_trabajo`),
  CONSTRAINT `fk_permiso_trabajo_has_precaucion_responsable_permiso_trabajo1` FOREIGN KEY (`idpermiso_trabajo`) REFERENCES `permiso_trabajo` (`idpermiso_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_permiso_trabajo_has_precaucion_responsable_precaucion_resp1` FOREIGN KEY (`idprecaucion_responsable`) REFERENCES `precaucion_responsable` (`idprecaucion_responsable`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_precaucion_responsable`
--

LOCK TABLES `detalle_precaucion_responsable` WRITE;
/*!40000 ALTER TABLE `detalle_precaucion_responsable` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_precaucion_responsable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_repuesto_rutina`
--

DROP TABLE IF EXISTS `detalle_repuesto_rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_repuesto_rutina` (
  `iddetalle_repuesto_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `idrutina_mantenimiento` int(11) NOT NULL,
  `idrepuesto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`iddetalle_repuesto_rutina`),
  KEY `fk_rutina_mantenimiento_has_repuesto_repuesto1_idx` (`idrepuesto`),
  KEY `fk_rutina_mantenimiento_has_repuesto_rutina_mantenimiento1_idx` (`idrutina_mantenimiento`),
  CONSTRAINT `fk_rutina_mantenimiento_has_repuesto_repuesto1` FOREIGN KEY (`idrepuesto`) REFERENCES `repuesto` (`idrepuesto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rutina_mantenimiento_has_repuesto_rutina_mantenimiento1` FOREIGN KEY (`idrutina_mantenimiento`) REFERENCES `rutina_mantenimiento` (`idrutina_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_repuesto_rutina`
--

LOCK TABLES `detalle_repuesto_rutina` WRITE;
/*!40000 ALTER TABLE `detalle_repuesto_rutina` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_repuesto_rutina` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_updEgresoRepuesto` AFTER INSERT ON `detalle_repuesto_rutina`
 FOR EACH ROW UPDATE repuesto set repuesto.stock=repuesto.stock - NEW.cantidad 
WHERE repuesto.idrepuesto=NEW.idrepuesto */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalle_rutina_prueba`
--

DROP TABLE IF EXISTS `detalle_rutina_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_rutina_prueba` (
  `iddetalle_rutina_prueba` int(11) NOT NULL AUTO_INCREMENT,
  `idrutina_mantenimiento` int(11) NOT NULL,
  `idprueba_rutina` int(11) NOT NULL,
  `idvalor_ref_prueba` int(11) NOT NULL,
  `idsubgrupo_prueba` int(11) NOT NULL,
  `norma_detalle_rutina_prueba` varchar(450) COLLATE latin1_general_cs DEFAULT NULL,
  `unidad_medida_detalle_rutina_prueba` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  `estado_detalle_rutina_prueba` tinyint(1) DEFAULT NULL,
  `fecha_detalle_rutina_prueba` date DEFAULT NULL,
  `comentario_detalle_rutina_prueba` varchar(450) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`iddetalle_rutina_prueba`),
  KEY `fk_rutina_mantenimiento_has_prueba_rutina_prueba_rutina1_idx` (`idprueba_rutina`),
  KEY `fk_rutina_mantenimiento_has_prueba_rutina_rutina_mantenimie_idx` (`idrutina_mantenimiento`),
  KEY `fk_rutina_mantenimiento_has_prueba_rutina_valor_ref_prueba1_idx` (`idvalor_ref_prueba`),
  KEY `fk_rutina_mantenimiento_has_prueba_rutina_subgrupo_prueba1_idx` (`idsubgrupo_prueba`),
  CONSTRAINT `fk_rutina_mantenimiento_has_prueba_rutina_prueba_rutina1` FOREIGN KEY (`idprueba_rutina`) REFERENCES `prueba_rutina` (`idprueba_rutina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rutina_mantenimiento_has_prueba_rutina_rutina_mantenimiento1` FOREIGN KEY (`idrutina_mantenimiento`) REFERENCES `rutina_mantenimiento` (`idrutina_mantenimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rutina_mantenimiento_has_prueba_rutina_subgrupo_prueba1` FOREIGN KEY (`idsubgrupo_prueba`) REFERENCES `subgrupo_prueba` (`idsubgrupo_prueba`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rutina_mantenimiento_has_prueba_rutina_valor_ref_prueba1` FOREIGN KEY (`idvalor_ref_prueba`) REFERENCES `valor_ref_prueba` (`idvalor_ref_prueba`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_rutina_prueba`
--

LOCK TABLES `detalle_rutina_prueba` WRITE;
/*!40000 ALTER TABLE `detalle_rutina_prueba` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_rutina_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_tipo_trabajo`
--

DROP TABLE IF EXISTS `detalle_tipo_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_tipo_trabajo` (
  `iddetalle_tipo_trabajo` int(11) NOT NULL AUTO_INCREMENT,
  `idsolitud_trabajo` int(11) NOT NULL,
  `idtipo_trabajo` int(11) NOT NULL,
  `descrpcion_detalle_tipo_trabajo` varchar(450) COLLATE latin1_general_cs DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`iddetalle_tipo_trabajo`),
  KEY `fk_detalle_tipo_trabajo_solitud_trabajo1_idx` (`idsolitud_trabajo`),
  KEY `fk_detalle_tipo_trabajo_tipo_trabajo1_idx` (`idtipo_trabajo`),
  CONSTRAINT `fk_detalle_tipo_trabajo_solitud_trabajo1` FOREIGN KEY (`idsolitud_trabajo`) REFERENCES `solitud_trabajo` (`idsolitud_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_detalle_tipo_trabajo_tipo_trabajo1` FOREIGN KEY (`idtipo_trabajo`) REFERENCES `tipo_trabajo` (`idtipo_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_tipo_trabajo`
--

LOCK TABLES `detalle_tipo_trabajo` WRITE;
/*!40000 ALTER TABLE `detalle_tipo_trabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_tipo_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_tipo_trabajo_permiso`
--

DROP TABLE IF EXISTS `detalle_tipo_trabajo_permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_tipo_trabajo_permiso` (
  `iddetalle_tipo_trabajo_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `idpermiso_trabajo` int(11) NOT NULL,
  `idtipo_trabajo` int(11) NOT NULL,
  `estado_detalle_tipo_trabajo_permiso` tinyint(1) DEFAULT NULL,
  `descripcion_detalle_tipo_trabajo_permiso` varchar(450) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`iddetalle_tipo_trabajo_permiso`),
  KEY `fk_tipo_trabjo_has_permiso_trabajo_permiso_trabajo1_idx` (`idpermiso_trabajo`),
  KEY `fk_detalle_tipotrabajo_tipo_trabajo1_idx` (`idtipo_trabajo`),
  CONSTRAINT `fk_detalle_tipotrabajo_tipo_trabajo1` FOREIGN KEY (`idtipo_trabajo`) REFERENCES `tipo_trabajo` (`idtipo_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tipo_trabjo_has_permiso_trabajo_permiso_trabajo1` FOREIGN KEY (`idpermiso_trabajo`) REFERENCES `permiso_trabajo` (`idpermiso_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_tipo_trabajo_permiso`
--

LOCK TABLES `detalle_tipo_trabajo_permiso` WRITE;
/*!40000 ALTER TABLE `detalle_tipo_trabajo_permiso` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_tipo_trabajo_permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `correlativo` int(4) unsigned zerofill DEFAULT NULL,
  `nombre_equipo` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `marca` varchar(45) COLLATE latin1_general_cs NOT NULL,
  `modelo` varchar(45) COLLATE latin1_general_cs NOT NULL,
  `serie` varchar(250) COLLATE latin1_general_cs DEFAULT NULL,
  `cod_financiero` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `fecha_instalcion` date DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `servicio` varchar(250) COLLATE latin1_general_cs DEFAULT NULL,
  `ambiente` varchar(250) COLLATE latin1_general_cs DEFAULT NULL,
  `descripcion` varchar(300) COLLATE latin1_general_cs DEFAULT NULL,
  `clase_tec_med` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  `clase` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  `nivel_riesgo` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  `tipo_idgrupo` int(11) DEFAULT NULL,
  `conexion_otro_eq` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  `frec_uso_dia_semana` int(11) DEFAULT NULL,
  `frec_uso_hora_dia` int(11) DEFAULT NULL,
  `personal_cap` tinyint(1) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `atencion_mantenimineto_equipo` varchar(401) COLLATE latin1_general_cs DEFAULT NULL,
  `fecha_compra` date DEFAULT NULL,
  `forma_adquisicion` varchar(451) COLLATE latin1_general_cs DEFAULT NULL,
  `fecha_expiracion_garantia` date DEFAULT NULL,
  `idunidadsalud` int(2) unsigned zerofill DEFAULT NULL,
  `idarea` varchar(2) COLLATE latin1_general_cs DEFAULT NULL,
  `idestado` int(11) DEFAULT NULL,
  `idservicio_tecnico` int(11) DEFAULT NULL,
  `idfabricante` int(11) DEFAULT NULL,
  `idhospital` int(11) DEFAULT NULL,
  `iddepartamento` varchar(3) COLLATE latin1_general_cs DEFAULT NULL,
  `idregion` varchar(1) COLLATE latin1_general_cs DEFAULT NULL,
  `idgrupo` int(2) unsigned zerofill DEFAULT NULL,
  `idsubgrupo` int(11) DEFAULT NULL,
  `idtipounidad` varchar(1) COLLATE latin1_general_cs DEFAULT NULL,
  `users_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`idequipo`),
  KEY `fk_equipo_distribuidor1_idx` (`id_proveedor`),
  KEY `fk_equipo_unidadsalud1_idx` (`idunidadsalud`),
  KEY `fk_equipo_area1_idx` (`idarea`),
  KEY `fk_equipo_estado_equipo1_idx` (`idestado`),
  KEY `fk_equipo_servicio_tecnico1_idx` (`idservicio_tecnico`),
  KEY `fk_equipo_fabricante1_idx` (`idfabricante`),
  KEY `fk_equipo_hospital1_idx` (`idhospital`),
  KEY `fk_equipo_departamento1_idx` (`iddepartamento`),
  KEY `fk_equipo_region1_idx` (`idregion`),
  KEY `fk_equipo_grupo1_idx` (`idgrupo`),
  KEY `fk_equipo_subgrupo1_idx` (`idsubgrupo`),
  KEY `fk_equipo_tipounidadsalud1_idx` (`idtipounidad`),
  KEY `fk_equipo_users1_idx` (`users_id`),
  CONSTRAINT `fk_equipo_area1` FOREIGN KEY (`idarea`) REFERENCES `area` (`idarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_equipo_departamento1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_distribuidor1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_estado_equipo1` FOREIGN KEY (`idestado`) REFERENCES `estado_equipo` (`idestado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_fabricante1` FOREIGN KEY (`idfabricante`) REFERENCES `fabricante` (`idfabricante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_grupo1` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_hospital1` FOREIGN KEY (`idhospital`) REFERENCES `hospital` (`idhospital`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_region1` FOREIGN KEY (`idregion`) REFERENCES `region` (`idregion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_servicio_tecnico1` FOREIGN KEY (`idservicio_tecnico`) REFERENCES `servicio_tecnico` (`idservicio_tecnico`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_subgrupo1` FOREIGN KEY (`idsubgrupo`) REFERENCES `subgrupo` (`idsubgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_tipounidadsalud1` FOREIGN KEY (`idtipounidad`) REFERENCES `tipounidadsalud` (`idtipounidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_unidadsalud1` FOREIGN KEY (`idunidadsalud`) REFERENCES `unidadsalud` (`idunidadsalud`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_equipo_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES ('AC0000-D-n-E040000',0000,'Pulidora de 700 watts','Makita','M0920','27338K','NULL','0000-00-00','0000-00-00',0,'1','1','Pulidora uso corte de metal y concreto','NULL','NULL','NULL',0,'NULL',0,0,1,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040001',0001,'Pulidora de 700 watts','Makita','M0920','27357K','NULL','0000-00-00','0000-00-00',0,'1','1','pulidora uso corte de metal y concreto','NULL','NULL','NULL',0,'NULL',0,0,1,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040002',0002,'COMPRESOR DE AIRE CAPACIDAD DE 0.25M3','CAMPBELL HAUSFELD','MBS13209','','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,1,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040003',0003,'COMPRESOR DE 25 lbs','sin marca','sin modelo','sin serie','NULL','0000-00-00','0000-00-00',0,'1','1','compresor uso soldadura y aplicar pintura en metal y madera','NULL','NULL','NULL',0,'NULL',0,0,1,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040004',0004,'pulidora  electrica de 9 pulgadas','BOSCH','WS 22-230','SIN SERIE','NULL','0000-00-00','0000-00-00',0,'1','1','PULIDORA USO CORTE DE METAL Y CONCRETO','NULL','NULL','NULL',0,'NULL',0,0,1,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040005',0005,'BARRENO DE RAIZ DE 1/2','DEWALT','SIN MODELO','SIN SERIE','NULL','0000-00-00','0000-00-00',0,'1','1','PARA USO DE OBRA CIVIL','NULL','NULL','NULL',0,'NULL',0,0,1,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040006',0006,'BARRENO DE RAIZ DE 1/2','sin marca','sin modelo','sin serie','NULL','0000-00-00','0000-00-00',0,'1','1','USO DE OBRA CIVIL','NULL','NULL','NULL',0,'NULL',0,0,1,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040007',0007,'BARRENO DE TRES MODALIDADES','sin marca','sin modelo','sin serie','NULL','0000-00-00','0000-00-00',0,'1','1','ROTOMARTILLO','NULL','NULL','NULL',0,'NULL',0,0,1,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040008',0008,'MEZCLADORA PARA CONCRETO 1.5 SACOS','JOPER','sin modelo','B48094','NULL','0000-00-00','0000-00-00',0,'1','1','MEZCLADORA DE CONCRETO','NULL','NULL','NULL',0,'NULL',0,0,1,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040009',0009,'ASPIRADORA EN SECO Y MOJADO','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040010',0010,'ASPIRADORA EN SECO Y MOJADO','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040011',0011,'COMPRESOR DE 100 LITROS','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040012',0012,'DESBROSADORA','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040013',0013,'DESBROSADORA','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040014',0014,'DESBROSADORA','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040015',0015,'DESBROSADORA','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040016',0016,'CORTADORA DE CESPED DE TRACCION','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040017',0017,'CORTADORA DE CESPED DE EMPUJE','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040018',0018,'PULIDORA DE 4 1/2','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040019',0019,'PULIDORA DE 4 1/2','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040020',0020,'PULIDORA DE 4 1/2','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040021',0021,'ROUTER','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040022',0022,'SIERRA CIRCULAR DE 8 1/2','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040023',0023,'BARRENO DE 1/2','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040024',0024,'PULIDORA DE 4 1/2','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1),('AC0000-D-n-E040025',0025,'PULIDORA DE 4 1/2','NULL','NULL','NULL','NULL','0000-00-00','0000-00-00',0,'1','1','NULL','NULL','NULL','NULL',0,'NULL',0,0,0,1,'NULL','0000-00-00','NULL','0000-00-00',04,'AC',1,1,1,1,'-n-','D',00,681,'E',1);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_updActualCorrelativo` AFTER INSERT ON `equipo`
 FOR EACH ROW UPDATE conf_corr set conf_corr.actual=conf_corr.actual + 1 
WHERE conf_corr.idsubgrupo=NEW.idsubgrupo */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estado_equipo`
--

DROP TABLE IF EXISTS `estado_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_equipo` (
  `idestado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_equipo`
--

LOCK TABLES `estado_equipo` WRITE;
/*!40000 ALTER TABLE `estado_equipo` DISABLE KEYS */;
INSERT INTO `estado_equipo` VALUES (1,'Bueno'),(2,'Reparable'),(3,'Descartable');
/*!40000 ALTER TABLE `estado_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricante` (
  `idfabricante` int(11) NOT NULL AUTO_INCREMENT,
  `direccion_fabricante` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `telefono_fabricante` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `fax_fabricante` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `correo_fabricante` varchar(100) COLLATE latin1_general_cs DEFAULT NULL,
  `contacto_fabricante` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `direccion_guatemala_fabricante` varchar(400) COLLATE latin1_general_cs DEFAULT NULL,
  `telefono_guatemala_fabricante` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  `correo_guatemala_fabricante` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idfabricante`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,'Ciudad, pais ',NULL,NULL,'info@3m.com ','3M ','Guatemala, Guatemala ',NULL,'info@3m.com '),(2,'Ciudad, pais ',NULL,NULL,'info@AARONBOVIE.com ','AARON BOVIE ','Guatemala, Guatemala ',NULL,'info@AARONBOVIE.com '),(3,'Ciudad, pais ',NULL,NULL,'info@A-DEC.com ','A-DEC ','Guatemala, Guatemala ',NULL,'info@A-DEC.com '),(4,'Ciudad, pais ',NULL,NULL,'info@ALLIED HEALTHCARE.com ','ALLIED HEALTHCARE ','Guatemala, Guatemala ',NULL,'info@ALLIED HEALTHCARE.com '),(5,'Ciudad, pais ',NULL,NULL,'info@AMERICAN EAGLE.comAMERICAN EAGLE, HENRY SCHEIN ','STURDY ','Guatemala, Guatemala ',NULL,'info@AMERICAN EAGLE.com '),(6,'Ciudad, pais ',NULL,NULL,'info@AMVEX.com ','AMVEX ','Guatemala, Guatemala ',NULL,'info@AMVEX.com '),(7,'Ciudad, pais ',NULL,NULL,'info@BMEDICALSYSTEMS.com ','B MEDICAL SYSTEMS (formerly DOMETIC) ','Guatemala, Guatemala ',NULL,'info@BMEDICALSYSTEMS.com '),(8,'Ciudad, pais ',NULL,NULL,'info@BAILEY.com ','BAILEY ','Guatemala, Guatemala ',NULL,'info@BAILEY.com '),(9,'Ciudad, pais ',NULL,NULL,'info@BAILEY-PATTERSON.com ','BAILEY-PATTERSON ','Guatemala, Guatemala ',NULL,'info@BAILEY-PATTERSON.com '),(10,'Ciudad, pais ',NULL,NULL,'info@BAKERS.com ','BAKERS ','Guatemala, Guatemala ',NULL,'info@BAKERS.com '),(11,'Ciudad, pais ',NULL,NULL,'info@BARKEY.com ','BARKEY ','Guatemala, Guatemala ',NULL,'info@BARKEY.com '),(12,'Ciudad, pais ',NULL,NULL,'info@BARRFAB.com ','BARRFAB ','Guatemala, Guatemala ',NULL,'info@BARRFAB.com '),(13,'Ciudad, pais ',NULL,NULL,'info@BARRIER TECHNOLOGIES.com ','BARRIER TECHNOLOGIES ','Guatemala, Guatemala ',NULL,'info@BARRIER TECHNOLOGIES.com '),(14,'Ciudad, pais ',NULL,NULL,'info@BEVERAGE-AIR.com ','BEVERAGE-AIR ','Guatemala, Guatemala ',NULL,'info@BEVERAGE-AIR.com '),(15,'Ciudad, pais ',NULL,NULL,'info@BIO-MED DEVICES.com ','BIO-MED DEVICES ','Guatemala, Guatemala ',NULL,'info@BIO-MED DEVICES.com '),(16,'Ciudad, pais ',NULL,NULL,'info@BOSS INSTRUMENTS.com ','BOSS INSTRUMENTS / EPOS MEDICAL ','Guatemala, Guatemala ',NULL,'info@BOSS INSTRUMENTS.com '),(17,'Ciudad, pais ',NULL,NULL,'info@BTL.com ','BTL ','Guatemala, Guatemala ',NULL,'info@BTL.com '),(18,'Ciudad, pais ',NULL,NULL,'info@CAPSA SOLUTIONS.com ','CAPSA SOLUTIONS ','Guatemala, Guatemala ',NULL,'info@CAPSA SOLUTIONS.com '),(19,'Ciudad, pais ',NULL,NULL,'info@CARDINAL.com ','CARDINAL ','Guatemala, Guatemala ',NULL,'info@CARDINAL.com '),(20,'Ciudad, pais ',NULL,NULL,'info@CAREFUSION.com ','CAREFUSION ','Guatemala, Guatemala ',NULL,'info@CAREFUSION.com '),(21,'Ciudad, pais ',NULL,NULL,'info@MICROMEDICAL.com ','CAREFUSION / MICROMEDICAL ','Guatemala, Guatemala ',NULL,'info@MICROMEDICAL.com '),(22,'Ciudad, pais ',NULL,NULL,'info@CASTLE.com ','CASTLE ','Guatemala, Guatemala ',NULL,'info@CASTLE.com '),(23,'Ciudad, pais ',NULL,NULL,'info@CHATTANOOGA.com ','CHATTANOOGA ','Guatemala, Guatemala ',NULL,'info@CHATTANOOGA.com '),(24,'Ciudad, pais ',NULL,NULL,'info@CHEN KUANG.com ','CHEN KUANG ','Guatemala, Guatemala ',NULL,'info@CHEN KUANG.com '),(25,'Ciudad, pais ',NULL,NULL,'info@CHICAGO DRYER.com ','CHICAGO DRYER ','Guatemala, Guatemala ',NULL,'info@CHICAGO DRYER.com '),(26,'Ciudad, pais ',NULL,NULL,'info@CHINESPORT.com ','CHINESPORT ','Guatemala, Guatemala ',NULL,'info@CHINESPORT.com '),(27,'Ciudad, pais ',NULL,NULL,'info@CLINTON INDUSTRIES.com ','CLINTON INDUSTRIES ','Guatemala, Guatemala ',NULL,'info@CLINTON INDUSTRIES.com '),(28,'Ciudad, pais ',NULL,NULL,'info@COLE PARMER.com ','COLE PARMER ','Guatemala, Guatemala ',NULL,'info@COLE PARMER.com '),(29,'Ciudad, pais ',NULL,NULL,'info@CONTINENTAL.com ','CONTINENTAL ','Guatemala, Guatemala ',NULL,'info@CONTINENTAL.com '),(30,'Ciudad, pais ',NULL,NULL,'info@CONTINENTAL.com ','CONTINENTAL ','Guatemala, Guatemala ',NULL,'info@CONTINENTAL.com '),(31,'Ciudad, pais ',NULL,NULL,'info@DELTATRAK.com ','DELTATRAK ','Guatemala, Guatemala ',NULL,'info@DELTATRAK.com '),(32,'Ciudad, pais ',NULL,NULL,'info@DENTSPLYSIRONA.com ','DENTSPLY SIRONA HELIODENT PLUS ','Guatemala, Guatemala ',NULL,'info@DENTSPLYSIRONA.com '),(33,'Ciudad, pais ',NULL,NULL,'info@DETECTO.com ','DETECTO ','Guatemala, Guatemala ',NULL,'info@DETECTO.com '),(34,'Ciudad, pais ',NULL,NULL,'info@DIMEDA.com ','DIMEDA ','Guatemala, Guatemala ',NULL,'info@DIMEDA.com '),(35,'Ciudad, pais ',NULL,NULL,'info@DOMETAL.com ','DOMETAL ','Guatemala, Guatemala ',NULL,'info@DOMETAL.com '),(36,'Ciudad, pais ',NULL,NULL,'info@DR.MACH.com ','DR. MACH ','Guatemala, Guatemala ',NULL,'info@DR.MACH.com '),(37,'Ciudad, pais ',NULL,NULL,'info@DRIVEMEDICAL.com ','DRIVE MEDICAL ','Guatemala, Guatemala ',NULL,'info@DRIVEMEDICAL.com '),(38,'Ciudad, pais ',NULL,NULL,'info@DUKEMANUFACTURIGN.com ','DUKE MANUFACTURIGN ','Guatemala, Guatemala ',NULL,'info@DUKEMANUFACTURIGN.com '),(39,'Ciudad, pais ',NULL,NULL,'info@EDAN.com ','EDAN ','Guatemala, Guatemala ',NULL,'info@EDAN.com '),(40,'Ciudad, pais ',NULL,NULL,'info@EDANINSTRUMENTS.com ','EDAN INSTRUMENTS ','Guatemala, Guatemala ',NULL,'info@EDANINSTRUMENTS.com '),(41,'Ciudad, pais ',NULL,NULL,'info@ELI-EZER.com ','ELI-EZER ','Guatemala, Guatemala ',NULL,'info@ELI-EZER.com '),(42,'Ciudad, pais ',NULL,NULL,'info@ERBE.com ','ERBE ','Guatemala, Guatemala ',NULL,'info@ERBE.com '),(43,'Ciudad, pais ',NULL,NULL,'info@EYMASA.com ','EYMASA ','Guatemala, Guatemala ',NULL,'info@EYMASA.com '),(44,'Ciudad, pais ',NULL,NULL,'info@FABRICATIONENTERPRISES.com ','FABRICATION ENTERPRISES ','Guatemala, Guatemala ',NULL,'info@FABRICATIONENTERPRISES.com '),(45,'Ciudad, pais ',NULL,NULL,'info@FEI-THERABAND.com ','FEI-THERABAND ','Guatemala, Guatemala ',NULL,'info@FEI-THERABAND.com '),(46,'Ciudad, pais ',NULL,NULL,'info@FRYMASTER.com ','FRYMASTER ','Guatemala, Guatemala ',NULL,'info@FRYMASTER.com '),(47,'Ciudad, pais ',NULL,NULL,'info@FUJIFILM.com ','FUJIFILM ','Guatemala, Guatemala ',NULL,'info@FUJIFILM.com '),(48,'Ciudad, pais ',NULL,NULL,'info@FUXION.com ','FUXION ','Guatemala, Guatemala ',NULL,'info@FUXION.com '),(49,'Ciudad, pais ',NULL,NULL,'info@GARLAND.com ','GARLAND ','Guatemala, Guatemala ',NULL,'info@GARLAND.com '),(50,'Ciudad, pais ',NULL,NULL,'info@GENERALELECTRIC.com ','GENERAL ELECTRIC ','Guatemala, Guatemala ',NULL,'info@GENERALELECTRIC.com '),(51,'Ciudad, pais ',NULL,NULL,'info@GENERAL PHYSIOTHERAPY.com ','GENERAL PHYSIOTHERAPY ','Guatemala, Guatemala ',NULL,'info@GENERAL PHYSIOTHERAPY.com '),(52,'Ciudad, pais ',NULL,NULL,'info@GILRAS.com ','GILRAS ','Guatemala, Guatemala ',NULL,'info@GILRAS.com '),(53,'Ciudad, pais ',NULL,NULL,'info@GRAFCO.com ','GRAFCO ','Guatemala, Guatemala ',NULL,'info@GRAFCO.com '),(54,'Ciudad, pais ',NULL,NULL,'info@GRAFCO.com ','GRAFCO / GF ','Guatemala, Guatemala ',NULL,'info@GRAFCO.com '),(55,'Ciudad, pais ',NULL,NULL,'info@GRINDMASTER.com ','GRINDMASTER ','Guatemala, Guatemala ',NULL,'info@GRINDMASTER.com '),(56,'Ciudad, pais ',NULL,NULL,'info@GUATEINOX.com ','GUATEINOX ','Guatemala, Guatemala ',NULL,'info@GUATEINOX.com  '),(57,'Ciudad, pais ',NULL,NULL,'info@GUIDE CRAFT.com ','GUIDE CRAFT ','Guatemala, Guatemala ',NULL,'info@GUIDE CRAFT.com '),(58,'Ciudad, pais ',NULL,NULL,'info@HEALTH O METER.com ','HEALTH O METER ','Guatemala, Guatemala ',NULL,'info@HEALTH O METER.com '),(59,'Ciudad, pais ',NULL,NULL,'info@HEINE.com ','HEINE ','Guatemala, Guatemala ',NULL,'info@HEINE.com '),(60,'Ciudad, pais ',NULL,NULL,'info@HELMER.com ','HELMER ','Guatemala, Guatemala ',NULL,'info@HELMER.com '),(61,'Ciudad, pais ',NULL,NULL,'info@HERSILL.com ','HERSILL ','Guatemala, Guatemala ',NULL,'info@HERSILL.com '),(62,'Ciudad, pais ',NULL,NULL,'info@HILLROM.com ','HILLROM ','Guatemala, Guatemala ',NULL,'info@HILLROM.com '),(63,'Ciudad, pais ',NULL,NULL,'info@HOSPIRA.com ','HOSPIRA ','Guatemala, Guatemala ',NULL,'info@HOSPIRA.com '),(64,'Ciudad, pais ',NULL,NULL,'info@HUMAN GmbH.com ','HUMAN GmbH ','Guatemala, Guatemala ',NULL,'info@HUMAN GmbH.com '),(65,'Ciudad, pais ',NULL,NULL,'info@HUVITZ.com ','HUVITZ ','Guatemala, Guatemala ',NULL,'info@HUVITZ.com '),(66,'Ciudad, pais ',NULL,NULL,'info@IB3 HEALTH.com ','IB3 HEALTH ','Guatemala, Guatemala ',NULL,'info@IB3 HEALTH.com '),(67,'Ciudad, pais ',NULL,NULL,'info@INDREL.com ','INDREL ','Guatemala, Guatemala ',NULL,'info@INDREL.com '),(68,'Ciudad, pais ',NULL,NULL,'info@INNOMED.com ','INNOMED ','Guatemala, Guatemala ',NULL,'info@INNOMED.com '),(69,'Ciudad, pais ',NULL,NULL,'info@JONCN.com ','JONCN ','Guatemala, Guatemala ',NULL,'info@JONCN.com '),(70,'Ciudad, pais ',NULL,NULL,'info@JUKI.com ','JUKI ','Guatemala, Guatemala ',NULL,'info@JUKI.com '),(71,'Ciudad, pais ',NULL,NULL,'info@KAPS.com ','KAPS ','Guatemala, Guatemala ',NULL,'info@KAPS.com '),(72,'Ciudad, pais ',NULL,NULL,'info@KARL STORZ.com ','KARL STORZ ','Guatemala, Guatemala ',NULL,'info@KARL STORZ.com '),(73,'Ciudad, pais ',NULL,NULL,'info@KLS MARTIN.com ','KLS MARTIN ','Guatemala, Guatemala ',NULL,'info@KLS MARTIN.com '),(74,'Ciudad, pais ',NULL,NULL,'info@L&K.com ','L&K ','Guatemala, Guatemala ',NULL,'info@L&K.com '),(75,'Ciudad, pais ',NULL,NULL,'info@LEM.com ','LEM ','Guatemala, Guatemala ',NULL,'info@LEM.com '),(76,'Ciudad, pais ',NULL,NULL,'info@LOS PINOS.com ','LOS PINOS ','Guatemala, Guatemala ',NULL,'info@LOS PINOS.com '),(77,'Ciudad, pais ',NULL,NULL,'info@LUMEX.com ','LUMEX ','Guatemala, Guatemala ',NULL,'info@LUMEX.com '),(78,'Ciudad, pais ',NULL,NULL,'info@LUXFERom ','LUXFER, WESTERN ','Guatemala, Guatemala ',NULL,'info@LUXFERom '),(79,'Ciudad, pais ',NULL,NULL,'info@LUXVISION.com ',' LUXVISION ','Guatemala, Guatemala ',NULL,'info@LUXVISION.com '),(80,'Ciudad, pais ',NULL,NULL,'info@ANNOVI REVERBERI.com ','MAGIC / ANNOVI REVERBERI ','Guatemala, Guatemala ',NULL,'info@ANNOVI REVERBERI.com '),(81,'Ciudad, pais ',NULL,NULL,'info@MAIMIN.com ','MAIMIN ','Guatemala, Guatemala ',NULL,'info@MAIMIN.com '),(82,'Ciudad, pais ',NULL,NULL,'info@MATACHANA.com ','MATACHANA ','Guatemala, Guatemala ',NULL,'info@MATACHANA.com '),(83,'Ciudad, pais ',NULL,NULL,'info@MAXI.com ','MAXI ','Guatemala, Guatemala ',NULL,'info@MAXI.com '),(84,'Ciudad, pais ',NULL,NULL,'info@MAXICO.com ','MAXI COMPANIES (MAXICO) ','Guatemala, Guatemala ',NULL,'info@MAXICO.com '),(85,'Ciudad, pais ',NULL,NULL,'info@MD.com ','MD ','Guatemala, Guatemala ',NULL,'info@MD.com '),(86,'Ciudad, pais ',NULL,NULL,'info@MECTRON.com ','MECTRON ','Guatemala, Guatemala ',NULL,'info@MECTRON.com '),(87,'Ciudad, pais ',NULL,NULL,'info@MEDGYN.com ','MEDGYN ','Guatemala, Guatemala ',NULL,'info@MEDGYN.com '),(88,'Ciudad, pais ',NULL,NULL,'info@MEDICAL MASTER.com ','MEDICAL MASTER ','Guatemala, Guatemala ',NULL,'info@MEDICAL MASTER.com '),(89,'Ciudad, pais ',NULL,NULL,'info@MEDIK MEDICAL.com ','MEDIK MEDICAL ','Guatemala, Guatemala ',NULL,'info@MEDIK MEDICAL.com '),(90,'Ciudad, pais ',NULL,NULL,'info@MEDILAND.com ','MEDILAND ','Guatemala, Guatemala ',NULL,'info@MEDILAND.com '),(91,'Ciudad, pais ',NULL,NULL,'info@MEDISA.com ','MEDISA ','Guatemala, Guatemala ',NULL,'info@MEDISA.com '),(92,'Ciudad, pais ',NULL,NULL,'info@MEDTRONIC.com ','MEDTRONIC ','Guatemala, Guatemala ',NULL,'info@MEDTRONIC.com '),(93,'Ciudad, pais ',NULL,NULL,'info@MINDRAY.com ','MINDRAY ','Guatemala, Guatemala ',NULL,'info@MINDRAY.com '),(94,' Ciudad, pais ',NULL,NULL,'info@MORTARA.com ','MORTARA ','Guatemala, Guatemala ',NULL,'info@MORTARA.com '),(95,'Ciudad, pais ',NULL,NULL,'info@MORTARA.com ','MORTARA / QUINTON ','Guatemala, Guatemala ',NULL,'info@MORTARA.com '),(96,'Ciudad, pais ',NULL,NULL,'info@MOYER DIEBEL.com ','MOYER DIEBEL ','Guatemala, Guatemala ',NULL,'info@MOYER DIEBEL.com '),(97,'Ciudad, pais ',NULL,NULL,'info@MUDI.com ','MUDI ','Guatemala, Guatemala ',NULL,'info@MUDI.com '),(98,'Ciudad, pais ',NULL,NULL,'info@NATUS.com ','NATUS ','Guatemala, Guatemala ',NULL,'info@NATUS.com '),(99,'Ciudad, pais ',NULL,NULL,'info@NIHON KOHDEN.com ','NIHON KOHDEN ','Guatemala, Guatemala ',NULL,'info@NIHON KOHDEN.com '),(100,'Ciudad, pais ',NULL,NULL,'info@NOPA INSTRUMENTS.com ','NOPA INSTRUMENTS ','Guatemala, Guatemala ',NULL,'info@NOPA INSTRUMENTS.com '),(101,'Ciudad, pais ',NULL,NULL,'info@EPOS MEDICAL.com ','NOPA INSTRUMENTS / EPOS MEDICAL ','Guatemala, Guatemala ',NULL,'info@EPOS MEDICAL.com '),(102,'Ciudad, pais ',NULL,NULL,'info@NOPA INSTRUMENTS.com ','NOPA INSTRUMENTS KLS MARTIN ','Guatemala, Guatemala ',NULL,'info@NOPA INSTRUMENTS.com '),(103,'Ciudad, pais ',NULL,NULL,'info@NORRIS CYLINDER.com ','NORRIS CYLINDER COMPANY FÁBRICA DE INSTRUMENTOS Y EQUIPOS, S.A. de C.V. (FINESA) ','Guatemala, Guatemala ',NULL,'info@NORRIS CYLINDER.com '),(104,'Ciudad, pais ',NULL,NULL,'info@OEC 9800 .com ','OEC 9800  ','Guatemala, Guatemala ',NULL,'info@OEC 9800 .com '),(105,'Ciudad, pais ',NULL,NULL,'info@OHAUS.com ','OHAUS ','Guatemala, Guatemala ',NULL,'info@OHAUS.com '),(106,' Ciudad, pais ',NULL,NULL,'info@SPX 2201.com ','OHAUS/ SPX 2201 ','Guatemala, Guatemala ',NULL,'info@SPX 2201.com '),(107,'Ciudad, pais ',NULL,NULL,'info@OMCAN.com ','OMCAN ','Guatemala, Guatemala ',NULL,'info@OMCAN.com '),(108,'Ciudad, pais ',NULL,NULL,'info@ORION.com ','ORION (THERMO SCIENTIFIC) ','Guatemala, Guatemala ',NULL,'info@ORION.com '),(109,'Ciudad, pais ',NULL,NULL,'info@PANASONIC.com ','PANASONIC ','Guatemala, Guatemala ',NULL,'info@PANASONIC.com '),(110,'Ciudad, pais ',NULL,NULL,'info@PATTERSON MEDICAL.com ','PATTERSON MEDICAL ','Guatemala, Guatemala ',NULL,'info@PATTERSON MEDICAL.com '),(111,'Ciudad, pais ',NULL,NULL,'info@PATTERSON MEDICAL.com ','PATTERSON MEDICAL - CANDO - THERABAND  ','Guatemala, Guatemala ',NULL,'info@PATTERSON MEDICAL.com '),(112,'Ciudad, pais ',NULL,NULL,'info@PATTERSON MEDICAL.com ','PATTERSON MEDICAL - HAUSMANN ','Guatemala, Guatemala ',NULL,'info@PATTERSON MEDICAL.com '),(113,'Ciudad, pais ',NULL,NULL,'info@PATTERSON MEDICAL.com ','PATTERSON MEDICAL - MONARK ','Guatemala, Guatemala ',NULL,'info@PATTERSON MEDICAL.com '),(114,'Ciudad, pais ',NULL,NULL,'info@PATTERSON MEDICAL.com ','PATTERSON MEDICAL - PNEUMAX ','Guatemala, Guatemala ',NULL,'info@PATTERSON MEDICAL.com '),(115,'Ciudad, pais ',NULL,NULL,'info@PATTERSON MEDICAL.com ','PATTERSON MEDICAL - WAHL ','Guatemala, Guatemala ',NULL,'info@PATTERSON MEDICAL.com '),(116,'Ciudad, pais ',NULL,NULL,'info@PHILIPS.com ','PHILIPS ','Guatemala, Guatemala ',NULL,'info@PHILIPS.com '),(117,'Ciudad, pais ',NULL,NULL,'info@PONY.com ','PONY ','Guatemala, Guatemala ',NULL,'info@PONY.com '),(118,'Ciudad, pais ',NULL,NULL,'info@PRECISION MEDICAL.com ','PRECISION MEDICAL ','Guatemala, Guatemala ',NULL,'info@PRECISION MEDICAL.com '),(119,'Ciudad, pais ',NULL,NULL,'info@PROGENERICA.com ','PROGENERICA ','Guatemala, Guatemala ',NULL,'info@PROGENERICA.com '),(120,'Ciudad, pais ',NULL,NULL,'info@PRO-X.com ','PRO-X (FIREX) ','Guatemala, Guatemala ',NULL,'info@PRO-X.com '),(121,'Ciudad, pais ',NULL,NULL,'info@MEDTRONIC.com ','PURITAN BENNETT DE COVIDIEN / MEDTRONIC ','Guatemala, Guatemala ',NULL,'info@MEDTRONIC.com '),(122,'Ciudad, pais ',NULL,NULL,'info@REDA.com ','REDA ','Guatemala, Guatemala ',NULL,'info@REDA.com '),(123,'Ciudad, pais ',NULL,NULL,'info@RICE LAKE.com ','RICE LAKE ','Guatemala, Guatemala ',NULL,'info@RICE LAKE.com '),(124,'Ciudad, pais ',NULL,NULL,'info@RIESTER.com ','RIESTER ','Guatemala, Guatemala ',NULL,'info@RIESTER.com '),(125,'Ciudad, pais ',NULL,NULL,'info@ROBOT COUPE.com ','ROBOT COUPE ','Guatemala, Guatemala ',NULL,'info@ROBOT COUPE.com '),(126,'Ciudad, pais ',NULL,NULL,'info@SAKURA.com ','SAKURA ','Guatemala, Guatemala ',NULL,'info@SAKURA.com '),(127,'Ciudad, pais ',NULL,NULL,'info@SCHULZ.com ','SCHULZ ','Guatemala, Guatemala ',NULL,'info@SCHULZ.com '),(128,'Ciudad, pais ',NULL,NULL,'info@SDI.com ','SDI ','Guatemala, Guatemala ',NULL,'info@SDI.com '),(129,'Ciudad, pais ',NULL,NULL,'info@SECA.com ','SECA ','Guatemala, Guatemala ',NULL,'info@SECA.com '),(130,'Ciudad, pais ',NULL,NULL,'info@SERCON.com ','SERCON ','Guatemala, Guatemala ',NULL,'info@SERCON.com '),(131,'Ciudad, pais ',NULL,NULL,'info@SIEMENS.com ','SIEMENS ','Guatemala, Guatemala ',NULL,'info@SIEMENS.com '),(132,'Ciudad, pais ',NULL,NULL,'info@SMAF.com ','SMAF ','Guatemala, Guatemala ',NULL,'info@SMAF.com '),(133,'Ciudad, pais ',NULL,NULL,'info@SOUTHBEND.com ','SOUTHBEND ','Guatemala, Guatemala ',NULL,'info@SOUTHBEND.com '),(134,'Ciudad, pais ',NULL,NULL,'info@SPORTS ART.com ','SPORTS ART ','Guatemala, Guatemala ',NULL,'info@SPORTS ART.com '),(135,'Ciudad, pais ',NULL,NULL,'info@STEELCO.com ','STEELCO ','Guatemala, Guatemala ',NULL,'info@STEELCO.com '),(136,'Ciudad, pais ',NULL,NULL,'info@SUPERKLEAN.com ','SUPERKLEAN ','Guatemala, Guatemala ',NULL,'info@SUPERKLEAN.com '),(137,'Ciudad, pais ',NULL,NULL,'info@TENKO.com ','TEKNO-MEDICAL ','Guatemala, Guatemala ',NULL,'info@TENKO.com '),(138,'Ciudad, pais ',NULL,NULL,'info@TENKO.com ','TEKNO-MEDICAL Optik-Chirurgie GmbH ','Guatemala, Guatemala ',NULL,'info@TENKO.com '),(139,'Ciudad, pais',NULL,NULL,'info@TENKO.com','TENKO','Guatemala, Guatemala',NULL,'info@TENKO.com'),(140,'Ciudad, pais ',NULL,NULL,'info@TERUMOBCT.com ','TERUMOBCT ','Guatemala, Guatemala ',NULL,'info@TERUMOBCT.com '),(141,'Ciudad, pais ',NULL,NULL,'info@THERA-BAND.com ','THERA-BAND ','Guatemala, Guatemala ',NULL,'info@THERA-BAND.com '),(142,'Ciudad, pais ',NULL,NULL,'info@THERMO.com ','THERMO ','Guatemala, Guatemala ',NULL,'info@THERMO.com '),(143,'Ciudad, pais ',NULL,NULL,'info@THERMOSCIENTIFIC.com ','THERMO SCIENTIFIC ','Guatemala, Guatemala ',NULL,'info@THERMOSCIENTIFIC.com '),(144,'Ciudad, pais ',NULL,NULL,'info@UNICO.com ','UNICO ','Guatemala, Guatemala ',NULL,'info@UNICO.com '),(145,'Ciudad, pais ',NULL,NULL,'info@UNIVEX.com ','UNIVEX ','Guatemala, Guatemala ',NULL,'info@UNIVEX.com '),(146,'Ciudad, pais ',NULL,NULL,'info@UNIWORLD.com ','UNIWORLD ','Guatemala, Guatemala ',NULL,'info@UNIWORLD.com '),(147,'Ciudad, pais ',NULL,NULL,'info@VOLK.com ','VOLK ','Guatemala, Guatemala ',NULL,'info@VOLK.com '),(148,'Ciudad, pais ',NULL,NULL,'info@VULCAN.com ','VULCAN ','Guatemala, Guatemala ',NULL,'info@VULCAN.com '),(149,'Ciudad, pais ',NULL,NULL,'info@WALLACH.com ','WALLACH ','Guatemala, Guatemala ',NULL,'info@WALLACH.com '),(150,'Ciudad, pais ',NULL,NULL,'info@WANROE.com ','WANROE ','Guatemala, Guatemala ',NULL,'info@WANROE.com '),(151,' Ciudad, pais ',NULL,NULL,'info@WATERWISE.com ','WATERWISE ','Guatemala, Guatemala ',NULL,'info@WATERWISE.com '),(152,'Ciudad, pais ',NULL,NULL,'info@WELCH ALLYN.com ','WELCH ALLYN ','Guatemala, Guatemala ',NULL,'info@WELCH ALLYN.com '),(153,'Ciudad, pais ',NULL,NULL,'info@WELDON.com ','WELDON ','Guatemala, Guatemala ',NULL,'info@WELDON.com '),(154,'Ciudad, pais ',NULL,NULL,'info@WHITEHALL.com ','WHITEHALL ','Guatemala, Guatemala ',NULL,'info@WHITEHALL.com '),(155,'Ciudad, pais ',NULL,NULL,'info@WINCO.com ','WINCO ','Guatemala, Guatemala ',NULL,'info@WINCO.com '),(156,'Ciudad, pais ',NULL,NULL,'info@WOLF.com ','WOLF ','Guatemala, Guatemala ',NULL,'info@WOLF.com '),(157,'Ciudad, pais ',NULL,NULL,'info@YUWELL.com ','YUWELL ','Guatemala, Guatemala ',NULL,'info@YUWELL.com '),(158,'Ciudad, pais ',NULL,NULL,'info@ZIMMER BIOMET.com ','ZIMMER BIOMET ','Guatemala, Guatemala ',NULL,'info@ZIMMER BIOMET.com '),(159,'Ciudad, pais ',NULL,NULL,'info@ZOLL.com ','ZOLL ','Guatemala, Guatemala ',NULL,'info@ZOLL.com '),(160,'3315 Commercel Parkway, Miramar, Florida 33025 ','8008451230 ','9548461672 ','sales@hytera.us  ','HYT América  ','-- ','-- ','sales@hytera.us '),(161,'6ta. calle 21-37 Zona 3 Quetzaltenango ','55144494 ',NULL,'info@serviplagas.com.gt ','Serviplagas ','6ta. calle 21-37 Zona 3 Quetzaltenango ','55144494 ','info@serviplagas.com.gt '),(162,'7 Av. 10-69 Z.5, Quetzaltenango ','77206000 ',NULL,'oquiroa@productosdelaire.com ','Productos del Aire ','7 Av. 10-69 Z.5, Quetzaltenango ','77206000 ','oquiroa@productosdelaire.com '),(163,'Calzada Atanasio Tzul 19-97 Z.12, Complejo Empresarial El Cortijo 1 B.713, Zona 12, Ciudad de Guatemala, Guatemala','54118162',NULL,'info.gt@grupoequipsa.net','Grupo Equipsa','Calzada Atanasio Tzul 19-97 Z.12, Complejo Empresarial El Cortijo 1 B.713, Zona 12, Ciudad de Guatemala, Guatemala','54118162','info.gt@grupoequipsa.net'),(164,'Peterborough PE1 5NA United Kingdom','+44 (0) 1733 583000','(0) 1733 582240','info@perkins.com','TECUN - ELECTRICA','Guatemala, Guatemala',NULL,'info@perkins.com'),(165,'2300 Badger Drive Waukesha, WI 53188-5351','414-896-2350','414-896-2350','info@cooperpower.com','COOPERPOWER - ELECTRICA','Guatemala, Guatemala',NULL,'info@cooperpower.com'),(166,'One Pauwels Drive, Washington, Missouri 63090, USA','+636 239 9300','+1 636 239 939','info@cgglobal.com','CGGLOBAL - ELECTRICA','Guatemala, Guatemala',NULL,'info@cgglobal.com'),(167,'5400 Triangle Parkway Norcross, Georgia 30092','(800) 743-6367','(800) 832-6569','info@w3.usa.siemens.com','SIEMENS - ELECTRICA','Guatemala, Guatemala',NULL,'info@w3.usa.siemens.com'),(168,'Ulrich Spiesshofer. Affolternstrasse 44, 8050 Zúrich, Suiza','+41 43 317 7111','+4143 317 4420','contact.center@mx.abb.com','ABB - ELECTRICA','Guatemala, Guatemala',NULL,'contact.center@mx.abb.com'),(169,'703 Waterford Way Suite 850 33126 Miami. Fl USA','+1 305 266 5005','+1 305 266 9695','info@apc.com','APC - ELECTRICA','Guatemala, Guatemala',NULL,'info@apc.com'),(170,'601 Old Airport Road Bristol, VA 24201 USA','+1 276 669 4084','+1 276 669 1869','info@federalpacific.com','FEDERALPACIFIC - ELECTRICA','Guatemala, Guatemala',NULL,'info@federalpacific.com'),(171,'1720 Sublette Avenue   St. Louis, MO 63110','314-771-2400','800-444-3954','techsupport@alliedhpi.com','ALLIED HEALTHCARE - BIOMÉDICA','Guatemala, Guatemala',NULL,'techsupport@alliedhpi.com'),(172,'Ciudad, pais ','23817600 ','23817600 ','miguelangel.godoy@otis.com ','OTIS - MECANICA ','Guatemala, Guatemala ','23817600 ','miguelangel.godoy@otis.com '),(173,'Campbell Hausfeld, 225 Pictoria Drive, Suite 210, Cincinnati, OH 45246 ','1-866-226-2102 ','1-866-242-2558 ','cscommercial@campbellhausfeld.com ','Campbell Hausfeld - MECANICA ','Guatemala, Guatemala ',NULL,'cscommercial@campbellhausfeld.com '),(174,'Félix González Salinas 1277, Col. Ancón del Huajuco, Monterrey, N.L. ','(81) 8359-8531 ','(81) 8359-8531 ','culligan@aquajaker.com ','CULLIGAN - MECANICA ','Guatemala, Guatemala ',NULL,'culligan@aquajaker.com '),(175,'968 South Oriole Dr. Suite 207 Virginia Beach, VA 23451 ','(757) 497-3567 ','(804) 321-3112 ','sales@tla-va.com ','BELL & GOSSET - MECANICA ','Guatemala, Guatemala ',NULL,'sales@tla-va.com '),(176,'3409 W Lemon St, Tampa, FL 33609, USA ','(813) 250-3535 ','(813) 250-3636 ','DuaneJ@hamiltonengineering.us ','Hamilton Enginnering - MECANICA ','Guatemala, Guatemala ',NULL,'DuaneJ@hamiltonengineering.us '),(177,'Planta baja de Paseo de la Primavera No. 130 interior 100 Col. La Florida Naucalpán Edo. de México C.P. 53160 ','+52 (55) 53637807 ','+52(55)53734799 ','ventastecnicas@watsonmc.com.mx ','Watson Mcdaniel - MECANICA ','Guatemala, Guatemala ',NULL,'ventastecnicas@watsonmc.com.mx '),(178,'Georgia, Estados Unidos ','1-800-331-1956 ','1-800-331-1956 ','info@cbservice.com ','Cleaver-Brooks - MECANICA ','Guatemala, Guatemala ',NULL,'info@cbservice.com '),(179,'75 Mary Street, Unidad # 10 Aurora, ONT L4G 1G3, Canadá ','(905) 727-4013 ','(905) 727-0104 ','fulton@fulton.com ','Fulton - MECANICA ','Guatemala, Guatemala ',NULL,'fulton@fulton.com '),(180,'19001 Kermier Road, Waller, TX 77484 ','1-877-254-4729 ','1-877-254-4729 ','la@goodman.com ','Goodman - MECANICA ','Guatemala, Guatemala ',NULL,'la@goodman.com '),(181,'Texas ','940-648-1985 ','940-648-1985 ','joe.canales@htpg.com ','KRAMER-Joe Canales - MECANICA ','Guatemala, Guatemala ',NULL,'joe.canales@htpg.com '),(182,'Av. Rio Consulado 1460, Col. Vallejo, Cd de Mexico. ','55-17-95-80 ','55-17-95-80 ','totalinevallejo@prodigy.net.mx ','LIEBERT - MECANICA ','Guatemala, Guatemala ',NULL,'totalinevallejo@prodigy.net.mx '),(183,'Km 4.5 Carretera Saltillo-Zacatecas, Mexico ','52-461-132-4307 ','52-461-132-4307 ','jorge.sandoval@versamx.mx ','Jorge Sandoval - MECANICA ','Guatemala, Guatemala ',NULL,'jorge.sandoval@versamx.mx '),(184,'19 Calle 17-77 zona 10 Guatemala ','22381750 ','22381750 ','Francisco.gordillo@otis.com ','Francisco Gordillo - MECANICA ','Guatemala, Guatemala ',NULL,'Francisco.gordillo@otis.com ');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `idgrupo` int(2) unsigned zerofill NOT NULL,
  `grupo` varchar(150) COLLATE latin1_general_cs NOT NULL,
  `idarea` varchar(2) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idgrupo`),
  UNIQUE KEY `idgrupo_UNIQUE` (`idgrupo`),
  KEY `fk_grupo_area1_idx` (`idarea`),
  CONSTRAINT `fk_grupo_area1` FOREIGN KEY (`idarea`) REFERENCES `area` (`idarea`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (00,'Equipos','AC'),(01,'Equipo para Tratamiento de Agua ','EB'),(02,'Equipo de Esterilización y Desinfección ','EB'),(03,'Equipo de Laboratorio ','EM'),(04,'Equipo Odontológico y Accesorios ','EM'),(05,'Equipo para Diagnóstico Médico ','EM'),(06,'Equipo para Diagnóstico por Imágenes Médicas y Equipos Auxiliares ','EM'),(07,'Equipo de Terapia ','EM'),(08,'Monitores de Parámetros Fisiológicos ','EM'),(09,'Equipo de Alimentación y Dietas ','EB'),(10,'Equipo de Lavandería y Costurería ','EB'),(11,'Sistema Eléctricos ','EB'),(12,'Equipos del Sistema Termodinámico y Equipos auxiliares ','EB'),(13,'Equipos para Instalaciones Hospitalarias Especiales ','EB'),(14,'Equipos de Informática, Comunicación y Accesorios  ','IC'),(15,'Equipos para el Mantenimiento Hospitalario ','MT'),(16,'Equipo industrial de uso múltiple ','MT'),(17,'Mobiliario Hospitalario ','MH'),(18,'Vehículos de Transporte   ','VT'),(19,'Obra Civil ','OC'),(20,'Mobiliario Administrativo ','OC'),(21,'Equipos Central electrica','AE'),(22,'Sistemas','AE'),(23,'Emergencia','AE'),(24,'Normal','AE'),(25,'Critico','AE'),(26,'Ups','AE'),(27,'Sistema de aire acondicionado','AM'),(28,'Sistema de generacion de vapor','AM'),(29,'Gases medicos','AM'),(30,'Combustibles','AM'),(31,'Transporte vertical','AM'),(32,'Equipo industrial','AM'),(33,'Puertas','AC'),(34,'Estructuras','AC'),(35,'Cubiertas','AC'),(36,'Obras exteriores','AC'),(37,'Acabados','AC'),(38,'Ventanas','AA'),(39,'Jardin','AA'),(40,'Elementos arquitectonicos','AA'),(41,'Esterilizacion y desinfeccion','AB'),(42,'Laboratorio clinico y Patologia','AB'),(43,'Odontologia','AB'),(44,'Diagnostico medico','AB'),(45,'Imagenologia','AB'),(46,'Soporte de Vida','AB'),(47,'Monitoreo','AB'),(48,'Alimentacion y dietas','AB'),(49,'Rehabilitacion','AB'),(50,'Mobiliario hospitalario','AB'),(51,'Oftalmologia','AB'),(52,'Neonatologia','AB'),(53,'Quirurgica','AB'),(54,'Terapia respiratoria','AB'),(55,'Otros','AB'),(56,'Sistemas contra incendio','SO'),(57,'Comunicacion','SO'),(58,'Seguridad e Higiene','SO'),(59,'Agua Potable: Cisterna','AH'),(60,'Agua Potable: Pozos Profundos','AH'),(61,'Drenaje: Tratamiento aguas residuales','AH'),(62,'Equipo Informático','AI'),(63,'Infraestructura y Redes','AI'),(64,'CCTV','AI'),(65,'Sistema de Incendios y Accesos','AI'),(66,'Sistema Llamado Enfermo-Enfermera','AI'),(67,'Voceo','AI'),(68,'Sistema NTP','AI'),(69,'Video','AI');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `herramienta`
--

DROP TABLE IF EXISTS `herramienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `herramienta` (
  `idherramienta` int(11) NOT NULL AUTO_INCREMENT,
  `herramienta` varchar(150) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idherramienta`)
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herramienta`
--

LOCK TABLES `herramienta` WRITE;
/*!40000 ALTER TABLE `herramienta` DISABLE KEYS */;
INSERT INTO `herramienta` VALUES (1,'AC- Plomada para topografia'),(2,'AC- Juego de 6 sinceles de 1/2\" a 3/4\" color amarillo'),(3,'AC- Juego de 7 sinceles de 3/4\" a 2\" '),(4,'AC- Bandeja para pintura color negro'),(5,'AC- Bandeja para pintura color gris'),(6,'AC- Kit de brocas para concreto de 10 piezas black and decker'),(7,'AC- Kit de brocas de inyeccion de 11 piezas diferentes medidas'),(8,'AC- Espatula color amarillo de 2 1/2\"'),(9,'AC- Espatula color amarillo de 3\"'),(10,'AC- Espatula color amarillo de 4\"'),(11,'AC- kit de boquillas completo para pintura '),(12,'AC- Troquet o diablito '),(13,'AC- Juego de broca sierra de 1/2\" a 2\"'),(14,'AC- Juego de brocas para router '),(15,'AC- Cuhara para alba?il de 8\"'),(16,'AC- Cuhara para alba?il de 5\"'),(17,'AC- Martillo de u?a cabo de metal de 4 onzas '),(18,'AC- Almadana con mango de de tubo aislado '),(19,'AC- Martillo de hule para piso color blanco'),(20,'AC- Martillo de hule para piso color negro'),(21,'AC- Martillo de u?a de 16 onzas color anaranjado'),(22,'AC- Caja de 12 unidades de  espatulas de 4\" '),(23,'AC- Martillo de u?a de 12 onzas'),(24,'AC- Martillo de golpe de 3 lbs'),(25,'AC- Martillo de bola de 14 onzas'),(26,'AC- Juego de brocas de concreto 5 unidades diferentes medidas'),(27,'AC- Juego de sinceles 4 unidades e 4x7 a 2x13'),(28,'AC- Pala cuadrada con cabo'),(29,'AC- Pulidora Bosch de 4 1/2\" GWS7-11J'),(30,'AC- Sierras con arco de 12\"'),(31,'AC- Kit juego de llaves ALLEN de 10 piezas'),(32,'AC- Juego de limas joyero'),(33,'AC- Taladro Profesional Bosch G5B20-2RE'),(34,'AC- Juego de herramientas  trudes pro de 153 piezas'),(35,'AC- Taladro de percusion atornillador inhalambrico bosch G5B 18B-LL'),(36,'AC- Juego de tarrajas de 1/2\" a 2\"'),(37,'AC- Kit de copas con rachet '),(38,'AC- Extension con toma corriente cable TCJ 3x12'),(39,'AC- Soldadora Industrial Infra 340 AMP 2 pol.altafrecuencia '),(40,'AC- Set de jardineria acabado esmaltado '),(41,'AC- Triangulo de emergencias'),(42,'AC- Reflector led de 20 watts'),(43,'AC- Careta electronica No.9-13'),(44,'AC- Kit de brocas para madera punta guia y de paleta'),(45,'AC- Pistola de clavos dewalt'),(46,'AC- Escuadras STANLEY de 30 cms'),(47,'AC- Juego de desarmadores de 4 unidades'),(48,'AC- Juego de destornilladores de 6 unidades para tuercas'),(49,'AC- Serrucho costilla de 12\"'),(50,'AC- Regla plastica de 50 cms'),(51,'AC- Juego de brocas DEWALT contiene 2 unidades 3/16\" y 1\"'),(52,'AC- Juego de Brocas MILWAUKEE contiene 3 unidades 3/8\", 5/8\" y 1/2\"'),(53,'AC- Kit de Pintura, 2 bandejas de plastico color rojo, 2 rodillos'),(54,'AC- Kit de Pintura, 1 bandeja de plastico color rojo, 2 rodillos y 5 brochas de 1\" a 5\"'),(55,'AC- Engrapadora tama?o corriente '),(56,'AC- Corta pernos de 36\" forjado ( Caiman )'),(57,'AC- Destornilladores'),(58,'AC- Tijeras para jardin de 12\"'),(59,'AC- Tenazas color verde de 8\"'),(60,'AC- Rollo lazo de 15 a 16 metros'),(61,'AC- Rastrillo de metal'),(62,'AC- Roseadora manual de espalda'),(63,'AC- Carretilla de 55+3(70 lts)'),(64,'AC- Aspersor multifuncional plastico'),(65,'AC- Manguera de 10 metros para ambulancia material caucho'),(66,'AC- Pistola sika '),(67,'AC- Pulidora electrica de 9\"'),(68,'AC- Broca  Acero p\'ara Metal con raiz 1/2\" 5/8\"'),(69,'AC- Respirador Multigas '),(70,'AC- Juego de desatornilladores pro plano y de cruz 10 piezas '),(71,'AC- Cinceles de 12\"'),(72,'AC- Espatula 4\" inoxidable mango Polastico '),(73,'AC- Espatula 6\" inoxidable mango Plastico '),(74,'AC- Espatula 8\" mango Plastico '),(75,'AC- Espatula 10\" mango Plastico '),(76,'AC- Lijador Manual con Extencion para Tabla yeso '),(77,'AC- Manguera Multiusos de 1/4\"'),(78,'AC- Macho 4\"'),(79,'AC- Hembra 1/4\"'),(80,'AC- Caja rectangular Plastica1/2\"*3/4\"'),(81,'AC- Garrucha censilla de 8\"'),(82,'AC- Juego de puntas desarmadores 10 piezas '),(83,'AC- Saca tierra '),(84,'AC- Nivel de aluminio 36\"'),(85,'AC- Nivel de aluminio 18\"'),(86,'AC- Serrucho profecional de 20\"'),(87,'AC- Cinta Metrica de 8 MTS'),(88,'AC- Cinta Metrica de 5MTS'),(89,'AC- Juego de copas R,1/4, 3/8, 1/2, mm 142 piezas'),(90,'AC- Juego de llaves exagonales am/mm21 piezas '),(91,'AC- Juego de formones 1/4\" a 1 1/2\"'),(92,'AC- Cuchilla fija 18 mm'),(93,'AC- Tenaza 10\"'),(94,'AC- Plancha de esponja para acabado Rustico '),(95,'AC- pares de guantes de nitrilo '),(96,'AC- Mascarillas azules '),(97,'AC- Broca Para Concreto 3/8\"'),(98,'AC- Broca para concreto 1/2\"'),(99,'AC- Lima Plana de 12\"'),(100,'AC- Broca Para Metal 1/2\"'),(101,'AC- Cisalla para corte de lamina '),(102,'AC- Prensa de Banco de 8\"'),(103,'AC- Tiralinea '),(104,'AC- Pistola para Apicacion de epoxico '),(105,'AC- Juego de puntas para barreno 35 piezas'),(106,'AC- engrasadora manual de cartucho '),(107,'AC- Tenaza de corte Frontal largo de 10\" material acero de carbono'),(108,'AC- alicate de precion material acero cromo va?ado  tama?o 11\" tipo \" C \" uso industrial '),(109,'AC- extencion calibre 18 AWG color naranja largo  20 metros uso electrico '),(110,'AC- Tijera material: metal ; tama?o 7\" tipo: hojalatero uso industrial '),(111,'en las gradas antideslizante en las patas de soporte forma doble banda material metal sistema polillla con cuerda '),(112,'AC- esmeril de banco de 930 WTS'),(113,'AC- Kit de brocas para madera punta guia y de paleta'),(114,'AC- pulidora makita de 7\"'),(115,'AC- Alicate de precion de 10\"'),(116,'AC- Vice Grip'),(117,'AC- Pinsa punta curva G mango tipo Brider '),(118,'AC- Alicate punta larga de 8\"'),(119,'AC- U?a para  desentarimar y sacr clavos de 25\"'),(120,'AC- Broca SDS plus de 1/2*10*12\"'),(121,'AC- Broca SDS plus de 3/8*10*12\"'),(122,'AC- Broca SDS plus de 1/4*6*8\"'),(123,'AC- Broca SDS plus de 5/16*4*6\"'),(124,'AC- Cinta metrica larga cenfil ancho 1/2\" 200 pulgadas 60 mt. '),(125,'AC- Cinta metrica contra impacto de 8mts '),(126,'AC- Punta de acero de 3/4*12\"'),(127,'AC- Cincel de 3/4 *12\"'),(128,'AC- Plancha de esponja  de 12\"'),(129,'AC- Plancha de esponja de 10'),(130,'AC- Plancha lisa de 11\" mango de madera '),(131,'AC- Plancha dentada de 11\" mango de madera '),(132,'AC- Tenaza de armador de 10\"'),(133,'AC- Escuadrilon de metal 60mm * 40mm'),(134,'AC- Escuadra profecional de 8\"'),(135,'AC- Escuadra profecional de 12\"'),(136,'AC- Escuadra falsa de 8\"'),(137,'AC- Almadana octagonal de 12\" libras '),(138,'AC- Piocha pico y un lado ancho con cabo '),(139,'AC- Carretilla de 5FT3 (7 litros'),(140,'AC- Manguera de 100 pies '),(141,'AC- Aceitera de pipeta flexible '),(142,'AC- Barreta de punta de 1\"*1.15 cms'),(143,'AC- Cepillo para carpintero no. 4'),(144,'AC- Broca de gusano de1/4\" a 1\"'),(145,'AC- Juego de brocas sierra de 5 piezas '),(146,'AC- Sargento de solera solera para carpintero No. 5'),(147,'AC- Prensa C '),(148,'AC- Trepano No. 10'),(149,'AC- Jarrillas de gravedad '),(150,'AC- Clavadora automatica industrial '),(151,'AC- Juego de brocas de concreto 5 unidades diferentes medidas'),(152,'AC- Juego de brocas para metal HHS'),(153,'AC- Pistola de remache pop  408mmy'),(154,'AC- Barreno de raiz '),(155,'AC- Cisallla para corte delamina '),(156,'AC- Escobeta de 23 dientes '),(157,'AC- Martillos de bola '),(158,'AC- Barreta Di?metro: 1 Pulgadas(s); Largo: 1.9 Metro(s); Material: Hierro; Tipo de punta: Hexagonal;'),(159,'AC- Cuchilla Contine: Mango; Largo: 10 Cent?metro(s); Material: Metal; Material del mango: Pl?stico;'),(160,'AC- Alicate de presi?n Largo: 8 Pulgadas(s); Material: Acero cromo vanadio; Tipo: Soldador; Uso: Industrial;'),(161,'AC- Alicate Largo: 9 Pulgadas(s); Material: Cromo-vanadio; Tipo: De presi?n;'),(162,'AC- Alicate vice Forma: Curvo; Largo: 10 Pulgadas(s); Material: Cromo-vanadio; Tipo: De presi?n; Uso: Industrial;'),(163,'AC- Azad?n Ancho: 12 Pulgadas(s); Cabo: 1.5 Metro(s); Material: Acero; Material cabo: Madera;'),(164,'AC- Barreta de u?a  Di?metro: 3/4 pulgada;  Largo: 90 Cent?metro;  Material: Metal;'),(165,'AC- Cepillo Ancho: 30 Mil?metro(s); Largo: 290 Mil?metro(s); Material: Acero;'),(166,'AC- Cepillo para madera Clase: Manual; Material: Metal; No.: 5;'),(167,'AC- Cincel Ancho: 3/4 pulgada; Largo: 10 Pulgadas(s); Material: Metal; Tipo: C?nico; Uso: Construcci?n;'),(168,'AC- Cinta Material: Acero revestido de poliamida; Medici?n m?xima: 8 Metro(s); Tipo: M?trica;'),(169,'AC- Cortadora de vidrio Material: Madera y metal; Tama?o: 5 Pulgadas(s);'),(170,'AC- Cuchara de alba?il Ancho: 10 Pulgadas(s); Largo: 7 Pulgadas(s); Mango: Madera; Material: Acero inoxidable;'),(171,'AC- Cuchara de alba?il Ancho: 6 Pulgadas(s); Largo: 7 Pulgadas(s); Mango: Madera; Material: Acero inoxidable;'),(172,'AC- Escuadra combinada (universal) ?ngulos: 90 y 45 grados; Largo: 12 Pulgadas(s); Material: Aluminio;'),(173,'AC- Garlopa Clase: Manual; Material: Madera; No.: 6;'),(174,'AC- Hoja de sierra Ancho: 15 Mil?metro(s); Cantidad de dientes por pulgada: 18; Largo: 300 Mil?metro(s); Tipo: Bi-metal; Uso: Corte;'),(175,'AC- Hoja de sierra Ancho: 15 Mil?metro(s); Cantidad de dientes por pulgada: 24; Largo: 300 Mil?metro(s); Tipo: Bi-metal; Uso: Corte;'),(176,'AC- Juego de machuelos Di?metro: 3/4 pulgadas; Largo: 10 Pulgadas(s); Material: Acero al carb?n;'),(177,'AC- Nivel  Largo: 48 Pulgadas;  Material: Aluminio;  Tipo: Burbuja;'),(178,'AC- Nivel Largo: 12 Pulgadas(s); Material: Aluminio; Tipo: Burbuja; Uso: Construcci?n;'),(179,'AC- Pala Cabo: No; Tama?o: Est?ndar; Tipo punta: Cuadrada;'),(180,'AC- Pala Cabo: No; Tama?o: Est?ndar; Tipo punta: Redonda;'),(181,'AC- Piocha  Cabo: Incluido;  Material: Acero al carbono;  Peso: 5 Libra;'),(182,'AC- Rastrillo Cabo: Madera; Dientes: Acero; Largo: 150 Cent?metro(s); N?mero de dientes: 16; Uso: Jardiner?a;'),(183,'AC- Sacatierras  Dise?o: Con mango;  Material: Metal;  Medida de largo: 45 Pulgadas;  Tama?o: Mediano;  Tipo: Doble pala;'),(184,'AC- Tenaza Corte: Tipo frontal; Largo: 10 Pulgadas(s); Material: Acero al carbono;'),(185,'AC- Tijera Largo: 26 Pulgadas(s); Material de hojas: Acero inoxidable; Material de mango: Pl?stico; Punta: Pico de loro; Tipo: Jardinera para mano;'),(186,'AC- Escoba para jardiner?a Dientes: Met?lico; Largo: 80 Cent?metro(s); Mango: Madera;'),(187,'AC- Plomada Material: Bronce; Material de base: Madera; Peso: 3 Libra(s); Uso: Construcci?n;'),(188,'AC- Cortadora de cer?mica Ancho: 6 Pulgadas; Largo: 31.5 Pulgadas; Material: Metal; Tipo: Manual;'),(189,'AC- Escofina Largo: 9 Pulgadas(s); Material: Metal; Tipo: Redonda;'),(190,'AC- Escofina Largo: 9 Pulgadas(s); Material: Metal; Tipo: Media ca?a;'),(191,' AC- Extensi?n telesc?pica Ajustable a: 12 Pies(s); Largo: 6 Pies(s); Material: Aluminio; Uso: Pintura;'),(192,'AC- Serrucho cola de zorro Diente: Cola de zorro; Tama?o del gancho: 16 Pulgadas;'),(193,'AC- Tijera Clase: Podadora; Largo: 21 Pulgadas; Material de hojas: Acero; Material de mango: Pl?stico; Uso: Jardiner?a;'),(194,'AC- Martillo quita escoria; punta cincel y piqueta; mango ergonomico resorte que evita los contragolpes '),(195,'AC- Cacho para carpinteria Cacho para carpinteria; Tipo: plano'),(196,'AC- Cacho para carpinteria Cacho para carpinteria ; Tipo: curva'),(197,'AC- Yunke Uso: Herrer?a; Tipo: doble cuerno; Peso: 100 kg;'),(198,'AC- Espatulas Uso: instalaci?n de polarizado'),(199,'AE - Escalera de aluminio de 2 bandas de 5 pies color naranja - AE'),(200,'AE - Escalera de aluminio de 2 bandas de 6 pies color negro'),(201,'AE - Escalera de aluminio de 2 bandas de 6 pies tipo 3 marca KELLER color amarillo '),(202,'AE - Escalera de aluminio de 2 bandas de 8 pies tipo 3 marca KELLER color amarillo'),(203,'AE - Extensi?n el?ctrica de 10 mts. Color naranja'),(204,'AE - Extensi?n el?ctrica de cable tipo TSJ calibre 3 * 12, de 50 mts. Color negro'),(205,'AE - Extensi?n el?ctrica de cable tipo TSJ calibre 3 * 14, de 20 mts. Color negro'),(206,'AE - Extensi?n el?ctrica trif?sica de cable tipo TSJ 3 * 8, de 50 mts. Color negro'),(207,'AE - Extensi?n el?ctrica de cable tipo TSJ 3 * 10, de 50 mts. Color negro'),(208,'AE - Extensi?n el?ctrica TSJ 3*12, de 30mts. Toma de corriente doble polarizado 15A/120V para intemperie.'),(209,'AE - Cono peque?o de precauci?n color naranja'),(210,'AE - Prensa de banco de 5 * 125 mm. Marca Stanley'),(211,'AE - Caja Porta herramientas de 96.2 * 57.8 * 60 cm.'),(212,'AE - Llave de cola corona de 15 mm.'),(213,'AE - Llave de cola corona de 25 mm.'),(214,'AE - Llave de cola corona de 18 mm.'),(215,'AE - Llave de cola corona de 23 mm.'),(216,'AE - Lampara de mano de bater?as no recargables de 350 l?menes marca DEFIANT'),(217,'AE - Pistola el?ctrica para soldar con esta?o marca WELLER 140/100 watts.'),(218,'AE - Juego de copas milim?tricas y alemanas marca STANLEY'),(219,'AE - Tap?n desechable para o?dos.'),(220,'AE - Tijera de hojalatero de 10?'),(221,'AE - Juego de llaves Allen desde 1.5 mm. A 10 mm.'),(222,'AE - Juego de punzones de 1/32, 2/32, 3/32.'),(223,'AE - Juego de brocas para concreto STARCRAFT'),(224,'AE - Juego de brocas uso general marca DRILL INDEX'),(225,'AE - Navajas para electricista pico de loro'),(226,'AE - Detector de voltaje tipo lapicero marca STEREN'),(227,'AE - Remachadora 4 boquillas intercambiables marca TOOLCRAFT.'),(228,'AE - Pulidora marca BOSCH de 4 ??'),(229,'AE - Juego de destornilladores para tuercas desde 7/16? hasta 1/2? '),(230,'AE - Arco con sierra TOOLCRAFT'),(231,'AE - Juego de broca sierras para metal mara MILWAUKEE '),(232,'AE - Tiral?neas marca TROOPER'),(233,'AE - Roto martillo marca Makita HR2470X6 780 watts n?meros de serie:  5481548, 5481549, 5481547'),(234,'AE - Roto martillo marca Makita HR2470X6 780 watts n?mero de serie.'),(235,'AE - Ponchador de 3? marca Greenlee'),(236,'AE - Ponchador de 4? marca Greenlee'),(237,'AE - Set de Ponchadores de ?? hasta 2? incluye ratched marca Greenlee'),(238,'AE - Crimpador tipo K desde cable # 8 hasta cable # 4/0 marca Greenlee'),(239,'AE - Crimpador tipo K desde cable # 3/0 hasta cable # 400 MCM marca Greenlee.'),(240,'AE - Guante de mantenimiento medio/alto l?tex color naranja marca MAPA (par)'),(241,'AE - Lente de protecci?n claro marca UNIVET'),(242,'AE - Guante para electricista marca KLEIN TOOLS'),(243,'AE - Chaleco reflectivo color amarillo marca Guardrite'),(244,'AE - Casco de protecci?n color azul'),(245,'AE - Casco de protecci?n color blanco'),(246,'AE - Cuchilla retr?ctil de cambio instant?neo marca TROOPER'),(247,'AE - Alicate de presi?n de 10? marca STANLEY'),(248,'AE - Vise-Grip de 5? marca IRWIN'),(249,'AE - Alicate punta larga de 8? marca STANLEY '),(250,'AE - Alm?gana con mango de tubo aislado'),(251,'AE - Martillo de u?a cabo de metal 4 0nz.'),(252,'AE - Juego de destornilladores Pro- plano y cruz 10 piezas marca STANLEY'),(253,'AE - Juego de mini pinzas mango bi-color marca TROOPER 3 piezas.'),(254,'AE - Pinza punta curva de 6? mango bi-color marca TROOPER '),(255,'AE - Juego de pinzas saca seguros marca BBT 4 piezas'),(256,'AE - Tenazas pasa corriente 300A 2 colores'),(257,'AE - Juego de cepillos para barreno 5 piezas'),(258,'AE - Serrucho profesional de 20? marca STANLEY'),(259,'AE - Llave ajustada cromada de 20? (cangrejo)'),(260,'AE - Cinta m?trica contra impactos de 8? marca TROOPER'),(261,'AE - Juego de destornilladores de impacto marca KING TONY 8 piezas'),(262,'AE - Juego de llaves hexagonales alemanas/milim?tricas punta redonda marca STANLEY 21 piezas '),(263,'AE - Engrasadora manual de cartucho marca TROOPER '),(264,'AE - Juego de copas milim?tricas/americanas marca FORCE 142 piezas.'),(265,'AE - Juego de broca sierras de metal 4 y 2 piezas marca STANLEY y MILWAQUE adaptador con broca piloto.'),(266,'AE - Multi tool con mango ergon?mico 29 piezas marca STANLEY'),(267,'AE - Saca tierra plancha lisa de 11? mango de madera '),(268,'AE - Lampara de mano tipo led de bater?a recargable marca STRONG LIGHT'),(269,'AE - Lampara para casco tipo led bater?a recargable marca HEAD LAMP'),(270,'AE - Amper?metro de gancho AC/DC 600 V marca GREENLEE modelo CM-960 N?mero de serie 164420160 '),(271,'AE - Amper?metro de gancho AC/DC 600 V marca GREENLEE modelo CM-960 N?mero de serie 164420154'),(272,'AE - Megger MIT 525 5 KV Tester Insulati?n'),(273,'AE - Fluke 16 30-2FC EARTH GROUND Clamp n?mero de serie 42110018WS mediciones de resistencia ?hmica.'),(274,'AE - Pistola t?rmica (Term?metro Infrarrojo) marca Amprobe N?mero de serie 1140094147'),(275,'AE - Pinza Amperim?trica 1000 A. marca AMPROBE modelo ACD-6 PRO N?mero de serie 160200556'),(276,'AE - PINZA AMPERIMETRICA INALAMBRICA, con capacidad de 1000 V/1000A Marca FLUKE, Modelo 376 FC.'),(277,'AE - Lux?metro, Pantalla: Lcd; Rango m?ximo de alcance: 50000 Lux(s); Sensor: Fotodiodos de precisi?n.'),(278,'AE - Andamios de metal, Contiene: 2 marcos, 2 breizas, 4 acoples, 4 retenedores.'),(279,'AM - Set de herramientas profesionales 142 piezas'),(280,'AM - Juego de 11 llaves cola-corona SAE'),(281,'AM - Juego de 14 llaves cola-corona milimetricas 7mm-24mm'),(282,'AM - Juego de 14 llaves cola-corona milimetricas 10mm-32mm'),(283,'AM - Mochila de porta herramientas'),(284,'AM - Juego de 9 llaves allen milimetricas'),(285,'AM - Juego de 12 llaves allen SAE'),(286,'AM - Juego de 8 llaves torx'),(287,'AM - Juego de extractor de seguros con 5 piezas'),(288,'AM - Llave ajustable 6\'\''),(289,'AM - Llave ajustable 8\'\''),(290,'AM - Llave ajustable 12\'\''),(291,'AM - Llave ajustable 10\'\''),(292,'AM - Llave ajustable 15\'\''),(293,'AM - Llave ajustable 24\'\''),(294,'AM - Juego de 7 llaves cola-corona con ratch milimetricas'),(295,'AM - Juego de 5 llaves cola-corona con ratch SAE'),(296,'AM - Extensi?n electrica naranja'),(297,'AM - Navaja pico de loro'),(298,'AM - Llave 3/4 cola corona con ratch'),(299,'AM - Llave 5/8 cola corona con ratch'),(300,'AM - Llave 11/16 cola corona con ratch'),(301,'AM - Juego de destornilladores de 10 piezas tipo phillips y de castigadera'),(302,'AM - Destornillador tipo phillips #1'),(303,'AM - Destornillador tipo phillips #3'),(304,'AM - Destornillador tipo phillips #2 corto'),(305,'AM - Destornillador tipo phillips #2'),(306,'AM - Destornillador de castigadera 1/4\'\'x6\'\''),(307,'AM - Destornillador de castigadera 1/4\'\'x1-1/2\'\''),(308,'AM - Destornillador de castigadera 1/4\'\'x4\'\''),(309,'AM - Destornillador de castigadera 3/16\'\'x6\'\''),(310,'AM - Destornillador de castigadera 3/16\'\'x4\'\''),(311,'AM - Alicate ajustable'),(312,'AM - Alicate corta capilar'),(313,'AM - Pinza de punta curva'),(314,'AM - Pinza 84-102'),(315,'AM - Juego de 9 llaves allen milimetricas'),(316,'AM - Expanso multiple de 1/4\'\' a 5/8\'\''),(317,'AM - Cortatubos de 1/8\'\' a 5/8\'\''),(318,'AM - Juego de 4 extractores de seguros'),(319,'AM - Llave allen 3/8\'\''),(320,'AM - Llave allen 10mm'),(321,'AM - Llave allen 8mm'),(322,'AM - Llave allen 5mm'),(323,'AM - Llave allen 4mm'),(324,'AM - Llave allen 5mm'),(325,'AM - Llave allen 12mm'),(326,'AM - Llave de servicio glok con ratch de 3/16\'\', 5/16\'\', 1/4\'\' y 3/8\'\''),(327,'AM - Adaptador para vlavula pinch R-410a'),(328,'AM - Adaptador para vlavula pinch R-134a'),(329,'AM - Kit abocinador de 8 piezas'),(330,'AM - Juego de copas de 60 piezas'),(331,'AM - Juego de pinzas de 3 piezas'),(332,'AM - Cuchilla'),(333,'AM - Alicate de presi?n peque?o'),(334,'AM - Alicate de presi?n mediano'),(335,'AM - Cinta metrica de 8m'),(336,'AM - Cinta metrica de 5m'),(337,'AM - Amperimetro de ranura'),(338,'AM - Juego de copas de 42 piezas'),(339,'AM - Juego de copas de 50 piezas'),(340,'AM - Juego de copas milimetricas de 24 piezas'),(341,'AM - Juego de copas de 39 piezas '),(342,'AM - Kit de dobla-tubos de 10 piezas'),(343,'AM - Rotomartillo (kit de 3 piezas)'),(344,'AM - Pulidora (kit de 4 piezas)'),(345,'AM - Kit de terrajas y machuelos de 45 piezas'),(346,'AM - Remachadora tipo acordeon (kit de 7 piezas)'),(347,'AM - Juego de borcas de impacto de 35 piezas'),(348,'AM - Juego de 10 llaves allen SAE'),(349,'AM - Juego de 10 llaves allen milimetricas'),(350,'AM - Escuadra falsa de 8\'\''),(351,'AM - Picador'),(352,'AM - Kit de destornillador de impacto de 6 piezas'),(353,'AM - Pistola para soldar 140W/100W'),(354,'AM - Cincel 7/8\'\'x8\'\''),(355,'AM - Cincel 1\'\'x8\'\''),(356,'AM - Medidoras de rosca'),(357,'AM - Juego de 14 limpiaboquillas'),(358,'AM - Porta-machuelos'),(359,'AM - Juego de 3 machuelos 1-1/4\'\'x20 UNC'),(360,'AM - Juego de 3 machuelos 1/8\'\'x40 UNC'),(361,'AM - Juego de 3 machuelos 1/2\'\'x13 UNC'),(362,'AM - Escuadra de 8\'\''),(363,'AM - Escuadra de 12\'\''),(364,'AM - Juego de 5 brochas de alambre'),(365,'AM - Juego de 9 sacabocados de impacto'),(366,'AM - Martillo de u?a 16oz'),(367,'AM - Inyector de grasa de 14 oz (kit de 3 piezas)'),(368,'AM - Dobladora de tubos de 1/2\'\' a 7/8\'\''),(369,'AM - Caja de herramientas metalica'),(370,'AM - Llave Stilson 24\'\''),(371,'AM - Martillo de u?a 20oz'),(372,'AM - Llave Stilson 14\'\''),(373,'AM - Marreta 1.5kg'),(374,'AM - Dobladora de tubos de 1/4\'\' a 3/8\'\''),(375,'AM - Equipo de corte y soldadura oxiacetilenica de 19 piezas'),(376,'AM - Equipo de corte y soldadura oxiacetilenica'),(377,'AM - Aspiradora 5hp'),(378,'AM - Escalera tipo tijera de 5 pies'),(379,'AM - Escalera tipo tijera de 10 pies'),(380,'AM - Barreta de u?a 3/4\'\'x60cm'),(381,'AM - Barreta de punta 1\'\'x1.75m'),(382,'AM - Manguera de riego'),(383,'AM - Aceitera 500ml'),(384,'AM - Cofres de trabajo 50gal'),(385,'AM - Lima triangular'),(386,'AM - Polipasto de 3 toneladas'),(387,'AB-Aliate Para electricista'),(388,'AB-Set de pinzas'),(389,'AB-Set de desarmadores'),(390,'AB-desarmador de estrella'),(391,'AB-desarmador plano'),(392,'AB-metro'),(393,'AB-Multimetro Digital'),(394,'AB-Alicate de presion Vice grip'),(395,'AB-punzon'),(396,'AB-engrasadora'),(397,'AB-extension Electrica'),(398,'AB-Kit de llaves y copas'),(399,'AB-Martillo'),(400,'AB-cangrejo'),(401,'AB-Cautin'),(402,'AB-Pistola para soldar'),(403,'AB-navaja'),(404,'AB-Pinsas para seguros'),(405,'AB-Aceitera'),(406,'AB-set de llaves allen'),(407,'AB-brochas'),(408,'AB-Prensa de banco'),(409,'AB-tercer brazo'),(410,'AB-Osciloscopio'),(411,'AB-Caja de herramientas'),(412,'AB-Guantes'),(413,'AB-Llaves Exagonales'),(414,'AB-llaves torx'),(415,'AB-Corta papel'),(416,'AB-Navaja'),(417,'AB-barreno'),(418,'AB-Atornillador electrico'),(419,'AB-Destornillador de estrella'),(420,'AB-Destornillador plano'),(421,'AH-MANGUERA DE 1 1/2 PARA LIMPIEZA PLANTA DE TRATAMIENTO'),(422,'AH-ESCALERA DE ALUMINIO EXTENSIBLE, MARCA LADDER TECH, 150 KG DE CAPACIDAD DE CARGA'),(423,'AH-ESCALERA DE ALUMINIO PLEGABLE MULTI- POSICION DE 12 PELDA?OS, MARCA PRETUL, 150 KG. DE CAPACIDAD '),(424,'AH-LLAVE STILSON DE 18?'),(425,'AH-JUEGO DE COPAS CON EXTENSION (10-15, 17, 19, 21, 22)'),(426,'AH-JUEGO DE TARRAJAS MANUAL, INCLUYE DADOS (??, ??, 1?, 1 ??, 1 ??, 2?).'),(427,'AH-ROSCADOR ELECTRO PORTATIL (Dados de ??, ??, 1?, 1 ??; 1 ??, 2?)'),(428,'AH-LLAVE STILSON DE 48?'),(429,'AH-LLAVE PICO DE LORO DE 12?'),(430,'AH-BROCHAS DE 1 1/2?'),(431,'AH-BROCHAS DE 3?'),(432,'AH-ESCALERA DE DOBLE BANDA DE 4?'),(433,'AH-CINTA METRICA 1 X 8 M NARANJA'),(434,'AH-CUCHILLA PRECORTADA 18 MM'),(435,'AH-CINTA METRICA 1 1/4? X 8 M NAR/'),(436,'AH-LINTERNA DE MANO RECARGABLE'),(437,'AH-DEST. SET 4 U PVC'),(438,'AH-DESTAPACANOS'),(439,'AH-DESTAPACANOS'),(440,'AH-PALA LARGA'),(441,'AH-RASTRILLO 150'),(442,'AH-CEPILLON DE NYLON 80 CMS C/MANGO DE MADERA'),(443,'AH-CEPILLON DE NYLON 60 CMS C/MANGO DE MADERA'),(444,'AH-CEPILLON PBT 45 CMS CON MANGO INDUSTRIAL 140 CMS'),(445,'AH-CEPILLO DE ALAMBRE'),(446,'AH-BARRENO DE TRES MODALIDADES: RELACION, ROTO PERCUSION Y DETENCION DE GIRO; MOTOR: DE 550 WATTS'),(447,'AH-PULIDORA ELECTRICA 1500 WATTS'),(448,'AH-TROQUET O DIABLITO'),(449,'AH-JUEGO DE COPAS R. 1/4, 3/8, 1/2 MM 142 PZS'),(450,'AH-CUCHILLA FIJA 18 MM'),(451,'AH-JUEGO DESTORNILLAODRES ELECTRICISTA 8 PZS'),(452,'AH-SET DE BROCAS MULTIUSOS 18 PZS'),(453,'AH-UEGO DE COPAS PUNTA TORX Y PUNTA HEXAGONAL R. 1/2'),(454,'AH-MULTITOOL CON MANGO ERGONOMICO 29 EN 1'),(455,'AH-JUEGO DE DESTORNILLADORES DE IMPACTO'),(456,'AH-LLAVE STILLSON DE 14?'),(457,'AH-LLAVE STILLSON DE 24?'),(458,'AH-LLAVE PARA TUBO  48?'),(459,'AH-ALICATE DE PRESION DE 10?'),(460,'AH-LLAVE AJUSTABLE CROMADA DE 15?'),(461,'AH-LLAVE AJUSTABLE CROMADA DE 24?'),(462,'AH-LLAVE TUERCA LAVAMANOS 11?'),(463,'AH-PINZAS PUNTA CURVA 6? MANGO BICOLOR'),(464,'AH-ALICATE PUNTA LARGA DE 8?'),(465,'AH-DESTAPA CA?O DE RESORTE 25 PIES'),(466,'AH-CORTADOR DE TUBO PVC Y MANGUERA HASTA 41MM'),(467,'AH-CORTADOR DE TUBO DE ACERO DE 22 (50MM)'),(468,'AH-LLAVE UNIVERSAL DE CADENA 280 MM'),(469,'AH-LLAVE DE CADENA PARA TUBO DE 8?'),(470,'AH-ALICATE ARTICULADO BOMBA DE AGUA 10? PICO DE LORO'),(471,'AH-BOMBA P/ TRASEGAR CUERPO PLASTICO'),(472,'AH-MARTILLO DE U?A CABO DE METAL 4 ONZAS'),(473,'AH-JUEGO DE DESTORNILLADORES PRO PLANO Y CRUZ 10 PzS'),(474,'AH-CUCHILLA RETRACTIL  DE CAMBIO INSTANTANEO'),(475,'AH-JUEGO DE LLAVES HEXA AM/MM 21 PIEZAS PUNTA REDONDA'),(476,'AH-CINTA METRICA DE IMPACTO'),(477,'AH-CINCEL DE 3/4 X 12'),(478,'AH-TENAZA DE ARMADOR DE 10?'),(479,'AH-ESCUADRA DE METAL PROFESIONAL 12?'),(480,'AH-BARRETA DE PUNTA 1? X 175 CM'),(481,'AH-VISE GRIP 5WR'),(482,'AH-ALMAGANA C/MANGO DE TUBO AISLADO'),(483,'AH-PINZAS PUNTA CURVA 6? MANGO BICOLOR'),(484,'AH-LAMPARA 1000 LUMENES RECARGABLES'),(485,'AH-LAMPARAS PORTATILES PARA CASCO'),(486,'AH-JUEGO DE PUNTAS DE DIFERENTES MEDIDAS'),(487,'AH-LIMA TRIANGULAR CON MANGO DE 8 PLG'),(488,'AH-CANGREJO, MATERIAL: ACERO; TAMA?O: 15 PULGADAS; USO:MECANICA'),(489,'AH-CANJREJO, LARGO: 10 PULGADAS; MATERIAL: ACERO; USO:MECANICA'),(490,'AH-CANJREJO, LARGO: 8 PULGADAS; MATERIAL: ACERO'),(491,'AH-CANJREJO, LARGO: 12 PULGADAS; MATERIAL: ACERO; USO:MECANICA'),(492,'AH-CANJREJO, LARGO: 24 PULGADAS; MATERIAL: ACERO; USO:MECANICA'),(493,'AH-JUEGO DE LLAVES, CANTIDAD DE PIEZAS: 11 MATERIAL: ACERO INOXIDABLE; TIPO ALLEN (?HEXAGONAL)'),(494,'AH-EXTENSION TAMA?O: 8 METROS; USO:ELECTRICA'),(495,'AH-ALICATE VICE LARGO: 7 PULGADAS (S); MATERIAL: METAL; TIPO: DE PRESION; USO: MECANICO'),(496,'AH-ALICATE VICE LARGO: 5 PULGADAS (S); MATERIAL: METAL; TIPO: DE PRESION; USO: MECANICO'),(497,'AH-LLAVE DE PLOMERO, LONGITUD: 12 PULGADAS; MATERIAL: ACERO AL CARBONO CROMADA');
/*!40000 ALTER TABLE `herramienta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `idhospital` int(11) NOT NULL AUTO_INCREMENT,
  `hospital` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `clave_admin` varchar(45) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idhospital`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'HOSPITAL REGIONAL DE QUETZALTENANGO','312');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen_equipo`
--

DROP TABLE IF EXISTS `imagen_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagen_equipo` (
  `idimagen` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `descripcion_imagen` varchar(400) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idimagen`),
  KEY `fk_imagen_equipo_equipo1_idx` (`idequipo`),
  CONSTRAINT `fk_imagen_equipo_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen_equipo`
--

LOCK TABLES `imagen_equipo` WRITE;
/*!40000 ALTER TABLE `imagen_equipo` DISABLE KEYS */;
INSERT INTO `imagen_equipo` VALUES (1,'f1.jpg','AC0000-D-n-E040025','prueba'),(2,'f1.jpg','AC0000-D-n-E040025','prueba');
/*!40000 ALTER TABLE `imagen_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen_qr`
--

DROP TABLE IF EXISTS `imagen_qr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagen_qr` (
  `idimagen_qr` int(11) NOT NULL AUTO_INCREMENT,
  `imagen_qr` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idimagen_qr`),
  KEY `fk_imagen_qr_equipo1_idx` (`idequipo`),
  CONSTRAINT `fk_imagen_qr_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen_qr`
--

LOCK TABLES `imagen_qr` WRITE;
/*!40000 ALTER TABLE `imagen_qr` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagen_qr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_insumo`
--

DROP TABLE IF EXISTS `ingreso_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingreso_insumo` (
  `idingreso_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_comprobante` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `serie_comprobante` varchar(7) COLLATE latin1_general_cs DEFAULT NULL,
  `num_comprobante` varchar(45) COLLATE latin1_general_cs NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `estado` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `idproveedor_insumo` int(11) NOT NULL,
  PRIMARY KEY (`idingreso_insumo`),
  KEY `fk_ingreso_repuesto_proveedor_repuesto1_idx` (`idproveedor_insumo`),
  CONSTRAINT `fk_ingreso_repuesto_proveedor_repuesto10` FOREIGN KEY (`idproveedor_insumo`) REFERENCES `proveedor_insumo` (`idproveedor_insumo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_insumo`
--

LOCK TABLES `ingreso_insumo` WRITE;
/*!40000 ALTER TABLE `ingreso_insumo` DISABLE KEYS */;
INSERT INTO `ingreso_insumo` VALUES (1,'Requisición','12','15','2019-08-21 14:54:06','VIGENTE',1),(2,'Otro','s/c','143435','2020-02-11 13:03:53','VIGENTE',1),(3,'Requisición','we','1232321','2020-02-12 09:20:16','VIGENTE',1);
/*!40000 ALTER TABLE `ingreso_insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso_repuesto`
--

DROP TABLE IF EXISTS `ingreso_repuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingreso_repuesto` (
  `idingreso_repuesto` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_comprobante` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `serie_comprobante` varchar(7) COLLATE latin1_general_cs DEFAULT NULL,
  `num_comprobante` varchar(45) COLLATE latin1_general_cs NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `estado` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `idproveedor_repuesto` int(11) NOT NULL,
  PRIMARY KEY (`idingreso_repuesto`),
  KEY `fk_ingreso_repuesto_proveedor_repuesto1_idx` (`idproveedor_repuesto`),
  CONSTRAINT `fk_ingreso_repuesto_proveedor_repuesto1` FOREIGN KEY (`idproveedor_repuesto`) REFERENCES `proveedor_repuesto` (`idproveedor_repuesto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso_repuesto`
--

LOCK TABLES `ingreso_repuesto` WRITE;
/*!40000 ALTER TABLE `ingreso_repuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingreso_repuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insumo`
--

DROP TABLE IF EXISTS `insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insumo` (
  `idinsumo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `codigo` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `descripcion` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `unidad_medida` varchar(100) COLLATE latin1_general_cs DEFAULT NULL,
  `estado` varchar(50) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idinsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=1157 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insumo`
--

LOCK TABLES `insumo` WRITE;
/*!40000 ALTER TABLE `insumo` DISABLE KEYS */;
INSERT INTO `insumo` VALUES (1,'AC- Paral','36771 - 40433','Paral Ancho: 2 Pulgadas(s); Grosor: 2 Pulgadas(s); Largo: 10 pies; Material: Pino;',0,'Unidad/1 Unidad(es)','ACTIVO'),(2,'AC- Paral','38670 - 42797','Paral Ancho: 3 Pulgadas(s); Grosor: 3 Pulgadas(s); Largo: 10 pies; Material: Pino r?stico;',-1,'Unidad/1 Unidad(es)','ACTIVO'),(3,'AC- Plancha','28313 - 30852','Plancha Ancho: 4 Pies(s); Grosor: 1/2 pulgadas; Largo: 8 Pies(s); Tipo: Plywood;',0,'Unidad/1 Unidad(es)','ACTIVO'),(4,'AC- Plancha','12705 - 13425','Plancha Ancho: 4 Pies(s); Grosor: 1/4 pulgadas; Largo: 8 Pies(s); Tipo: Plywood;',-1,'Unidad/1 Unidad(es)','ACTIVO'),(5,'AC- Plancha','28312 - 30850','Plancha Ancho: 4 Pies(s); Grosor: 3/8 pulgadas; Largo: 8 Pies(s); Tipo: Plywood;',0,'Unidad /1 Unidad(es)','ACTIVO'),(6,'AC- Plancha','29218 - 31814','Plancha Ancho: 4 Pies(s); Grosor: 5/8 pulgadas; Largo: 8 Pies(s); Madera: Melamina;',0,'Unidad/1 Unidad(es)','ACTIVO'),(7,'AC- Tabla','60104 - 71451','Tabla  Ancho: 12 Pulgadas;  Grosor: 1 Pulgadas;  Largo: 10 Pies;  Material: Madera de pino r?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(8,'AC- Tabla','52490 - 61815','Tabla Ancho: 12 Pulgadas(s); Grosor: 1 Pulgadas(s); Largo: 10 Pies(s); Material: Madera de pino; Tipo: Tratada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(9,'AC- Cabo para piocha','60180 - 71534','Cabo para piocha  Largo: 37.5 Pulgadas;  Material: Madera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(10,'AC- Regla','59894 - 71224','Regla  Ancho: 3 Pulgadas;  Grosor: 3 Pulgadas;  Largo: 8 Pies;  Material: Madera de pino tratada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(11,'AC- Regla','57788 - 68584','Regla Ancho: 2 Pulgadas(s); Grosor: 1 Pulgadas(s); Largo: 7 Pies(s); Material: Madera de pino r?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(12,'AC- Regla','53074 - 62503','Regla Ancho: 2 pulgadas; Grosor: 2 pulgadas; Largo: 12 Pies(s); Material: Madera de pino tratada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(13,'AC- Tabla','49448 - 57937','Tabla Ancho: 12 Pulgadas(s); Grosor: 1 Pulgadas(s); Largo: 10 Pies(s); Material: Madera de cedro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(14,'AC- Top de cocina','75315-89358','Top de cocina Ancho: 66 Cent?metro; Dise?o: Desayunador; Grosor: 3/4 pulgada; Largo: 10 Pies; Madera: Melamina; Salpicadera: 9 Cent?metro;',0,'Unidad(1 Unidad(es))','ACTIVO'),(15,'AC- Top de cocina','74972-88992','Top de cocina Ancho: 66 Cent?metro; Dise?o: Barra; Grosor: 3/4 pulgadas; Largo: 10 Pies; Material: Melamina;',0,'Unidad(1 Unidad(es))','ACTIVO'),(16,'AC- Plancha','29223-31816','Plancha Ancho: 4 Pies(s); Grosor: 1/8 pulgadas; Largo: 8 Pies(s); Madera: Cart?n piedra;',0,'Unidad(1 Unidad(es))','ACTIVO'),(17,'AC- Regla','S/C','Regla Ancho: 3 Pulgadas; Grosor: 7/8 Pulgadas; Largo: 9\nPies; Material: Madera de pino secado al horno;',0,'Unidad(1 Unidad(es))','ACTIVO'),(18,'AC- Tablero','S/C','Tablero Tablero ; Tablero Finger Joint 3/4\"*4?*8?, material aglomerado de madera',0,'Unidad(1 Unidad(es))','ACTIVO'),(19,'AC- Tablero','S/C','Tablero Tablero ; Tablero Finger Joint 1\"*4?*8?, material aglomerado de madera',0,'Unidad(1 Unidad(es))','ACTIVO'),(20,'AC- Arena','32797 - 35766','Arena Calidad: Cernida; Variedad: De r?o;',0,'Unidad/1 Metro C?bico','ACTIVO'),(21,'AC- Piedr','2144 - 2464','Piedr?n Grosor: 1/2 \";',0,'Unidad/1 Metro C?bico','ACTIVO'),(22,'AC- Arena','12708 - 44810','Arena Calidad: Cernida; Uso: Construcci?n; Variedad: Blanca;',0,'Unidad/1 Metro C?bico','ACTIVO'),(23,'AC- Piedra ','30080-67640','Piedra  Ancho: 0.15 Metro(s); Grosor: 0.15 Metro(s); Largo: 0.15 Metro(s); Tipo: Bola;',0,'Metro c?bico(1 Unidad(es))','ACTIVO'),(24,'AC- Cal','2765 - 39331','Cal Clase: Hidratada; Consistencia: Polvo;',0,'Saco/25 Kilogramos','ACTIVO'),(25,'AC- Piedra p?mez','42268-99855','Piedra p?mez Uso: Diversos;',0,'Unidad(1 Metro C?bico)','ACTIVO'),(26,'AC- Wipe','4657 - 36614','Wipe Color: Blanco; Tipo: Bola;',0,'Bola/1 Libra','ACTIVO'),(27,'AC- Pita','60771 - 72722','Pita  Material: Pl?stico;',0,'Rollo/100 Metro','ACTIVO'),(28,'AC- Empaque','34060 - 37298','Empaque Di?metro: 1/2 pulgada; Material: Hule; Uso: Manguera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(29,'AC- Empaque','34061 - 37299','Empaque Di?metro: 3/4 pulgada; Material: Hule; Uso: Manguera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(30,'AC- Manguera','41801 - 47112','Manguera Di?metro: 3/4 pulgada; Extremos: Roscados; Largo: 50 Pies(s); Material: Hule reforzado; Uso: Jardiner?a;',0,'Unidad/1 Unidad(es)','ACTIVO'),(31,'AC- Manguera','41809 - 47120','Manguera Di?metro: 3/4 pulgada; Extremos: Roscados; Largo: 75 Pies(s); Material: Hule reforzado; Uso: Jardiner?a;',0,'Unidad/1 Unidad(es)','ACTIVO'),(32,'AC- Tope para puerta','47578 - 55436','Tope para puerta Material: Hule;',0,'Par/1 Unidad(es)','ACTIVO'),(33,'AC- Barniz','42215 - 47741','Barniz Clase: Brillante; Tipo: Marino;',0,'Cubeta/5 Gal?n','ACTIVO'),(34,'AC- Impermeabilizante','51279 - 60296','Impermeabilizante Clase: Latex; Uso: Mantenimiento;',0,'Cubeta/5 Gal?n','ACTIVO'),(35,'AC- Sellador','42210 - 47718','Sellador Clase: A base de aceite; Color: Transparente; Tipo: Vin?lico; Uso: Madera;',0,'Envase/1 Gal?n','ACTIVO'),(36,'AC- Sellador','33779 - 36999','Sellador Color: Blanco; Material: Silic?n; Uso: Vidrier?a;',0,'Cartucho/300 Mililitro','ACTIVO'),(37,'AC- Sellador el?stico','27976 - 30459','Sellador el?stico Aplicaci?n: Juntas de construcci?n; Tipo: Poliuretano de alto desempe?o;',0,'Tubo/10 Onza','ACTIVO'),(38,'AC- Silic?n','33531 - 77744','Silic?n Color: Blanco; Uso: Sellador;',0,'Tubo/300 Mililitro','ACTIVO'),(39,'AC- Solvente','39288 - 43542','Solvente Tipo: Desengrasador; Uso: Aflojar grasa solida de cojinete y engranaje;',0,'Bote/401 Gramos','ACTIVO'),(40,'AC- Thinner','3617 - 4279','Thinner Clase: Laca; Tipo: Transparente;',0,'Envase/1 Gal?n','ACTIVO'),(41,'AC- Sellador el?stico','4898 - 28965','Sellador Color: Transparente; Uso: Base de pintura;',0,'Envase/1 Litro','ACTIVO'),(42,'AC- ?cido muriatico','82496-97528','?cido muriatico Color: Transparente; Consistencia: L?quido; Olor: Incoloro e inodoro; Pureza: 33%;',0,'Recipiente(1 Gal?n)','ACTIVO'),(43,'AC- Desmoldante','S/C','Desmoldante Uso: en construcci?n se le aplica a la formaleta para facilitar el desencofrado; Estado: l?quido; Base: agua;',0,'Cubeta/5 Gal?n','ACTIVO'),(44,'AC- Combustible','37817 - 73365','Combustible Clase: S?per;',0,'Unidad/1 Gal?n','ACTIVO'),(45,'AC- Combustible','1940 - 66562','Combustible Clase: Regular;',0,'Unidad/1 Gal?n','ACTIVO'),(46,'AC- Aceite','47321 - 55030','Aceite Clase: 2 tiempos; Grado de viscosidad: Tc-w3; Uso: Motor;',0,'Unidad/1 Unidad(es)','ACTIVO'),(47,'AC- Grasa','44469 - 51232','Grasa Forma: Oleoso; Grado: 2; Tipo: Lubricante; Uso: Maquinaria;',0,'Envase/100 Gramos','ACTIVO'),(48,'AC- Lubricante','S/C','Lubricante Tipo:aceite; Uso:compresor; Grado: SAE 5W50',0,'Envase/1 Litro','ACTIVO'),(49,'AC- Fertilizante','25707 - 27630','Fertilizante Contenido: Nitr?geno, f?sforo y potasio (npk); F?rmula: 15-15-15; Mezcla: F?sica; Tipo: Compuesto;',0,'Saco/1 Quintal','ACTIVO'),(50,'AC- Fertilizante','25700 - 27605','Fertilizante Contenido: Nitr?geno, f?sforo y potasio (npk); F?rmula: 20-20-20; Mezcla: F?sica; Tipo: Compuesto;',0,'Saco/1 Quintal','ACTIVO'),(51,'AC- Fertilizante','25759 - 27780','Fertilizante Contenido: Nitr?geno; F?rmula: 46-0-0; Tipo: Urea;',0,'Saco/1 Quintal','ACTIVO'),(52,'AC- Tierra','51534 - 60573','Tierra Clase: Negra; Textura: Franco arenosa; Uso: Vivero;',0,'Unidad/1 Metro C?bico','ACTIVO'),(53,'AC- Fertilizante','100368-117273','Fertilizante Aplicaci?n: Foliar; Consistencia: L?quida; Contenido: Suspenci?n concentrada (sc), elementos menores cati?nicos (fe, zn, cu, mn) quelatados con edta, humectantes, adhesivos, agentes protectores, surfactantes y antievaporantes; F?rmula: 16-16-',0,'Envase(500 Mililitro','ACTIVO'),(54,'AC- Fertilizante','101168-118123','Fertilizante Aplicaci?n: Foliar; Consistencia: Liquida; Contenido: Fitohormonas y vitaminas;',0,'Envase(1 Litro)','ACTIVO'),(55,'AC-  Fertilizante','101264-118239',' Fertilizante  Aplicaci?n: Foliar; Consistencia: Liquida; Contenido: ?cidos h?micos y f?lvicos extra?dos de leonardita;',0,'Envase(1 Litro)','ACTIVO'),(56,' AC- Fertilizante','101474-118495',' Fertilizante  Contenido: Nitr?geno, f?sforo y potasio (npk); F?rmula: 20-20-20; Tipo: Cristalino;',0,'Empaque(5 Libra)','ACTIVO'),(57,'AC- Fertilizante bioestimulante','104702-122118','Fertilizante bioestimulante Aplicaci?n: Foliar o riego por goteo; Composici?n: Amino?cidos; Consistencia: S?lido-polvo micro granulado;',0,'Empaque(1 Kilogramos)','ACTIVO'),(58,'AC- Enraizador','109606-127372','Enraizador Aplicaci?n: Foliar; Composici?n: Sustancias h?micas 0.70%, f?sforo (p) 8%, nitr?geno (n) 4%, auxinas 0.30 %; Consistencia: Suspensi?n acuosa;',0,'Envase(1 Litro)','ACTIVO'),(59,'AC- Fertilizante bioestimulante','13239-14120','Fertilizante Composici?n: Qu?mico; Contenido: Nitrato de calcio; Tipo: Nitrogenado;',0,'Saco(20 Kilogramos)','ACTIVO'),(60,'AC- Cipermetrina','28571 - 31140','Cipermetrina Acci?n: Insecticida; Concentraci?n: 500 Gramos(s); Presentaci?n: Soluci?n; V?a de administraci?n: Pulverizaci?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(61,'AC- Fungicida','61755 - 74136','Fungicida  Composici?n: Azoxistrobin 20% + ciproconazol 8%;  Consistencia: L?quido concentrado;  Uso: Agr?cola;',0,'Bolsa/1 Kilogramos','ACTIVO'),(62,'AC- Fungicida','42040 - 74747','Fungicida Composici?n: Mancozeb 80%; Consistencia: Polvo soluble; Uso: Agr?cola;',0,'Bolsa/1 Kilogramos','ACTIVO'),(63,'AC- Insecticida bacillus sphaericus','10143-39554','Insecticida bacillus sphaericus Concentraci?n: 7.5 Gramos(s); Estado: Granulado;',0,'Unidad(1 Kilogramos)','ACTIVO'),(64,'AC- Fungicida','102667-119782','Fungicida  Composici?n: Ciproconazole 100g/l; Consistencia: L?quida; Uso: Agr?cola;',0,'Frasco(250 Cent?metro C?bico)','ACTIVO'),(65,'AC- Fungicida','103835-121113','Fungicida Concentraci?n: 22.5% tebuconazole, 7.5% triadimenol; Formulacion: Emulsi?n concentrada; Uso: Agr?cola;',0,'Envase(1 Litro)','ACTIVO'),(66,'AC- Insecticida bacillus sphaericus','109487-127241','Insecticida Concentraci?n: Clorpirifos 2.5%; Consistencia: Granulado; Uso: Agr?cola;',0,'Envase(10 Kilogramos)','ACTIVO'),(67,'AC-  Insecticida','110534-128401',' Insecticida Concentraci?n: Malati?n 57%; Consistencia: Emulsi?n concentrada; Uso: Agr?cola;',0,'Envase(1 Litro)','ACTIVO'),(68,' AC- Fungicida','110556-128435',' Fungicida  Concentraci?n: Propamocarb 530g + fosetyl aluminium 310g/lt; Consistencia: Concentrado soluble; Uso: Agr?cola;',0,'Envase(1 Litro)','ACTIVO'),(69,'AC- Insecticida bacillus sphaericus','111852-130007 ','Insecticida Concentraci?n: Cipermetrina 1.0 g/kg + imiprotrina 0.6 g/kg; Consistencia: L?quida; Dispensador: Spray; Uso: Plagas;',0,'Frasco(254 Gramos)','ACTIVO'),(70,'AC- Pintura','62478 - 75140','Pintura  Aplicaci?n: Metal;  Color: Gris;  Composici?n: Poliuretano;',0,'Unidad/1 Gal?n','ACTIVO'),(71,'AC- Pintura','62146 - 74730','Pintura  Color: Amarillo;  Tipo: Tr?fico;',0,'Lata/1 Gal?n','ACTIVO'),(72,'AC- Pintura','62145 - 74728','Pintura  Color: Negro;  Tipo: Tr?fico;',0,'Lata/1 Gal?n','ACTIVO'),(73,'AC- Pintura','46409 - 53686','Pintura Aplicaci?n: Metales; Clase: Secado r?pido; Composici?n: Anticorrosiva;',0,'Envase/1 Gal?n','ACTIVO'),(74,'AC- Pintura','54543 - 64306','Pintura Color: Blanco; Tipo: L?tex;',0,'Envase/5 Gal?n','ACTIVO'),(75,'AC- Pintura','40346 - 45021','Pintura Color: Blanco; Tipo: Tr?fico;',0,'Envase/1 Gal?n','ACTIVO'),(76,'AC- Pintura','53467 - 63059','Pintura Color: Rojo; Tipo: Tr?fico;',0,'Lata/1 Gal?n','ACTIVO'),(77,'AC- Tinte de agua','32676 - 35639','Tinte de agua Aplicaci?n: Madera;',0,'Bolsa/1 Onza','ACTIVO'),(78,' AC- Pintura','57419-68693','Color: Varios; Tipo: L?tex acr?lico;  Pintura',0,'Cubeta(5 Gal?n)','ACTIVO'),(79,'Pintura','37516-62060','Tipo: Tr?fico; Pintura',0,'Lata(1 Gal?n)','ACTIVO'),(80,'AC- Pintura','20515-21489','Color: Brillo satinado; Compuesto: Zinc y cromato; L?nea: Marina; Resistencia al calor: 200 Grados Fahrenheit(s); Tipo: Anticorrosivo; Pintura',0,'Envase(1 Gal?n)','ACTIVO'),(81,'AC- Pintura','S/C','Pintura Aplicaci?n: pared y cielo; Clase: pro catalized ep?xico base agua; Color: preparado',0,'Unidad/1 Gal?n(es)','ACTIVO'),(82,'AC- Pintura','S/C','Pintura Aplicaci?n: piso; Clase: pro catalized ep?xico base agua; Color: preparado',0,'Unidad/1 Gal?n(es)','ACTIVO'),(83,'AC- Pintura','S/C','Pintura Aplicaci?n: para hacer pizarras; Clase: esquetch plumon; ',0,'Unidad/1 Kit(s)','ACTIVO'),(84,'AC- Pintura','S/C','Pintura Pintura Color: Gris; Tipo: Elastomerica; Uso: Exteriores',0,'Envase/5 Gal?n','ACTIVO'),(85,'AC- Pintura','S/C','Pintura Pintura Color: Blanco; Tipo: Elastomerica; Uso: Exteriores',0,'Envase/5 Gal?n','ACTIVO'),(86,'AC- Cruceta separadora para pisos y azulejos','55517 - 65527','Cruceta separadora para pisos y azulejos Grosor: 3 Mil?metro(s); Material: Pl?stico;',0,'Bolsa/100 Unidad(es)','ACTIVO'),(87,'AC- Pistola de riego','38346 - 42413','Pistola de riego Boquillas de posici?n: 7; Dise?o: Ergon?mico; Gatillo: Regulador de flujo; Material: Pl?stico; Tama?o: 4 Pulgadas(s);',0,'Unidad/1 Unidad(es)','ACTIVO'),(88,'AC- Tarugo','61612 - 73974','Tarugo  Di?metro: 6 Mil?metro;  Largo: 60 Mil?metro;  Material: Pl?stico;',0,'Empaque/100 Unidad(es)','ACTIVO'),(89,' AC-Tarugo','48401 - 56638','Tarugo  Di?metro: 8 Mil?metro;  Largo: 60 Mil?metro;  Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(90,' AC-Caja para herramientas','53837 - 63495','Caja para herramientas Alto: 16 Pulgadas(s); Ancho: 15 Pulgadas(s); Cierre: Met?lico; Largo: 24 Pulgadas(s); Mango: Telesc?pico; Material: Pl?stico; Tipo: Rodante con organizadores;',0,'Unidad/1 Unidad(es)','ACTIVO'),(91,'AC- Caja para herramientas','49778 - 58351','Caja para herramientas Ancho: 25 Cent?metro(s); Largo: 41 Cent?metro(s); Material: Polimero de alto impacto;',0,'Unidad/1 Unidad(es)','ACTIVO'),(92,'AC-Cedazo','30023 - 32673','Cedazo Ancho de la perforaci?n: 1/4 pulgada; Material: Pl?stico;',0,'Unidad/1 Yarda','ACTIVO'),(93,'AC-Cedazo fino','32006 - 34851','Cedazo fino Alto: 10 Yarda(s); Ancho: 0.84 Yarda(s); Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(94,'AC- Tarugo','32474-35406','Tarugo Di?metro: 3/8 pulgadas; Material: Pl?stico;',0,'Unidad(1 Unidad(es))','ACTIVO'),(95,'AC-Pasacables para mueble','63185-76041','Pasacables para mueble Material: Pl?stico; Medida: 60 Mil?metro;',0,'Unidad(1 Unidad(es))','ACTIVO'),(96,'AC - Esquinero para paneles','77426-91635','Esquinero para paneles Alto: 1 Pulgadas; Ancho: 3/4 pulgadas; Largo: 10 Pies; Material: Pl?stico; Tipo: J;',0,'Unidad(1 Unidad(es))','ACTIVO'),(97,'AC- Deslizador','S/C','Deslizador Deslizador ; Pat?in deslizador de tefl?n, de clavar, redondo de 22 mm, color gris ',0,'Unidad(1 Unidad(es))','ACTIVO'),(98,'AC-Cargador','S/C','Cargador Cargador ; Soporte para estante de madera con perno metalico; Material: Plastico blanco o transparente',0,'Unidad(1 Unidad(es))','ACTIVO'),(99,'AC-Tarugo','S/C','Tarugo Tarugo ; Tarugos o tornillo tipo clavo zincado  N 8*80Z ',0,'Unidad/1 Ciento','ACTIVO'),(100,'AC- Tarugo','S/C','Tarugo Tarugo ; Tarugos o tornillo tipo clavo zincado  N 6*60Z ',0,'Unidad/1 Ciento','ACTIVO'),(101,'AC- Esquineros con soporte','S/C','Esquineros con soporte Esquinero pefil vinilo: medidas: de 40 x 40 mm, angulo: 90?; soporte de aluminio continuo con anclajes a esquina de muro; largo del soporte y el perfil vinilico: 1.20 mts a 1.25 mts,color: champagne; grado hospitalario. ',0,'Unidad/1 Unidad(es)','ACTIVO'),(102,'AC-Puntera de esquineros','S/C','Puntera de esquineros Puntera de Esquinero de tipo angular Base: 40 mm x 40 mm. Material: vinilo',0,'Unidad/1 Unidad(es)','ACTIVO'),(103,'AC-Topes','S/C','Topes Perfil guarda camilla de ancho:120 mm x Largo: 3 m, con soporterias y atornilles de anclado a paredes.',0,'Unidad/1 Unidad(es)','ACTIVO'),(104,'AC-Puntera de topes','S/C','Puntera de topes Puntera de guarda camilla de ancho: 120 mm',0,'Unidad/1 Unidad(es)','ACTIVO'),(105,'AC-Esquinero para paneles','S/C','Esquinero para paneles Largo: 10 Pies; Material: Pl?stico; Tipo: Z;',0,'Unidad/1 Unidad(es)','ACTIVO'),(106,'AC-Acelerante para concreto','47759 - 55666','Acelerante para concreto Estado: L?quido;',0,'Bote/1 Gal?n','ACTIVO'),(107,'AC-Adhesivo','49267 - 57712','Adhesivo Clase: Ep?xico; Componentes: A+b; Tipo: Gel;',0,'Lata/1 Kilogramos','ACTIVO'),(108,'AC-Adhesivo epoxi tixotr?pico','45930 - 53112','Adhesivo epoxi tixotr?pico Clase: Alta resistencia; Componente: A+b; Consistencia: Pastosa;',0,'Lata/1 Kilogramos','ACTIVO'),(109,'AC-Adhesivo para concreto','41647 - 46840','Adhesivo para concreto Clase: Base de l?tex; Uso: Construcci?n;',0,'Cubeta/5 Gal?n','ACTIVO'),(110,'AC-Desengrasante','49871 - 64845','Desengrasante Biodegradable: Si; Concentracion: 95 %; Estado: Liquido; Uso: Multiusos;',0,'Envase/1 Gal?n','ACTIVO'),(111,'AC-Limpiador','38200 - 42221','Limpiador Consistencia: L?quida; Uso: Piezas de aluminio y acero inoxidable;',0,'Envase/1 Gal?n','ACTIVO'),(112,'AC-Masilla','44178 - 50889','Masilla Componente: Copol?meros acr?licos; Incluye: Catalizador; Tipo: Pl?stico;',0,'Envase/1 Gal?n','ACTIVO'),(113,'AC-Pegamento','73523 - 87361','Pegamento  Consistencia: L?quido;  Tipo: Cola blanca;  Uso: Madera;',0,'Bote/1 Gal?n','ACTIVO'),(114,'AC-Pegamento','3643 - 4305','Pegamento Consistencia: Viscosa; Ingrediente: Poliuretano y thinner; Uso: Zapatero;',0,'Gal?n/3.78 Litro','ACTIVO'),(115,'AC-Piso','49621 - 58174','Piso Ancho: 60 Cent?metro(s); Color: Varios; Largo: 60 Cent?metro(s); Material: Porcelanato;',0,'Unidad/1 Metro Cuadrado','ACTIVO'),(116,'AC-Adhesivo para piso','30355 - 33136','Adhesivo para piso Uso: Cer?mico;',0,'Bolsa/20 Kilogramos','ACTIVO'),(117,'AC-Cemento','3645 - 41135','Cemento Color: Gris; Resistencia: 4000 psi.; Textura: Polvo; Tipo: Ugc; Uso: Construcci?n;',0,'Saco/42.5 Kilogramos','ACTIVO'),(118,'AC-Mezcla para levantado','33700 - 36911','Mezcla para levantado Uso: Construcci?n;',0,'Bolsa/50 Libra','ACTIVO'),(119,'AC-Block','57173 - 67784','Block Alto: 19 Cent?metro(s); Ancho: 14 Cent?metro(s); Clase: B; Largo: 39 Cent?metro(s); Material: Cemento; Resistencia: 50 kg/cm?;',0,'Unidad/1 Unidad(es)','ACTIVO'),(120,'AC-Pasta','38050 - 42030','Pasta Consistencia: Cremosa; Uso: Tablayeso;',0,'Cubeta/5 Gal?n','ACTIVO'),(121,'AC-Plancha','38595 - 42707','Plancha Alto: 8 Pies(s); Ancho: 4 Pies(s); Color: Gris; Grosor: 0.5 Pulgadas(s); Material: Fibrocemento; Uso: Intemperie;',0,'Unidad/1 Unidad(es)','ACTIVO'),(122,'AC-Plancha','4739 - 4922','Plancha Ancho: 4 Pies(s); Grosor: 1/2 pulgada; Largo: 8 Pies(s); Material: Tablayeso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(123,'AC-Tope prefabricado para parqueo','59178 - 70257','Tope prefabricado para parqueo  Largo: 1.8 Metro;  Material: Concreto;',0,'Unidad/1 Unidad(es)','ACTIVO'),(124,'AC-Estuque','27234 - 29700','Estuque Material: Yeso; Uso: Instalaci?n de pisos;',0,'Bolsa/10 Kilogramos','ACTIVO'),(125,'AC-Plancha','46833 - 54335','Plancha Ancho: 2 Pies(s); Calibre: 5/8; Largo: 2 Pies(s); Material: Fibra mineral; Uso: Cielo falso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(126,'AC-Electromalla','39043 - 43239','Electromalla Cuadros: 6 x 6 pulgadas; Grado: 70; Material: Acero; Tipo: - 6/6   4.88mm;',0,'Plancha/1 Unidad(es)','ACTIVO'),(127,'AC-Hierro','43589 - 50052','Hierro Ancho: 1 1/2 pulgadas; Grosor: 1/8 pulgada; Largo: 6 Metro(s); Material: Acero al carbono; Tipo: Plano;',0,'Unidad/1 Unidad(es)','ACTIVO'),(128,'AC-Hierro','43586 - 50050','Hierro Ancho: 1 1/2 pulgadas; Grosor: 3/16 pulgadas; Largo: 6 Metro(s); Material: Acero al carbono; Tipo: Plano;',0,'Unidad/1 Unidad(es)','ACTIVO'),(129,'AC-Hierro','19679 - 20660','Hierro Ancho: 2 Pulgadas(s); Grosor: 3/16 pulgadas; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: Plano;',0,'Unidad/1 Unidad(es)','ACTIVO'),(130,'AC-Hierro','19688 - 20670','Hierro Ancho: 4 Pulgadas(s); Grosor: 1/4 pulgada; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: Plano;',0,'Unidad/1 Unidad(es)','ACTIVO'),(131,'AC-Hierro','50700 - 67664','Hierro Grado: 40; Grosor: 1/2  pulgada; Largo: 20 Pies(s); Tipo: Corrugado;',0,'Quintal/1 Unidad(es)','ACTIVO'),(132,'AC-Hierro','50701 - 67662','Hierro Grado: 40; Grosor: 3/8 pulgadas; Largo: 20 Pies(s); Tipo: Corrugado;',0,'Quintal/1 Unidad(es)','ACTIVO'),(133,'AC-Hierro leg?timo','51649 - 60827','Hierro leg?timo Grado: 40; Grosor: 1/4 pulgada; Largo: 20 Pies(s); Tipo: Liso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(134,'AC-L?mina','19692 - 20673','L?mina Ancho: 4 Pies(s); Espesor: 1/4 pulgadas; Largo: 8 Pies(s); Material: Acero al carbono; Tipo: Lisa;',0,'Unidad/1 Unidad(es)','ACTIVO'),(135,'AC-L?mina','21076 - 22053','L?mina Ancho: 4 Pies(s); Espesor: 1/8 pulgadas; Largo: 8 Pies(s); Material: Acero; Tipo: Lisa; Uso: Pr?ctica de corte y soldadura;',0,'Plancha/1 Unidad(es)','ACTIVO'),(136,'AC-Perfil angular','43594 - 50057','Perfil angular Ancho: 1 1/2 pulgada; Grosor: 1/8 pulgada; Largo: 6 Metro(s); Material: Hierro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(137,'AC-Perfil angular','33209 - 36392','Perfil angular Ancho: 1 1/2 pulgadas; Grosor: 1/4 pulgadas; Largo: 6 Metro(s); Material: Hierro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(138,'AC-Perfil angular','43590 - 50053','Perfil angular Ancho: 1 pulgada; Grosor: 3/16 pulgada; Largo: 6 Metro(s); Material: Hierro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(139,'AC-Tubo','33421 - 36611','Tubo Ancho: 1 1/2 pulgadas; Calibre de chapa: 18 Mil?metro(s); Forma: Cuadrada; Largo: 6 Metro(s); Material: Hierro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(140,'AC-Tubo','33423 - 36612','Tubo Ancho: 2 Pulgadas(s); Calibre de chapa: 18 Mil?metro(s); Forma: Cuadrada; Largo: 6 Metro(s); Material: Hierro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(141,'AC-Tubo','47782 - 55694','Tubo Di?metro: 1 1/2 pulgada; Forma: Redonda; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: Proceso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(142,'AC-Tubo','19633 - 20614','Tubo Di?metro: 2 1/2 pulgadas; Forma: Redonda; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: Proceso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(143,'AC-Tubo','19631 - 20612','Tubo Di?metro: 2 Pulgadas(s); Forma: Redonda; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: Proceso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(144,'AC-Hierro','19717 - 20698','Hierro Ancho: 1 Pulgadas(s); Grosor: 1/8 pulgada; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: Plano;',0,'Unidad/1 Unidad(es)','ACTIVO'),(145,'AC-Hierro','43982 - 50639','Hierro Ancho: 3/4 pulgada; Grosor: 1/8 pulgada; Largo: 6 Metro(s); Material: Acero; Tipo: Plano;',0,'Unidad/1 Unidad(es)','ACTIVO'),(146,'AC-Tubo','33430 - 36622','Tubo Alto: 2 Pulgadas(s); Ancho: 1 Pulgadas(s); Calibre de chapa: 18 Mil?metro(s); Forma: Rectangular; Largo: 6 Metro(s); Material: Hierro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(147,'AC-Tubo','33417 - 36607','Tubo Ancho: 1 Pulgadas(s); Calibre de chapa: 18 Mil?metro(s); Forma: Cuadrada; Largo: 6 Metro(s); Material: Hierro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(148,'AC-Tubo','19627 - 20608','Tubo Di?metro: 1 Pulgadas(s); Forma: Redonda; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: Proceso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(149,'AC-Varilla','36280 - 68096','Varilla Grado: 40; Grosor: 1/2  pulgada; Largo: 6 Metro(s); Material: Hierro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(150,'AC-Tubo','55174-65065','Tubo Ancho: 1/2 pulgada; Calibre de chapa: 20 Mil?metro(s); Forma: Cuadrada; Largo: 6 Metro(s); Material: Hierro;',0,'Unidad(1 Unidad(es))','ACTIVO'),(151,'AC-Viga ','51255-60258 ','Viga  Altura: 6 Pulgadas(s); Ancho: 4 Pulgadas(s); Grosor: 1/4 pulgada; Largo: 6 Metro(s); Material: Hierro dulce; Tipo: H;',0,'Unidad(1 Unidad(es))','ACTIVO'),(152,'AC-Platina','106155-123742','Platina Ancho: 4 Pulgadas; Espesor: 1/8 pulgada; Largo: 10 Pies; Material: Acero inoxidable;',0,'Unidad(1 Unidad(es))','ACTIVO'),(153,'AC-Pasador','S/C','Pasador Tipo: Sobrepuestos de cadena; Uso: para puertas',0,'Plancha/1 Unidad(es)','ACTIVO'),(154,'AC-Alambre','61703 - 74080','Alambre  Calibre: 21;  Tipo: Galvanizado;',0,'Rollo/1 Libra','ACTIVO'),(155,'AC-Alambre','61702 - 74079','Alambre  Calibre: 24;  Tipo: Galvanizado;',0,'Rollo/1 Libra','ACTIVO'),(156,'AC-L?mina','51420 - 60454','L?mina Ancho: 3 Pies(s); Calibre: 26; Largo: 6 Pies(s); Tipo: Lisa; Tipo de capa: Galvanizado;',0,'Unidad/1 Unidad(es)','ACTIVO'),(157,'AC-L?mina','51419 - 60453','L?mina Ancho: 4 Pies(s); Color: Negro; Grosor: 1/8 pulgadas; Largo: 8 Pies(s); Material: Metal; Tipo: Labrada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(158,'AC-Perfil angular','42535 - 48213','Perfil angular Ancho: 1 Pulgadas(s); Largo: 10 Pies(s); Material: Aluminio; Uso: Cielo falso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(159,'AC-Tee esmaltada','45026 - 51942','Tee esmaltada Ancho: 14 Mil?metro(s); Largo: 12 Pies(s); Material: Aluminio; Uso: Cielo falso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(160,'AC-Tee esmaltada','33186 - 36369','Tee esmaltada Ancho: 14 Mil?metro(s); Largo: 2 Pies(s); Material: Aluminio; Uso: Cielo falso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(161,'AC-Tee esmaltada','33184 - 36367','Tee esmaltada Ancho: 14 Mil?metro(s); Largo: 4 Pies(s); Material: Aluminio; Uso: Cielo falso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(162,'AC-Clavo','32669 - 35632','Con cabeza: Si; Largo: 2 Pulgadas(s); Material: Metal;',0,'Unidad/1 Libra','ACTIVO'),(163,'AC-Clavo','34046 - 55958','Con cabeza: Si; Largo: 3 Pulgadas(s); Material: Hierro;',0,'Unidad/1 Libra','ACTIVO'),(164,'AC-Clavo','39196 - 43429','Largo: 1 \"; Material: Metal;',0,'Empaque/1 Libra','ACTIVO'),(165,'AC-Clavo','44699 - 51503',' Largo: 1 1/2 pulgada;  Material: Metal;',0,'Unidad/1 Libra','ACTIVO'),(166,'AC-Clavo','32673 - 35636','Largo: 1 1/2 pulgada; Material: Metal; Tipo: Sin cabeza;',0,'Bolsa/1 Libra','ACTIVO'),(167,'AC-Clavo','32672 - 35635','Largo: 1 Pulgadas(s); Material: Metal; Tipo: Sin cabeza;',0,'Bolsa/1 Libra','ACTIVO'),(168,'AC-Clavo','32671 - 35634','Largo: 2 Pulgadas(s); Material: Metal; Tipo: Sin cabeza;',0,'Bolsa/1 Libra','ACTIVO'),(169,'AC-Clavo','36255 - 39817','Material: Metal; Tama?o: 4\"; Tipo: Con cabeza; Uso: Madera;',0,'Bolsa/1 Libra','ACTIVO'),(170,'AC-Perno','39933 - 44468','Ancho: 1/2 pulgada; Largo: 4 pulgadas; Material: Acero galvanizado; Tipo: Anclaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(171,'AC-Pistola para manguera','50880 - 59829','Di?metro de entrada: 1/2 pulgada; Material: Lat?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(172,'AC-Pistola para manguera','50618 - 59482','Di?metro de entrada: 3/4 pulgada; Material: Lat?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(173,'AC-Remache','21592 - 50635','Di?metro: 3/16 pulgadas; Material: Aluminio; Tipo: Pop; Uso: Uni?n de l?minas;',0,'Caja/100 Unidad(es)','ACTIVO'),(174,'AC-Remache','26410 - 28784','Di?metro: 3/32 pulgadas; Material: Aluminio; Tipo: Pop; Uso: Uni?n de l?minas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(175,'AC-Riel para gavetas','61478 - 73733',' Largo: 14 Pulgadas;  Material: Metal;  Tipo: Extensi?n;',0,'Par/1 Unidad(es)','ACTIVO'),(176,'AC-Riel para gavetas','61479 - 73734',' Largo: 16 Pulgadas;  Material: Metal;  Tipo: Extensi?n;',0,'Par/1 Unidad(es)','ACTIVO'),(177,'AC-Tachuela','34224 - 37473','Largo: 1 Pulgadas(s);',0,'Unidad/1 Unidad(es)','ACTIVO'),(178,'AC-Tarugo','1984 - 2297','Caracter?stica: Expandible; Material: Metal; Tama?o: 3/8 pulgada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(179,'AC-Tarugo','32682 - 35645','Grosor: 1/4 pulgada; Largo: 1.5 pulgada; Material: Metal; Uso: Expansi?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(180,'AC-Tornillo','45394 - 52461','Di?metro: 1/4; Material: Metal; Medida: 1 1/2; Uso: Tabla yeso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(181,'AC-Tornillo estufa cabeza plana','58493 - 69424',' Di?metro: 3/16 pulgada;  Largo: 1 1/2 pulgada;  Material: Acero galvanizado;  Tipo de cabeza: Phillips;',0,'Unidad/1 Unidad(es)','ACTIVO'),(182,'ACTornillo','31116 - 33899','Largo: 1 Pulgadas(s); Material: Metal; Tipo: \"s\"; Uso: Tabla yeso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(183,'AC-Tornillo polser','39654 - 44043','Arandela: Galvanizada y de hule; Cabeza: Hexagonal; Largo: 2 Pulgadas(s); Material: Metal; Tipo: Autorroscante;',0,'Unidad/1 Unidad(es)','ACTIVO'),(184,'AC-Tornillo','1978 - 2291','Tama?o: 3\"; Uso: Madera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(185,'AC-Perno con roldana','53095 - 62531','Di?metro: 3/8 pulgada; Largo: 3 Pulgadas(s); Material: Acero galvanizado; Tipo: Anclaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(186,'AC-Perno','55301 - 65285','Di?metro: 1/4 pulgadas; Largo: 2 Pulgadas(s); Material: Acero galvanizado; Tipo: Anclaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(187,'AC-Punz?n de fijaci?n','60997 - 73127',' Di?metro: 3/8 pulgadas;  Largo: 6 Pulgadas;  Material: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(188,'AC-Remache','47849 - 55797','Di?metro: 1/2 pulgadas; Material: Aluminio; Tipo: Pop; Uso: Uni?n de l?minas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(189,'AC-Remache','26412 - 28786','Di?metro: 1/4 pulgadas; Material: Aluminio; Tipo: Pop; Uso: Uni?n de l?minas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(190,'AC-Tornillo','39163 - 43393','Ancho: 5/8 pulgada; Largo: 3 1/2; Material: Metal; Tipo: Cabeza hexagonal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(191,'AC-Tornillo','43328 - 49533','Di?metro: 1/4 pulgada; Largo: 1 1/4 pulgada; Material: Hierro galvanizado; Tipo: Busca rosca;',0,'Caja/1000 Unidad(es)','ACTIVO'),(192,'AC-Tornillo','46839 - 54346','Di?metro: 1/4 pulgada; Largo: 2 Pulgadas(s); Material: Metal; Uso: Tabla yeso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(193,'AC-Tornillo','58003 - 68848',' Cabeza: Hexagonal;  Di?metro: 7 Mil?metro;  Largo: 1  1/2 pulgadas;  Material: Acero inoxidable;  Tipo de rosca: Ordinaria;',0,'Unidad/1 Unidad(es)','ACTIVO'),(194,'AC-Tornillo','39930 - 44466','Ancho: 1/4 pulgada; Largo: 3/4 pulgada; Material: Acero galvanizado; Rosca: Ordinaria; Tipo: Cabeza hexagonal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(195,'AC-Tornillo','39119 - 43332','Ancho: 3/16 pulgadas; Largo: 2 pulgada; Material: Acero galvanizado; Tipo: Estufa;',0,'Unidad/1 Unidad(es)','ACTIVO'),(196,'AC-Tornillo','33499 - 36708','Cabeza: Hexagonal; Di?metro: 1/4 pulgadas; Largo: 1  1/2 pulgadas; Material: Acero inoxidable; Tipo de rosca: Media ordinaria;',0,'Unidad/1 Unidad(es)','ACTIVO'),(197,'AC-Tornillo','33554 - 36766','Cabeza: Hexagonal; Di?metro: 3/8   pulgadas; Largo: 1  1/2 pulgadas; Material: Acero inoxidable; Tipo de rosca: Corrida ordinaria;',0,'Unidad/1 Unidad(es)','ACTIVO'),(198,'AC-Tornillo','34158 - 37407','Cabeza: Plana; Clase: Castigadera; Largo: 2 Pulgadas(s); Material: Hierro; Uso: Madera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(199,'AC-Tornillo','46839-54346','Di?metro: 1/4 pulgada; Largo: 2 Pulgadas(s); Material: Metal; Uso: Tabla yeso;\n\n',0,'Unidad(1 Unidad(es))','ACTIVO'),(200,'AC-Tornillo','42392-48036','Di?metro: 3/16 pulgada; Largo: 1/2 pulgada; Material: Metal; Tipo: Busca rosca;',0,'Unidad(1 Unidad(es))','ACTIVO'),(201,'AC-Tornillo','104899-122328','Di?metro: 5/32 pulgada; Largo: 1 1/2 pulgada; Material: Metal; Tipo: Busca rosca;',0,'Unidad(1 Unidad(es))','ACTIVO'),(202,'AC-Tornillo','42414-48061','Di?metro: 1/2 pulgada; Largo: 2 Pulgadas(s); Material: Metal; Tipo: Busca rosca;',0,'Unidad(1 Unidad(es))','ACTIVO'),(203,'AC-Malla','83557-98821','Alto: 1.5 Metro; Calibre: 10 Mil?metro; Cuadro: 2 Pulgadas; Largo: 25 Metro; Material: Metal galvanizado;',0,'Rollo(1 Unidad(es))','ACTIVO'),(204,'AC-Canal','77641-91872','Ancho: 7/8 pulgadas; Calibre: 26 ; Largo: 12 Pies; Material: Acero galvanizado; Tipo: List?n;',0,'Unidad(1 Unidad(es))','ACTIVO'),(205,'AC-Tarugo','39187-43418','Ancho: 5/16 pulgadas; Largo: 1 1/2 pulgadas; Material: Metal; Tipo: Expansi?n doble;',0,'Unidad(1 Unidad(es))','ACTIVO'),(206,'AC-Tarugo','85767-101476','Grosor: 1/4 pulgada; Largo: 1 1/2 pulgadas; Material: Metal; Tipo: Expansi?n doble;',0,'Unidad(1 Unidad(es))','ACTIVO'),(207,'AC-Cerraje ','S/C','Tipo: bisagra de medio canto; Uso: puertas de gabinetes',0,'Par/1 Unidad(es)','ACTIVO'),(208,'AC-Tope de puerta ','S/C','Dimensiones: Largo 6 cm; Alto: 6cm; Ancho: 3.2 cm; Material: Aluminio; Color: Cromado con gris;',0,'Unidad/1 Unidad(es)','ACTIVO'),(209,'AC-Trabadores','S/C','Trabadores ; Trabadores a presi?n de 1/2\" *1 3/8\"  color plateado ',0,'Unidad/1 Unidad(es)','ACTIVO'),(210,'AC-Tornillo con tuerca','S/C','Diametro: 1/4 pulgada; largo: 2 1/2 pulgada ;Rosca: Ordinaria Corrida ; Punta: sin punta; Material: Acero galvanizado; Uso: general; Tuerca: Si; Cabeza: Cilindrica tipo phillips',0,'Unidad/1 Unidad(es)','ACTIVO'),(211,'AC-Tornillo ','S/C','Diametro: 1/4 pulgada; largo: 3/4 pulgada ;Rosca: Fina Corrida ; Punta: sin punta; Material: Acero galvanizado; Uso: general; Tuerca: No; Cabeza: Cilindrica tipo phillips',0,'Unidad/1 Unidad(es)','ACTIVO'),(212,'AC-Tornillo ','S/C','Diametro: 1/4 pulgada; largo: 1 pulgada ;Rosca: Fina Corrida ; Punta: sin punta; Material: Acero galvanizado; Uso: general; Tuerca: No; Cabeza: Cilindrica tipo phillips',0,'Unidad/1 Unidad(es)','ACTIVO'),(213,'AC-Tornillo ','S/C','Diametro: 1/4 pulgada; largo: 2 1/2 pulgada; Rosca: Fina Corrida ; Punta: sin punta; Material: Hierro negro; Uso: general; Tuerca: No; Cabeza: Hexagonal',0,'Unidad/1 Unidad(es)','ACTIVO'),(214,'AC-Tornillo ','S/C','Diametro: 1/4 pulgada; largo: 2 1/2 pulgada; Rosca: Ordinaria Corrida ; Punta: sin punta; Material: Hierro negro; Uso: general; Tuerca: No; Cabeza: Hexagonal',0,'Unidad/1 Unidad(es)','ACTIVO'),(215,'AC-Tornillo ','S/C','Diametro: 1/4 pulgada; largo: 1pulgada; Rosca: Fina corrida ; Punta: sin punta; Material: Hierro negro; Uso: general; Tuerca: No; Cabeza: Gota tipo phillips',0,'Unidad/1 Unidad(es)','ACTIVO'),(216,'AC-Tornillo con tuerca','S/C','Diametro: 5/16 pulgada; largo: 1 pulgada; Rosca: Ordinaria corrida ; Punta: sin punta; Material: Hierro negro; Uso: general; Tuerca: Si; Cabeza: Hexagonal',0,'Unidad/1 Unidad(es)','ACTIVO'),(217,'AC-Tornillo ','S/C','Diametro: 3/16 pulgada; largo: 2 1/2 pulgada; Rosca: Ordinaria ; Punta: Con punta; Material: Hierro negro; Uso: general; Tuerca: No; Cabeza tipo phillips.',0,'Unidad/1 Unidad(es)','ACTIVO'),(218,'AC-Tornillo de union','S/C','Diametro: 1/4 pulgada; largo:  3/4 pulgada; Rosca: Fina; Punta: Sin punta; Material: Niquelado; Uso: general; Tuerca: No; Cabeza: Cilindrica phillips.',0,'Unidad/1 Unidad(es)','ACTIVO'),(219,'AC-Canaleta para tablayeso','63323 - 76211','Canaleta para tablayeso  Ancho: 2 1/2 pulgada;  Calibre: 22 ;  Forma: U;  Largo: 10 Pies;  Material: L?mina met?lica galvanizada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(220,'AC-Poste para tablayeso','61308 - 73532','Poste para tablayeso  Ancho: 2 1/2 pulgada;  Calibre: 22 ;  Forma: \"c\";  Largo: 10 Pies;  Material: L?mina met?lica galvanizada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(221,'AC-Ventana','S/C','Ventana Alto de ventana: Variable; Ancho de ventana: Variable;  Espesor del vidrio: 6 Mil?metro(s); Material del marco: Aluminio tipo Euro; Dise?o: el presentado en planos',0,'Unidad/1 metro(s) cuadrado (s)','ACTIVO'),(222,'AC-Puerta ','S/C','Puerta   Alto: Variable;  Ancho: Variable;  Espesor del vidrio: 6 Mil?metro(s); Material del marco: Aluminio tipo Euro; Dise?o: el presentado en planos',0,'Unidad/1 metro(s) cuadrado (s)','ACTIVO'),(223,'AC-Chapa','31133 - 33913','Chapa Forma: Manija; Material: Metal; Uso: Puerta de madera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(224,'AC-Chapa','30020 - 32670','Chapa Uso: Archivo;',0,'Unidad /1 Unidad(es)','ACTIVO'),(225,'AC-Chapa','31876 - 34692','Chapa Uso: Escritorio;',0,'Unidad/1 Unidad(es)','ACTIVO'),(226,'AC-Electrodo','20088-62281','Electrodo Di?metro: 3/32 pulgada; Material: Acero al carbono; Uso: Soldadura;',0,'Paquete(1 Libra)','ACTIVO'),(227,'AC-Aspersor de riego','58083 - 68937','Aspersor de riego  Di?metro: 3/4 pulgada;  Material: Pl?stico;  Tipo: Oscilatorio;',0,'Unidad/1 Unidad(es)','ACTIVO'),(228,'AC-Brocha','61217 - 73403','Brocha  Cerda: Natural;  Mango: Pl?stico;  Tama?o: 3 Pulgadas;  Uso: Pintura;',0,'Unidad/1 Unidad(es)','ACTIVO'),(229,'AC-Brocha','73524 - 87363','Brocha  Cerda: Natural;  Tama?o: 5 Pulgadas;  Tipo: Mango de pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(230,'AC-Brocha','65108 - 78349','Brocha  Cerda: Sint?tica;  Mango: Madera;  Tama?o: 4 Pulgadas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(231,'AC-Brocha','32009 - 34855','Brocha Mango: Madera; Pelo: Maguey; Tama?o: 1 Pulgadas(s); Uso: Varios (aplicar estucos a la cal, sustancias ?cidas, aplicar pegamentos ep?xicos; mezclar pintura, etc.);',0,'Unidad/1 Unidad(es)','ACTIVO'),(232,'AC-Brocha','32011 - 34857','Brocha Mango: Madera; Pelo: Maguey; Tama?o: 2 Pulgadas(s); Uso: Varios (aplicar estucos a la cal, sustancias ?cidas, aplicar pegamentos ep?xicos; mezclar pintura, etc.);',0,'Unidad/1 Unidad(es)','ACTIVO'),(233,'AC-Brocha','32015 - 34861','Brocha Mango: Madera; Pelo: Maguey; Tama?o: 5 Pulgadas(s); Uso: Varios (aplicar estucos a la cal, sustancias ?cidas, aplicar pegamentos ep?xicos; mezclar pintura, etc.);',0,'Unidad/1 Unidad(es)','ACTIVO'),(234,'AC-Cinta para juntas','61413 - 73653','Cinta para juntas  Ancho: 4 Pulgadas;  Uso: Fibrocemento;',0,'Rollo/250 Pies','ACTIVO'),(235,'AC-Cinta para juntas','51269 - 60273','Cinta para juntas Ancho: 2 Pulgadas(s); Uso: Tablayeso;',0,'Rollo/250 Pies','ACTIVO'),(236,'AC-Lija para madera','20534 - 21506','Lija para madera Calibre: 120;',0,'Unidad/1 Unidad(es)','ACTIVO'),(237,'AC-Lija para madera','36060 - 39577','Lija para madera Calibre: 150;',0,'Pliego/1 Unidad(es)','ACTIVO'),(238,'AC-Lija para madera','49703 - 58262','Lija para madera Calibre: 50;',0,'Pliego/1 Unidad(es)','ACTIVO'),(239,'AC-Lija para madera','33856 - 37077','Lija para madera Calibre: 80;',0,'Pliego/1 Unidad(es)','ACTIVO'),(240,'AC-Lija para metal','36084 - 39599','Lija para metal Calibre: 180;',0,'Unidad/1 Unidad(es)','ACTIVO'),(241,'AC-Lija para metal','49701 - 58260','Lija para metal Calibre: 50;',0,'Pliego/1 Unidad(es)','ACTIVO'),(242,'AC-Lija para metal','49576 - 58104','Lija para metal Calibre: 500;',0,'Pliego/1 Unidad(es)','ACTIVO'),(243,'AC-Limat?n','53760 - 63404','Limat?n Longitud: 12 Pulgadas(s); Material: Hierro endurecido; Punta: Redonda; Uso: Limar superficies metalicas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(244,'Rodillo para pintar','63698 - 76639','Rodillo para pintar  Di?metro: 4 Cent?metro;  Largo: 22 Cent?metro;  Material: Metal;  Material del mango: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(245,'AC-Rodo','78414-92697','Rodo Ancho: 1 1/4 pulgadas; Di?metro: 1 1/4 pulgada; Estructura: Hierro galvanizado; Material de rueda: Metal; Plato: Giratorio; Uso: Varios;',0,'Unidad/ 1unidad(es)','ACTIVO'),(246,'AC-Rodo','73448-87280','Rodo Ancho: 1 Pulgadas; Di?metro: 3 Pulgadas; Material de rodo: Goma; Placa: Acero; Tipo: Giratorio; Uso: Varios;',0,'Unidad/ 1unidad(es)','ACTIVO'),(247,'AC-Rodo','84314-99745','Rodo Ancho: 20 Mil?metro; Di?metro: 100 Mililitro; Material de rodo: Goma; Placa: Acero; Tipo: Giratorio; Uso: Varios;',0,'Unidad/ 1unidad(es)','ACTIVO'),(248,'AC-Lija para madera','49697-58255','Lija para madera Calibre: 220;',0,'Pliego/1 Unidad(es)','ACTIVO'),(249,'AC-Lija para madera','49693-58251','Lija para madera Calibre: 320;',0,'Pliego/1 Unidad(es)','ACTIVO'),(250,'AC-Lija para madera','49691-58249','Lija para madera Calibre: 400;',0,'Pliego/1 Unidad(es)','ACTIVO'),(251,'AC-Lija','63986-77289','Lija Calibre: 1000; Material: Papel a prueba de agua;',0,'Pliego/1 Unidad(es)','ACTIVO'),(252,'AC-Broca','S/C','Broca  Di?metro: 1/2 pulgada;  Largo: 6 Pulgadas;  Material: Acero al cromo;  Punta: Carburo de  tungsteno;  Uso: Concreto;',0,'Unidad/1 Unidad(es)','ACTIVO'),(253,'AC-Broca de alto rendimiento','S/C','Broca de alto rendimiento Di?metro: 1/2 pulgada; Largo: 30 Cent?metro(s); Material: Acero al cromo; Uso: Concreto;',0,'Unidad/1 Unidad(es)','ACTIVO'),(254,'AC-Broca de alto rendimiento','S/C','Broca de alto rendimiento Di?metro: 1/4 pulgadas; Largo: 30 Cent?metro(s); Material: Acero al cromo; Uso: Concreto;',0,'Unidad/1 Unidad(es)','ACTIVO'),(255,'AC-Broca de alto rendimiento','S/C','Broca de alto rendimiento Di?metro: 3/8 pulgadas; Largo: 30 Cent?metro(s); Material: Acero al cromo; Uso: Concreto;',0,'Unidad/1 Unidad(es)','ACTIVO'),(256,'AC-Broca','S/C','Broca Di?metro: 1/2 pulgada; Material: Metal; Tipo: Cil?ndrica; Uso: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(257,'AC-Broca','S/C','Broca Di?metro: 1/4 pulgada; Material: Metal; Uso: Agujereado en metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(258,'AC-Broca','S/C','Broca Di?metro: 1/8 pulgada; Material: Metal; Tipo: Cil?ndrica; Uso: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(259,'AC-Broca','S/C','Broca Di?metro: 11/64 pulgadas; Material: Metal; Uso: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(260,'AC-Broca','S/C','Broca Di?metro: 3/8 pulgadas; Material: Metal; Tipo: Cil?ndrica; Uso: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(261,'AC-Broca','S/C','Broca Di?metro: 5/16 pulgadas; Material: Metal acerado; Uso: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(262,'AC-Broca','S/C','Broca Di?metro: 9/64 pulgadas; Material: Metal acerado; Uso: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(263,'AC-Broca para concreto','S/C','Broca para concreto  Di?metro: 3/8 pulgadas;  Largo: 6 Pulgadas;  Material: Acero al cromo;  Punta: Carburo de tungsteno;',0,'Unidad/1 Unidad(es)','ACTIVO'),(264,'AC-Disco de corte','S/C','Disco de corte Ancho: 1/4 pulgada; Di?metro: 7/8 pulgada; Largo: 4 1/2 pulgada; Material: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(265,'AC-Disco','S/C','Disco Di?metro: 14 Pulgadas(s); Di?metro interno: 7/8 pulgada; Grosor: 3/32 pulgada; Material: Asbesto y metal; Uso: Corte de metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(266,'AC-Disco','S/C','Disco Di?metro: 4 1/2 pulgada; Di?metro interno: 7/8 pulgada; Grosor: 3/32 pulgada; Material: Asbesto y metal; Uso: Corte de metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(267,'AC-Disco para pulir metal','S/C','Disco para pulir metal  Di?metro externo: 4 1/2 pulgada;  Di?metro interno: 7/8 pulgada;  Material: Abrasivo;',0,'Unidad/1 Unidad(es)','ACTIVO'),(268,'AC-Discos para sierra','S/C','Discos para sierra Di?metro: 12 Pulgadas(s); Material: Acero tungsteno;',0,'Unidad/1 Unidad(es)','ACTIVO'),(269,'AC-Discos para sierra','S/C','Discos para sierra Di?metro: 14 Pulgadas(s); Material: Acero tungsteno;',0,'Unidad/1 Unidad(es)','ACTIVO'),(270,'AC-Juego de brocas','S/C','Juego de brocas Cantidad de piezas: 25; Material: Acero; Medida: 1/16 a 1/2 pulgadas; Uso: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(271,'AC-Juego de brocas','S/C','Juego de brocas Cantidad de piezas: 25; Material: Acero; Medida: 1/16 a 3/4 pulgadas; Uso: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(272,'AC-Juego de brocas','S/C','Juego de brocas Cantidad de piezas: 5; Material: Acero al cromo; Medida: 3/16 x 4\", 1/4 x 4\", 1/4 x 6\", 5/16 x 4\", 3/8 x 6\"; Puntas: Carburo de tungsteno; Uso: Concreto;',0,'Unidad/1 Unidad(es)','ACTIVO'),(273,'AC-Juego de brocas','S/C','Juego de brocas Cantidad de piezas: 7; Material: Aleaci?n de cobalto; Medida: 2x24 mm, 3x33 mm, 4x43 mm, 5x52 mm, 6x57 mm, 8x75 mm, 10x87 mm; Uso: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(274,'AC-Juego de fresas para router','S/C','Juego de fresas para router  Material: Acero al carbono;  Medida: 3/8;  Piezas: 24 ;  Uso: Madera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(275,'AC-Kit de accesorios para compresor de aire','S/C','Kit de accesorios para compresor de aire Incluye: Pistola de aire, conectores tipo macho, coples r?pidos tipo hembra, inflador para neum?ticos cabeza sencilla, boquilla c?nica, boquilla de alta presi?n, niple tipo ff, niple tipo mm, v?lvula para inflar ba',0,'Unidad/1 Unidad(es)','ACTIVO'),(276,'AC-Mandril para taladro','S/C','Mandril para taladro Di?metro: 3/8 pulgada; Material: Acero inoxidable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(277,'AC-Manguera','S/C','Manguera Di?metro: 0.5 Cent?metro(s); Tipo: Pun-6x1-bl-500; Uso: Compresor;',0,'Unidad/1 Unidad(es)','ACTIVO'),(278,'AC-Piedra de esmeril','S/C','Piedra de esmeril Di?metro externo: 10 Pulgadas(s); Di?metro interno: 1  1/2 pulgadas; Espesor: 1  1/2 pulgadas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(279,'AC-Piedra de esmeril','S/C','Piedra de esmeril Di?metro externo: 8 Pulgadas(s); Di?metro interno: 1 Pulgadas(s); Espesor: 1 Pulgadas(s);',0,'Unidad/1 Unidad(es)','ACTIVO'),(280,'AC-Pistola de pintar','S/C','Pistola de pintar  Capacidad: 1 Litro;  Material: Aluminio;  Presi?n m?xima: 100 Libra por Pulgada Cuadrada;  Sistema: Por succi?n de alta presi?n;  Uso: Para pintar con compresor;',0,'Unidad/1 Unidad(es)','ACTIVO'),(281,'AC-Pistola de pintar','S/C','Pistola de pintar  Capacidad: 1 Litro;  Material: Aluminio;  Presi?n m?xima: 50 Libra por Pulgada Cuadrada;  Sistema: Por succi?n de baja presi?n;  Uso: Para pintar con compresor;',0,'Unidad/1 Unidad(es)','ACTIVO'),(282,'AC-Pistola de pintar','S/C','Pistola de pintar  Sistema: Por gravedad;  Tipo de pistolas: Phlv;',0,'Unidad/1 Unidad(es)','ACTIVO'),(283,'AC-Portaelectrodo','S/C','Portaelectrodo Accesorios: Llave allen y l?mina de cobre; Capacidad: 300 Amperio(s); Material: Aleaci?n de cobre aislada; Uso: Soldadura el?ctrica;',0,'Unidad/1 Unidad(es)','ACTIVO'),(284,'AC-Disco','S/C','Disco  Di?metro: 4 1/2 Pulgadas(s); Uso: pulido de soldaduras; Tipo : laminado; Diametro interno: 7/8 de pulgada; Grano: 60',0,'Unidad/ 1unidad(es)','ACTIVO'),(285,'AC-Disco','S/C','Disco  Di?metro: 9 Pulgadas(s); Uso: general; Tipo : abrasivo; Diametro interno: 7/8 de pulgada; espesor: 1/4 pulgada; rendimiento: alto',0,'Unidad/ 1unidad(es)','ACTIVO'),(286,'AC-Disco','S/C','Disco  Di?metro: 9 Pulgadas(s); Uso: corte de metal; Tipo : fino; Diametro interno: 7/8 de pulgada; espesor: 5/64 pulgada; rendimiento: alto',0,'Unidad/ 1unidad(es)','ACTIVO'),(287,'AM-Wipe','4657 - 36614','Wipe Color: Blanco; Tipo: Bola;',-1,'Bola/1 Libra','ACTIVO'),(288,'AM-Pita','60771 - 72722','Pita  Material: Pl?stico;',0,'Rollo/100 Metro','ACTIVO'),(289,'AM-Manguera','65815-79146','Di?metro: 1 Pulgadas; Material: Caucho reforzado con malla de acero; Tipo: Alta presi?n',0,'Unidad(1 Pies)','ACTIVO'),(290,'AM-Manguera','65813-79144','Di?metro: 3/4 pulgada; Material: Caucho reforzado con malla de acero; Tipo: Alta presi?n;',0,'Unidad(1 Pies)','ACTIVO '),(291,'AM-Manguera','65816-79147','Di?metro: 1 1/4 pulgada; Material: Caucho reforzado con malla de acero; Tipo: Alta presi?n;',0,'Unidad(1 Pies)','ACTIVO '),(292,'AM-Manguera','S/C','Di?metro: 1 1/2 pulgada; Material: Caucho reforzado con malla de acero; Tipo: Alta presi?n;',0,'Unidad(1 Pies)','ACTIVO '),(293,'AM-Manguera','S/C','Di?metro: 2 pulgada; Material: Caucho reforzado con malla de acero; Tipo: Alta presi?n;',0,'Unidad(1 Pies)','ACTIVO '),(294,'AM-Manguera','S/C','Di?metro: 2 1/2 pulgada; Material: Caucho reforzado con malla de acero; Tipo: Alta presi?n;',0,'Unidad(1 Pies)','ACTIVO '),(295,'AM-Manguera','S/C','Di?metro: 3 pulgada; Material: Caucho reforzado con malla de acero; Tipo: Alta presi?n;',0,'Unidad(1 Pies)','ACTIVO '),(296,'AM-Empaque','83645-98928','Grosor: 3 Mil?metro; Material: Hule;',0,'Rollo(1 Metro)','ACTIVO '),(297,'AM-Empaque','83647-98930','Grosor: 2 Mil?metro; Material: Hule;',0,'Rollo(1 Metro)','ACTIVO '),(298,'AM-Empaque','83657-98940?','Grosor: 5 Mil?metro; Material: Hule;',0,'Rollo(1 Metro)','ACTIVO '),(299,'AM-Silic?n','33531 - 77744','Silic?n Color: Blanco; Uso: Sellador;',0,'Tubo/300 Mililitro','ACTIVO '),(300,'AM-Solvente','39288 - 43542','Solvente Tipo: Desengrasador; Uso: Aflojar grasa solida de cojinete y engranaje;',0,'Bote/401 Gramos','ACTIVO '),(301,'AM-Kit de reactivos para an?lisis en agua','52533-61859?','Cantidad de reacitvos del kit: 9; Distribuci?n del kit: Cloro residual, sulfatos, nitratos, nitritos, metales pesados, demanda qu?mica de oxigeno (dqo), fosforo total, nitr?geno total, carbono org?nico total.;',0,'Unidad(1 Unidad(es))','ACTIVO '),(302,'AM-Descarbonizante','S/C','Tipo: Biodegradable; Apariencia: liquido viscoso; Uso: cocina',0,'Envase/1 Gal?n','ACTIVO '),(303,'AM-Aceite','54020 - 63705','Aceite: Grado de viscosidad sae: 15w40; Tipo: Sint?tico; Uso: Motor;',0,'Envase/1 Gal?n','ACTIVO '),(304,'AM-Aceite','44454 - 67864','Aceite Clase: Multigrado; Forma: Oleoso; Tipo: Lubricante; Uso: Maquinaria; Viscosidad: Sae 90;',0,'Envase/1 Gal?n','ACTIVO '),(305,'AM-Combustible','1941 - 66563','Combustible Clase: Di?sel;',0,'Unidad/1 Gal?n','ACTIVO '),(306,'AM-Aceite','47019 - 54604','Aceite Clase: Festo; Grado de viscosidad: Ofsw-32; Tipo: Bomba hidr?ulica;',0,'Envase/1 Litro','ACTIVO '),(307,'AM-Aceite','40055 - 44651','Aceite Estado: Liquido; Propiedades: Ablandador, lubricante y anticorrosivo; Tipo: Spray;',0,'Bote/11 Onza','ACTIVO '),(308,'AM-Aceite lubricante','31056 - 42380','Aceite lubricante Estado: L?quido; Propiedades: Anticorrosivo; Tipo: Multiusos 3 en 1;',-1,'Bote/1 Gal?n','ACTIVO '),(309,'AM-Grasa','47070 - 54687','Grasa Grado de viscosidad: Ac-4000; Uso: Cojinete;',0,'Pomo/1 Libra','ACTIVO '),(310,'AM-Grasa','47072 - 54689','Grasa Grado de viscosidad: Ga-1002; Uso: Cojinete;',0,'Pomo/1 Libra','ACTIVO '),(311,'AM-Grasa','40432 - 45145','Grasa Numero: 2; Uso: Engrase en general;',0,'Bote/1 Libra','ACTIVO '),(312,'AM-Gas propano','3620 - 63245','Gas propano Ingrediente: Vol?til;',0,'Recarga/1 Gal?n','ACTIVO '),(313,'AM-Aceite para refrigeraci?n','82836-97915','Base: Sint?tico; Composici?n: Poliolester; Estado: L?quido;',0,'Bote(1 Gal?n)','ACTIVO '),(314,'AM-Aceite para refrigeraci?n','22305-23747','Grado de viscosidad sae: 30; Uso: Motor',0,'Cubeta(5 Gal?n)','ACTIVO '),(315,'AM-Aceite lubricante para bombas de vac','82779-97846','Estado: L?quido; Grado de viscosidad: Iso 40; Tipo: Sint?tico; Uso: Sistemas de refrigeraci?n;',0,'Bote(1 Gal?n)','ACTIVO '),(316,'AM-Aceite lubricante para bombas de vac','22297-23724','Grado de viscosidad sae: 10w-30; Uso: Motor;',0,'Envase(1 Gal?n)','ACTIVO '),(317,'AM-Pintura','20515-21489?','Color: Brillo satinado; Compuesto: Zinc y cromato; L?nea: Marina; Resistencia al calor: 200 Grados Fahrenheit(s); Tipo: Anticorrosivo;',0,'Envase(1 Gal?n)','ACTIVO '),(318,'AM-Tarugo','48405 - 56640','Tarugo  Di?metro: 6 Mil?metro;  Largo: 40 Mil?metro;  Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO '),(319,'AM-Tarugo','48401 - 56638','Tarugo  Di?metro: 8 Mil?metro;  Largo: 60 Mil?metro;  Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO '),(320,'AM-Tarugo','28809 - 31381','Tarugo Material: Pl?stico; N?mero: 8; Uso: Fijaci?n;',0,'Bolsa/100 Unidad(es)','ACTIVO '),(321,'AM-Caja para herramientas','53837 - 63495','Caja para herramientas Alto: 16 Pulgadas(s); Ancho: 15 Pulgadas(s); Cierre: Met?lico; Largo: 24 Pulgadas(s); Mango: Telesc?pico; Material: Pl?stico; Tipo: Rodante con organizadores;',0,'Unidad/1 Unidad(es)','ACTIVO '),(322,'AM-Caja para herramientas','49778 - 58351','Caja para herramientas Ancho: 25 Cent?metro(s); Largo: 41 Cent?metro(s); Material: Polimero de alto impacto;',0,'Unidad/1 Unidad(es)','ACTIVO '),(323,'AM-Cedazo','30023 - 32673','Cedazo Ancho de la perforaci?n: 1/4 pulgada; Material: Pl?stico;',0,'Unidad/1 Yarda','ACTIVO '),(324,'AM-Cincho','43089 - 48998','Cincho Ancho: 2.5 Mil?metro(s); Largo: 9 Pulgadas(s); Material: Pl?stico;',0,'Bolsa/100 Unidad(es)','ACTIVO '),(325,'AM-Cinta de tefl?n','28139 - 30666','Cinta de tefl?n Ancho: 3/4 pulgadas;',0,'Carrete/10 Metro','ACTIVO '),(326,'AM-Guarda Termostato','S/C','Material: Acrilico; Medidas: 18.4 x 24.8 x 8.6 cm; con llave; doble pared; bloqueo anti-manipulaci?n; ',0,'Unidad/1 Unidad(es)','ACTIVO '),(327,'AM-Esponja','76760-90916','Ancho: 1 Metro; Grosor: 1/4; Largo: 2 Metro; Material: Poliuretano;',0,'Unidad(1 Unidad(es))','ACTIVO '),(328,'AM-Desengrasante','49871 - 64845','Desengrasante Biodegradable: Si; Concentracion: 95 %; Estado: Liquido; Uso: Multiusos;',0,'Envase/1 Gal?n','ACTIVO '),(329,'AM-Limpiador','38200 - 42221','Limpiador Consistencia: L?quida; Uso: Piezas de aluminio y acero inoxidable;',0,'Envase/1 Gal?n','ACTIVO '),(330,'AM-Pegamento','3643 - 4305','Pegamento Consistencia: Viscosa; Ingrediente: Poliuretano y thinner; Uso: Zapatero;',0,'Gal?n/3.78 Litro','ACTIVO '),(331,'AM-Espuma limpiadora','36149 - 39699','Espuma limpiadora Aplicador: Spray; Uso: Circuitos electricos;',0,'Envase/454 Mililitro','ACTIVO '),(332,'Limpiador de contactos','33870 - 68751','Limpiador de contactos Aplicador: Spray; Tipo: Diel?ctrico;',0,'Envase/283 Gramos','ACTIVO '),(333,'AM-Silic?n','20147 - 21122','Silic?n Color: Blanco; Grados: 500; Material: Compuesto diel?ctrico t?rmico; T?mperatura m?xima: 500; T?mperatura m?nima: -40; Uso: Alta temperatura;',0,'Tubo/70 Gramos','ACTIVO '),(334,'AM-Adhesivo','49267 - 70252','Adhesivo Clase: Ep?xico; Componentes: A+b; Tipo: Gel;',0,'Envase/1 Gal?n','ACTIVO '),(335,'AM-Pegamento','36213-39766','Secado: De contacto; Tipo: Adhesivo;',0,'Envase(1 Gal?n)','ACTIVO '),(336,'AM-Fibra de vidrio','80982-95682','Aislamiento t?rmico: R10; Ancho: 0.61 Metro; Grosor: 3 Pulgadas; Incluye: Papel kraft; Largo: 15.24 Metro;',0,'Rollo(1 Unidad(es))','ACTIVO '),(337,'AM-Ca?uela','S/C','Material: Fibra de vidrio; di?metro interior: 1/2\"; espesor: 1\"; longitud: 36\";  uso: aislamiento de tuber',0,'Unidad/1 Unidad(es)','ACTIVO '),(338,'AM-Ca?uela','S/C','Material: Fibra de vidrio; di?metro interior: 3/4\"; espesor: 1\"; longitud: 36\";  uso: aislamiento de tuber',0,'Unidad/1 Unidad(es)','ACTIVO '),(339,'AM-Ca?uela','S/C','Material: Fibra de vidrio; di?metro interior: 1\"; espesor: 1\"; longitud: 36\";  uso: aislamiento de tuber',0,'Unidad/1 Unidad(es)','ACTIVO '),(340,'AM-Ca?uela','S/C','Material: Fibra de vidrio; di?metro interior: 1 1/4\"; espesor: 1\"; longitud: 36\";  uso: aislamiento de tuber',0,'Unidad/1 Unidad(es)','ACTIVO '),(341,'AM-Ca?uela','S/C','Material: Fibra de vidrio; di?metro interior: 1 1/2\"; espesor: 1\"; longitud: 36\";  uso: aislamiento de tuber',0,'Unidad/1 Unidad(es)','ACTIVO '),(342,'AM-Ca?uela','S/C','Material: Fibra de vidrio; di?metro interior: 2\"; espesor: 1\"; longitud: 36\";  uso: aislamiento de tuber',0,'Unidad/1 Unidad(es)','ACTIVO '),(343,'AM-L?mina','21078 - 22055','L?mina Ancho: 4 Pies(s); Espesor: 3/32 pulgadas; Largo: 8 Pies(s); Material: Acero; Tipo: Lisa; Uso: Pr?ctica de corte y soldadura;',0,'Plancha/1 Unidad(es)','ACTIVO '),(344,'AM-Tubo','19633 - 20614','Tubo Di?metro: 2 1/2 pulgadas; Forma: Redonda; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: Proceso;',0,'Unidad/1 Unidad(es)','ACTIVO '),(345,'AM-Tubo','19637 - 20618','Tubo Di?metro: 2 Pulgadas(s); Forma: Redonda; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: C?dula 40;',0,'Unidad/1 Unidad(es)','ACTIVO '),(346,'AM-Tubo','19627 - 20608','Tubo Di?metro: 1 Pulgadas(s); Forma: Redonda; Largo: 20 Pies(s); Material: Acero al carbono; Tipo: Proceso;',0,'Unidad/1 Unidad(es)','ACTIVO '),(347,'AM-Varilla','44855-128890','Di?metro: 0.45 mil?metros; Longitud: 0.5 Metro(s); Material: Acero plata; Uso: Herrer?a;',0,'Empaque(1 Libra)','ACTIVO '),(348,'AM-Alambre de amarre','34077 - 37315','Alambre de amarre Calibre: 16; Tipo: Galvanizado;',0,'Rollo/1 Libra','ACTIVO '),(349,'AM-Tubo','44003 - 50675','Tubo Di?metro: 1 1/2 pulgada; Largo: 6 Metro(s); Material: Hierro galvanizado;',0,'Unidad/1 Unidad(es)','ACTIVO '),(350,'AM-Tubo','44118 - 50824','Tubo Di?metro: 1 1/4 pulgada; Largo: 6 Metro(s); Material: Hierro galvanizado;',0,'Unidad/1 Unidad(es)','ACTIVO '),(351,'AM-Tubo','43999 - 50668','Tubo Di?metro: 1 pulgada; Largo: 6 Metro(s); Material: Hierro galvanizado;',0,'Unidad/1 Unidad(es)','ACTIVO '),(352,'AM-Tubo','33994 - 37231','Tubo Di?metro: 1/2 pulgadas; Largo: 6 Metro(s); Material: Hierro galvanizado (hg); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO '),(353,'AM-Tubo','33288 - 36477','Tubo Di?metro: 3/4 pulgadas; Largo: 6 Metro(s); Material: Hierro galvanizado (hg); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO '),(354,'AM-Tarugo','1984 - 2297','Tarugo Caracter?stica: Expandible; Material: Metal; Tama?o: 3/8 pulgada;',0,'Unidad/1 Unidad(es)','ACTIVO '),(355,'AM-Tarugo','32682 - 35645','Tarugo Grosor: 1/4 pulgada; Largo: 1.5 pulgada; Material: Metal; Uso: Expansi?n;',0,'Unidad/1 Unidad(es)','ACTIVO '),(356,'AM-Tornillo estufa cabeza plana','58493 - 69424','Tornillo estufa cabeza plana  Di?metro: 3/16 pulgada;  Largo: 1 1/2 pulgada;  Material: Acero galvanizado;  Tipo de cabeza: Phillips;',0,'Unidad/1 Unidad(es)','ACTIVO '),(357,'AM-Tornillo polser','61638 - 74009','Tornillo polser  Arandela: Galvanizada y de hule;  Cabeza: Hexagonal;  Largo: 1 Pulgadas;  Material: Metal;  Tipo: Autorroscante;',0,'Paquete/100 Unidad(es)','ACTIVO '),(358,'AM-Tornillo polser','45519 - 52630','Tornillo polser Arandela: Galvanizada y de hule; Cabeza: Hexagonal; Di?metro: 1/4 pulgada; Largo: 1 1/2 pulgada; Material: Metal; Punta: De broca; Tipo: Autorroscante;',0,'Unidad/1 Unidad(es)','ACTIVO '),(359,'AM-Cheque','33601 - 59934','Cheque Di?metro: 2 Pulgadas(s); Material: Bronce; Tipo: De bisagra; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO '),(360,'AM-Cheque','50018 - 58641','Cheque Di?metro: 2 Pulgadas(s); Material: Bronce; Tipo: Horizontal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO '),(361,'AM-Esta?o','51219 - 60219','Esta?o Composici?n: 60/40; Contiene: Fundente; Uso: Soldadura blanda;',0,'Rollo/1 Libra','ACTIVO '),(362,'AM-V?lvula','50940 - 59892','V?lvula Grosor: 1 Pulgadas(s); Material: Bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO '),(363,'AM-V?lvula','50941 - 59893','V?lvula Grosor: 1 Pulgadas(s); Material: Bronce; Tipo: Globo;',0,'Unidad/1 Unidad(es)','ACTIVO '),(364,'AM-V?lvula','50968 - 59923','V?lvula Grosor: 1/2 pulgada; Material: Bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO '),(365,'AM-V?lvula','50917 - 59868','V?lvula Grosor: 1/2 pulgadas; Material: Bronce; Tipo: Globo;',0,'Unidad/1 Unidad(es)','ACTIVO '),(366,'AM-V?lvula','50936 - 59888','V?lvula Grosor: 3/4 pulgadas; Material: Bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO '),(367,'AM-Varilla','58078 - 68932','Varilla  Di?metro: 1/2 pulgadas;  Largo: 1 Metro;  Material: Acero;  Tipo: Roscada;',0,'Unidad/1 Unidad(es)','ACTIVO '),(368,'AM-Varilla','65340 - 78620','Varilla  Di?metro: 3/8 pulgada;  Largo: 1 Metro;  Material: Metal;  Tipo: Roscada;',0,'Unidad/1 Unidad(es)','ACTIVO '),(369,'AM-Codo','50208 - 58864','Codo ?ngulo: 45 grados; Di?metro: 2 Pulgadas(s); Material: Cobre; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO '),(370,'AM-Codo','50915 - 59865','Codo ?ngulo: 90 grados; Di?metro: 1 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO '),(371,'AM-Codo','50956 - 59909','Codo ?ngulo: 90 grados; Di?metro: 3/4 pulgada; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO '),(372,'AM-Conexi?n tee','50368 - 59049','Conexi?n tee Di?metro: 1 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO '),(373,'AM-Copla con rosca','50420 - 59112','Copla con rosca Grosor: 1 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO '),(374,'AM-Copla con rosca','50783 - 59731','Copla con rosca Grosor: 1/2 pulgada; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO '),(375,'AM-Copla con rosca','50786 - 59734','Copla con rosca Grosor: 3/4 pulgada; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO '),(376,'AM-Llave de bola','45287 - 52321','Llave de bola Material: Bronce; Medida: 3/4; Uso: Para agua;',0,'Unidad/1 Unidad(es)','ACTIVO '),(377,'AM-Reducidor','51063 - 60034','Reducidor Di?metro: 1 a 1/2 pulgada; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO '),(378,'AM-Uni?n','50496 - 59203','Uni?n Di?metro: 3/4 pulgadas; Material: Cobre; Tipo: Soldable; Uso: Refrigeraci?n;',0,'Unidad/1 Unidad(es)','ACTIVO '),(379,'AM-Uni?n','55966 - 66149','Uni?n Di?metro: 3/8 pulgada; Material: Cobre; Tipo: Soldable; Uso: Refrigeraci?n;',0,'Unidad/1 Unidad(es)','ACTIVO '),(380,'AM-V?lvula de bola','45613 - 52758','V?lvula de bola Di?metro: 1 1/2; Material: Bronce; Uso: Vapor;',0,'Unidad/1 Unidad(es)','ACTIVO '),(381,'AM-V?lvula de bola','50911 - 59861','V?lvula Di?metro: 2 Pulgadas(s); Material: Hierro; Tipo: Bola;',0,'Unidad/1 Unidad(es)','ACTIVO '),(382,'AM-V?lvula de bola','50478 - 59170','V?lvula Di?metro: 3/4 pulgada; Material: Hierro; Tipo: Bola;',0,'Unidad/1 Unidad(es)','ACTIVO '),(383,'AM-Washa de presi?n','64214 - 77260','Washa de presi?n  Di?metro: 1/4 pulgadas;  Material: Metal galvanizado;',0,'Unidad/1 Unidad(es)','ACTIVO '),(384,'AM-V?lvula de bola','50775','Grosor: 3 Pulgadas(s); Material: Bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO '),(385,'AM-V?lvula reguladora de vapor','105181-122649','Di?metro de entrada: 1/2 pulgadas; Di?metro de salida: 2 Pulgadas; Material: Acero inoxidable; Presi?n: 30 a 140 Libra por Pulgada Cuadrada; Uso: Calderas;',0,'Unidad/1 Unidad(es)','ACTIVO '),(386,'AM-Uni?n','50515-59228','Di?metro: 1/2 pulgadas; Material: Cobre; Tipo: Soldable; Uso: Refrigeraci?n;',0,'Unidad(1 Unidad(es)','ACTIVO '),(387,'AM-V?lvula de cheque','60864-72845','Di?metro: 3/4 pulgadas; Material: Bronce; Tipo: Horizontal;',0,'Unidad(1 Unidad(es))','ACTIVO '),(388,'AM-V?lvula de cheque','84381-99833','Di?metro: 2 Pulgadas; Material: Bronce; Tipo: Horizontal;',0,'Unidad(1 Unidad(es))','ACTIVO '),(389,'AE BOMBILLA 100W','57030','BOMBILLA 100 W  110 V.',0,'UNIDADES/ UNIDAD ',''),(390,'AE BOMBILLA 75W','57048','BOMBILLA 75 W 110 V.',0,'UNIDADES/ UNIDAD ',''),(391,'AE BOMBILLA HAL?GENA','33865 - 37087 ','Bombilla,  Luz: Hal?gena;  Potencia: 50 Vatio; ',0,'UNIDADES/ UNIDAD ',''),(392,'AE BOMBILLA DICROICA Gu 10','33935 - 37164','Bombilla dicroica,  Casquillo: Gu10;  Luz: Hal?gena;  Potencia: 50 Vatio; ',0,'UNIDADES/ UNIDAD ',''),(393,'AE BOMBILLA DICROICA Gu 5.3','33936 -  37165','Bombilla dicroica,  Casquillo: Gu5.3;  Luz: Hal?gena;  Potencia: 50 Vatio; ',0,'UNIDADES/ UNIDAD ',''),(394,'AE BOMBILLA AHORRADOR 9 vatios.','34136 - 37376','Bombilla, Forma: Espiral; Potencia: 9 Vatio(s); Tipo de luz: Blanca;',0,'UNIDADES/ UNIDAD ',''),(395,'AE BOMBILLA HAL?GENA DE 150W','37796 - 41679','Bombilla, Capacidad: 150 watts; Potencia: 24 Vatio(s); Tipo: Hal?geno;',0,'UNIDADES/ UNIDAD ',''),(396,'AE BOMBILLA AHORRADOR DE 35W','41365 - 46449','Bombilla, Ahorro de energ?a: 80%; Forma: Espiral; Watts: 35;',0,'UNIDADES/ UNIDAD ',''),(397,'AE BOMBILLA','8511 - 10730','Bombilla, Ahorro energ?a: 80%; Forma: 4u; Watts: 45;',0,'UNIDADES/ UNIDAD ',''),(398,'AE BOMBILLA  AHORRADOR ','51821 - 61090','Bombilla, Forma: Espiral; Potencia: 20 Vatio(s); Tipo de luz: Blanca ahorradora;',0,'UNIDADES/ UNIDAD ',''),(399,'AE BOMBILLA AHORRADOR ','30755 - 33550','Bombilla, Forma: Espiral; Potencia: 25 Vatio(s); Tipo de luz: Blanca ahorradora;',0,'UNIDADES/ UNIDAD ',''),(400,'AE BOMBILLA LED DE 120V','70141 - 86689','Bombilla led,  Base: E27;  Potencia: 16 Vatio;  Tipo luz: Blanca;  Voltaje: 120 Voltio; ',0,'UNIDADES/ UNIDAD ',''),(401,'AE BOMBILLA AHORRADOR DE 15W','s/c','BOMBILLA AHORRADORA 15 WATTS',0,'UNIDADES/ UNIDAD ',''),(402,'AE BOMBILLA AHORRADOR DE 20W','s/c','BOMBILLA AHORRADORA 20 WATTS',0,'UNIDADES/ UNIDAD ',''),(403,'AE BOMBILLA HALURO METALICO ','s/c','BOMBILLA DE HALURO METALICO CERAMICO DE 70W 208V ',0,'UNIDADES/ UNIDAD ',''),(404,'AE TUBO FLUORESCENTE','57260','TUBO FLUORESCENTE 20 WTS.',0,'UNIDADES/ UNIDAD ',''),(405,'AE TUBO FLUORESCENTE','57266','TUBO FLUORESCENTE 40 WTS.',0,'UNIDADES/ UNIDAD ',''),(406,'AE TUBO FLUORESCENTE T8 32W','s/c','TUBO FLUORESCENTE T8 1X32 WATTS, COLOR AZUL',0,'UNIDADES/ UNIDAD ',''),(407,'AE BALASTRO ','57004','BALASTRO 1X20 W. 110 V., BALASTRO',0,'UNIDADES/ UNIDAD ',''),(408,'AE BALASTRO ','57006','BALASTRO 2X40 W. 110 V, BALASTRO',0,'UNIDADES/ UNIDAD ',''),(409,'AE LAMPARA DE EMERGENCIA LUZ LED','59808 - 71007','L?mpara de emergencia, Alto: 4 1/4 pulgada;  Ancho: 2 3/4 pulgada;  Faros: Direccionales de dos cabezales;  Largo: 10 1/4 pulgada;  Potencia: 6 Vatio;  Tipo de luz: Led; ',0,'UNIDADES/ UNIDAD ',''),(410,'AE TUBO LED ','33937 -  37116','Tubo led,  Largo: 120 Cent?metro;  Potencia: 15 Vatio; ',0,'UNIDADES/ UNIDAD ',''),(411,'AE TUBOS LED','41842 - 47177','Tubo led,  Largo: 60 Cent?metro;  Potencia: 15 Vatio; ',0,'UNIDADES/ UNIDAD ',''),(412,'AE TUBO LED  COLOR BLANCO ','s/c','TUBO LED FT15T8 1X8 WATTS, COLOR BLANCO',0,'UNIDADES/ UNIDAD ',''),(413,'AE BASE PARA FOTOCELDA','41525 - 46649 ','Recept?culo para fotocelda, Capacidad: 110 Voltio(s); Uso: El?ctrico;',0,'UNIDADES/ UNIDAD ',''),(414,'AE FOTOCELDA','41988 - 47359','Fotocelda, Capacidad: 1000 Vatio(s); Corriente: 205 Voltio(s); Material: Pl?stico; Uso: El?ctrico;',0,'UNIDADES/ UNIDAD ',''),(415,'AE REFLECTORES ','91023','REFLECTORES P/INTEMPERIE 150 W',0,'UNIDADES/ UNIDAD ',''),(416,'AE LAMPRA AHORRADOR DE 25 A 152 W','s/c','LAMPARA AHORRADORA 25W a 125W',0,'UNIDADES/ UNIDAD ',''),(417,'AE LAMPARA AHORRADOR DE 45 A 50W','s/c','LAMPARA AHORRADORA 45W A 50W',0,'UNIDADES/ UNIDAD ',''),(418,'AE LAMPARA AHORRADOR DE 15W','s/c','LAMPARA AHORRADORA DE 15W ? 120V',0,'UNIDADES/ UNIDAD ',''),(419,'AE LAMPRA PARA SELDA DE FLUJO ','s/c','LAMPARA PARA CELDA DE FLUJO P80/60',0,'UNIDADES/ UNIDAD ',''),(420,'AE LUMINARIA  FLOURESCENTE 2*32W PARA AMBIENTES HÚMEDOS','s/c','LUMINARIA FLORECENTE 2x32W DE SOBRE PONER PARA USO DE AMBIENTES HUMEDOS MENOR 120V',935,'UNIDADES/ UNIDAD','Activo'),(421,'AE LUMINARIA OJO DE BUEY  DE 6\"','s/c','LUMINARIA FLUORECENTE DE 120V JO DE BUEY CUADRADO DE 6?',0,'UNIDADES/ UNIDAD ',''),(422,'AE LUMINANARIA FLOURECENTE DE 6\" OJO DE BUEY ','s/c','LUMINARIA FLUORECENTE DE 120V JO DE BUEY CUADRADO DE 6? CON TUBO COMPACTO DE 26W',0,'UNIDADES/ UNIDAD ',''),(423,'AE LUMINARIA OJO DE BUEY    DICROY  50W','s/c','LUMINARIA TIPO OJO DE BUEY DICROY AJUSTABLE 50W 120V',0,'UNIDADES/ UNIDAD ',''),(424,'AE LUMINARIA TIPO PROYECTOR DE 400W','s/c','LUMINARIA TIPO PROYECTO PARA SOBRE PONER EN PISO LAMPARA DE METALICO CERAMICO DE 400W 208V',0,'UNIDADES/ UNIDAD ',''),(425,'AE LUMINARIA TIPO PROYECTOR DE 150W','s/c','LUMINARIA TIPO PROYECTO PARA SOBRE PONER EN PISO LAMPARA DE METALICO CERAMICO DE 150W 208V',0,'UNIDADES/ UNIDAD ',''),(426,'AE LUMINARIA FLUORECENTE DE 2*17W GABINETE 2*2','s/c','LUMINARIA FLUORESCENTE 2x17W GABINETE DE 2x2',0,'UNIDADES/ UNIDAD ',''),(427,'AE LUMINARIA FLOURECENTE DE 4*32W GABINETE 2*4','s/c','LUMINARIA FLUORESCENTE 4x32W GABINETE DE 2x4 MENOR A 120V',0,'UNIDADES/ UNIDAD ',''),(428,'AE LUMINARIA FLOURECENTE DE 4*17W GABINETE 22','s/c','LUMINARIA FLUORESCENTE 4x17W GABINETE DE 22 MENOR A 120V',0,'UNIDADES/ UNIDAD ',''),(429,'AE LUMINARIA INCANDESENTE DE 50W','s/c','LUMINARIA INCANDESCENTE 50W 120V (OJO DE BUEY)',0,'UNIDADES/ UNIDAD ',''),(430,'AE LUMINARIA FLUORECENTE DE 2*32W GABINETE 2*4','s/c','LUMINARIA FLUORESCENTE 2x32W GABINETE DE 2x4',0,'UNIDADES/ UNIDAD ',''),(431,'AE PLAFONERA ','29486 - 32094','Plafonera electrica, Material: Pl?stico;',0,'UNIDADES/ UNIDAD ',''),(432,'AE LAMPRA CONTA POLVO Y HUMEDAD ','s/c','LAMPARA CONTRA HUMEDAD Y POLVO',0,'UNIDADES/ UNIDAD ',''),(433,'AE SENSOAR DE MOVIMIENTO ','50672 - 59547','Sensor de movimiento, Distancia de detecci?n: 3 a 6 metro; Luz ambiental: 3 a 2000 lux; Rango de detecci?n: 360?; Tiempo m?ximo de retardo: 7  +/- 2 minutos; Tiempo m?nimo de retardo: 10 +/- 3 segundos; Voltaje: 110/130;',0,'UNIDADES/ UNIDAD ',''),(434,'AE CABLE THHN #14 VERDE','21865 - 23089','Cable, Calibre: 14; Color: Verde; Tipo: Thhn; Uso: El?ctrico;',0,'UNIDADES/METROS ',''),(435,'AE CABLE THHN #12 NEGRO ','21869 - 23093','Cable, Calibre: 12; Color: Negro; Tipo: Thhn;',0,'UNIDADES/METROS ',''),(436,'AE CABLE THHN #12 AZUL ','21870 - 23094','Cable, Calibre: 12; Color: Azul; Tipo: Thhn;',0,'UNIDADES/METROS ',''),(437,'AE CABLE THHN #12 VERDE','21872 - 23096 ','Cable, Calibre: 12; Color: Verde; Tipo: Thhn;',0,'UNIDADES/METROS ',''),(438,'AE CABLE THHN  #10 ROJO ','21874 - 23098','Cable, Calibre: 10; Color: Rojo; Tipo: Thhn;',0,'UNIDADES/METROS ',''),(439,'AE CABLE THHN #12 BLANCO ','21877 - 23100','Cable, Calibre: Awg 12; Color: Blanco; Material: Cobre; Tipo: Thhn; Uso: El?ctrico;',0,'UNIDADES/METROS ',''),(440,'AE CABLE THHN  #10 BLANCO ','34244 - 37495','Cable, Calibre: 10; Color: Blanco; Tipo: Thhn;',0,'UNIDADES/METROS ',''),(441,'AE CABLE THHN #2 NEGRO ','s/c','CABLE THHN COLOR NEGRO #2  ROLLO',0,'UNIDADES/METROS ',''),(442,'AE CABLE THHN #4 ROJO ','s/c','CABLE THHN COLOR NEGRO #4  ROLLO',0,'UNIDADES/METROS ',''),(443,'AE CABLE THHN #12 AMARILLO ','s/c','CABLE THHN COLOR AMARILLO #12',0,'UNIDADES/METROS ',''),(444,'AE CABLE THHN #2 AZUL ','s/c','CABLE THHN COLOR AZUL #2  ROLLO',0,'UNIDADES/METROS ',''),(445,'AE CABLE THHN #4 AZUL ','s/c','CABLE THHN COLOR AZUL #4  ROLLO',0,'UNIDADES/METROS ',''),(446,'AE CABLE THHN #6 AZUL ','s/c','CABLE THHN COLOR AZUL #6  ROLLO',0,'UNIDADES/METROS ',''),(447,'AE CABLE THHN #8 AZUL ','s/c','CABLE THHN COLOR AZUL #8  ROLLO',0,'UNIDADES/METROS ',''),(448,'AE CABLE THHN #10 AZUL ','s/c','CABLE THHN COLOR AZUL #10  ROLLO',0,'UNIDADES/METROS ',''),(449,'AE CABLE THHN #14 AZUL ','s/c','CABLE THHN COLOR AZUL #14  ROLLO',0,'UNIDADES/METROS ',''),(450,'AE CABLE THHN #2 BLANCO ','s/c','CABLE THHN COLOR BLANCO #2  ROLLO',0,'UNIDADES/METROS ',''),(451,'AE CABLE THHN #4 BLANCO ','s/c','CABLE THHN COLOR BLANCO #4  ROLLO',0,'UNIDADES/METROS ',''),(452,'AE CABLE THHN #6 BLANCO ','s/c','CABLE THHN COLOR BLANCO #6  ROLLO',0,'UNIDADES/METROS ',''),(453,'AE CABLE THHN #8 BLANCO ','s/c','CABLE THHN COLOR BLANCO #8  ROLLO',0,'UNIDADES/METROS ',''),(454,'AE CABLE THHN #6 NEGRO ','s/c','CABLE THHN COLOR NEGRO #6  ROLLO',0,'UNIDADES/METROS ',''),(455,'AE CABLE THHN #8 NEGRO ','s/c','CABLE THHN COLOR NEGRO #8  ROLLO',0,'UNIDADES/METROS ',''),(456,'AE CABLE THHN #10 NEGRO ','s/c','CABLE THHN COLOR NEGRO #10  ROLLO',0,'UNIDADES/METROS ',''),(457,'AE CABLE THHN #2 ROJO ','s/c','CABLE THHN COLOR ROJO #2  ROLLO',0,'UNIDADES/METROS ',''),(458,'AE CABLE THHN #4 ROJO ','s/c','CABLE THHN COLOR ROJO #4  ROLLO',0,'UNIDADES/METROS ',''),(459,'AE CABLE THHN #6 ROJO ','s/c','CABLE THHN COLOR ROJO #6  ROLLO',0,'UNIDADES/METROS ',''),(460,'AE CABLE THHN #8 ROJO ','s/c','CABLE THHN COLOR ROJO #8 ROLLO',0,'UNIDADES/METROS ',''),(461,'AE CABLE THHN #12 ROJO ','s/c','CABLE THHN COLOR ROJO #12  ROLLO',0,'UNIDADES/METROS ',''),(462,'AE CABLE TSJ 3*14 ','21939 - 23163','Cable, Calibre: 14; Cantidad de cables: 3; Color: Negro; Tipo: Tsj;',0,'UNIDADES/METROS ',''),(463,'AE CABLE TSJ 3*12','21940 - 23164','Cable, Calibre: 12; Cantidad de cables: 3; Color: Negro; Tipo: Tsj;',0,'UNIDADES/METROS ',''),(464,'AE CABLE TSJ 4*10','44166 - 50875','Cable, Calibre: 10 awg; Fases: 4; Material: Cobre; Tipo: Tsj; Uso: El?ctrico;',0,'UNIDADES/METROS ',''),(465,'AE CABLE TSJ 3*10','44169 - 50879','Cable, Calibre: 10 awg; Fases: 3; Material: Cobre; Tipo: Tsj; Uso: El?ctrico;',0,'UNIDADES/METROS ',''),(466,'AE CABLE PARALELO  #12 BLANCO ','37857 - 41784','Cable, Calibre: 12; Cantidad de cables: 7; Tipo: Paralelo;',0,'UNIDADES/METROS ',''),(467,'AE CABLE PARALELO  #14 BLANCO ','s/c','CABLE PARALELO TIPO SPT 2X14\" COLOR BLANCO',0,'UNIDADES/METROS ',''),(468,'AE CABLE PARALELO  #16 BLANCO ','s/c','CABLE PARALELO TIPO SPT 2X16\" COLOR BLANCO',0,'UNIDADES/METROS ',''),(469,'AE CABLE TSJ 3*8 ','s/c','CABLE TSJ 3x8 100 MTS',0,'UNIDADES/METROS ',''),(470,'AE CABLE TSJ 4*8','s/c','CABLE TSJ 4x8 100 MTS',0,'UNIDADES/METROS ',''),(471,'AE CABLE TSJ 4*12','s/c','CABLE TSJ 4x12 100 MTS',0,'UNIDADES/METROS ',''),(472,'AE TUBERIA EMT 1/2\"','s/c','TUBERIA EMT GALVANIZADA DE 1/2\"',0,'UNIDADES/ UNIDAD ',''),(473,'AE TUBERIA EMT 3/4\"','s/c','TUBERIA EMT GALVANIZADO 3/4?',0,'UNIDADES/ UNIDAD ',''),(474,'AE TUBERIA EMT 1\"','s/c','TUBERIA EMT GALVANIZADA 1\"',0,'UNIDADES/ UNIDAD ',''),(475,'AE TUBERIA EMT 1 1/4\"','s/c','TUBERIA EMT GALVANIZADA 1 1/4\"',0,'UNIDADES/ UNIDAD ',''),(476,'AE TUBERIA EMT 1 1/2\"','s/c','TUBERIA EMT GALVANIZADA 1 1/2\"',0,'UNIDADES/ UNIDAD ',''),(477,'AE TUBERIA EMT 2\"','s/c','TUBERIA EMT GALVANIZADA 2\"',0,'UNIDADES/ UNIDAD ',''),(478,'AE TUBO PVC 1/2\"','s/c','TUBO PVC 1/2\"X3 M, COLOR GRIS',0,'UNIDADES/ UNIDAD ',''),(479,'AE TUBO PVC 3/4\"','s/c','TUBO PVC 3/4\"X3 M, COLOR GRIS',0,'UNIDADES/ UNIDAD ',''),(480,'AE TUBO PVC 1\"','s/c','TUBO PVC 1\"X3 M, COLOR GRIS',0,'UNIDADES/ UNIDAD ',''),(481,'AE FLEXITUBO 1/2\"','33950 - 37179','Tubo flexible, Di?metro: 1/2 pulgadas; Material: Pl?stico; Tipo: Electricidad;',0,'UNIDADES/ PIE',''),(482,'AE FLEXITUBO 1\"','32649 - 35608','Tubo flexible,  Di?metro: 1 Pulgadas;  Material: Pl?stico;  Uso: Electricidad; ',0,'UNIDADES/ PIE',''),(483,'AE FLEXITUBO DE  3/4\"','59600 - 70738','Tubo flexible  Di?metro: 3/4 pulgadas;  Material: Pl?stico;  Uso: El?ctrico;',0,'UNIDADES/ PIE',''),(484,'AE FLEXITUBO DE 1\"','s/c','FLEXITUBO 1?',0,'UNIDADES/ PIE',''),(485,'AE ABRAZADERA 1/2 LUNA DE 1/2\"','s/c','ABRAZADERA 1/2 LUNA 1/2?',0,'UNIDADES/ UNIDAD ',''),(486,'AE ABRAZADERA 1/2 LUNA DE 3/4\"','s/c','ABRAZADERA 1/2 LUNA 3/4?',0,'UNIDADES/ UNIDAD ',''),(487,'AE ABRAZADERA 1/2 LUNA DE 1\"','s/c','ABRAZADERA 1/2 LUNA 1?',0,'UNIDADES/ UNIDAD ',''),(488,'AE ABRAZADERA HANGLER DE 1/2\"','s/c','ABRAZADERA HANGLER 1/2?',0,'UNIDADES/ UNIDAD ',''),(489,'AE ABRAZADERA HANGLER DE  3/4\"','s/c','ABRAZADERA HANGLER 3/4?',0,'UNIDADES/ UNIDAD ',''),(490,'AE ABRAZADERA HANGLER DE 1\"','s/c','ABRAZADERA HANGLER 1?',0,'UNIDADES/ UNIDAD ',''),(491,'AE ABRAZADERA HANGLER DE 1 1/4\"','s/c','ABRAZADERA HANGLER 1 1/4?',0,'UNIDADES/ UNIDAD ',''),(492,'AE ABRAZADERA HANGLER DE 1 1/2\"','s/c','ABRAZADERA HANGLER 1 1/2?',0,'UNIDADES/ UNIDAD ',''),(493,'AE ABRAZADERA HANGLER DE 2\"','s/c','ABRAZADERA HANGLER 2?',0,'UNIDADES/ UNIDAD ',''),(494,'AE ABRAZADERA UNICANAL DE 1/2\"','s/c','ABRAZADERA UNICANAL METALICA 1/2?',0,'UNIDADES/ UNIDAD ',''),(495,'AE ABRAZADERA UNICANAL DE 3/4\"','s/c','ABRAZADERA UNICANAL METALICA 3/4\"',0,'UNIDADES/ UNIDAD ',''),(496,'AE ABRAZADERA UNICANAL DE 1\"','s/c','ABRAZADERA UNICANAL METALICA  1?',0,'UNIDADES/ UNIDAD ',''),(497,'AE ABRAZADERA UNICANAL DE 1 1/2\"','s/c','ABRAZADERA UNICANAL METALICA 1 1/2?',0,'UNIDADES/ UNIDAD ',''),(498,'AE ABRAZADERA UNICANAL DE 1 1/4\"','s/c','ABRAZADERA UNICANAL METALICA 1 1/4?',0,'UNIDADES/ UNIDAD ',''),(499,'AE ABRAZADERA UNICANAL DE 2\"','s/c','ABRAZADERA UNICANAL METALICA 2\"',0,'UNIDADES/ UNIDAD ',''),(500,'AE COPLA EMT 1/2\"','s/c','COPLA PARA TUBERIA EMT 1/2\"',0,'UNIDADES/ UNIDAD ',''),(501,'AE COPLA EMT 3/4\"','s/c','COPLA PARA TUBERIA EMT 3/4\"',0,'UNIDADES/ UNIDAD ',''),(502,'AE COPLA EMT 1\"','s/c','COPLA PARA TUBERIA EMT 1\"',0,'UNIDADES/ UNIDAD ',''),(503,'AE COPLA EMT 1 1/4\"','s/c','COPLA PARA TUBERIA EMT 1 1/4\"',0,'UNIDADES/ UNIDAD ',''),(504,'AE COPLA EMT 1 1/2\"','s/c','COPLA PARA TUBERIA EMT 1 1/2\"',0,'UNIDADES/ UNIDAD ',''),(505,'AE COPLA EMT 2\"','s/c','COPLA PARA TUBERIA EMT 2\"',0,'UNIDADES/ UNIDAD ',''),(506,'AE COPLAS PVC 1/2\"','s/c','COPLAS DE PVC 1/2?',0,'UNIDADES/ UNIDAD ',''),(507,'AE COPLAS PVC 3/4\"','s/c','COPLAS DE PVC DE 3/4?',0,'UNIDADES/ UNIDAD ',''),(508,'AE COPLAS PVC 1\"','s/c','COPLAS DE PVC 1?',0,'UNIDADES/ UNIDAD ',''),(509,'AE CONECTOR PVC  1/2\"','s/c','CONECTORES PVC P/TUBERIA 1/2?',0,'UNIDADES/ UNIDAD ',''),(510,'AE CONECTOR PVC  3/4\"','s/c','CONECTORES PVC P/TUBERIA 3/4?',0,'UNIDADES/ UNIDAD ',''),(511,'AE CONECTOR PVC  1\"','s/c','CONECTORES PVC P/TUBERIA 1?',0,'UNIDADES/ UNIDAD ',''),(512,'AE CONECTOR DE FEXITUBO  3/4\" ','s/c','CONECTOR PVC P/FLEXITUBO 3/4?',0,'UNIDADES/ UNIDAD ',''),(513,'AE CONECTOR EMT 1/2\"','s/c','CONECTORES P/TUBERIA EMT 1/2\"',0,'UNIDADES/ UNIDAD ',''),(514,'AE CONECTOR EMT 3/4\"','s/c','CONECTORES P/TUBERIA EMT 3/4\"',0,'UNIDADES/ UNIDAD ',''),(515,'AE CONECTOR EMT 1\"','s/c','CONECTORES P/TUBERIA EMT 1?',0,'UNIDADES/ UNIDAD ',''),(516,'AE CONECTOR EMT 1 1/4\"','s/c','CONECTORES P/TUBERIA EMT 1 1/4?',0,'UNIDADES/ UNIDAD ',''),(517,'AE CONECTOR EMT 1 1/2\"','s/c','CONECTORES P/TUBERIA EMT 1 1/2?',0,'UNIDADES/ UNIDAD ',''),(518,'AE CONECTOR EMT 2\"','s/c','CONECTORES P/TUBERIA EMT 2\"',0,'UNIDADES/ UNIDAD ',''),(519,'AE BREAKER DE 60/3P BQD','s/c','BREAKER 60 A/3P TIPO BQD',0,'UNIDADES/ UNIDAD ',''),(520,'AE BREAKER DE 70/3P BQD','s/c','BREAKER 70 A/3P TIPO BQD',0,'UNIDADES/ UNIDAD ',''),(521,'AE BRAKER DE 60/3P HHED63B060','s/c','BREAKER 60 A/3P HHED63B060',0,'UNIDADES/ UNIDAD ',''),(522,'AE BREAKER DE 125/3P HHED63B125','s/c','BREAKER 125 A/3P TIPO HHED63B125',0,'UNIDADES/ UNIDAD ',''),(523,'AE BREAKER DE 100/3P BL ','s/c','BREAKER 3X100 AMP TIPO BL',0,'UNIDADES/ UNIDAD ',''),(524,'AE BRAKER DE 70/3P BL','s/c','BREAKER 70 A/3P TIPO BL',0,'UNIDADES/ UNIDAD ',''),(525,'AE BREAKER DE 50/3P BL ','s/c','BREAKER 3X50 AMP TIPO BL',0,'UNIDADES/ UNIDAD ',''),(526,'AE BREAKER DE 20/3P BL ','s/c','BREAKER 3X20 AMP TIPO BL',0,'UNIDADES/ UNIDAD ',''),(527,'AE BREAKER DE 30/2P BL ','s/c','BREAKER 2X30 AMP TIPO BL',0,'UNIDADES/ UNIDAD ',''),(528,'AE BREAKER DE 20/2P BL ','s/c','BREAKER 2X20 AMP TIPO BL',0,'UNIDADES/ UNIDAD ',''),(529,'AE BREAKER DE 20A BL','s/c','BREAKER 1X20 AMP TIPO BL',0,'UNIDADES/ UNIDAD ',''),(530,'AE BREAKER DE 15A BL ','s/c','BREAKER 1X15 AMP TIPO BL',0,'UNIDADES/ UNIDAD ',''),(531,'AE TOMA CORRIENTE DE COLOR NARANJA  POLARIZADA','59809 - 71012 ','Tomacorriente, Color: Naranja;  Material: Pl?stico;  N?mero de polos: 3;  Tensi?n: 120 Voltio;  Tipo: Doble polarizado;  Tipo de sujeci?n: Empotrar; ',0,'UNIDADES/ UNIDAD ',''),(532,'AE TOMA CORRIENTE TRIFILAR 50A / PLACA ROJA ','s/c','TOMA DE CORRIENTE TRIFILAR 50 AMP 250V, CONFIGURACION NEMA 10-50R ARMADURA CAFE Y PLACA PLASTICA ROJA',0,'UNIDADES/ UNIDAD ',''),(533,'AE TOMA CORRIENTE TRIFILAR 50A / PLACA METLAICA GRIS','s/c','TOMA DE CORRIENTE TRIFILAR 50 AMP 250V, CONFIGURACION NEMA 10-50R ARMADURA CAFE Y PLACA METALICA GRIS',0,'UNIDADES/ UNIDAD ',''),(534,'AE TOMA CORRIENTE DOBLE POLARIZADO DE 15A ARMADURA BLANCA Y PLACA GRIS ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 15 AMP 120V ARMADURA BLANCA Y PLACA METALICA GRIS',0,'UNIDADES/ UNIDAD ',''),(535,'AE TOMA CORRIENTE DOBLE POLARIZADO DE 15A ARMADURA ROJA Y PLACA NARANJA ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 15 AMP 120V ARMADURA ROJA Y PLACA PLASTICA NARANJA',0,'UNIDADES/ UNIDAD ',''),(536,'AE TOMA CORRIENTE DOBLE POLARIZADO DE 15A ARMADURA ROJA Y PLACA ROJA ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 15 AMP 120V ARMADURA ROJA Y PLACA PLASTICA ROJA',0,'UNIDADES/ UNIDAD ',''),(537,'AE TOMA CORRIENTE DOBLE POLARIZADO DE 15A ARMADURA BLANCA Y PLACA METALICA NEMA 5-15R','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 15 AMP 120V CONFIGURACION NEMA 5-15R ARMADURA BLANCA Y PLACA METALICA',0,'UNIDADES/ UNIDAD ',''),(538,'AE  TOMA CORRIENTE DOBLE POLARIZADO DE 15A ARMADURA CAF? Y PLACA ROJA NEMA 5-15R','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 15 AMP 120V CONFIGURACION NEMA 5-15R ARMADURA CAFE Y PLACA PLASTICA ROJA',0,'UNIDADES/ UNIDAD ',''),(539,'AE TOMA CORRIENTE DOBLE POLARIZADO PARA INTEMPERIE DE 15A ARMADURA BLANCA Y PLACA GRIS ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO CON PROTECCION PARA INTEMPERIE 15 AMP 120V. CONFIGURACION NEMA 5-15R ARMADURA BLANCA Y PLACA GRIS',0,'UNIDADES/ UNIDAD ',''),(540,'AE TOMA CORRIENTE DOBLE POLARIZADO PARA INTEMPERIE DE 15A ARMADURA ROJA Y PLACA GRIS ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO CON PROTECCION PARA INTEMPERIE 15 AMP 120V. CONFIGURACION NEMA 5-15R ARMADURA ROJA Y PLACA GRIS',0,'UNIDADES/ UNIDAD ',''),(541,'AR TOMA CORRIENTE DOBLE POLARIZADO PARA INTEMPERIE DE 20A ARMADURA ROJA  Y PLACA GRIS  NEMA 5-15R','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO CON PROTECCION PARA INTEMPERIE 20 AMP 120V. CONFIGURACION NEMA 5-20R ARMADURA ROJA Y PLACA GRIS',0,'UNIDADES/ UNIDAD ',''),(542,'AR TOMA CORRIENTE DOBLE POLARIZADO 20A ARMADURA BLANCA Y PLACA GRIS ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 20 AMP 120V ARMADURA BLANCA Y PLACA GRIS',0,'UNIDADES/ UNIDAD ',''),(543,'AE TOMA CORRIENTE DOBLE POLARIZADO 20A ARMADURA ROJA Y PLACA ROJA ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 20 AMP 120V ARMADURA ROJA Y PLACA ROJA',0,'UNIDADES/ UNIDAD ',''),(544,'AE TOMA CORRIENTE DOBLE POLARIZADO PARA INTEMPERIE DE 20A ARMADURA BLANCA Y PLACA GRIS ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO CON PROTECCION PARA INTERPERIE 20 AMP. 120V. CONFIGURACION NEMA 5-20R ARMADURA BLANCA Y PLACA GRIS',0,'UNIDADES/ UNIDAD ',''),(545,'AE TOMA CORRIENTE DOBLE POLARIZADO PARA INTEMPERIE DE 30A ARMADURA BLANCA Y PLACA GRIS NEMA 5-30R ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 30 AMP 120V CONFIGURACION NEMA 5-30R  ARMADURA BLANCA Y PLACA METALICA GRIS',0,'UNIDADES/ UNIDAD ',''),(546,'AE TOMA CORRIENTE DOBLE POLARIZADO PARA INTEMPERIE DE 20A ARMADURA ROJA  Y PLACA ROJA','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 20 AMP 120V CONFIGURACION NEMA 5-20R ARMADURA ROJA Y PLACA PLASTICA ROJA',0,'UNIDADES/ UNIDAD ',''),(547,'AE TOMA CORRIENTE DOBLE POLARIZADO  GF 15A ARMADURA BLANCA Y PLACA METALICA GRIS ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO CON PROTECCION DE FALLA A TIERRA GF 15 AMP 120V NEMA 5-15R ARMADURA BLANCA Y PLACA METALICA GRIS',0,'UNIDADES/ UNIDAD ',''),(548,'AE TOMA CORRIENTE DOBLE POLARIZADO  GF 15A ARMADURA ROJA Y PLACA ROJA  ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO CON PROTECCION DE FALLA A TIERRA GF 15 AMP 120V ARMADURA ROJA Y PLACA PLASTICA ROJA',0,'UNIDADES/ UNIDAD ',''),(549,'AE TOMA CORRIENTE DOBLE POLARIZADO  GF 15A ARMADURA ROJA  Y PLACA ROJA  NEMA 5-15R','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO CON PROTECCION DE FALLA A TIERRA GF 20 AMP 120 V. CONFIGURACION NEMA 5-15R ARMADURA ROJA Y PLACA PLASTICA ROJA',0,'UNIDADES/ UNIDAD ',''),(550,'AE TOMA CORRIENTE DOBLE POLARIZADO PARA PISO DE 15A ARMADURA CAF?  Y PLACA METALICA DE BRONCE','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO INDUSTRIAL PARA PISO, 15 AMP. 120V. NEMA 5-15R ARMADURA CAFE Y PLACA METALICA BRONCE',0,'UNIDADES/ UNIDAD ',''),(551,'AE TOMA CORRIENTE DOBLE POLARIZADO PARA INTEMPERIE DE 20A ARMADURA ROJA  Y PLACA GRIS  NEMA 5-20R','s/c','TOMA DE CORRIENTE CON PROTECCION PARA INTERPERIE 20 AMP. 120V. CONFIGURACION NEMA 5-20R ARMADURA ROJA Y PLACA GRIS',0,'UNIDADES/ UNIDAD ',''),(552,'AE TOMA CORRIENTE DOBLE POLARIZADO INDUSTRIAL PARA PISO','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO INDUSTRIAL TIERRA AISLADA PARA INSTALACION EN PISO',0,'UNIDADES/ UNIDAD','Activo'),(553,'AE TOMA CORRIENTE DOBLE POLARIZADO PARA PISO  DE 15A ARMADURA ROJA Y PLACA PLASTICA ROJA','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO GRADO INDUSTRIAL TIERRA AISLADA PARA INSTALACION EN PISO UPS 15 AMP 120V CONFIGURACION NEMA 5-15FR ARAMADURA ROJA Y PLACA PLASTICA ROJA',0,'UNIDADES/ UNIDAD ',''),(554,'AR TOMA CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 15A ARMADURA BLANCA Y PLACA BLANCO HUESO ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 15 AMP 120V. CONFIGURACION NEMA L5-15R ARMADURA BLANCA Y PLACA BAQUELITA COLOR BLANCO HUESO ',0,'UNIDADES/ UNIDAD ',''),(555,'AE TOMA CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL  15A ARMADURA CAF? Y PLACA ROJA','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 15 AMP 120V. CONFIGURACION NEMA L5-15R ARMADURA CAF? Y PLACA PLASTICA ROJA',0,'UNIDADES/ UNIDAD ',''),(556,'AE TOMA CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL  15A ARMADURA ROJA Y PLACA ROJA NEMA L5-15R','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 15 AMP 120V. CONFIGURACION NEMA L5-15R ARMADURA ROJA Y PLACA PLASTICA ROJA ',0,'UNIDADES/ UNIDAD ',''),(557,'AE TOMA CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL DE 20A ARMADURA BLANCA Y PLACA BLANCO HUESO ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 20 AMP 120V. CONFIGURACION NEMA L5-20R ARMADURA BLANCA Y PLACA BAQUELITA COLOR BLANCO HUESO ',0,'UNIDADES/ UNIDAD ',''),(558,'AE TOMA CORRIENTE DOBLE POLARIZADO SE SEGURIDAD TL 20A ARMADURA ROJA  Y PLACA ROJA ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 20 AMP 120V. CONFIGURACION NEMA L5-20R ARMADURA ROJA Y PLACA PLASTICA ROJA ',0,'UNIDADES/ UNIDAD ',''),(559,'AE TOMA CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 30A ARMADURA BLANCA Y PLACA BLANCO HUESO ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 30 AMP 120V. CONFIGURACION NEMA L5-30R ARMADURA BLANCA Y PLACA DE BAQUELITA BLANCA HUESO',0,'UNIDADES/ UNIDAD ',''),(560,'AE TOMA CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 30A ARMADURA CAF?  Y PLACA  ROJA  ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 30 AMP 120V. CONFIGURACION NEMA L5-30R ARMADURA CAF? Y PLACA PLASTICA ROJA',0,'UNIDADES/ UNIDAD ',''),(561,'AE TOMA CORRIENTE DOBLE POLARIZADO  DE SEGURIDAD TL 30A ARMADURA ROJA  Y PLACA ROJA ','s/c','TOMA DE CORRIENTE DOBLE POLARIZADO DE SEGURIDAD TL 30 AMP 120V. CONFIGURACION NEMA L5-30R ARMADURA ROJA Y PLACA ROJA',0,'UNIDADES/ UNIDAD ',''),(562,'AE TOMA CORRIENTE DOBLE POLARIZADO GRADO HOSPITALARIO 15 CONFIGURACION NEMA 5-15R ','s/c','TOMA DE CORRIENTE QUAD POLARIZADO GRADO HOSPITALARIO 15 AMP 120V. CONFIGURACION NEMA 5-15R ',0,'UNIDADES/ UNIDAD ',''),(563,'AE INTERRUPTOR TIPO DIMER ','60622 - 72545 ','Regulador de iluminaci?n,  Potencia: 50 - 500 vatio;  Tipo de interruptor: Dado;  Voltaje: 110 vca; ',0,'UNIDADES/ UNIDAD ',''),(564,'AE TERMOENCOGIBLE 1/4','21641 - 22874','Termoencogible, Di?metro: 1/4 pulgadas; Material: Pl?stico; Uso: Aislar empalmes en cables;',0,'UNIDADES/ UNIDAD ',''),(565,'AE TERMOENCOGIBLE 1/2','21642 - 22876','Termoencogible, Di?metro: 1/2 pulgadas; Material: Pl?stico; Uso: Aislar empalmes en cables;',0,'UNIDADES/ UNIDAD ',''),(566,'AE TABLERO ELECTRICO ','39934 - 44469','Caja para flipones, Ancho: 30 Cent?metro(s); Largo: 40 Metro(s); Material: Metal; Uso: El?ctrico;',0,'UNIDADES/ UNIDAD ',''),(567,'AE CONECTOR DE EMPALME TIPO RESORTE ','43421 - 49730','Terminal aislada, Color: Amarillo; Material: Pl?stico y metal; Tama?o: 6 Mil?metro(s); Tama?o de cable: 12-10 awg; Tipo: Horquilla; Uso: El?ctrico;',0,'UNIDADES/ UNIDAD ',''),(568,'AE CONECTOR DE EMPALME TIPO RESORTE ','43425 - 49734','Terminal aislada, Color: Azul; Material: Pl?stico y metal; Tama?o: 6 Mil?metro(s); Tama?o de cable: 16-14 awg; Tipo: Ojal; Uso: El?ctrico;',0,'UNIDADES/ UNIDAD ',''),(569,'AE CONECTOR DE EMPALME TIPO RESORTE ','43428 - 49738 ','Terminal aislada, Color: Amarillo; Material: Pl?stico y metal; Tama?o: 6.35 Mil?metro(s); Tama?o de cable: 12-10 awg; Tipo: Hembra; Uso: El?ctrico;',0,'UNIDADES/ UNIDAD ',''),(570,'AE CONTACTOR TERMOMAGN?TICO ','44350 - 51089','Contactor, Capacidad: 240 Voltio(s); Fases: 3; Material: Pl?stico y metal; Potencia: 25 amp; Tipo: Termomagn?tico;',0,'UNIDADES/ UNIDAD ',''),(571,'AE GUARDA MOTOR BOBINA DE 240V','60647 - 72570 ','Guardamotor trif?sico,  Corriente: 3.5 a 5 Amperio;  Montaje: Para riel din;  Tipo de protecci?n: T?rmica y magn?tica;  Voltaje: 240 Voltio; ',0,'UNIDADES/ UNIDAD ',''),(572,'AE TERMINALES PARA ENTALLAR CABLE #12','62513 - 75176','Terminal para entallar cable,  Cable: 12 ;  Material: Metal;  Medida: 4 Mil?metro;  Uso: El?ctrico para uni?n de cables; ',0,'UNIDADES/ UNIDAD ',''),(573,'AE TERMINALES PARA ENTALLAR CABLE #10','62514 - 75177','Terminal para entallar cable,  Cable: 10 ;  Material: Metal;  Medida: 6 Mil?metro;  Uso: El?ctrico para uni?n de cables; ',0,'UNIDADES/ UNIDAD ',''),(574,'AE TERMINALES PARA ENTALLAR CABLE #8','62515 - 75178','Terminal para entallar cable,  Cable: 8 ;  Material: Metal;  Medida: 10 Mil?metro;  Uso: El?ctrico para uni?n de cables; ',0,'UNIDADES/ UNIDAD ',''),(575,'AE TERMINALES PARA ENTALLAR CABLE #6','62516 - 75179','Terminal para entallar cable,  Cable: 6 ;  Material: Metal;  Medida: 16 Mil?metro;  Uso: El?ctrico para uni?n de cables; ',0,'UNIDADES/ UNIDAD ',''),(576,'AE TERMINALES PARA ENTALLAR CABLE #4','62519 - 75180','Terminal para entallar cable, Cable: 4 ;  Material: Metal;  Medida: 25 Mil?metro;  Uso: El?ctrico para uni?n de cables; ',0,'UNIDADES/ UNIDAD ',''),(577,'AE TERMINALES PARA ENTALLAR CABLE #2','62518 - 75181 ','Terminal para entallar cable, Cable: 2 ;  Material: Metal;  Medida: 35 Mil?metro;  Uso: El?ctrico para uni?n de cables; ',0,'UNIDADES/ UNIDAD ',''),(578,'AE TERMINALES PARA ENTALLAR CABLE #1/0','62520 - 75183','Terminal para entallar cable,  Cable: 1/0;  Material: Metal;  Medida: 50 Mil?metro;  Uso: El?ctrico para uni?n de cables; ',0,'UNIDADES/ UNIDAD ',''),(579,'AE THINER DIELECTRICO ','71009 - 84589','Thinner,  Clase: Diel?ctrico;  Consistencia: L?quida;  Uso: El?ctrico; ',0,'UNIDADES/ GALON',''),(580,'AE CONECTOR PERNO PARTIDO #8','s/c','CONECTORES DE PERNO PARTIDA DE COBRE #8',0,'UNIDADES/ UNIDAD ',''),(581,'AE CONECTOR PERNO PARTIDO #1/0','s/c','CONECTORES DE PERNO PARTIDA DE COBRE #1/0',0,'UNIDADES/ UNIDAD ',''),(582,'AE CONECTOR PERNO PARTIDO #2','s/c','CONECTORES DE PERNO PARTIDA DE COBRE #2',0,'UNIDADES/ UNIDAD ',''),(583,'AE CONECTOR PERNO PARTIDO #2/0','s/c','CONECTORES DE PERNO PARTIDA DE COBRE #2/0',0,'UNIDADES/ UNIDAD ',''),(584,'AE CONECTOR PERNO PARTIDO#3/0','s/c','CONECTORES DE PERNO PARTIDA DE COBRE #3/0',0,'UNIDADES/ UNIDAD ',''),(585,'AE CONECTOR PERNO PARTIDO #4','s/c','CONECTORES DE PERNO PARTIDA DE COBRE #4',0,'UNIDADES/ UNIDAD ',''),(586,'AE CONECTOR PERNO PARTIDO #6','s/c','CONECTORES DE PERNO PARTIDA DE COBRE #6',0,'UNIDADES/ UNIDAD ',''),(587,'AE WIPE','4657 - 36614','Wipe Color: Blanco; Tipo: Bola;',0,'UNIDADES/ LIBRA',''),(588,'AE TERMINALES PARA ENTALLAR','21705 - 22932','Terminales, Cantidad de conexiones: 1; Para cable awg: 10; Tipo: Conector empalme tipo  resorte; Uso: El?ctrico;',0,'UNIDADES/ UNIDAD ',''),(589,'AE CAJA PARA CANALETA RECTANGULAR ','27797 - 30269','Caja rectangular para canaleta, Alto: 43 Mil?metro(s); Ancho: 50 Mil?metro(s); Color: Blanca; Largo: 100 Mil?metro(s); Material: Pl?stico; Uso: Electricidad;',0,'UNIDADES/ UNIDAD ',''),(590,'AE TARUGOS PLASTICOS  S8','28809 - 31381','Tarugo Material: Pl?stico; N?mero: 8; Uso: Fijaci?n;',0,'UNIDADES/ UNIDAD ',''),(591,'AE ESPIGA 120V','32690 - 35651','Espiga con abrazadera, Material: Metal; Material: Hule;',0,'UNIDADES/ UNIDAD ',''),(592,'AE CINCHOS PLASTICOS 10\"','32770 - 35738','Cincho, Ancho: 2.5 Mil?metro(s); Largo: 10 Pulgadas(s); Material: Pl?stico; Tipo: Ajustable;',0,'UNIDADES/ UNIDAD ',''),(593,'AE TAPADERA CIEGA OCTAGONAL','34232 - 37484','Tapadera,  Forma: Octagonal;  Material: Metal;  Tipo: Ciega;  Uso: El?ctrico;',0,'UNIDADES/ UNIDAD','Activo'),(594,'AE BOTONERA','34266 - 37516','Botonera, Color: Verde; Incluye: Luz piloto;',0,'UNIDADES/ UNIDAD ',''),(595,'AE CANALETA PLASTICA DE 3/4','35528 - 52970','Canaleta Alto: 12 mm; Ancho: 20 mm; Largo: 2 Metro(s); Material: Pl?stico; V?as: Una;',0,'UNIDADES/ UNIDAD ',''),(596,'AE CAJA DE SOBRE PONER ','60165 - 71517','Caja para sobreponer  Ancho: 2 Pulgadas;  Forma: Rectangular;  Largo: 4 Pulgadas;  Material: Pl?stico;',0,'UNIDADES/ UNIDAD ',''),(597,'AE TUERCAS  ACERO INOXIDABLE  1/4\"','35802 - 39260 ','Tuerca, Di?metro: 1/4 pulgada; Material: Acero inoxidable; Tipo: Hexagonal; Tipo rosca: Ordinaria;',0,'UNIDADES/ UNIDAD ',''),(598,'AE TUERCAS ACERO INOXIDABLE DE 1/2\"','41632 - 46819 ','Tuerca, Di?metro: 1/2 pulgadas; Grado: 5; Material: Acero inoxidable; Rosca: Ordinaria; Tipo: Hexagonal;',0,'UNIDADES/ UNIDAD ',''),(599,'AE TUERCAS DE 3/8 ','43389 - 49687','Tuerca,  Di?metro: 3/8 pulgadas;  Material: Metal;  Tipo: Hexagonal; ',0,'UNIDADES/ UNIDAD ',''),(600,'AE WASHA DE PRESI?N 1/4\"','35809 - 39265','Whasa de presi?n, Di?metro: 1/4 pulgadas; Material: Acero inoxidable;',0,'UNIDADES/ UNIDAD ',''),(601,'AE WASHA DE PRESI?N 5/16\"','42325 - 47952','Washa de presi?n, Di?metro: 5/16 pulgada; Material: Metal galvanizado;',0,'UNIDADES/ UNIDAD ',''),(602,'AE CINTA DE AISLAR SUPER 33','43438 - 49788','Cinta de aislar, Ancho: 19 Mil?metro(s); Largo: 20 Metro(s); Material: Vinil; Tipo: 33+;',0,'UNIDADES/ UNIDAD ',''),(603,'AE CINTA VULCANIZADA ','53543 - 63147','Cinta aislante,  Ancho: 19 Mil?metro;  Largo: 9.15 Metro;  Material: Goma;  Tipo: Autosoldable (vulcanizada); ',0,'UNIDADES/ UNIDAD ',''),(604,'AE CINTA DE AISLAR VULCANIZADA DE 3/4','61523 - 73791','Cinta de aislar,  Ancho: 3/4 pulgadas;  Largo: 10 Metro;  Material: Goma;  Tipo: Autosoldable (vulcanizada); ',0,'UNIDADES/ UNIDAD ',''),(605,'AE TORNILLOS BUSCA ROSCA S8 3/4\"','58737 - 69723','Tornillo busca rosca,  Di?metro: 8 Mil?metro;  Largo: 3/4 pulgada;  Material: Hierro; ',0,'UNIDADES/ UNIDAD ',''),(606,'AE TORNILOS BUSCA ROSCA S8 DE 1\"','58952 - 70002','Tornillo busca rosca,  Di?metro: 8 Mil?metro;  Largo: 1 Pulgadas;  Material: Hierro; ',0,'UNIDADES/ UNIDAD ',''),(607,'AE TORILLOS ','1978 - 2291','Tornillo,  Tama?o: 3 pulgadas;  Uso: Madera; ',0,'UNIDADES/ UNIDAD ',''),(608,'AE CAJA REGISTRO 4*4\"','s/c','CAJAS DE REGISTRO 4?x4?',0,'UNIDADES/ UNIDAD ',''),(609,'AE CAJA REGISTRO 5*5\"','s/c','CAJAS DE REGISTRO 5?x5?',0,'UNIDADES/ UNIDAD ',''),(610,'AE CAJA REGISTRO 6*6\"','s/c','CAJAS DE REGISTRO 6?x6?',0,'UNIDADES/ UNIDAD ',''),(611,'AE CAJAS OCTAGONALES ','s/c','CAJAS OCTAGONALES ',0,'UNIDADES/ UNIDAD ',''),(612,'AE CAJA RECTANGULAR DE 2*4\"','s/c','CAJA RECTANGULAR DE METAL 2*4\"',0,'UNIDADES/ UNIDAD ',''),(613,'AE CINCHOS PLASTICOS #8','s/c','CINCHOS PLASTICOS #8',0,'UNIDADES/ UNIDAD ',''),(614,'AE CINCHOS PLASTICOS #12','s/c','CINCHOS PLASTICOS #12',0,'UNIDADES/ UNIDAD ',''),(615,'AE  CINTA DE AISLAR AMARILLA ','s/c','CINTA DE AISLAR COLOR AMARILLO',0,'UNIDADES/ UNIDAD ',''),(616,'AE CINTA DE AISLAR AZUL ','s/c','CINTA DE AISLAR COLOR AZUL',0,'UNIDADES/ UNIDAD ',''),(617,'AE CINTA DE AISLAR BLANCA','s/c','CINTA DE AISLAR COLOR BLANCO',0,'UNIDADES/ UNIDAD ',''),(618,'AE CINTA DE AISLAR CAFÉ','s/c','CINTA DE AISLAR COLOR CAFE',2000,'UNIDADES/ UNIDAD','Activo'),(619,'AE CINTA DE AISLAR NARANJA ','s/c','CINTA DE AISLAR COLOR NARANJA',0,'UNIDADES/ UNIDAD ',''),(620,'AE CINTA DE AISLARA ROJO ','s/c','CINTA DE AISLAR COLOR ROJO',0,'UNIDADES/ UNIDAD ',''),(621,'AE CINTA DE AISLAR VIOLETA ','s/c','CINTA DE AISLAR COLOR VIOLETA',0,'UNIDADES/ UNIDAD ',''),(622,'AE CINTA DE AISLAR  VERDE','s/c','CINTA DE AISLAR COLOR VERDE',0,'UNIDADES/ UNIDAD ',''),(623,'AE ESPUMA LIMPIADORA ','s/c','ESPUMA PARA LIMPIEZA DE ACCESORIOS DE COMPUTO',-1,'UNIDADES/ UNIDAD ',''),(624,'AE LIMPIA CONTACTOS ','s/c','LIMPIA CONTACTOS',-1,'UNIDADES/ UNIDAD ',''),(625,'AE AIRE COMRPIMIDO ','s/c','BOTE DE SPRAY AIRE COMPRIMIDO',0,'UNIDADES/ UNIDAD ',''),(626,'AE PENETRANTE WD-40','s/c','BOTE DE SPRAY WD-40',0,'UNIDADES/ UNIDAD ',''),(627,'AE PLACA CIEGA ','s/c','PLACA CIEGA',0,'UNIDADES/ UNIDAD ',''),(628,'AE ALAMBRE GALVANIZADO #10 ','60527 -  90836','Alambre,  Calibre: 10;  Material: Galvanizado; ',0,'UNIDADES/LIBRA ',''),(629,'AE ESPIGA 120V','62026 - 74565','Espiga,  Corriente: 15 Amperio;  Incluye abrazadera: S?;  Material: Hule;  Tensi?n: 125 Voltio;  Tipo de conecci?n: 2p+t;  Uso: El?ctricidad; ',0,'UNIDADES/ UNIDAD ',''),(630,'AE BOBINA DE ESTA?O ','s/c','BOBINA DE ESTA?O 1.6 MM DIAMETRO',-1,'UNIDADES/ UNIDAD ',''),(631,'SO-LENTES PROTECTORES','73286 - 87082','MATERIAL: POLICARBONATO; SUJECI?N: PRESI?N; TIPO: TRANSPARENTE A PRUEBA DE RAYONES; USO: PROTECCI?N VISUAL;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(632,'SO-CAJA PARA SOBREPONER','60165 - 71517','ANCHO: 2 PULGADAS; FORMA: RECTANGULAR; LARGO: 4 PULGADAS; MATERIAL: PL?STICO;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(633,'SO-GUANTES','33900 - 37120','MATERIAL: CUERO; TAMA?O: LARGO; USO: PARA SOLDAR;',0,'PAR/1 UNIDAD(ES)','ACTIVO'),(634,'SO-GUANTES','33899 - 37119','MATERIAL: CUERO; TAMA?O: MEDIANO; USO: PARA SOLDAR;',0,'PAR/1 UNIDAD(ES)','ACTIVO'),(635,'SO-GUANTES','55890 - 66031','MATERIAL: GAMUZ?N; TAMA?O: 55 CENT?METRO(S); USO: SOLDADURA INDUSTRIAL;',0,'PAR/1 UNIDAD(ES)','ACTIVO'),(636,'SO-GUANTES','39884 - 44399','CLASE: LISOS; MATERIAL: HULE; TALLA: MEDIANA; TIPO DE MANGA: LARGA; USO: INDUSTRIAL;',0,'PAR/1 UNIDAD(ES)','ACTIVO'),(637,'SO-GUANTES','63591 - 76503',' LARGO: 26 CENT?METRO;  MATERIAL: CUERO Y POLI?STER;  PALMA: DOBLE;  USO: INDUSTRIAL;',0,'PAR/1 UNIDAD(ES)','ACTIVO'),(638,'SO-GUANTES','54969-64785','DORSO: EL?STICO; MATERIAL: CUERO FLOR; TALLA: MEDIANA; TIPO: DIEL?CTRICOS; USO: AISLAMIENTO DE ELECTRICIDAD;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(639,'SO-GUANTE ANTICORTE','96848-113515','MATERIAL: CUERO, FIBRA DE VIDRIO, FIBRA SINT?TICA, POLI?STER Y POLIETILENO; TALLA: L;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(640,'SO-TAPONES AUDITIVOS','8812-9212','CLASE: DESECHABLES; MATERIAL: PU-FOAM; PESO: 10 GRAMOS(S); USO: BRINDA PROTECCI?N CONTRA RUIDOS;',0,'PAR(2 UNIDAD(ES))','ACTIVO'),(641,'SO-CASCO PROTECTOR','52446 - 61764','AJUSTE: DE PINES; MATERIAL: PL?STICO; PUNTOS DE ANCLAJE: 4;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(642,'SO-CHALECO','9678-10058','CINTA REFLECTIVAS: SI; MEDIDA CINTA REFLECTIVA: 2 PULGADAS(S); TALLA: L; TELA: POLI?STER; TIPO: SAFARI;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(643,'SO-GABACHA','46953-54535','CINTO: AJUSTABLES; MANGA: LARGA; MATERIAL: CUERO; PECHERA: AJUSTABLE; TIPO: SOLDADOR; TIRANTES: AJUSTABLES;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(644,'SO-CINTA DE SEGURIDAD','40512-45229','ANCHO: 2 PULGADAS(S); MATERIAL: POLIETILENO; USO: RESTRICCI?N DE PASO;',0,'ROLLO/300 METRO','ACTIVO'),(645,'SO-CARETA','19619 - 20602','MATERIAL: PL?STICO; TAMA?O: EST?NDAR; USO: SOLDADURA;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(646,'SO-CARETA PARA PROTECCI?N FACIAL','54577 - 64341','MATERIAL: PL?STICO; MATERIAL DEL VISOR: ACR?LICO; TAMA?O: EST?NDAR; USO: INDUSTRIAL;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(647,'SO-MANGA','49175 - 57592','MATERIAL: CUERO; TALLA: MEDIANO; USO: SOLDADURA INDUSTRIAL;',0,'PAR/1 UNIDAD(ES)','ACTIVO'),(648,'SO-CONO DE SEGURIDAD','9668 - 10048','ALTO: 28 PULGADAS(S); ANCHO INFERIOR: 18 PULGADAS(S); CINTA REFLECTIVA: SI; COLOR: ANARANJADO; DI?METRO INFERIOR: 4 PULGADAS(S); DI?METRO SUPERIOR: 1 PULGADAS(S); MATERIAL: HULE; USO: SE?ALIZACI?N VIAL;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(649,'SO-VIDRIO','19319 - 20310','ANCHO: 55 MIL?METRO(S); COLOR: CLARO; LARGO: 110 MIL?METRO(S); OFICIO: SOLDADURA; USO: CARETA DE SOLDADURA;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(650,'SO-VIDRIO','35868 - 39337','COLOR: OSCURO; N?MERO: 12; OFICIO: SOLDADURA; USO: CARETA DE SOLDADURA;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(651,'SO-BOTAS','33885-37105 ','MATERIAL: CUERO; MATERIAL DE PUNTA: ACERO; TALLA: 37; TIPO: INDUSTRIAL; TIPO DE SUELA: ANTIDESLIZANTE;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(652,'SO-BOTAS','33886-37106 ','MATERIAL: CUERO; MATERIAL DE PUNTA: ACERO; TALLA: 38; TIPO: INDUSTRIAL; TIPO DE SUELA: ANTIDESLIZANTE;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(653,'SO-BOTAS','33887-37107','MATERIAL: CUERO; MATERIAL DE PUNTA: ACERO; TALLA: 39; TIPO: INDUSTRIAL; TIPO DE SUELA: ANTIDESLIZANTE;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(654,'SO-BOTAS','33888-37108 ','MATERIAL: CUERO; MATERIAL DE PUNTA: ACERO; TALLA: 40; TIPO: INDUSTRIAL; TIPO DE SUELA: ANTIDESLIZANTE;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(655,'SO-BOTAS','33889-37109 ','MATERIAL: CUERO; MATERIAL DE PUNTA: ACERO; TALLA: 41; TIPO: INDUSTRIAL; TIPO DE SUELA: ANTIDESLIZANTE;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(656,'SO-BOTAS','33890-37110 ','MATERIAL: CUERO; MATERIAL DE PUNTA: ACERO; TALLA: 42; TIPO: INDUSTRIAL; TIPO DE SUELA: ANTIDESLIZANTE;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(657,'SO-BOTAS','33891-37112 ','MATERIAL: CUERO; MATERIAL DE PUNTA: ACERO; TALLA: 43; TIPO: INDUSTRIAL; TIPO DE SUELA: ANTIDESLIZANTE;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(658,'SO-BOTAS','33893-37113 ','MATERIAL: CUERO; MATERIAL DE PUNTA: ACERO; TALLA: 44; TIPO: INDUSTRIAL; TIPO DE SUELA: ANTIDESLIZANTE;',0,'PAR(1 UNIDAD(ES))','ACTIVO'),(659,'SO-CAMISA','83990-99357 ','DISE?O: CON CINTAS REFLECTIVAS; G?NERO: UNISEX; LOGOTIPO: BORDADO; MANGA: CORTA; TALLA: A LA MEDIDA; TELA: ALGOD?N Y POLI?STER; TIPO: POLO;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(660,'SO-CAMISA','106164-123752 ','DISE?O: BOLSAS AL FRENTE, RESPIRADERO EN LA ESPALDA; G?NERO: MASCULINO; MANGA: LARGA; MATERIAL: POLI?STER; TALLA: A LA MEDIDA; TIPO: COMANDO (SAFARI);',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(661,'SO-CHUMPA','108726-126393 ','DISE?O: CON CAPUCHA; G?NERO: UNISEX; MATERIAL: IMPERMEABLE; TALLA: A LA MEDIDA; TIPO: COMANDO;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(662,'SO-CINTUR?N','113474-131954','MATERIAL: CUERO; TALLA: GRANDE; TIPO: SEGURIDAD;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(663,'SO-OVEROL INDUSTRIAL','83757-99048','MATERIAL: GABARDINA; TALLA: A LA MEDIDA;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(664,'SO-ARN?S DE SEGURIDAD','S/C','KIT COMPLETO PARA TRABAJOS DE ALTURAS CON ARN?S DE CUERPO COMPLETO Y ANILLO D EN ESPALDA, L?NEA DE VIDA DE TIPO PAQUETE, L?NEA DE VIDA RETR?CTIL Y CONECTOR A PUNTO DE ANCLAJE, POLI?STER DE ALTA RESISTENCIA',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(665,'SO-TOLDO FIJO','58174-69047','ACCESORIOS: TUBOS GALVANIZADOS PARA CERCA; ANCHO: 3.5 METRO; LARGO: 10 METRO; MATERIAL: LONA IMPERMEABLE;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(666,'SO-MASCARILLA','47800-55721','DISE?O: SIN V?LVULA; FILTRO: N95; SUJETADORES: EL?STICOS; TIPO: DESECHABLE;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(667,'SO-OREJERAS PROTECTORAS','34253-37504','MATERIAL: PL?STICO;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(668,'SO-TAPONES AUDITIVOS','8812-9212','CLASE: DESECHABLES; MATERIAL: PU-FOAM; PESO: 10 GRAMOS(S); USO: BRINDA PROTECCI?N CONTRA RUIDOS;',0,'PAR(2 UNIDAD(ES))','ACTIVO'),(669,'SO-LINTERNA FRONTAL','52504-61826','AJUSTE: CORREA EL?STICA; ENERG?A: RECARGABLE; LUZ: LED;',0,'UNIDAD(1 UNIDAD(ES))','ACTIVO'),(670,'SO-MANGAS','20896','CINTO: NO; EL?STICO: SI; TALLA: L; TELA: LYCRA; TIPO: PROTECTOR;',0,'PAR/1 UNIDAD(ES)','INACTIVO'),(671,'SO-MANGAS','20895','CINTO: NO; EL?STICO: SI; TALLA: M; TELA: LYCRA; TIPO: PROTECTOR;',0,'PAR/1 UNIDAD(ES)','INACTIVO'),(672,'SO-MANGAS','20894','CINTO: NO; EL?STICO: SI; TALLA: S; TELA: LYCRA; TIPO: PROTECTOR;',0,'PAR/1 UNIDAD(ES)','INACTIVO'),(673,'SO-MANGAS','20893','CINTO: NO; EL?STICO: SI; TALLA: XS; TELA: LYCRA; TIPO: PROTECTOR;',0,'PAR/1 UNIDAD(ES)','INACTIVO'),(674,'SO-BOTIQU?N','50991 - 59951','ALTO: 60 CENT?METRO(S); ANCHO: 40 CENT?METRO(S); DIVISIONES: 3; MATERIAL: METAL; PROFUNDIDAD: 20 CENT?METRO(S);',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(675,'SO-BOTAS PARA BOMBERO','87649-103769 ','ESTILO: BOTA ALTA; MATERIAL: CUERO; PLANTILLA: DE FIBRA TRANSPIRABLE; PUNTA: TERMOPL?STICO REFORZADO; TALLA: 40; TIPO DE SUELA: DE HULE CON NITRILO, RESISTENTE A ALTAS TEMPERATURAS ANTIDESLIZANTES;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(676,'SO-CAMILLA DE RESCATE R?GIDA','98742-115530','ANCHO: 52 CENT?METRO; CAPACIDAD: 220 KILOGRAMOS; INCLUYE: AGARRADORES, APOYA CABEZA Y CORREAS DE POLI?STER; LARGO: 2.2 METRO; MATERIAL: PL?STICO;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(677,'SO-TIRANTES PARA PANTAL?N DE BOMBERO','70464-84017 ','MATERIAL: POLIPROPILENO; PUNTOS DE FIJACI?N: 8 ;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(678,'SO-BOTAS PARA BOMBERO','87649-103769 ','ESTILO: BOTA ALTA; MATERIAL: CUERO; PLANTILLA: DE FIBRA TRANSPIRABLE; PUNTA: TERMOPL?STICO REFORZADO; TALLA: 40; TIPO DE SUELA: DE HULE CON NITRILO, RESISTENTE A ALTAS TEMPERATURAS ANTIDESLIZANTES;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(679,'SO-CASCO PARA BOMBERO','4154-77193','CONTIENE: CLIPS PARA GAFAS, ALA ENTERA, ENVOLTURAS PARA O?DOS/CUELLO Y CARA, LAMPARA LED INCORMPORADA; MATERIAL: TERMO PL?STICO; TIPO: RESISTENTE AL CALOR;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(680,'SO-CUBRE CUELLO','S/C','MATERIAL: POLI?STER TIPO MALLA; DISE?O: AJUSTABLE AL CASCO DE SEGURIDAD DE IMPACTO VERTICAL; USO: PARA CUBRIR EL CUELLO Y PARTE DEL ROSTRO DE RAYOS SOLARES Y POLVO; TAMA?O: A LA MEDIDA; ',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(681,'SO-VISERA PARA CASCO','S/C','USO: PROTECCI?N FACIAL Y DEL CUELLO, EN ?REAS EXTERNAS DE EXPOSICI?N SOLAR; DISE?O: DE POLIURETANO, COMPATIBLE CON CASCO DE SEGURIDAD DE IMPACTO VERTICAL ',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(682,'SO-PANTAL?N','70227-83775 ','G?NERO: MASCULINO; MATERIAL: LONA; TALLA: A LA MEDIDA; TIPO: OPERATIVO;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(683,'SO-LAZO','60174-71527','DI?METRO: 1/2 PULGADA; MATERIAL: PL?STICO; TIPO: TRENZADO;',0,'UNIDAD(1 METRO)','INACTIVO'),(684,'SO-MANGUERA','98615-115394','DI?METRO: 1.5 PULGADAS; MATERIAL: CAUCHO Y LONA; USO: TRASIEGO DE COMBUSTIBLE;',0,'UNIDAD(1 PIES)','INACTIVO'),(685,'SO-MANGUERA','73306-87101','DI?METRO: 2 1/2 PULGADAS; INCLUYE: PISTOLA DE PRESI?N; LARGO: 50 PIES; MATERIAL: CAUCHO Y LONA;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(686,'SO-BOQUILLA','109984-127789','DI?METRO: 1 1/2 PULGADA; MATERIAL: ALUMINIO; PRESI?N: 100 LIBRA POR PULGADA CUADRADA; TIPO: PISTOLA; USO: MANGUERA;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(687,'SO-HACHA','3648-4310','MATERIAL CABEZA: HIERRO TEMPLADO; MATERIAL MANGO: MADERA;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(688,'SO-SIAMESA','S/C','TOMA SIAMESA CON V?LVULA DE ALUMINIO ANODIZADO, CON ENTRADA DE 2 1/2\" HEMBRA POR 2 SALIDAS MACHO EN MEDIDA DE 1 1/2\", FABRICADO BAJOS NORMAS NFPA. ROSCA NH',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(689,'SO-CHALECO','81441-96204','CONTIENE: CINTA REFLECTIVA; G?NERO: UNISEX; MATERIAL: POLI?STER; TALLA: ?NICA;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(690,'SO-UNIFORME','8803-9203','CALOR: 648 ?; NORMA: NFPA 1971-2007; TELA: KOTHMEX (FIBRA DE CARBONO); TIPO: BOMBERO;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(691,'SO-BOTAS PARA BOMBERO','116156-135298','ESTILO: BOTA ALTA; MATERIAL: CUERO; PLANTILLA: DE FIBRA TRANSPIRABLE; PUNTA: TERMOPL?STICO REFORZADO; TALLA: 44 ; TIPO DE SUELA: DE HULE CON NITRILO, RESISTENTE A ALTAS TEMPERATURAS ANTIDESLIZANTES;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(692,'SO-BOTAS PARA BOMBERO','116157-135299','ESTILO: BOTA ALTA; MATERIAL: CUERO; PLANTILLA: DE FIBRA TRANSPIRABLE; PUNTA: TERMOPL?STICO REFORZADO; TALLA: 39 ; TIPO DE SUELA: DE HULE CON NITRILO, RESISTENTE A ALTAS TEMPERATURAS ANTIDESLIZANTES;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(693,'SO-BOTAS PARA BOMBERO','77018-91194','DISE?O: CON ARGOLLAS; MATERIAL: CAUCHO NATURAL; SUELA: ANTIDESLIZANTE Y RESISTENTE A LA ABRASI?N, ACEITES Y COMBUSTIBLE; TALLA: 42 ;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(694,'SO-BOTAS PARA BOMBERO','77970-92217','DISE?O: CON ARGOLLAS; INCLUYE: CAMBRON MET?LICO, PROTECTOR DE EMPEINE REFORZADO, PUNTA DE ACERO, PROTECTOR DE CANILLA, CAPELLADA, PLANTILLA CON PROTECCI?N A PINCHAZOS; MATERIAL: CAUCHO NATURAL; SUELA: ANTIDESLIZANTE Y RESISTENTE A LA ABRASI?N, ACEITES, ?C',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(695,'SO-BOTAS PARA BOMBERO','77973-92220','DISE?O: CON ARGOLLAS; INCLUYE: CAMBRON MET?LICO, PROTECTOR DE EMPEINE REFORZADO, PUNTA DE ACERO, PROTECTOR DE CANILLA, CAPELLADA, PLANTILLA CON PROTECCI?N A PINCHAZOS; MATERIAL: CAUCHO NATURAL; SUELA: ANTIDESLIZANTE Y RESISTENTE A LA ABRASI?N, ACEITES, ?C',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(696,'SO-BOTAS PARA BOMBERO','77974-92221','DISE?O: CON ARGOLLAS; INCLUYE: CAMBRON MET?LICO, PROTECTOR DE EMPEINE REFORZADO, PUNTA DE ACERO, PROTECTOR DE CANILLA, CAPELLADA, PLANTILLA CON PROTECCI?N A PINCHAZOS; MATERIAL: CAUCHO NATURAL; SUELA: ANTIDESLIZANTE Y RESISTENTE A LA ABRASI?N, ACEITES, ?C',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(697,'SO-BOTAS PARA BOMBERO','77976-92223','DISE?O: CON ARGOLLAS; INCLUYE: CAMBRON MET?LICO, PROTECTOR DE EMPEINE REFORZADO, PUNTA DE ACERO, PROTECTOR DE CANILLA, CAPELLADA, PLANTILLA CON PROTECCI?N A PINCHAZOS; MATERIAL: CAUCHO NATURAL; SUELA: ANTIDESLIZANTE Y RESISTENTE A LA ABRASI?N, ACEITES, ?C',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(698,'SO-BOTAS PARA BOMBERO','87645-103765','ESTILO: BOTA ALTA; MATERIAL: CUERO; PLANTILLA: DE FIBRA TRANSPIRABLE; PUNTA: TERMOPL?STICO REFORZADO; TALLA: 36; TIPO DE SUELA: DE HULE CON NITRILO, RESISTENTE A ALTAS TEMPERATURAS ANTIDESLIZANTES;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(699,'SO-BOTAS PARA BOMBERO','87646-103766','ESTILO: BOTA ALTA; MATERIAL: CUERO; PLANTILLA: DE FIBRA TRANSPIRABLE; PUNTA: TERMOPL?STICO REFORZADO; TALLA: 38; TIPO DE SUELA: DE HULE CON NITRILO, RESISTENTE A ALTAS TEMPERATURAS ANTIDESLIZANTES;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(700,'SO-BOTAS PARA BOMBERO','87649-103769','ESTILO: BOTA ALTA; MATERIAL: CUERO; PLANTILLA: DE FIBRA TRANSPIRABLE; PUNTA: TERMOPL?STICO REFORZADO; TALLA: 40; TIPO DE SUELA: DE HULE CON NITRILO, RESISTENTE A ALTAS TEMPERATURAS ANTIDESLIZANTES;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(701,'SO-BOTAS PARA BOMBERO','87651-103771','ESTILO: BOTA ALTA; MATERIAL: CUERO; PLANTILLA: DE FIBRA TRANSPIRABLE; PUNTA: TERMOPL?STICO REFORZADO; TALLA: 41; TIPO DE SUELA: DE HULE CON NITRILO, RESISTENTE A ALTAS TEMPERATURAS ANTIDESLIZANTES;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(702,'SO-BOTAS PARA BOMBERO','87652-103772','ESTILO: BOTA ALTA; MATERIAL: CUERO; PLANTILLA: DE FIBRA TRANSPIRABLE; PUNTA: TERMOPL?STICO REFORZADO; TALLA: 42; TIPO DE SUELA: DE HULE CON NITRILO, RESISTENTE A ALTAS TEMPERATURAS ANTIDESLIZANTES;',0,'PAR(1 UNIDAD(ES))','INACTIVO'),(703,'SO-CASCO PARA BOMBERO','64154-77193','CONTIENE: CLIPS PARA GAFAS, ALA ENTERA, ENVOLTURAS PARA O?DOS/CUELLO Y CARA, LAMPARA LED INCORMPORADA; MATERIAL: TERMO PL?STICO; TIPO: RESISTENTE AL CALOR;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(704,'SO-TIRANTES PARA PANTAL?N DE BOMBERO','70464-84017','MATERIAL: POLIPROPILENO; PUNTOS DE FIJACI?N: 8 ;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(705,'SO-TRAMPA PARA MOSCAS','78946-93274','ALIMENTACI?N: 110 VOLTIO; ALTO: 12 CENT?METRO; ANCHO: 13 CENT?METRO; CLASE DE LUZ: NEGRA ULTRAVIOLETA; LARGO: 52 CENT?METRO; MATERIAL: METAL Y PL?STICO; TIPO: PARED;',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(706,'SO-CUBRE CUELLO','S/C','MATERIAL: POLI?STER TIPO MALLA; DISE?O: AJUSTABLE AL CASCO DE SEGURIDAD DE IMPACTO VERTICAL; USO: PARA CUBRIR EL CUELLO Y PARTE DEL ROSTRO DE RAYOS SOLARES Y POLVO; TAMA?O: A LA MEDIDA; ',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(707,'SO-VISERA PARA CASCO','S/C','USO: PROTECCI?N FACIAL Y DEL CUELLO, EN ?REAS EXTERNAS DE EXPOSICI?N SOLAR; DISE?O: DE POLIURETANO, COMPATIBLE CON CASCO DE SEGURIDAD DE IMPACTO VERTICAL ',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(708,'SO-TRIPODE DE RESCATE','S/C','USO: RESCATE EN ESPACIOS CONFINADOS; DISE?O: PATAS AJUSTABLES AL ESPACIO CONFINADO, CON SISTEMA DE POLEAS QUE PERMITE LEVANTAR, BAJAR Y POSICIONAR PERSONAL Y MATERIALES; ',0,'UNIDAD/1 UNIDAD(ES)','INACTIVO'),(709,'SO-KIT DE HERRAMIENTAS PARA BLOQUEO Y ETIQUETADO','S/C','USO: PARA BLOQUEO DE TRABAJOS DE MANTENIMIENTO; DISE?O: BLOQUEO PARA V?LVULAS DE BOLA, V?LVULAS DE COMPUERTA, TOMAS DE CORRIENTE EL?CTRICA, INTERRUPTORES DIVERSOS; INCLUYE: TARJETAS DE PELIGRO PARA BLOQUEO, CANDADOS DE ACERO CON RETENCI?N DE LLAVE, HOJA D',0,'UNIDAD(1 UNIDAD(ES))','INACTIVO'),(710,'AH - Porta llaves de pared','49760 - 58331','Porta llaves de pared Clase: Tipico; Dise?o: Pintado; Material: Madera; Uso: Decorativo;',0,'Unidad/1 Unidad(es)','ACTIVO'),(711,'AH - Organizador','39958 - 44501','Organizador Alto: 0.45 Metro(s); Ancho: 0.8 Metro(s); Fondo: 0.4 Metro(s); Material: Plywood fen?lico; Material de tapadera: Plywood fen?lico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(712,'AH -Wipe','4657 - 36614','Wipe Color: Blanco; Tipo: Bola;',0,'Bola/1 Libra','ACTIVO'),(713,'AH - Lazo','52313 - 61618','Lazo Di?metro: 1 Pulgadas(s); Largo: 1 Pies(s); Material: Fibra de vidrio; Tipo: Trenzada;',0,'Unidad/1 Pies','ACTIVO'),(714,'AH - Cincho','29967 - 32612','Cincho Compartimientos: 10; Material: Cuero; Talla: 32; Uso: Porta herramientas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(715,'AH - Empaque','34060 - 37298','Empaque Di?metro: 1/2 pulgada; Material: Hule; Uso: Manguera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(716,'AH - Empaque','34061 - 37299','Empaque Di?metro: 3/4 pulgada; Material: Hule; Uso: Manguera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(717,'AH - Empaque','40770 - 45607','Empaque Material: Hule; Tama?o: Est?ndar; Uso: Lavamanos;',0,'Unidad/1 Unidad(es)','ACTIVO'),(718,'AH - Empaque','40772 - 45608','Empaque Material: Hule; Tama?o: Est?ndar; Uso: Sanitario;',0,'Unidad/1 Unidad(es)','ACTIVO'),(719,'AH - Guantes','26721 - 29186','Guantes Material: Hule; Tama?o: Mediano; Uso: Limpieza;',0,'Paquete/2 Unidad(es)','ACTIVO'),(720,'AH - Manguera de abasto','33334 - 36520','Manguera de abasto Di?metro de entrada: 1/2 pulgadas; Di?metro de salida: 3/8 pulgadas; Material: Hule con forro met?lico; Uso: Lavamanos, lavatrastos, inodoros y uso general;',0,'Unidad/1 Unidad(es)','ACTIVO'),(721,'AH - Manguera de abasto','46894 - 54459','Manguera de abasto Di?metro: 3/4 pulgada; Longitud: 16 Pulgadas(s); Uso: Plomer?a;',0,'Unidad/1 Unidad(es)','ACTIVO'),(722,'AH - Manguera','21295 - 22272','Manguera Di?metro: 1 1/2 pulgadas; Material: Hule con alma de ceda; Tipo: Resistente a la abrasi?n; Uso: En chorro de arena (sand blast);',0,'Rollo/1 Pies','ACTIVO'),(723,'AH - Reducidor bushing','47787 - 55704','Reducidor bushing Material: Hule; Medida: 3 a 2 pulgada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(724,'AH - Sapito (sanitario)','33916 - 37136','Sapito (sanitario) Material: Hule; Tama?o: 10 Cent?metro(s); Uso: Dep?sito;',0,'Unidad/1 Unidad(es)','ACTIVO'),(725,'AH - Guantes','39884 - 44399','Guantes Clase: Lisos; Material: Hule; Talla: Mediana; Tipo de manga: Larga; Uso: Industrial;',0,'Par/1 Unidad(es)','ACTIVO'),(726,'AH - Manguera','42293 - 47904','Manguera Di?metro: 2 1/2 pulgadas; Material: Caucho y lona; Uso: Multiprop?sito;',0,'Unidad/1 Metro','ACTIVO'),(727,'AH - Hipoclorito de sodio','8092','HIPOCLORITO DE SODIO AL 5% . GAL?N.',0,'Envase/1 Gal?n','ACTIVO'),(728,'AH - Hipoclorito de sodio','33585 - 36796','Hipoclorito de sodio Concentraci?n: 10%; Densidad: 1.2019 %; Estado: L?quido;',0,'Unidad/1 Unidad(es)','ACTIVO'),(729,'AH - Destapa drenaje','30365 - 78426','Destapa drenaje Consistencia: L?quido; Finalidad: Destapa inodoros, fregaderos y ca?er?as obstruidas;',0,'Envase/1 Gal?n','ACTIVO'),(730,'AH - Sellador','33779 - 36999','Sellador Color: Blanco; Material: Silic?n; Uso: Vidrier?a;',0,'Cartucho/300 Mililitro','ACTIVO'),(731,'AH - Sellador el?stico','27976 - 30459','Sellador el?stico Aplicaci?n: Juntas de construcci?n; Tipo: Poliuretano de alto desempe?o;',0,'Tubo/10 Onza','ACTIVO'),(732,'AH - Silic?n','33531 - 77744','Silic?n Color: Blanco; Uso: Sellador;',0,'Tubo/300 Mililitro','ACTIVO'),(733,'AH - Solvente','39288 - 43542','Solvente Tipo: Desengrasador; Uso: Aflojar grasa solida de cojinete y engranaje;',0,'Bote/401 Gramos','ACTIVO'),(734,'AH - Thinner','3617 - 4279','Thinner Clase: Laca; Tipo: Transparente;',0,'Envase/1 Gal?n','ACTIVO'),(735,'AH - Aceite lubricante','31056 - 42380','Aceite lubricante Estado: L?quido; Propiedades: Anticorrosivo; Tipo: Multiusos 3 en 1;',0,'Bote/1 Gal?n','ACTIVO'),(736,'AH - Grasa','40432 - 45145','Grasa Numero: 2; Uso: Engrase en general;',0,'Bote/1 Libra','ACTIVO'),(737,'AH - Grasa','45226 - 52225','Grasa Tipo: Silicona blanca; Uso: Lubricaci?n de piezas pl?sticas;',0,'Bote/120 Gramos','ACTIVO'),(738,'AH - Insecticida','2229 - 84608','Insecticida Consistencia: L?quido; Uso: Dom?stico;',0,'Aerosol/400 Mililitro','ACTIVO'),(739,'AH - Insecticida','2229 - 67876','Insecticida Consistencia: L?quido; Uso: Dom?stico;',0,'Aerosol/460 Mililitro','ACTIVO'),(740,'AH - Insecticida','2229 - 35055','Insecticida Consistencia: L?quido; Uso: Dom?stico;',0,'Aerosol/600 Mililitro','ACTIVO'),(741,'AH - Insecticida','2229 - 35054','Insecticida Consistencia: L?quido; Uso: Dom?stico;',0,'Aerosol/750 Mililitro','ACTIVO'),(742,'AH - Cinta de seguridad','55215 - 65174','Cinta de seguridad Ancho: 3 Pulgadas(s); Material: Polietileno alta densidad; Uso: Restricci?n de paso;',0,'Rollo/50 Metro','ACTIVO'),(743,'AH - Lazo','34058 - 37296','Lazo Di?metro: 1 Pulgadas(s); Largo: 100 Pies(s); Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(744,'AH - Pistola de riego','38346 - 42413','Pistola de riego Boquillas de posici?n: 7; Dise?o: Ergon?mico; Gatillo: Regulador de flujo; Material: Pl?stico; Tama?o: 4 Pulgadas(s);',0,'Unidad/1 Unidad(es)','ACTIVO'),(745,'AH - Tarugo','28809 - 31381','Tarugo Material: Pl?stico; N?mero: 8; Uso: Fijaci?n;',0,'Bolsa/100 Unidad(es)','ACTIVO'),(746,'AH - Adaptador (acople) para sif?n','60769 - 72719','Adaptador (acople) para sif?n  Contiene: Empaque;  Di?metro: 1 1/2 pulgadas;  Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(747,'AH - Adaptador','36055 - 39572','Adaptador Color: Blanco; Di?metro: 2 1/2 pulgadas; Material: Pvc; Presi?n m?xima: 250 libras por pulgada cuadrada; Tipo: Macho; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(748,'AH - Adaptador','4663 - 4846','Adaptador Color: Blanco; Grosor: 1/2; Material: Pvc; Uso: Agua potable;',0,'Pieza/1 Unidad(es)','ACTIVO'),(749,'AH - Adaptador','42902 - 48704','Adaptador Di?metro: 1 1/2 pulgadas; Liso: Si; Material: Pvc; Tipo: Macho; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(750,'AH - Adaptador','36052 - 39570','Adaptador Di?metro: 1 1/2 pulgadas; Material: Pvc; Rosca: Si; Tipo: Macho; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(751,'AH - Adaptador','36087 - 39608','Adaptador Di?metro: 1 1/4 pulgadas; Material: Pvc; Tipo: Hembra; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(752,'AH - Adaptador','36046 - 39565','Adaptador Di?metro: 1 1/4 pulgadas; Material: Pvc; Tipo: Macho; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(753,'AH - Adaptador','33978 - 37212','Adaptador Di?metro: 1 Pulgadas(s); Material: Cpvc; Rosca: Si; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(754,'AH - Adaptador','36436 - 40037','Adaptador Di?metro: 1 Pulgadas(s); Material: Cpvc; Tipo: Hembra; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(755,'AH - Adaptador','29704 - 32328','Adaptador Di?metro: 1 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(756,'AH - Adaptador','29738 - 32374','Adaptador Di?metro: 1 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(757,'AH - Adaptador','29736 - 32373','Adaptador Di?metro: 1/2 pulgadas; Material: Pvc; Rosca: Si; Textura: Liso; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(758,'AH - Adaptador','29701 - 32324','Adaptador Di?metro: 1/2 pulgadas; Material: Pvc; Rosca: Si; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(759,'AH - Adaptador','36092 - 39612','Adaptador Di?metro: 2 1/2 pulgadas; Material: Pvc; Tipo: Hembra; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(760,'AH - Adaptador','29709 - 32338','Adaptador Di?metro: 2 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(761,'AH - Adaptador','29749 - 32384','Adaptador Di?metro: 2 Pulgadas(s); Material: Pvc; Rosca: Si; Textura: Liso; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(762,'AH - Adaptador','29710 - 32339','Adaptador Di?metro: 2 Pulgadas(s); Material: Pvc; Rosca: Si; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(763,'AH - Adaptador','29742 - 32380','Adaptador Di?metro: 3/4 pulgadas; Material: Pvc; Rosca: Si; Textura: Liso; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(764,'AH - Adaptador','29708 - 32335','Adaptador Di?metro: 3/4 pulgadas; Material: Pvc; Rosca: Si; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(765,'AH - Adaptador limpieza con rosca','34108 - 37348','Adaptador limpieza con rosca Di?metro: 2 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(766,'AH - Adaptador limpieza con rosca','34104 - 37345','Adaptador limpieza con rosca Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(767,'AH - Adaptador limpieza con rosca','34097 - 37341','Adaptador limpieza con rosca Di?metro: 4 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(768,'AH - Asiento de inodoro','4664 - 4847','Asiento de inodoro Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(769,'AH - Bolsa para basura','58220 - 69100','Bolsa para basura  Ancho: 26 Pulgadas;  Calibre: 4;  Color: Negro;  Largo: 30 Pulgadas;  Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(770,'AH - Caja para herramientas','53837 - 63495','Caja para herramientas Alto: 16 Pulgadas(s); Ancho: 15 Pulgadas(s); Cierre: Met?lico; Largo: 24 Pulgadas(s); Mango: Telesc?pico; Material: Pl?stico; Tipo: Rodante con organizadores;',0,'Unidad/1 Unidad(es)','ACTIVO'),(771,'AH - Caja para herramientas','49778 - 58351','Caja para herramientas Ancho: 25 Cent?metro(s); Largo: 41 Cent?metro(s); Material: Polimero de alto impacto;',0,'Unidad/1 Unidad(es)','ACTIVO'),(772,'AH - Canasta para lavatrastos','33538 - 36748','Canasta para lavatrastos Material: Pl?stico; Tipo: Con cola;',0,'Unidad/1 Unidad(es)','ACTIVO'),(773,'AH - Cedazo','30023 - 32673','Cedazo Ancho de la perforaci?n: 1/4 pulgada; Material: Pl?stico;',0,'Unidad/1 Yarda','ACTIVO'),(774,'AH - Cedazo fino','32006 - 34851','Cedazo fino Alto: 10 Yarda(s); Ancho: 0.84 Yarda(s); Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(775,'AH - Cincho','43085 - 48987','Cincho Ancho: 0.5 Mil?metro(s); Largo: 4 Pulgadas(s); Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(776,'AH - Cincho','47414 - 55179','Cincho Ancho: 5 Mil?metro(s); Largo: 10 Pulgadas(s); Material: Pl?stico; Tipo: Ajustable;',0,'Bolsa/100 Unidad(es)','ACTIVO'),(777,'AH - Cinta de tefl?n','29953 - 32598','Cinta de tefl?n Ancho: 1/2 pulgadas;',0,'Carrete/10 Metro','ACTIVO'),(778,'AH - Cinta de tefl?n','28139 - 30666','Cinta de tefl?n Ancho: 3/4 pulgadas;',0,'Carrete/10 Metro','ACTIVO'),(779,'AH - Cinta de tefl?n','28139 - 64488','Cinta de tefl?n Ancho: 3/4 pulgadas;',0,'Rollo/12 Metro','ACTIVO'),(780,'AH - Cinta de tefl?n','28139 - 68490','Cinta de tefl?n Ancho: 3/4 pulgadas;',0,'Rollo/50 Metro','ACTIVO'),(781,'AH - Codo','71120 - 84729','Codo  ?ngulo: 90 grados;  Grosor: 3/4;  Material: Pvc;  Tipo: Con rosca;  Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(782,'AH - Codo','41359 - 46438','Codo ?ngulo: 45 grados; Color: Blanco; Di?metro: 1 1/2 pulgada; Material: Pvc; Rosca: Si; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(783,'AH - Codo','35951 - 39431','Codo ?ngulo: 45 grados; Di?metro: 1 1/2 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(784,'AH - Codo','35947 - 39425','Codo ?ngulo: 45 grados; Di?metro: 1 1/4 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(785,'AH - Codo','35941 - 39415','Codo ?ngulo: 45 grados; Di?metro: 1 Pulgadas(s); Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(786,'AH - Codo','38835 - 43019','Codo ?ngulo: 45 grados; Di?metro: 1/2 pulgada; Material: Pvc; Textura: Liso; Tipo: Con rosca; Uso: Plomer?a;',0,'Unidad/1 Unidad(es)','ACTIVO'),(787,'AH - Codo','35933 - 39409','Codo ?ngulo: 45 grados; Di?metro: 1/2 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(788,'AH - Codo','33789 - 37009','Codo ?ngulo: 45 grados; Di?metro: 1/2 pulgadas; Material: Cpvc; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(789,'AH - Codo','36008 - 39517','Codo ?ngulo: 45 grados; Di?metro: 2 1/2 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(790,'AH - Codo','35995 - 39511','Codo ?ngulo: 45 grados; Di?metro: 2 Pulgadas(s); Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(791,'AH - Codo','33335 - 36521','Codo ?ngulo: 45 grados; Di?metro: 2 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(792,'AH - Codo','36016 - 39527','Codo ?ngulo: 45 grados; Di?metro: 3 Pulgadas(s); Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(793,'AH - Codo','33326 - 36512','Codo ?ngulo: 45 grados; Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(794,'AH - Codo','33329 - 36515','Codo ?ngulo: 45 grados; Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(795,'AH - Codo','35936 - 39412','Codo ?ngulo: 45 grados; Di?metro: 3/4 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(796,'AH - Codo','33788 - 37008','Codo ?ngulo: 45 grados; Di?metro: 3/4 pulgadas; Material: Cpvc; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(797,'AH - Codo','33339 - 36525','Codo ?ngulo: 45 grados; Di?metro: 3/4 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(798,'AH - Codo','36019 - 39531','Codo ?ngulo: 45 grados; Di?metro: 4 Pulgadas(s); Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(799,'AH - Codo','33324 - 36510','Codo ?ngulo: 45 grados; Di?metro: 4 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(800,'AH - Codo','36470 - 40079','Codo ?ngulo: 45 grados; Di?metro: 6 Pulgadas(s); Material: Pvc; Tipo: Campana por campana (c x c); Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(801,'AH - Codo','34263 - 44616','Codo ?ngulo: 45 grados; Di?metro: 6 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(802,'AH - Codo','32051 - 34897','Codo ?ngulo: 45 grados; Di?metro: 8 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(803,'AH - Codo','35897 - 39368','Codo ?ngulo: 90 grados; Color: Blanco; Di?metro: 1/2 pulgadas; Material: P.v.c.; Presi?n m?xima: 250 Libra por Pulgada Cuadrada(s); Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(804,'AH - Codo','35890 - 39362','Codo ?ngulo: 90 grados; Di?metro: 1 1/2 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(805,'AH - Codo','35882 - 39354','Codo ?ngulo: 90 grados; Di?metro: 1 1/4 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(806,'AH - Codo','35879 - 39350','Codo ?ngulo: 90 grados; Di?metro: 1 Pulgadas(s); Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(807,'AH - Codo','42624 - 48316','Codo ?ngulo: 90 grados; Di?metro: 1/2 pulgada; Material: Pvc; Rosca: Si; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(808,'AH - Codo','33786 - 37006','Codo ?ngulo: 90 grados; Di?metro: 1/2 pulgadas; Material: Cpvc; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(809,'AH - Codo','35911 - 39382','Codo ?ngulo: 90 grados; Di?metro: 2 1/2 pulgadas; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(810,'AH - Codo','35904 - 39379','Codo ?ngulo: 90 grados; Di?metro: 2 Pulgadas(s); Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(811,'AH - Codo','33330 - 36516','Codo ?ngulo: 90 grados; Di?metro: 2 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(812,'AH - Codo','33333 - 36519','Codo ?ngulo: 90 grados; Di?metro: 2 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(813,'AH - Codo','33325 - 36511','Codo ?ngulo: 90 grados; Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(814,'AH - Codo','33327 - 36513','Codo ?ngulo: 90 grados; Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(815,'AH - Codo','33785 - 37005','Codo ?ngulo: 90 grados; Di?metro: 3/4 pulgadas; Material: Cpvc; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(816,'AH - Codo','35873 - 39347','Codo ?ngulo: 90 grados; Di?metro: 3/4 pulgadas; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(817,'AH - Codo','35926 - 39396','Codo ?ngulo: 90 grados; Di?metro: 4 Pulgadas(s); Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(818,'AH - Codo','33323 - 36509','Codo ?ngulo: 90 grados; Di?metro: 4 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(819,'AH - Codo','34261 - 44615','Codo ?ngulo: 90 grados; Di?metro: 6 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(820,'AH - Codo','32054 - 34899','Codo ?ngulo: 90 grados; Di?metro: 8 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(821,'AH - Codo','30149 - 32863','Codo ?ngulo: 90 grados; Grosor: 1/2 pulgada; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(822,'AH - Codo','30187 - 32864','Codo ?ngulo: 90 grados; Grosor: 3/4 pulgada; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(823,'AH - Codo','29783 - 32421','Codo Di?metro: 3 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(824,'AH - Conexi?n tee','36100 - 39623','Conexi?n tee Di?metro: 1 1/2 pulgada; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(825,'AH - Conexi?n tee','32152 - 34999','Conexi?n tee Di?metro: 1 1/4 pulgada; Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(826,'AH - Conexi?n tee','32157 - 35004','Conexi?n tee Di?metro: 2 1/2 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(827,'AH - Conexi?n tee','36680 - 40327','Conexi?n tee Di?metro: 2 a 1 1/2 pulgada; Material: Pvc; Tipo: Reducida; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(828,'AH - Conexi?n tee','33300 - 36486','Conexi?n tee Di?metro: 2 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(829,'AH - Conexi?n tee','33301 - 36488','Conexi?n tee Di?metro: 2 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(830,'AH - Conexi?n tee','36681 - 40328','Conexi?n tee Di?metro: 3 a 2 pulgadas; Material: Pvc; Tipo: Reducida; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(831,'AH - Conexi?n tee','33297 - 36483','Conexi?n tee Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(832,'AH - Conexi?n tee','33298 - 36485','Conexi?n tee Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(833,'AH - Conexi?n tee','33305 - 36491','Conexi?n tee Di?metro: 3/4 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(834,'AH - Conexi?n tee','36682 - 40329','Conexi?n tee Di?metro: 4 a 2 pulgada; Material: Pvc; Tipo: Reducida; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(835,'AH - Conexi?n tee','36683 - 40330','Conexi?n tee Di?metro: 4 a 3 pulgada; Material: Pvc; Tipo: Reducida; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(836,'AH - Conexi?n tee','33292 - 36480','Conexi?n tee Di?metro: 4 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(837,'AH - Conexi?n tee','33294 - 36482','Conexi?n tee Di?metro: 4 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(838,'AH - Conexi?n tee','36684 - 40331','Conexi?n tee Di?metro: 6 a 4 pulgada; Material: Pvc; Tipo: Reducida; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(839,'AH - Conexi?n tee','34215 - 37464','Conexi?n tee Di?metro: 6 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(840,'AH - Conexi?n tee','36679 - 40325','Conexi?n tee Di?metro: 6 pulgadas; Material: Pvc; Tipo: Sencilla; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(841,'AH - Conexi?n tee','32160 - 35007','Conexi?n tee Di?metro: 8 pulgadas; Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(842,'AH - Conexi?n yee','32163 - 35010','Conexi?n yee Di?metro: 2 pulgadas; Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(843,'AH - Conexi?n yee','36518 - 40141','Conexi?n yee Di?metro: 3 a 2 pulgadas; Material: Pvc; Tipo: Reducida;',0,'Unidad/1 Unidad(es)','ACTIVO'),(844,'AH - Conexi?n yee','36513 - 40126','Conexi?n yee Di?metro: 3 pulgadas; Material: Pvc; Tipo: Sencilla; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(845,'AH - Conexi?n yee','36530 - 40145','Conexi?n yee Di?metro: 4 a 2 pulgadas; Material: Pvc; Tipo: Reducida; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(846,'AH - Conexi?n yee','36533 - 40147','Conexi?n yee Di?metro: 4 a 3 pulgadas; Material: Pvc; Tipo: Reducida; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(847,'AH - Conexi?n yee','34268 - 37519','Conexi?n yee Grosor: 2 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(848,'AH - Conexi?n yee','34265 - 37517','Conexi?n yee Grosor: 4 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(849,'AH - Conexi?n yee tee','38977 - 43158','Conexi?n yee tee Grosor: 2 Pulgadas(s); Material: Pvc; Uso: Plomer?a;',0,'Unidad/1 Unidad(es)','ACTIVO'),(850,'AH - Copla','32038 - 34889','Copla Di?metro: 1 1/2 pulgadas; Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(851,'AH - Copla','32037 - 34888','Copla Di?metro: 1 1/4 pulgadas; Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(852,'AH - Copla','41902 - 47246','Copla Di?metro: 1 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(853,'AH - Copla','32034 - 34885','Copla Di?metro: 1/2 pulgadas; Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(854,'AH - Copla','41898 - 47243','Copla Di?metro: 1/2 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(855,'AH - Copla','32040 - 34890','Copla Di?metro: 2 1/2 pulgadas; Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(856,'AH - Copla','41905 - 47250','Copla Di?metro: 2 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(857,'AH - Copla','42063 - 47453','Copla Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(858,'AH - Copla','41900 - 47245','Copla Di?metro: 3/4 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(859,'AH - Copla','41907 - 47252','Copla Di?metro: 4 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(860,'AH - Copla','42067 - 47458','Copla Di?metro: 6 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(861,'AH - Copla','42069 - 47460','Copla Di?metro: 8 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(862,'AH - Copla lisa','33265 - 36448','Copla lisa Di?metro: 2 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(863,'AH - Copla lisa','33262 - 36447','Copla lisa Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(864,'AH - Copla lisa','33259 - 36446','Copla lisa Di?metro: 3 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(865,'AH - Copla lisa','33258 - 36445','Copla lisa Di?metro: 4 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(866,'AH - Copla lisa','33257 - 36444','Copla lisa Di?metro: 4 Pulgadas(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(867,'AH - Copla lisa','34216 - 37465','Copla lisa Di?metro: 6 Pulgadas(s); Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(868,'AH - Guantes','80817 - 95483','Guantes Condici?n: Descartable, libre de polvo; Material: Vinilo; Talla: M;',0,'Caja(100 Unidad(es))','ACTIVO'),(869,'AH - Guantes','96257 - 112901','Guantes Material: Poliuretano; Talla: ?nica; Uso: Industrial;',0,'Unidad/1 Unidad(es)','ACTIVO'),(870,'AH - Llave de chorro','32187 - 35035','Llave de chorro Di?metro: 1/2\"; Material: Pvc; Tipo: Con rosca;',0,'Unidad/1 Unidad(es)','ACTIVO'),(871,'AH - Llave de chorro','32188 - 35036','Llave de chorro Di?metro: 1/2\"; Material: Pvc; Tipo: Sin rosca;',0,'Unidad/1 Unidad(es)','ACTIVO'),(872,'AH - Llave de chorro','66376 - 79754','Llave de chorro  Diametro: 1/2\" x 3/4\";  Dise?o: Con rosca;  Material: Metal;  Uso: Instalaci?n de agua;',0,'Unidad/1 Unidad(es)','ACTIVO'),(873,'AH - Manguera de abasto','70889 - 84456','Manguera de abasto  Di?metro de entrada: 1/2 pulgadas;  Di?metro de salida: 7/8 pulgadas;  Longitud: 16 Pulgadas;  Material: Pl?stico flexible;',0,'Unidad/1 Unidad(es)','ACTIVO'),(874,'AH - Manguera de abasto','53462 - 63047','Manguera de abasto Di?metro de entrada: 1/2 pulgadas; Di?metro de salida: 3/8 pulgadas; Longitud: 16 Pulgadas(s); Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(875,'AH - Pist?n para flux?metro','42671 - 48368','Pist?n para flux?metro Aplicaci?n: Inodoro; Di?metro: 3 1/4 pulgada; Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(876,'AH - Pist?n para flux?metro','42668 - 48366','Pist?n para flux?metro Aplicaci?n: Urinario; Di?metro: 3 1/4 pulgada; Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(877,'AH - Reducidor bushing','33256 - 36443','Reducidor bushing Di?metro: 1 a 1/2 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(878,'AH - Reducidor bushing','4705 - 4888','Reducidor bushing Di?metro: 1 a 3/4 pulgada; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(879,'AH - Reducidor bushing','33254 - 36441','Reducidor bushing Di?metro: 2 a 1 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(880,'AH - Reducidor bushing','33253 - 36440','Reducidor bushing Di?metro: 3 a 2 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(881,'AH - Reducidor bushing','33252 - 36439','Reducidor bushing Di?metro: 3 a 2 pulgadas; Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(882,'AH - Reducidor bushing','33255 - 36442','Reducidor bushing Di?metro: 3/4 a 1/2 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(883,'AH - Reducidor bushing','33251 - 36438','Reducidor bushing Di?metro: 4 a 2 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(884,'AH - Reducidor bushing','33307 - 36493','Reducidor bushing Di?metro: 4 a 2 pulgadas; Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(885,'AH - Reducidor bushing','33347 - 36534','Reducidor bushing Di?metro: 4 a 3 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(886,'AH - Reducidor bushing','33349 - 36536','Reducidor bushing Di?metro: 4 a 3 pulgadas; Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(887,'AH - Reducidor bushing','34217 - 37466','Reducidor bushing Di?metro: 6 a 4 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(888,'AH - Reducidor','47232 - 54910','Reducidor Di?metro: 1 1/2 a 1 1/4 de  pulgada; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(889,'AH - Reducidor','47188 - 54837','Reducidor Di?metro: 1 1/2 a 1 de pulgada; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(890,'AH - Reducidor','36067 - 39585','Reducidor Di?metro: 1 1/2 a 1/2 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(891,'AH - Reducidor','36072 - 39592','Reducidor Di?metro: 1 1/2 a 3/4 de pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(892,'AH - Reducidor','36056 - 39573','Reducidor Di?metro: 1 1/4 a 1 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(893,'AH - Reducidor','36050 - 39567','Reducidor Di?metro: 1 1/4 a 1/2 de pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(894,'AH - Reducidor','36051 - 39569','Reducidor Di?metro: 1 1/4 a 3/4 de pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(895,'AH - Reducidor','32179 - 35028','Reducidor Di?metro: 8 a 4 pulgadas; Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(896,'AH - Reducidor','32180 - 35029','Reducidor Di?metro: 8 a 6 pulgadas; Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(897,'AH - Reducidor','47171 - 54821','Reducidor Di?metro: 2 a 1 1/2 pulgada; Material: Pvc; Presi?n: 125 libra por pulgada cuadrada; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(898,'AH - Reducidor','47196 - 54852','Reducidor Di?metro: 2 a 1 1/4  de pulgada; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(899,'AH - Reducidor','41888 - 47234','Reducidor Di?metro: 2 a 1 pulgadas; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(900,'AH - Reducidor','47198 - 54854','Reducidor Di?metro: 3 a 1 1/2 pulgada; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(901,'AH - Reducidor','55456 - 65460','Reducidor Di?metro: 3 a 1 1/4 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(902,'AH - Reducidor','55455 - 65458','Reducidor Di?metro: 3 a 1 pulgada; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(903,'AH - Reducidor','47174 - 54823','Reducidor Di?metro: 3 a 2 pulgada; Material: Pvc; Presi?n: 125 libra por pulgada cuadrada; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(904,'AH - Reducidor','47228 - 54906','Reducidor Di?metro: 3 a 2 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(905,'AH - Reducidor','47176 - 54824','Reducidor Di?metro: 4 a 2 pulgada; Material: Pvc; Presi?n: 125 libra por pulgada cuadrada; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(906,'AH - Reducidor','41883 - 47229','Reducidor Di?metro: 4 a 2 pulgadas; Material: Pvc; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(907,'AH - Reducidor','47178 - 54827','Reducidor Di?metro: 4 a 3 pulgada; Material: Pvc; Presi?n: 125 libra por pulgada cuadrada; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(908,'AH - Reducidor','47233 - 54911','Reducidor Di?metro: 4 a 3 pulgada; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(909,'AH - Reducidor','47165 - 54817','Reducidor Di?metro: 6 a 4 pulgadas; Material: Pvc; Presi?n: 125 libra por pulgada cuadrada; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(910,'AH - Tap?n (sapo) del tanque','53417 - 62992','Tap?n (sapo) del tanque Material: Pl?stico; Uso: Inodoro;',0,'Unidad/1 Unidad(es)','ACTIVO'),(911,'AH - Tap?n','41339 - 46413','Tap?n Color: Blanco; Di?metro: 1 1/2 pulgada; Liso: Si; Material: Pvc; Tipo: Hembra; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(912,'AH - Tap?n','41343 - 46416','Tap?n Color: Blanco; Di?metro: 1 1/2 pulgada; Liso: Si; Material: Pvc; Tipo: Macho; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(913,'AH - Tap?n','41341 - 46415','Tap?n Color: Blanco; Di?metro: 1 1/2 pulgada; Material: Pvc; Rosca: Si; Tipo: Hembra; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(914,'AH - Tap?n','41344 - 46418','Tap?n Color: Blanco; Di?metro: 1 1/2 pulgada; Material: Pvc; Rosca: Si; Tipo: Macho; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(915,'AH - Tap?n de registro','42522 - 48198','Tap?n de registro Di?metro: 3 pulgadas; Material: Pvc; Rosca: Si; Tipo: Macho; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(916,'AH - Tap?n','44792 - 51618','Tap?n Di?metro: 1 1/4 pulgadas; Material: Pvc; Rosca: No; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(917,'AH - Tap?n','46408 - 53675','Tap?n Di?metro: 1 1/4 pulgadas; Material: Pvc; Rosca: No; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(918,'AH - Tap?n','44790 - 51615','Tap?n Di?metro: 1 1/4 pulgadas; Material: Pvc; Rosca: Si; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(919,'AH - Tap?n','46405 - 53674','Tap?n Di?metro: 1 1/4 pulgadas; Material: Pvc; Rosca: Si; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(920,'AH - Tap?n','4715 - 4898','Tap?n Di?metro: 1 pulgada; Material: Pvc; Tipo: Hembra; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(921,'AH - Tap?n','36438 - 40039','Tap?n Di?metro: 1/2 pulgada; Material: Cpvc; Tipo: Liso; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(922,'AH - Tap?n','36444 - 40044','Tap?n Di?metro: 1/2 pulgada; Material: Cpvc; Tipo: Roscado; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(923,'AH - Tap?n','44767 - 51596','Tap?n Di?metro: 1/2 pulgada; Material: Pvc; Rosca: No; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(924,'AH - Tap?n','44764 - 51592','Tap?n Di?metro: 1/2 pulgada; Material: Pvc; Rosca: Si; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(925,'AH - Tap?n','29642 - 32269','Tap?n Di?metro: 1/2 pulgadas; Material: Pvc; Rosca: No; Textura: Liso; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(926,'AH - Tap?n','29640 - 32267','Tap?n Di?metro: 1/2 pulgadas; Material: Pvc; Rosca: No; Textura: Liso; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(927,'AH - Tap?n','44788 - 51614','Tap?n Di?metro: 2 1/2 pulgada; Material: Pvc; Rosca: No; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(928,'AH - Tap?n','46411 - 53678','Tap?n Di?metro: 2 1/2 pulgada; Material: Pvc; Rosca: No; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(929,'AH - Tap?n','44773 - 51613','Tap?n Di?metro: 2 1/2 pulgada; Material: Pvc; Rosca: Si; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(930,'AH - Tap?n','46410 - 53677','Tap?n Di?metro: 2 1/2 pulgada; Material: Pvc; Rosca: Si; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(931,'AH - Tap?n','29663 - 32298','Tap?n Di?metro: 2 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(932,'AH - Tap?n','29661 - 32296','Tap?n Di?metro: 2 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(933,'AH - Tap?n','29662 - 32297','Tap?n Di?metro: 2 Pulgadas(s); Material: Pvc; Rosca: Si; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(934,'AH - Tap?n','29660 - 32295','Tap?n Di?metro: 2 Pulgadas(s); Material: Pvc; Rosca: Si; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(935,'AH - Tap?n','50698 - 59629','Tap?n Di?metro: 2 pulgadas; Material: Pvc; Tipo: Hembra; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(936,'AH - Tap?n','29667 - 32302','Tap?n Di?metro: 3 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(937,'AH - Tap?n','29665 - 32300','Tap?n Di?metro: 3 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(938,'AH - Tap?n','29666 - 32301','Tap?n Di?metro: 3 Pulgadas(s); Material: Pvc; Rosca: Si; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(939,'AH - Tap?n','29664 - 32299','Tap?n Di?metro: 3 Pulgadas(s); Material: Pvc; Rosca: Si; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(940,'AH - Tap?n','38598 - 42710','Tap?n Di?metro: 3 pulgadas; Material: Pvc; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(941,'AH - Tap?n','36441 - 40041','Tap?n Di?metro: 3/4 pulgada; Material: Cpvc; Tipo: Liso; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(942,'AH - Tap?n','36447 - 40048','Tap?n Di?metro: 3/4 pulgada; Material: Cpvc; Tipo: Roscado; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(943,'AH - Tap?n','29644 - 32273','Tap?n Di?metro: 3/4 pulgadas; Material: Pvc; Rosca: No; Textura: Liso; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(944,'AH - Tap?n','29643 - 32271','Tap?n Di?metro: 3/4 pulgadas; Material: Pvc; Rosca: No; Textura: Liso; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(945,'AH - Tap?n','4714 - 4897','Tap?n Di?metro: 3/4 pulgadas; Material: Pvc; Tipo: Hembra; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(946,'AH - Tap?n','29672 - 32307','Tap?n Di?metro: 4 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(947,'AH - Tap?n','29670 - 32305','Tap?n Di?metro: 4 Pulgadas(s); Material: Pvc; Rosca: No; Textura: Liso; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(948,'AH - Tap?n','29671 - 32306','Tap?n Di?metro: 4 Pulgadas(s); Material: Pvc; Rosca: Si; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(949,'AH - Tap?n','29669 - 32303','Tap?n Di?metro: 4 Pulgadas(s); Material: Pvc; Rosca: Si; Tipo: Macho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(950,'AH - Tefl?n','44162 - 50868','Tefl?n Ancho: 3/4; Forma: Rollo; Grosor: 0.75 Mil?metro(s); Largo: 10 Pulgadas(s); Uso: Selladora;',0,'Unidad/1 Unidad(es)','ACTIVO'),(951,'AH - Tubo','4718 - 4901','Tubo  Color: Blanco;  Di?metro: 1 Pulgadas;  Material: Pvc;  Uso: Agua potable;',0,'Tubo/6 Metro','ACTIVO'),(952,'AH - Tubo','4719 - 4902','Tubo  Color: Blanco;  Di?metro: 2 Pulgadas;  Material: Pvc;  Uso: Agua potable;',0,'Tubo/6 Metro','ACTIVO'),(953,'AH - Tubo','4717 - 4900','Tubo  Color: Blanco;  Di?metro: 3/4 pulgada;  Largo: 6 Metro;  Material: Pvc;  Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(954,'AH - Tubo','35854 - 39319','Tubo Color: Blanco; Di?metro: 1 1/2 pulgada; Longitud: 6 Metro(s); Material: Pvc; Presi?n m?xima: 250 Libra por Pulgada Cuadrada(s); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(955,'AH - Tubo','35851 - 39317','Tubo Color: Blanco; Di?metro: 1 1/4 pulgadas; Longitud: 6 Metro(s); Material: Pvc; Presi?n m?xima: 250 Libra por Pulgada Cuadrada(s); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(956,'AH - Tubo','29594 - 32220','Tubo Color: Blanco; Di?metro: 1/2 pulgada; Largo: 6 Metro(s); Material: Cpvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(957,'AH - Tubo','35856 - 39321','Tubo Color: Blanco; Di?metro: 2 1/2 pulgada; Longitud: 6 Metro(s); Material: Pvc; Presi?n m?xima: 250 Libra por Pulgada Cuadrada(s); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(958,'AH - Tubo','35859 - 39326','Tubo Color: Blanco; Di?metro: 3 Pulgadas(s); Longitud: 6 Metro(s); Material: Pvc; Presi?n m?xima: 250 Libra por Pulgada Cuadrada(s); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(959,'AH - Tubo','29599 - 32224','Tubo Color: Blanco; Di?metro: 3/4 pulgada; Largo: 6 Metro(s); Material: Cpvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(960,'AH - Tubo','29996 - 32645','Tubo Color: Blanco; Di?metro: 3/4 pulgada; Largo: 6 Metro(s); Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(961,'AH - Tubo','29525 - 32133','Tubo Color: Blanco; Di?metro: 4 Pulgadas(s); Largo: 6 Metro(s); Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(962,'AH - Tubo','29527 - 32135','Tubo Color: Blanco; Di?metro: 6 Pulgadas(s); Largo: 6 Metro(s); Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(963,'AH - Tubo','32182 - 35031','Tubo Color: Blanco; Di?metro: 8 pulgadas; Largo: 6 Metro(s); Material: Pvc;',0,'Unidad/1 Unidad(es)','ACTIVO'),(964,'AH - Tubo de abasto','33340 - 36526','Tubo de abasto Grosor: 3/8 pulgadas; Material: Pl?stico; Uso: Lavamanos;',0,'Unidad/1 Unidad(es)','ACTIVO'),(965,'AH - Tubo','36479 - 40088','Tubo Di?metro: 1 1/2 pulgada; Largo: 6 Metro(s); Material: Pvc; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(966,'AH - Tubo','33275 - 36465','Tubo Di?metro: 1/2 pulgada; Largo: 6 Metro(s); Material: Pvc; Presi?n: 250 Libra por Pulgada Cuadrada(s); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(967,'AH - Tubo','33264 - 36454','Tubo Di?metro: 3 Pulgadas(s); Largo: 6 Metro(s); Material: Pvc; Presi?n: 160 Libra por Pulgada Cuadrada(s); Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(968,'AH - Tubo','33263 - 36453','Tubo Di?metro: 3 Pulgadas(s); Largo: 6 Metro(s); Material: Pvc; Presi?n: 250 Libra por Pulgada Cuadrada(s); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(969,'AH - Tubo','33272 - 36460','Tubo Di?metro: 3/4 pulgada; Largo: 6 Metro(s); Material: Pvc; Presi?n: 250 Libra por Pulgada Cuadrada(s); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(970,'AH - Tubo','53864 - 63530','Tubo Di?metro: 4 Pulgadas(s); Empaque: Elastom?trico; Largo: 6 Metro(s); Material: Pvc; Tipo: Corrugado; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(971,'AH - Tubo','46906 - 54471','Tubo Di?metro: 4 Pulgadas(s); Largo: 20 Metro(s); Material: Pvc; Presi?n: 125 libra por pulgada cuadrada; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(972,'AH - Tubo','33261 - 36452','Tubo Di?metro: 4 Pulgadas(s); Largo: 6 Metro(s); Material: Pvc; Presi?n: 160 Libra por Pulgada Cuadrada(s); Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(973,'AH - Tubo','33260 - 36451','Tubo Di?metro: 4 Pulgadas(s); Largo: 6 Metro(s); Material: Pvc; Presi?n: 250 Libra por Pulgada Cuadrada(s); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(974,'AH - Tubo','34088 - 37326','Tubo Di?metro: 6 Pulgadas(s); Material: Pvc; Presi?n: 250 Libra por Pulgada Cuadrada(s); Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(975,'AH - Uni?n','35878 - 39349','Uni?n Color: Blanco; Di?metro: 1 1/2 pulgadas; Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(976,'AH - Uni?n','35876 - 39345','Uni?n Color: Blanco; Di?metro: 1 1/4 pulgadas; Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(977,'AH - Uni?n','35872 - 39343','Uni?n Color: Blanco; Di?metro: 1 Pulgadas(s); Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(978,'AH - Uni?n','35886 - 39358','Uni?n Color: Blanco; Di?metro: 2 1/2 pulgadas; Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(979,'AH - Uni?n','35883 - 39353','Uni?n Color: Blanco; Di?metro: 2 Pulgadas(s); Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(980,'AH - Uni?n','35892 - 39363','Uni?n Color: Blanco; Di?metro: 3 Pulgadas(s); Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(981,'AH - Uni?n','35871 - 39340','Uni?n Color: Blanco; Di?metro: 3/4 pulgadas; Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(982,'AH - Uni?n','35894 - 39365','Uni?n Color: Blanco; Di?metro: 4 Pulgadas(s); Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(983,'AH - Uni?n','35863 - 39333','Uni?n Color: Blanco; Grosor: 1/2 pulgadas; Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(984,'AH - Uni?n','4729 - 4912','Uni?n Color: Blanco; Grosor: 4\"; Material: Pvc; Uso: Agua potable;',0,'Pieza/1 Unidad(es)','ACTIVO'),(985,'AH - Uni?n','36133 - 39684','Uni?n Conexi?n: Roscada; Di?metro: 1 1/2 pulgadas; Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(986,'AH - Uni?n','36125 - 39674','Uni?n Conexi?n: Roscada; Di?metro: 1 1/4 pulgadas; Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(987,'AH - Uni?n','36109 - 39634','Uni?n Conexi?n: Roscada; Di?metro: 1 pulgada; Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(988,'AH - Uni?n','36451 - 40060','Uni?n Conexi?n: Roscada; Di?metro: 1/2 pulgada; Material: Cpvc; Tipo: Universal; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(989,'AH - Uni?n','36104 - 39628','Uni?n Conexi?n: Roscada; Di?metro: 1/2 pulgadas; Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(990,'AH - Uni?n','36141 - 39691','Uni?n Conexi?n: Roscada; Di?metro: 2 pulgadas; Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(991,'AH - Uni?n','36147 - 39695','Uni?n Conexi?n: Roscada; Di?metro: 3 Pulgadas(s); Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(992,'AH - Uni?n','36111 - 39635','Uni?n Di?metro: 1 1/2 pulgadas; Material: P.v.c.; Tipo: Reparaci?n deslizante; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(993,'AH - Uni?n','36110 - 39633','Uni?n Di?metro: 1 1/4 pulgadas; Material: P.v.c.; Tipo: Reparaci?n deslizante; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(994,'AH - Uni?n','33636 - 36846','Uni?n Di?metro: 1 Pulgadas(s); Material: P.v.c.; Tipo: Reparaci?n; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(995,'AH - Uni?n','57888 - 68704','Uni?n Di?metro: 1/2 pulgada; Material: Pl?stico; Uso: Manguera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(996,'AH - Uni?n','33993 - 37230','Uni?n Di?metro: 1/2 pulgadas; Material: Cpvc; Tipo: Reparaci?n; Uso: Agua caliente;',0,'Unidad/1 Unidad(es)','ACTIVO'),(997,'AH - Uni?n','33638 - 36848','Uni?n Di?metro: 1/2 pulgadas; Material: P.v.c.; Tipo: Reparaci?n; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(998,'AH - Uni?n','36119 - 39669','Uni?n Di?metro: 2 1/2 pulgadas; Material: P.v.c.; Tipo: Reparaci?n deslizante; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(999,'AH - Uni?n','33635 - 36845','Uni?n Di?metro: 2 Pulgadas(s); Material: P.v.c.; Tipo: Reparaci?n; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1000,'AH - Uni?n','36486 - 40098','Uni?n Di?metro: 3 Pulgadas(s); Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1001,'AH - Uni?n','33634 - 36844','Uni?n Di?metro: 3 Pulgadas(s); Material: P.v.c.; Tipo: Reparaci?n; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1002,'AH - Uni?n','33637 - 36847','Uni?n Di?metro: 3/4 pulgadas; Material: P.v.c.; Tipo: Reparaci?n; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1003,'AH - Uni?n','36490 - 40099','Uni?n Di?metro: 4 Pulgadas(s); Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1004,'AH - Uni?n','33632 - 36842','Uni?n Di?metro: 4 Pulgadas(s); Material: P.v.c.; Tipo: Reparaci?n; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1005,'AH - Uni?n','36491 - 40100','Uni?n Di?metro: 6 Pulgadas(s); Material: P.v.c.; Tipo de conexi?n: Liso; Uso: Drenaje;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1006,'AH - Uni?n lisa','33628 - 36838','Uni?n lisa Di?metro: 1 Pulgadas(s); Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1007,'AH - Uni?n lisa','33631 - 36841','Uni?n lisa Di?metro: 1/2 pulgadas; Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1008,'AH - Uni?n lisa','33627 - 36837','Uni?n lisa Di?metro: 2 Pulgadas(s); Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1009,'AH - Uni?n lisa','33626 - 36836','Uni?n lisa Di?metro: 3 Pulgadas(s); Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1010,'AH - Uni?n lisa','33630 - 36840','Uni?n lisa Di?metro: 3/4 pulgadas; Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1011,'AH - Uni?n lisa','33625 - 36833','Uni?n lisa Di?metro: 4 Pulgadas(s); Material: P.v.c.; Tipo: Universal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1012,'AH - V?lvula','44751 - 51574','V?lvula Alto: 10 Pulgadas(s); Flote: Si; Material: Pl?stico; Tipo: Arbolito; Uso: Sanitarios; Varilla: Cobre;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1013,'AH - V?lvula','36145 - 39702','V?lvula Conexi?n: Roscada; Di?metro: 1 1/2 pulgada; Material: Pvc; Tipo: Bola; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1014,'AH - V?lvula','36138 - 39688','V?lvula Conexi?n: Roscada; Di?metro: 1 1/4 pulgada; Material: Pvc; Tipo: Bola; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1015,'AH - V?lvula','36137 - 39690','V?lvula Conexi?n: Roscada; Di?metro: 1 pulgada; Material: Pvc; Tipo: Bola; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1016,'AH - V?lvula','36129 - 39680','V?lvula Conexi?n: Roscada; Di?metro: 1/2 pulgadas; Material: Pvc; Tipo: Bola; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1017,'AH - V?lvula','36153 - 39704','V?lvula Conexi?n: Roscada; Di?metro: 2 1/2 pulgada; Material: Pvc; Tipo: Bola; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1018,'AH - V?lvula','36146 - 39703','V?lvula Conexi?n: Roscada; Di?metro: 2 pulgadas; Material: Pvc; Tipo: Bola; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1019,'AH - V?lvula de descarga','37128 - 40830','V?lvula de descarga Material: Pvc; Tipo: Para tanque bajo; Uso: Sanitarios;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1020,'AH - V?lvula de llenado','37127 - 40829','V?lvula de llenado Material: Pvc; Tipo: Para tanque bajo; Uso: Sanitarios;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1021,'AH - Cincho','32770 - 35738','Cincho Ancho: 2.5 Mil?metro(s); Largo: 10 Pulgadas(s); Material: Pl?stico; Tipo: Ajustable;',0,'Bolsa/100 Unidad(es)','ACTIVO'),(1022,'AH - Cono','4817 - 5021','Cono Color: Naranja; Material: Pl?stico; Tama?o: Mediano; Uso: Para alerta y precauci?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1023,'AH - Llave de bola','53736 - 63380','Llave de bola Material: Pvc; Medida: 2 pulgada (s); Uso: Vapor;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1024,'AH - Careta para protecci?n facial','54577 - 64341','Careta para protecci?n facial Material: Pl?stico; Material del visor: Acr?lico; Tama?o: Est?ndar; Uso: Industrial;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1025,'AH - Tarugo','29925 - 32570','Tarugo Color: Azul; Di?metro: 5/16 pulgadas; Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1026,'AH - Tarugo','37078 - 40771','Tarugo Di?metro: 1/4 pulgadas; Lago: 1 Pulgadas(s); Material: Pl?stico; Uso: Concreto;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1027,'AH - Tubo','32626-35580','Tubo Color: Gris; Di?metro: 1 pulgada; Largo: 3 Metro(s); Material: Pvc; Tipo: Ducto; Uso: Electricidad; ',0,'Unidad/1 Metro','ACTIVO'),(1028,'AH - Uni?n','4730 - 4913','Uni?n Color: Gris; Grosor: 1\"; Material: Pvc; Uso: Electricidad;',0,'Pieza/1 Unidad(es)','ACTIVO'),(1029,'AH - Pegamento','47779 - 55692','Pegamento Consistencia: L?quida; Ingrediente: Adhesivo sint?tico de pol?mero; Secado: R?pido; Uso: Pvc;',0,'Bote/1 Gal?n','ACTIVO'),(1030,'AH - Pegamento','19636 - 55805','Pegamento Consistencia: Pastosa; Material: Ep?xico; Uso: Est?ndar;',0,'Tubo/21 Gramos','ACTIVO'),(1031,'AH - Limpiador de contactos','33870 - 68751','Limpiador de contactos Aplicador: Spray; Tipo: Diel?ctrico;',0,'Envase/283 Gramos','ACTIVO'),(1032,'AH - Silic?n','20147 - 21122','Silic?n Color: Blanco; Grados: 500; Material: Compuesto diel?ctrico t?rmico; T?mperatura m?xima: 500; T?mperatura m?nima: -40; Uso: Alta temperatura;',0,'Tubo/70 Gramos','ACTIVO'),(1033,'AH - Roldana','20590 - 21565','Roldana Di?metro: 3/8 pulgadas; Largo: 2 1/4 pulgadas; Material: Acero inoxidable; Tipo: De presi?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1034,'AH - Roldana','20579 - 21564','Roldana Di?metro: 3/8 pulgadas; Largo: 2 1/4 pulgadas; Material: Acero inoxidable; Tipo: Plana;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1035,'AH - Roldana','73210-86999 ','Roldana Di?metro: 3/4; Material: Acero inoxidable; Tipo: Plana;',0,'Unidad(1 Unidad(es)) ','ACTIVO'),(1036,'AH - Roldana','20597-21572','Roldana Di?metro: 5/8 pulgadas; Largo: 2 1/2 pulgadas; Material: Acero inoxidable; Tipo: Plana;',0,'Unidad(1 Unidad(es)) ','ACTIVO'),(1037,'AH - Cedazo','61739 - 74120','Cedazo  Alto: 72 Pulgadas;  Ancho de perforaci?n: 1 ;  Material: Metal;',0,'Rollo/33 Yarda','ACTIVO'),(1038,'AH - Cheque','50018 - 58641','Cheque Di?metro: 2 Pulgadas(s); Material: Bronce; Tipo: Horizontal; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1039,'AH - Cheque','50407 - 59089','Cheque Di?metro: 2 Pulgadas(s); Material: Bronce; Tipo: Vertical; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1040,'AH - Codo','50974 - 59929','Codo ?ngulo: 45 grados; Di?metro: 4 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1041,'AH - Codo','50978 - 59933','Codo ?ngulo: 90 grados; Di?metro: 4 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1042,'AH - Contrallave','50875 - 59824','Contrallave Di?metro de entrada: 1/2 pulgada; Di?metro de salida: 3/8 pulgada; Material: Metal cromado; Tipo: Al piso;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1043,'AH - Contrallave','41843 - 47178','Contrallave Di?metro: 1/2 pulgada; Material: Bronce; Tipo: Pared;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1044,'AH - Copla con rosca','50785 - 59733','Copla con rosca Grosor: 4 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1045,'AH - Kit de accesorio para sanitario','51569 - 60614','Kit de accesorio para sanitario Flote: Pl?stico; Manecilla: Metal cromado; Tama?o: Est?ndar; Varilla: Bronce;',0,'Kit/1 Unidad(es)','ACTIVO'),(1046,'AH - Manecilla (manija)','50802 - 59750','Manecilla (manija) Material: Bronce; Uso: Sanitario;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1047,'AH - Sif?n cacho','33543 - 60844','Sif?n cacho Di?metro: 1 1/2  pulgadas; Material: Metal; Uso: Lavatrastos;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1048,'AH - Sif?n','33544 - 36756','Sif?n Di?metro: 1 1/2  pulgadas; Material: Metal; Uso: Lavatrastos;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1049,'AH - Sif?n','49546 - 58046','Sif?n Di?metro: 1 1/4 pulgadas; Material: Metal cromado; Uso: Lavamanos;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1050,'AH - Tap?n','50525 - 59240','Tap?n Clase: Con rosca; Di?metro: 4 Pulgadas(s); Material: Hierro galvanizado (hg); Tipo: Macho; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1051,'AH - Tap?n','51383 - 60415','Tap?n Di?metro: 2 Pulgadas(s); Material: Hierro galvanizado (hg); Rosca: Si; Tipo: Hembra; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1052,'AH - Tap?n','51379 - 60411','Tap?n Di?metro: 2 Pulgadas(s); Material: Hierro galvanizado (hg); Rosca: Si; Tipo: Macho; Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1053,'AH - V?lvula','50940 - 59892','V?lvula Grosor: 1 Pulgadas(s); Material: Bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1054,'AH - V?lvula','50968 - 59923','V?lvula Grosor: 1/2 pulgada; Material: Bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1055,'AH - V?lvula','50936 - 59888','V?lvula Grosor: 3/4 pulgadas; Material: Bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1056,'AH - Varilla','58078 - 68932','Varilla  Di?metro: 1/2 pulgadas;  Largo: 1 Metro;  Material: Acero;  Tipo: Roscada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1057,'AH - Varilla','65340 - 78620','Varilla  Di?metro: 3/8 pulgada;  Largo: 1 Metro;  Material: Metal;  Tipo: Roscada;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1058,'AH - Abrazadera','49168 - 57585','Abrazadera Grosor: 2 pulgada; Largo: 2 pulgada; Material: Metal; Tipo: Cincho;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1059,'AH - Acople','50227 - 58902','Acople Di?metro: 3/4 pulgada; Material: Hierro galvanizado; Tipo: Spud; Uso: Mingitorio;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1060,'AH - Adaptador','50274 - 58952','Adaptador Contiene: Rosca; Di?metro: 3/4 pulgadas; Material: Bronce; Tipo: Hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1061,'AH - Adaptador','42924 - 48730','Adaptador Material: Metal; Tama?o: 1 Pulgadas(s); Uso: Conector para hembra;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1062,'AH - Codo','50972 - 59927','Codo ?ngulo: 45 grados; Di?metro: 2 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1063,'AH - Codo','50981 - 59937','Codo ?ngulo: 90 grados; Di?metro: 2 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1064,'AH - Codo','50956 - 59909','Codo ?ngulo: 90 grados; Di?metro: 3/4 pulgada; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1065,'AH - Conexi?n tee','66376 - 79754','Di?metro: 1/2 pulgada; Material: Hierro galvanizado (hg);',0,' Unidad/ 1 Unidad','ACTIVO'),(1066,'AH - Codo','50976 - 59931','Codo ?ngulo: 90 grados; Di?metro: 1/2 pulgadas; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1067,'AH - Conexi?n tee','50368 - 59049','Conexi?n tee Di?metro: 1 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1068,'AH - Conexi?n tee','50748 - 59691','Conexi?n tee Di?metro: 2 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1069,'AH - Copla con rosca','50420 - 59112','Copla con rosca Grosor: 1 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1070,'AH - Copla con rosca','50783 - 59731','Copla con rosca Grosor: 1/2 pulgada; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1071,'AH - Copla con rosca','50415 - 59103','Copla con rosca Grosor: 2 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1072,'AH - Copla con rosca','50786 - 59734','Copla con rosca Grosor: 3/4 pulgada; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1073,'AH - Niple','50240 - 58915','Niple Di?metro: 1 1/4 pulgada; Largo: 2 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1074,'AH - Niple','50378 - 59059','Niple Di?metro: 1/2 pulgada; Largo: 2 pulgada; Material: Hierro galvanizado;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1075,'AH - Niple','50330 - 59010','Niple Di?metro: 3/4 pulgada; Largo: 6 Pulgadas(s); Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1076,'AH - Punz?n de fijaci?n','60997 - 73127','Punz?n de fijaci?n  Di?metro: 3/8 pulgadas;  Largo: 6 Pulgadas;  Material: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1077,'AH - Reducidor bushing','50642 - 59508','Reducidor bushing Di?metro: 4 a 2 pulgadas; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1078,'AH - Reducidor bushing','51111 - 60100','Reducidor bushing Di?metro: 4 a 3 pulgadas; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1079,'AH - Reducidor','51063 - 60034','Reducidor Di?metro: 1 a 1/2 pulgada; Material: Hierro galvanizado (hg);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1080,'AH - Reposadera','51294 - 60314','Reposadera Ancho: 10 Cent?metro(s); Forma: Cuadrada; Largo: 10 Cent?metro(s); Material: Bronce;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1081,'AH - Tuerca','43389 - 49687','Tuerca Di?metro: 3/8 pulgadas; Material: Galvanizada; Tipo: Hexagonal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1082,'AH - Mezcladora de dos aguas ','33517 - 36726','Agujeros del lavado: 1; Di?metro: 1/2 pulgada; Material: Metal cromado; Tipo: Monomando;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1083,'AH - V?lvula','61408 - 73648','V?lvula  Di?metro: 1 pulgada;  Material: Bronce;  Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1084,'AH - V?lvula','50911 - 59861','V?lvula Di?metro: 2 Pulgadas(s); Material: Hierro; Tipo: Bola;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1085,'AH - V?lvula','50478 - 59170','V?lvula Di?metro: 3/4 pulgada; Material: Hierro; Tipo: Bola;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1086,'AH - V?lvula con flange','54028',' Di?metro: 6 Pulgadas;  Material: Bronce;  Uso: Agua potable;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1087,'AH - V?lvula con flange','51076','Di?metro: 4 Pulgadas(s); Material: Hierro y bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1088,'AH - V?lvula con flange','ph','Di?metro: 3 Pulgadas(s); Material: Hierro y bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1089,'AH - V?lvula con flange','ph','Di?metro: 8 Pulgadas(s); Material: Hierro y bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1090,'AH - V?lvula con flange','ph','Di?metro: 2 1/2 Pulgadas(s); Material: Hierro y bronce; Tipo: Compuerta;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1091,'AH - Esp?tula','33148 - 36301','Esp?tula Mango: Madera; Material: Metal; Tama?o: 3 Pulgadas(s);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1092,'AH - Azad?n','47631 - 55504','Azad?n Ancho: 12 Pulgadas(s); Cabo: 1.5 Metro(s); Material: Acero; Material cabo: Madera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1093,'AH - Calibrador vernier (cartab?n de corredera)','62935 - 75750','Calibrador vernier (cartab?n de corredera)  Graduaci?n dual: En mil?metros y pulgadas;  Mandubilas: Acero endurecido  finamente rectificadas;  Material: Acero inoxidable;  Pantalla: Lcd;  Precisi?n: Conforme din 862;  Tama?o: 6 Pulgadas;  Tipo: Digital;  ',0,'Unidad/1 Unidad(es)','ACTIVO'),(1094,'AH - Cepillo','50260 - 58936','Cepillo Ancho: 45 Mil?metro(s); Largo: 290 Mil?metro(s); Material: Acero;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1095,'AH - Cincel','42064 - 47454','Cincel Ancho: 3/4 pulgada; Largo: 10 Pulgadas(s); Material: Metal; Tipo: C?nico; Uso: Construcci?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1096,'AH - Cuchilla','54480 - 64226','Cuchilla Incluye: Repuesto; Largo: 7 Pulgadas(s); Mango: Pl?stico; Material: Acero inoxidable; Tipo: Retr?ctil;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1097,'AH - Esp?tula para alba?iler','58990 - 70052','Esp?tula para alba?iler?a  Ancho de la hoja: 2 1/2 pulgadas;  Material: Hoja de acero inoxidable y mango de madera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1098,'AH - Martillo','55811 - 65930','Martillo Cabeza: Hule; Mango: Madera; Peso: 20 Onza(s); Tipo: Bola;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1099,'AH - Nivel','55723 - 65791','Nivel Largo: 12 Pulgadas(s); Material: Aluminio; Tipo: Burbuja; Uso: Construcci?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1100,'AH - Nivel','34288 - 37541','Nivel Largo: 25 Pulgadas(s); Material: Aluminio; Tipo: Burbuja;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1101,'AH - Pala','1737 - 2057','Pala Cabo: No; Tama?o: Est?ndar; Tipo punta: Redonda;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1102,'AH - Pistola','52886 - 62290','Pistola Material: Metal; Tama?o de cartucho: Est?ndar; Uso: Silic?n sellador;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1103,'AH - Sierra','46170 - 53391','Sierra Largo: 12 pulgada; Material: Acero; Tipo de diente: Fino;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1104,'AH - Torqu?metro de aguja','62748 - 75512','Torqu?metro de aguja  Capacidad: 0-150 libras/pie;  Largo: 20 pulgadas;  Tama?o de encastre: 1/2 pulgadas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1105,'AH - Marco para sierra','41918 - 47262','Marco para sierra Largo: 12 Pulgadas(s); Material: Metal;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1106,'AH - Sierra diente ordinario','46377 - 53644','Sierra diente ordinario Largo: 12 Pulgadas(s); Material: Acero; Uso: Corte;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1107,'AH - Escoba para jardiner','49150 - 57561','Escoba para jardiner?a Dientes: Met?lico; Largo: 80 Cent?metro(s); Mango: Madera;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1108,'AH - Cepillo','61484 - 73739','Cepillo  Di?metro: 20 Pulgadas;  Material de las cerdas: Metal;  Uso: Limpieza de parrillas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1109,'AH - Lavatrastos','51769 - 61033','Lavatrastos Alas: 0; Incluye: Canasta de drenaje y llave mezcladora; Material de fabricaci?n: Acero inoxidable; Pocetas: 2;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1110,'AH - Extensi?n','5205 - 30604','Extensi?n Color: Naranja; Largo: 5 Metro(s); Uso: El?ctrica;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1111,'AH - Brocha','32011 - 34857','Brocha Mango: Madera; Pelo: Maguey; Tama?o: 2 Pulgadas(s); Uso: Varios (aplicar estucos a la cal, sustancias ?cidas, aplicar pegamentos ep?xicos; mezclar pintura, etc.);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1112,'AH - Brocha','32013 - 34859','Brocha Mango: Madera; Pelo: Maguey; Tama?o: 3 Pulgadas(s); Uso: Varios (aplicar estucos a la cal, sustancias ?cidas, aplicar pegamentos ep?xicos; mezclar pintura, etc.);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1113,'AH - Brocha','32015 - 34861','Brocha Mango: Madera; Pelo: Maguey; Tama?o: 5 Pulgadas(s); Uso: Varios (aplicar estucos a la cal, sustancias ?cidas, aplicar pegamentos ep?xicos; mezclar pintura, etc.);',0,'Unidad/1 Unidad(es)','ACTIVO'),(1114,'AH - Lija para metal','36084 - 39599','Lija para metal Calibre: 180;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1115,'AH - Lija para metal','49701 - 58260','Lija para metal Calibre: 50;',0,'Pliego/1 Unidad(es)','ACTIVO'),(1116,'AH - Limat?n','53760 - 63404','Limat?n Longitud: 12 Pulgadas(s); Material: Hierro endurecido; Punta: Redonda; Uso: Limar superficies metalicas;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1117,'AH - Medidor de nivel de agua','pH','Medidor de nivel de agua utiliza un marcador l?ser con cinta plana, que est? marcando con precisi?n todos los pies 1/100 o cada mm,es certificado y compatible con los est?ndares internacionales. la sonda sumergible es ideal para medir la profundidad total',0,'Unidad/ 1 Unidad(es)','ACTIVO'),(1118,'AH - Medidor de nivel de agua','pH','Medidor de nivel de agua utiliza un marcador l?ser con cinta plana, que est? marcando con precisi?n todos los pies 1/100 o cada mm,es certificado y compatible con los est?ndares internacionales. la sonda sumergible es ideal para medir la profundidad total',0,'Unidad/ 1 Unidad(es)','ACTIVO'),(1119,'AH - Bomba sumergible','ph','Bomba sumergible Altura manom?trica: 65 Pies(s); Caudal: 2300 litros por hora; Descarga: 2 Pulgadas(s); Di?metro de bomba: 6 Pulgadas(s); Material: Acero inoxidable; Potencia: 1.5 Caballos de Fuerza(s); 1F - 120 V con carga de 0.6KW; Para Aguas residuales',0,'Unidad (1 Unidad(es))','ACTIVO'),(1120,'AH - Bomba sumergible','ph','Bomba sumergible Altura manom?trica: 65 Pies(s); Caudal: 2300 litros por hora; Descarga: 2 Pulgadas(s); Di?metro de bomba: 6 Pulgadas(s); Material: Acero inoxidable; Potencia: 3/4 Caballos de Fuerza(s); 3F - 208 V con carga de 1.25KW y 10A; Para Aguas res',0,'Unidad (1 Unidad(es))','ACTIVO'),(1121,'AH - Embudo','62223-74816','Embudo alto: 23 Cent?metro; Ancho: 22 Cent?metro; Boquilla: 17 Mil?metro; Material: Pl?stico;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1122,'AH - Bomba de trasiego','56220-66469','Bomba de trasiego Accionamiento: Manual; Di?metro de tubo: 2.25 Cent?metro(s); Largo de manguera: 1.2 Metro(s); Largo del tubo: 85 Cent?metro(s); Material: Pl?stico; Tipo: Sif?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1123,'AH - Digestor de materia org?nica para dep?sitos s?pticos','66803-80251','Digestor de materia org?nica para dep?sitos s?pticos Contiene: Microorganismos, neutralizadores, surfactantes, almacenadores intermedia, enzimas; Estado: Polvo; ',0,'Envase(300 Gramos)','ACTIVO'),(1124,'AH - Pegamento','47778-55691 ','Pegamento Consistencia: Viscosa; Ingrediente: Adhesivo sint?tico de pol?mero; Secado: R?pido; Uso: Pvc;',0,'Bote(1 Gal?n) ','ACTIVO'),(1125,'AH - Junta de expansi?n','61437-73679','Junta de expansi?n Di?metro: 4 Pulgadas; Material: Hierro; Tipo: Dresser; Uso: Promer?a; ',0,'Unidad(1 Unidad(es))','ACTIVO'),(1126,'AH - Uni?n','50892-59841','Uni?n Di?metro: 2 Pulgadas(s); Material: Hierro galvanizado (hg); Tipo: Universal; Uso: Agua potable;',0,'Unidad(1 Unidad(es))','ACTIVO'),(1127,'AH - Bater','56320-66612','Bater?a Clase: C; Forma: Cil?ndrica; Material: Alcalino; Tipo: Recargable; Voltaje: 1.5 Voltio;',0,'Paquete(2 Unidad(es))','ACTIVO'),(1128,'AH - Kit de reactivos para an?lisis en agua','52533-61859','Kit de reactivos para an?lisis en agua Cantidad de reacitvos del kit: 9; Distribuci?n del kit: Cloro residual, sulfatos, nitratos, nitritos, metales pesados, demanda qu?mica de oxigeno (dqo), fosforo total, nitr?geno total, carbono org?nico total.;',0,'Unidad(1 Unidad(es))','ACTIVO'),(1129,'AB-Wipe','4657 - 36614','Wipe Color: Blanco; Tipo: Bola;',0,'Bola/1 Libra','ACTIVO'),(1130,'AB-Silic?n','33531 - 77744','Silic?n Color: Blanco; Uso: Sellador;',0,'Tubo/300 Mililitro','ACTIVO'),(1131,'AB-Thinner','71009 - 84589','Thinner  Clase: Diel?ctrico;  Consistencia: L?quida;  Uso: El?ctrico;',0,'Envase/1 Gal?n','ACTIVO'),(1132,'AB-Thinner','3617 - 4279','Thinner Clase: Laca; Tipo: Transparente;',0,'Envase/1 Gal?n','ACTIVO'),(1133,'AB-Grasa de silicona','56354 - 66710','Grasa de silicona Estado: Pastoso; Tipo: G661; Uso: General;',0,'Tubo/11 Onza','ACTIVO'),(1134,'AB-Aceite','40055 - 44651','Aceite Estado: Liquido; Propiedades: Ablandador, lubricante y anticorrosivo; Tipo: Spray;',0,'Bote/11 Onza','ACTIVO'),(1135,'AB-Aceite lubricante','31056 - 53093','Aceite lubricante Estado: L?quido; Propiedades: Anticorrosivo; Tipo: Multiusos 3 en 1;',0,'Envase/1 Litro','ACTIVO'),(1136,'AB-Cincho','47414 - 55179','Cincho Ancho: 5 Mil?metro(s); Largo: 10 Pulgadas(s); Material: Pl?stico; Tipo: Ajustable;',0,'Bolsa/100 Unidad(es)','ACTIVO'),(1137,'AB-Cinta de tefl?n','29953 - 32598','Cinta de tefl?n Ancho: 1/2 pulgadas;',0,'Carrete/10 Metro','ACTIVO'),(1138,'AB-Cinta de tefl?n','28139 - 30666','Cinta de tefl?n Ancho: 3/4 pulgadas;',0,'Carrete/10 Metro','ACTIVO'),(1139,'AB-Adhesivo','49267 - 57712','Adhesivo Clase: Ep?xico; Componentes: A+b; Tipo: Gel;',0,'Lata/1 Kilogramos','ACTIVO'),(1140,'AB-Adhesivo epoxi tixotr?pico','45930 - 53112','Adhesivo epoxi tixotr?pico Clase: Alta resistencia; Componente: A+b; Consistencia: Pastosa;',0,'Lata/1 Kilogramos','ACTIVO'),(1141,'AB-Adhesivo instant?neo','45524 - 52639','Adhesivo instant?neo Composici?n: Cianoacrilato de etilo; Estado: L?quido;',0,'Bote/5 Gramos','ACTIVO'),(1142,'AB-Desengrasante','49871 - 64845','Desengrasante Biodegradable: Si; Concentracion: 95 %; Estado: Liquido; Uso: Multiusos;',0,'Envase/1 Gal?n','ACTIVO'),(1143,'AB-Limpiador','38200 - 42221','Limpiador Consistencia: L?quida; Uso: Piezas de aluminio y acero inoxidable;',0,'Envase/1 Gal?n','ACTIVO'),(1144,'AB-Limpiador y pulidor','36881 - 42220','Limpiador y pulidor Tipo: Spray/aerosol; Uso: Piezas de acero inoxidable;',0,'Envase/495 Mililitro','ACTIVO'),(1145,'AB-Espuma limpiadora','36149 - 39699','Espuma limpiadora Aplicador: Spray; Uso: Circuitos electricos;',0,'Envase/454 Mililitro','ACTIVO'),(1146,'AB-Limpia contactos','5503 - 29036','Limpia contactos Aplicador: Spray; Uso: Computadora y equipos el?ctricos;',0,'Envase/590 Mililitro','ACTIVO'),(1147,'AB-Limpiador para equipo medico','s/c','uso: limpiador; Caracter?stica: Limpia sin da?ar las superficies; Elimina bacterias del ?rea donde se aplique; Grado: Medico',0,'Unidad','ACTIVO'),(1148,'AB-Aire','28829-86381','Envase: Met?lico; Tipo: Comprimido; Uso de referencia: Limpieza de computo',0,'Bote(590 Mililitro)','ACTIVO'),(1149,'AB-Bater','8134','BATERIA AA ALCALINA',0,'Unidad/1 Unidad(es)','ACTIVO'),(1150,'AB-Bater','8137','BATERIA AAA ALCALINA',0,'Unidad/1 Unidad(es)','ACTIVO'),(1151,'AB-Bulbo','102370-119450','Potencia: 150 Vatio; Tipo: Hal?geno;',0,'Unidad(1 Unidad(es))','ACTIVO'),(1152,'AB-Tubo fluorescente','42346-47972 ','Base: G13; Potencia: 15 Vatio(s); Tama?o: T8; Tipo de luz: Luz de d?a; Uso: Iluminaci?n;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1153,'AB-Repuestos y accesorios en general','S/C','Repuestos y accesorios en general',0,'Unidad/1 Unidad(es)','ACTIVO'),(1154,'AB-Lija para metal','36084 - 39599','Lija para metal Calibre: 180;',0,'Unidad/1 Unidad(es)','ACTIVO'),(1155,'AB-Lija para metal','49576 - 58104','Lija para metal Calibre: 500;',0,'Pliego/1 Unidad(es)','ACTIVO'),(1156,'AB-Cinta de aislar','61523 - 73791','Cinta de aislar  Ancho: 3/4 pulgadas;  Largo: 10 Metro;  Material: Goma;  Tipo: Autosoldable (vulcanizada);',0,'Unidad/1 Unidad(es)','ACTIVO');
/*!40000 ALTER TABLE `insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multimedia_equipo`
--

DROP TABLE IF EXISTS `multimedia_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multimedia_equipo` (
  `idmultimedia` int(11) NOT NULL AUTO_INCREMENT,
  `video` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `idequipo` varchar(16) COLLATE latin1_general_cs NOT NULL,
  `descripcion_multimedia` varchar(400) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idmultimedia`),
  KEY `fk_multimedia_equipo_equipo1_idx` (`idequipo`),
  CONSTRAINT `fk_multimedia_equipo_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multimedia_equipo`
--

LOCK TABLES `multimedia_equipo` WRITE;
/*!40000 ALTER TABLE `multimedia_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `multimedia_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naturaleza_peligro`
--

DROP TABLE IF EXISTS `naturaleza_peligro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `naturaleza_peligro` (
  `idnaturaleza_peligro` int(11) NOT NULL AUTO_INCREMENT,
  `naturaleza_peligro` varchar(100) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idnaturaleza_peligro`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naturaleza_peligro`
--

LOCK TABLES `naturaleza_peligro` WRITE;
/*!40000 ALTER TABLE `naturaleza_peligro` DISABLE KEYS */;
INSERT INTO `naturaleza_peligro` VALUES (1,'Caidas de diferentes alturas'),(2,'Fisicos'),(3,'Choque Electrico'),(4,'Caida del ejecutante'),(5,'Corrosivo'),(6,'Tóxico'),(7,'Inflamable'),(8,'Combustible'),(9,'Asfixiante'),(10,'Irritante'),(11,'Radiación'),(12,'Piso resbaladizo'),(13,'Alta presión'),(14,'Alta temperatura'),(15,'Proyección de fragmentos o partículas'),(16,'Ruido excesivo'),(17,'Quemaduras'),(18,'Exceso de peso'),(19,'Enfermedades infectocontagiosas'),(20,'Presencia de polvo'),(21,'Presencia de vapores'),(22,'Presencia de gases y líquidos contaminantes'),(23,'Desechos bioinfecciosos'),(24,'Riesgos ambientales');
/*!40000 ALTER TABLE `naturaleza_peligro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacion`
--

DROP TABLE IF EXISTS `notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacion` (
  `idnotificacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_noti` text COLLATE latin1_general_cs,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `rutina_mantenimiento_idrutina_mantenimiento` int(11) NOT NULL,
  `estado_notificacion` varchar(400) COLLATE latin1_general_cs DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `textColor` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `title` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idnotificacion`),
  KEY `fk_notificacion_rutina_mantenimiento1_idx` (`rutina_mantenimiento_idrutina_mantenimiento`),
  CONSTRAINT `fk_notificacion_rutina_mantenimiento1` FOREIGN KEY (`rutina_mantenimiento_idrutina_mantenimiento`) REFERENCES `rutina_mantenimiento` (`idrutina_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacion`
--

LOCK TABLES `notificacion` WRITE;
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parte_equipo`
--

DROP TABLE IF EXISTS `parte_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parte_equipo` (
  `idparte_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_parte` varchar(400) COLLATE latin1_general_cs NOT NULL,
  `num_parte` varchar(45) COLLATE latin1_general_cs NOT NULL,
  `descripcion` varchar(450) COLLATE latin1_general_cs DEFAULT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idparte_equipo`),
  KEY `fk_parte_equipo_equipo1_idx` (`idequipo`),
  CONSTRAINT `fk_parte_equipo_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parte_equipo`
--

LOCK TABLES `parte_equipo` WRITE;
/*!40000 ALTER TABLE `parte_equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `parte_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso_trabajo`
--

DROP TABLE IF EXISTS `permiso_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso_trabajo` (
  `idpermiso_trabajo` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `num_permiso` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `idsolitud_trabajo` int(11) NOT NULL,
  PRIMARY KEY (`idpermiso_trabajo`),
  KEY `fk_permiso_trabajo_solitud_trabajo1_idx` (`idsolitud_trabajo`),
  CONSTRAINT `fk_permiso_trabajo_solitud_trabajo1` FOREIGN KEY (`idsolitud_trabajo`) REFERENCES `solitud_trabajo` (`idsolitud_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso_trabajo`
--

LOCK TABLES `permiso_trabajo` WRITE;
/*!40000 ALTER TABLE `permiso_trabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `permiso_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precaucion_ejecutante`
--

DROP TABLE IF EXISTS `precaucion_ejecutante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precaucion_ejecutante` (
  `idprecaucion_ejecutante` int(11) NOT NULL AUTO_INCREMENT,
  `precaucion_ejecutante` varchar(100) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idprecaucion_ejecutante`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precaucion_ejecutante`
--

LOCK TABLES `precaucion_ejecutante` WRITE;
/*!40000 ALTER TABLE `precaucion_ejecutante` DISABLE KEYS */;
INSERT INTO `precaucion_ejecutante` VALUES (1,'Proteccion de la cabeza'),(2,'Mascarilla: Filtro--Autónomo--Soldadura--Polvo'),(3,'Protección ocular'),(4,'Protección contra ruido'),(5,'Protección facial'),(6,'Guantes: Latex--Neopreno--Clínicos--de Cuero/Tela'),(7,'Uso de bata o delantal de protección'),(8,'Cinturón y arnés de seguridad'),(9,'Extinguidores: PQS--CO2--H2O'),(10,'Evitar personal abajo del área de trabajo'),(11,'Verificar acceso fijo (escaleras)'),(12,'Proteger equipos Adyacentes'),(13,'Hacer protección de cortina de agua'),(14,'Iluminación a prueba de explosión'),(15,'Utilizar herramienta anti-chispa'),(16,'Hombre alerta'),(17,'Equipo respiración autónoma'),(18,'Botiquín en área y ventilación artificial');
/*!40000 ALTER TABLE `precaucion_ejecutante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precaucion_responsable`
--

DROP TABLE IF EXISTS `precaucion_responsable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precaucion_responsable` (
  `idprecaucion_responsable` int(11) NOT NULL AUTO_INCREMENT,
  `precaucion_responsable` varchar(100) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idprecaucion_responsable`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precaucion_responsable`
--

LOCK TABLES `precaucion_responsable` WRITE;
/*!40000 ALTER TABLE `precaucion_responsable` DISABLE KEYS */;
INSERT INTO `precaucion_responsable` VALUES (1,'Señalizar area de trabajo'),(2,'Suspender servicio médico'),(3,'Parar, despresurizar y drenar circuito'),(4,'Bloqueo mecánico a entradas y salidas de fluidos'),(5,'Bloqueo eléctrico y desenergizar'),(6,'Aplicar candado en tablero eléctrico'),(7,'Incrementar ventilación'),(8,'Avisar al personal de otra área'),(9,'Conectar a tierra el sistema o herramienta'),(10,'Descontaminación del equipo y área de trabajo'),(11,'Monitorear atmósfera'),(12,'Nivel de explosividad LEL __________%'),(13,'Concentración de otros gases:_________%');
/*!40000 ALTER TABLE `precaucion_responsable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `direccion_proveedor` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `telefono_proveedor` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `fax_proveedor` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `correo_proveedor` varchar(100) COLLATE latin1_general_cs DEFAULT NULL,
  `contacto_proveedor` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'DIAGONAL 11 D 12-47 ZONA 1, QUETZALTENANGO ','5978-1229 ',NULL,'ewccojomcoti@hotmail.com ','ELVIS WALDEMAR COJOM COTI - C-ARQ - CIVIL '),(2,'CALLE PRINCIPAL XOLQUIAC LA ESTANCIA, CANTEL, QUETZALTENANGO ','5696-4898 ',NULL,'qanilconstructora@hotmail.com ','ELMER MORALES ALVARADO - QANIL CONSTRUCTORA - CIVIL '),(3,'DIAGONAL 6 14-43 ZONA 10, GUATEMALA ','5202-7681 ',NULL,'salvador.esquivel@persoñuz.com ','SALVADOR ESQUIVEL - PERSILUZ - ARQUITECTURA, CIVIL '),(4,'5A. CALLE 15-30, ZONA 3 QUETZALTENANGO ','4250-8401 ',NULL,'atencionalcliente@deseretsa.com ','DESERET - CARLOS HUMBERTO CALDERON - PUERTAS DE MADERA - ARQUITECTURA,CIVIL '),(5,'DIAGONAL 12 25B-12 ZONA 1, QUETZALTENANGO ','4022-0190 ',NULL,'rudyoroxom@aluminiosdeoccidente.com ','ALUMINIOS DE OCCIDENTE - RUDY OROXOM - ARQUITECTURA, CIVIL '),(6,'2DA. CALLE 15-12 ZONA 3, QUETZALTENANGO ','5843-2560 ','7765-0426 ','pablo.ramos@cromerck.com ','COMEX LA DEMOCRACIA - JUAN PABLO RAMOS - PINTURA - ARQUITECTURA,CIVIL '),(7,'CIUDAD DE GUATEMALA ','520-4389 ',NULL,'ventasartex@yahoo.com ','ARTEX- INGRID FIGUEROA - ARQUITECTURA '),(8,'ZONA 3  QUETZALTENANGO ','4033-0545 ',NULL,'ideemedia@gmail.com ','IDEEMEDIA-DIEGO OCHOA - ARQUITECTURA '),(9,'LOTE 190 SECTOR 2 CARRETERA ALDEA EL ZAPOTE VILLA CANALES ','5645-2032 ',NULL,'jardinesutzkatok@gmail.com ','K-ATOK-GLADIS GONZALES - ARQUITECTURA '),(10,'18-40, Ofibodegas Centro 5, Bodega 29, Calzada la Paz, Guatemala ','2336-7766  ',NULL,NULL,'JESUS NUÑEZ  /   ALMA MUÑOZ  - BIO-NUCLEAR DE GUATEMALA, S.A. '),(11,'2a. Calle 4-08 zona 10 Guatemala, C.A. 01001 ','2428-9834 ',NULL,NULL,'ING. RUDY YAC - COMPAÑÍA DE EQUIPO MÉDICO HOSPITALARIO, S.A. (CASA MÉDICA) '),(12,'17 Calle \"A\" 18-57 zona 10 Guatemala, Guatemala ','2379-7888 ',NULL,NULL,'GABRIELA DE LEÓN - CORPORACIÓN ANALYTICOS, S.A. '),(13,'17 Av. 4-06 Z.11 Col. Miraflores, Guatemala ','2216-2722 ',NULL,NULL,'JULIO CESAR GARCIA DUEÑAS - CORPORACIÓN ANSARO, S.A. '),(14,'GUATEMALA, GUATEMALA ','2500-71311 ','2500-7100 ',NULL,'ING. FRANCISCO GIRON - CORPORACIÓN NOBLE, S.A. DE C.V. '),(15,'12 Av. C-35 Local 101 Zona 1, Quetzaltenango, Guatemala. ','2380-7474 ',NULL,NULL,'LEONEL FRANCO/NUBIA ALVAREZ - DEPOSITO DENTAL DENTECO, S.A. '),(16,'GUATEMALA, GUATEMALA ','7736-8826 ',NULL,NULL,'JUAN DIEGO PRECIADO DE LEÓN - DESARROLLO PROYECTOS Y SERVICIOS AGROPECUARIOS (DAGROP) '),(17,'GUATEMALA, GUATEMALA ','2319-3477 ',NULL,NULL,'BRENDA LLAMAS - DISS GUATEMALA, S. A. EN CONSORCIO CON DIAGNOSTIC IMAGING SUPPLIES & SERVICES,  INC. '),(18,'GUATEMALA, GUATEMALA ','2318-4018 ',NULL,NULL,'JONATHAN OJEDA - DISTRIBUIDORA DE LABORATORIO Y EQUIPO INSTITUCIONAL, S.A. (DILAB, S.A.) '),(19,'GUATEMALA, GUATEMALA ','2314-7070 ',NULL,NULL,'CESAR MÉNDEZ - EQUIPOS PARA HOSPITALES Y MEDICINAS, S.A. '),(20,'GUATEMALA, GUATEMALA ','2314-7070 ',NULL,NULL,'CESAR MÉNDEZ - HOSPIFARMACIA, S.A. '),(21,'GUATEMALA, GUATEMALA ','2317-2121 ',NULL,NULL,'WILFREDO GARCÍA - IMPORTADORA MÉDICA, FARMACÉUTICA, ODONTOLÓGICA, HOSPITALARIA, S.A. '),(22,'GUATEMALA, GUATEMALA ','2418-2813 ',NULL,NULL,'MARCO ANTONIO LOCON  - INNOVACIONES MÉDICAS, S.A. '),(23,'GUATEMALA, GUATEMALA ','2337-3971 ',NULL,NULL,'RICARDO SMITH - INNOVACIONES NOVEDOSAS UNIVERSALES, S.A. (INNOVU) '),(24,'GUATEMALA, GUATEMALA ','2310-8310 ',NULL,NULL,'LIC. MARLON STUARDO ORELLANA RECINOS - INTRACARE, S.A. '),(25,'GUATEMALA, GUATEMALA ','2334-2509 ',NULL,NULL,'JORGE MARIO AQUINO HERNÁNDEZ - JORMAR, S.A.  '),(26,'GUATEMALA, GUATEMALA ','2495-1111 ',NULL,NULL,'JUAN CARLOS DARDON NAVAS  - MDT INTERNACIONAL, S.A. (TECNOCHEF) '),(27,'GUATEMALA, GUATEMALA ','2333-7260 ',NULL,NULL,'MARIO RENÉ GRAJEDA RECINOS - MEDICA DE GUATEMALA '),(28,'GUATEMALA, GUATEMALA ','2491-3900 ',NULL,NULL,'FLAVIO FEDERICO DAVILA - MEDICORP '),(29,'GUATEMALA, GUATEMALA ','2386-9902 ',NULL,NULL,'JUAN JOSÉ MONROY LÓPEZ - MEDITEK SERVICES, S.A. '),(30,'GUATEMALA, GUATEMALA ','2474-2507 ','5016-6868 ',NULL,'CARLOS HUMBERTO MORALES JUAREZ - MUEBLES Y DISEÑOS INDUSTRIALES (MUDI) '),(31,'GUATEMALA, GUATEMALA ','2309-9421 ',NULL,NULL,'MARÍA CRISTINA BOJÓRQUEZ MEJÍA - OFIMEDIC '),(32,'GUATEMALA, GUATEMALA ','2247-6262 ',NULL,NULL,'SERVICIO TECNICO DE OXIRENT S,A. - OXI-RENT, S.A. '),(33,'GUATEMALA, GUATEMALA ','2420-9500 ',NULL,NULL,'ELIGIO ALBERTO REYES AMBROSIO - PRODUCTIVE BUSINESS SOLUTIONS (GUATEMALA), S.A. '),(34,'GUATEMALA, GUATEMALA ','2421-0400 ',NULL,NULL,'CARLOS MÉRIDA - PRODUCTOS DEL AIRE DE GUATEMALA, S.A. '),(35,'GUATEMALA, GUATEMALA ','2223-8600 ',NULL,NULL,'WALTER GONZALEZ / SUSAN FUENTES - PROMED, S.A. '),(36,'GUATEMALA, GUATEMALA ','6632-7100 ',NULL,NULL,'CELESTE MORALES - REPRESENTACIONES, COMPRAS Y VENTAS, S.A. (COVESA) '),(37,'GUATEMALA, GUATEMALA ','2506-5300 ',NULL,NULL,'INGA. JACKELINE OROZCO - SEIJIRO YAZAWA IWAI GUATEMALA, S.A. '),(38,'GUATEMALA, GUATEMALA ','2302-3500 ',NULL,NULL,'MAURO MÉNDEZ - SEMICOM, S.A. '),(39,'GUATEMALA, GUATEMALA ','2295-9952 ','2295-9953 ',NULL,'MANUEL CALDERON - SERVICIOS QUIRÚRGICOS, S.A. '),(40,'GUATEMALA, GUATEMALA ','2319-3477 ',NULL,NULL,'BRENDA LLAMAS - SIEMENS, S.A. '),(41,'GUATEMALA, GUATEMALA ','2319-9494 ',NULL,NULL,'SAYDA EUNICE ALVAREZ POLANCO - SUMINISTRO DE EQUIPO INDUSTRIAL Y MANTENIMIENTO, S.A. (SEIMA, S.A.) '),(42,'GUATEMALA, GUATEMALA ','2302-8585 ',NULL,NULL,'EDGAR CALEL - SUMINISTRO DE TECNOLOGÍA MÉDICA, S.A. (ST MEDIC) '),(43,'GUATEMALA, GUATEMALA ','2442-3129 ',NULL,NULL,'KAREN BARRIOS  - T.A.G., S.A. '),(44,'7a. Avenida 4 - 01 Zona 2, Quetzaltenango ','7761 - 7258 ','7761 - 7275 ','info@corporacionmisa.com ','Brenda Díaz - MANGUERAS DE OCCIDENTE S.A - Hidrosanitaria '),(45,'KM. 36.7 sobre la autopista de que conduce de Palin a Escuintla CA9 Sur, Palin Escuintla. ','(502) 2410 - 1300 ',NULL,'luis.garcia@mexichem.com ','Luis Fernando Garcia Alinado - MEXICHEM - Hidrosanitaria '),(46,'7a. Av. 1 - 87 Zona 2, Quetzaltenango ','7763 - 1507 ',NULL,'info@makrotubofort.com ','Manuel Flores - MAKRO TUBOFORT - Hidrosanitaria '),(47,'7a. Calle 3 - 99 Zona 2, Quetzaltenango ','7763 - 1094 ',NULL,'sucursal2@decorabanosxela.com ','Rudy Jimenez - DECORABAÑOS SUCURSAL 2 - Hidrosanitaria '),(48,'9a. Calle 0-82 Zona 8 Periférico, Quetzaltenango ','3028 - 4724 ',NULL,'f10ventas5@ffacsa.com ','MARISSA MONROY - FFAC, S.A. - Hidrosanitaria '),(49,'10a. Avenida 9 - 97 Zona 3, San Marcos ','5690 - 6179 ',NULL,'amancosanmarcos@gmail.com ','Gary Mazariegos - DISTRIBUIDORA DEL OESTE - Hidrosanitaria '),(50,'7a. Calle 4 - 21 Zona 5, Quetzaltenango ','7765-0479/5834-5289 ','5517 - 7909 ','disepro4@gmail.com ','Roberto Xec - DISEPRO - Hidrosanitaria '),(51,'7a. Avenida 1-08 Zona 2, Quetzaltenango ','(502) 7761 2813 ',NULL,'centralminera@hotmail.com ','Ferretería Central Minera - Hidrosanitaria '),(52,'3ra. avenida. 8-66, Zona 14. Colonia El Campo, Guatemala Ciudad de Guatemala ','55163318 ',NULL,'crelosaventas@crelosa.com ','Barbara - CRELOSA - SEGURIDAD Y SALUD OCUPACIONAL '),(53,'6ta. calle 21-37 Zona 3 Quetzaltenango ','55144494 ',NULL,'info@serviplagas.com.gt ','Ing. Oscar Serrano SERVIPLAGAS - SEGURIDAD Y SALUD OCUPACIONAL '),(54,'7 Av. 10-69 Z.5, Quetzaltenango ','77206000 ',NULL,'oquiroa@productosdelaire.com ','Osbin Quiroa - PRODUCTOS DEL AIRE -  SEGURIDAD Y SALUD OCUPACIONAL '),(55,' Calzada Atanasio Tzul 19-97 Z.12, Complejo Empresarial El Cortijo 1 B.713, Zona 12, Ciudad de Guatemala, Guatemala  ','54118162 ',NULL,'info.gt@grupoequipsa.net ','Jorge Mendoza - EQUIPSA - SEGURIDAD Y SALUD OCUPACIONAL '),(56,'3a calle 3-60 zona 9. Guatemala Centro América ','2328-8888 ',NULL,'info@grupotecun.com ','Marlon Colmenares/Estuardo Romero - GRUPO TECUN - ELECTRICA '),(57,'Calle Siemens No. 43, Parque Industrial Santa Elena , Antiguo Cuscatlán ','(503) 2248-7333 ','(503)2278-3334 ','siemens.elsalvador@siemens.com ','Ing. Rafael Quiñonez /Lic. Sibyl Lungo -GRUPO SIEMENS - ELECTRICA '),(58,'7a avenida 17-55 zona 5, Quetzaltenango ','7926-8976 ',NULL,'jdeleon@impelsa.com','José de León - GRUPO IMPELSA - ELECTRICA '),(59,'12 calle 10-10 Zona 10, Guatemala ','2421-7600 ',NULL,'armas.vinicio@osi.net ','Vinicio Armas Lemus - GRUPO OSI - ELECTRICA '),(60,'17 Calle 14-53, zona 13 Guatemala, Centroamérica Guatemala ','23817600 ','23817676 ','miguelangel.godoy@otis.com ','OTIS-Miguel Godoy-MECANICA '),(61,'Carretera 8.3 Km Muxbal Of. Bodega No. 2 Guatemala ','24913900 ',NULL,'f.davila@medicorp.com.gt ','MEDICORP-Francisco Davila-MECANICA '),(62,'Guatemala, Guatemala ','4394-8686 ','2483-3310 ','ventas.echoquim@gmail.com ','ECHOQUIM-Ing. Mario Casasola Rivera-MECANICA '),(63,'31 Av. Sur #632 Col. Flor Blanca, San Salvador, El Salvador ','(503) 2500-7100  ',NULL,'Info@corporacionnoble.com ','CORPORACIÓN NOBLE-JUVENTINO-MECANICA '),(64,'2 Ave. 11-60 Zona 4 Mixco Guatemala ','22097800 ','22097800 ','jirehacsa@gmail.com ','JIREH-MECANICA '),(65,'41 calle 6-27 Zona 8 Guatemala ','5555 2552 ','7765-8206 ','info@productosdelaire.com ','PRODUCTOS DEL AIRE-OSBIN QUIROA-MECANICA '),(66,'12 Avenida Quetzaltenango  ','7767 5000 ',NULL,'regrigamaxela@hotmail.com  ','REFRIGAMA-MECANICA '),(67,'7 avenida 9-35 Zona 1 Quetzaltenango ','77917878 ',NULL,'Smirtornos@hotmail.com ','SERVICIO INDUSTRIAL ROSARIO-MECANICA '),(68,'7 calle 3-99 Zona 2 Quetzaltenango ','77631094 ','79557474','info@decorabaños.com ','DECORABAÑOS SUCURSAL 2-MECANICA '),(69,'7 Avenida 4-01 Zona 2  ','77617258 ','77617275','info@manguerasdeoccidente.com  ','MANGUERAS DE OCCIDENTE-MECANICA ');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_insumo`
--

DROP TABLE IF EXISTS `proveedor_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor_insumo` (
  `idproveedor_insumo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `direccion` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `telefono` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idproveedor_insumo`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_insumo`
--

LOCK TABLES `proveedor_insumo` WRITE;
/*!40000 ALTER TABLE `proveedor_insumo` DISABLE KEYS */;
INSERT INTO `proveedor_insumo` VALUES (1,'SO - SERGIO ENRIQUE CABRERA MORALES','10 AVENIDA 12-10 Z. 12','24719876',NULL,1),(2,'SO - INDUSTRIAL MEDICAL, S.A. ','25 AVENIDA C 12-18 Z.18 VILLAS DE SAN RAFAEL','2256-0675','INDUSMESA@GMAIL.COM ',1),(3,'SO - ELMER WILSON VICENTE MORALES ALVARADO         ','PARAJE CHOQUIAC, ALDEA CHIRIJQUIAC 5-21 Z.0','56964898','AIRESELMEJOR@HOTMAIL.COM',1),(4,'SO - ITEMS INDUSTRIALES, S.A.','CENTRO COMERCIAL GRAN PLAZA, KM. 14.5, CARR. A EL SALVADOR','6625 0000','INFO@ITEMSIND.COM',1),(5,'SO - FDM MULTISERVICIOS','9A. CALLE \"A\" 4-80 ZONA 2, QUETZALTENANGO','54140728','FDMMULTISERVICIOS@GMAIL.COM',1),(6,'SO - MAQUINARIA EFICIENTE, S.A.     ','AVENIDA JESUS CASTILLO LOCAL 2-02 ZONA 2,?QUETZALTENANGO.','77252555?','XELA@MAQUIARIAEFICIENTE.COM',1),(7,'SO - COMERCIALIZADORA EXIMER, S.A.','23 AV 34-13 Z-12 COL SANTA ELISA GUATEMALA - GUATEMALA','2476 7500','EXIMERSA@GMAIL.COM',1),(8,'SO - SERVICIOS INMOBILIARIOS Y COMERCIALES ARBORECER S.A.','18AVENIDA 40-77 Z.8','59900122',NULL,1),(9,'SO - BOUTIQUE PUBLICITARIA SOCIEDAD ANONIMA ','15 AVENIDA A 3-67 Z.13 OFICINA 10 2DO NIVEL',NULL,NULL,1),(10,'AC-ADITEQ','GUATEMALA','23664991','info@aditeq.com',1),(11,'AC-DECORABA?OS ','QUETZALTENANGO','7674692','',1),(12,'AC-DECORABA?OS ','QUETZALTENANGO','77631094 / 77676790','',1),(13,'AC-DEPOSITO LA ROTONDA','QUETZALTENANGO','77613596','',1),(14,'AC-DESERET','QUETZALTENANGO','77671411 / 77671412','',1),(15,'AC-EL CERAMICON','QUETZALTENANGO','22853172','',1),(16,'AC-FERRETERIA CENTRAL MINERA','QUETZALTENANGO','77612813','',1),(17,'AC-LA CASA DEL CARPINETERO','CALLE RODOLFO ROBLES 20-12 ZONA 3 QUETZALTENANGO','7979-9396','',1),(18,'AC-LA PALETA','CALLE PRINCIPAL XOLQUIAC ALDEA LA ESTANCIA CANTEL-QUETZALTENANGO','77631319 / 34825108','xela_1@gruposolid.com',1),(19,'AC-PERFILES CANDELARIA','QUETZALTENANGO','77674980 /43308370','perfilesventa6@grupocandelaria.com',1),(20,'AC-SAN MIGUEL','QUETZALTENANGO','55271209','ventas@maderayferreteriasanmiguel.com',1),(21,'AC-TORNICENTRO','QUETZALTENANGO','77368276','',1),(22,'AC-SISTEGUA XELA','QUETZALTENANGO','23200356','xela@sistegua.com',1),(23,'AC-ALUVENT','QUETZALTENANGO','77655570','',1),(24,'AC-MONOLIT XELA','QUETZALTENANGO','7767-7637','',1),(25,'AC-PERZILUZ','GUATEMALA','','',1),(26,'AC-VITROFILMS','GUATEMALA','','',1),(27,'AC-QNIL','CALLE PRINCIPAL XOLQUIAC ALDEA LA ESTANCIA CANTEL-QUETZALTENANGO','56964898','qanilconstructora@hotmail.com',1),(28,'AC-CARQ','QUETZALTENANGO','59781229','c_arqarquitectura@hotmail.com',1),(29,'AC-ADME','SECTOR MENDEZ Y JOYA ZONA 4, SAN JUAN OSTUNCALCO, QUETZALTENANGO','44683092/41737908','adcastil1@yahoo.com',1),(30,'AC-JC INGENIEROS','GUATEMALA','','',1),(31,'AC-COMERCIALIZADORA ROMERCK, S.A.','2DA CALLE 15-12 ZONA 3 QUETZALTENANGO','77650426/58432560','pablo.ramos@cromerck.com',1),(32,'AC-FERROMAX','22 AVENIDA Y 8a CALLE 7-42 ZONA 3 QUETZALTENANGO','77673339','ctz.gerencia@grupoferromax.com',1),(33,'AH - MANGUERAS DE OCCIDENTE S.A. - BRENDA DIAZ ','7a. Avenida 4 - 01 Zona 2, Quetzaltenango','7761 - 7258 / 75','misaxela@gmail.com',1),(34,'AH - MEXICHEM - LUIS FERNANDO GARCIA ALINADO','KM. 36.7 sobre la autopista de que conduce de Palin a Escuintla CA9 Sur, Palin Escuintla.','(502) 2410 - 1300','luis.garcia@mexichem.com',1),(35,'AH - MAKRO TUBOFORT - MANUEL FLORES','7a. Av. 1 - 87 Zona 2, Quetzaltenango','7763 - 1507','',1),(36,'AH - DECORABA?OS SUCURSAL 2 - RUDY JIMENEZ','7a. Calle 3 - 99 Zona 2, Quetzaltenango','7763 - 1094','sucursal2@decorabanosxela.com',1),(37,'AH - FFAC, S.A. - HMARISSA MONROY','9a. Calle 0-82 Zona 8 Perif?rico, Quetzaltenango','3028 - 4724','f10ventas5@ffacsa.com',1),(38,'AH - DISTRIBUIDORA DEL OESTE - GARY MAZARIEGOS','10a. Avenida 9 - 97 Zona 3, San Marcos','5690 - 6179','amancosanmarcos@gmail.com',1),(39,'AH - DISEPRO - ROBERTO XEC','7a. Calle 4 - 21 Zona 5, Quetzaltenango','7765 - 0479, 5517 - ','disepro4@gmail.com',1),(40,'AH - FERRETERIA CENTRAL MINERA','7a. Avenida 1-08 Zona 2, Quetzaltenango','(+502) 7761 2813','centralminera@hotmail.com',1),(41,'AB  -  BIO - NUCLEAR DE GUATEMALA, S.A.','18-40, Ofibodegas Centro 5, Bodega 29, Calzada la Paz, Guatemala','2336-7766 ','--',1),(42,'AB  -  COMPA??A DE EQUIPO M?DICO HOSPITALARIO, S.A. (CASA M?DICA)','2a. Calle 4-08 zona 10 Guatemala, C.A. 01001','2428-9834','--',1),(43,'AB - CORPORACI?N ANALYTICOS, S.A.','17 Calle \"A\" 18-57 zona 10 Guatemala, Guatemala','2379-7888','--',1),(44,'AB - CORPORACI?N ANSARO, S.A.','17 Av. 4-06 Z.11 Col. Miraflores, Guatemala','2216-2722','--',1),(45,'AB - CORPORACI?N NOBLE, S.A. DE C.V.','GUATEMALA, GUATEMALA','2500-7131 / 2500-710','--',1),(46,'AB - DEPOSITO DENTAL DENTECO, S.A.','12 Av. C-35 Local 101 Zona 1, Quetzaltenango, Guatemala.','2380-7474','--',1),(47,'AB - DESARROLLO PROYECTOS Y SERVICIOS AGROPECUARIOS (DAGROP)','GUATEMALA, GUATEMALA','7736-8826','--',1),(48,'AB - DISS GUATEMALA, S. A. EN CONSORCIO CON DIAGNOSTIC IMAGING SUPPLIES & SERVICES, INC.','GUATEMALA, GUATEMALA','2319-3477','--',1),(49,'AB - DISTRIBUIDORA DE LABORATORIO Y EQUIPO INSTITUCIONAL, S.A. (DILAB, S.A.)','GUATEMALA, GUATEMALA','2318-4018','--',1),(50,'AB - EQUIPOS PARA HOSPITALES Y MEDICINAS, S.A.','GUATEMALA, GUATEMALA','2314-7070','--',1),(51,'AB - HOSPIFARMACIA, S.A.','GUATEMALA, GUATEMALA','2314-7070','--',1),(52,'AB - IMPORTADORA M?DICA, FARMAC?UTICA, ODONTOL?GICA, HOSPITALARIA, S.A.','GUATEMALA, GUATEMALA','2317-2121','--',1),(53,'AB - INNOVACIONES M?DICAS, S.A.','GUATEMALA, GUATEMALA','2418-2813','--',1),(54,'AB - INNOVACIONES NOVEDOSAS UNIVERSALES, S.A. (INNOVU)','GUATEMALA, GUATEMALA','2337-3971','--',1),(55,'AB - INTRACARE, S.A.','GUATEMALA, GUATEMALA','2310-8310','--',1),(56,'AB - JORMAR, S.A.','GUATEMALA, GUATEMALA','2334-2509','--',1),(57,'AB - MDT INTERNACIONAL, S.A. (TECNOCHEF)','GUATEMALA, GUATEMALA','2495-1111','--',1),(58,'AB - MEDICA DE GUATEMALA','GUATEMALA, GUATEMALA','2333-7260','--',1),(59,'AB - MEDICORP','GUATEMALA, GUATEMALA','2491-3900','--',1),(60,'AB - MEDITEK SERVICES, S.A.','GUATEMALA, GUATEMALA','2386-9902','--',1),(61,'AB - MUEBLES Y DISE?OS INDUSTRIALES (MUDI)','GUATEMALA, GUATEMALA','2474-2507 / 5016-686','--',1),(62,'AB - OFIMEDIC','GUATEMALA, GUATEMALA','2309-9421','--',1),(63,'AB - OXI - RENT, S.A.','GUATEMALA, GUATEMALA','2247-6262','--',1),(64,'AB - PRODUCTIVE BUSINESS SOLUTIONS (GUATEMALA), S.A.','GUATEMALA, GUATEMALA','2420-9500','--',1),(65,'AB - PRODUCTOS DEL AIRE DE GUATEMALA, S.A.','GUATEMALA, GUATEMALA','2421-0400','--',1),(66,'AB - PROMED, S.A.','GUATEMALA, GUATEMALA','2223-8600','--',1),(67,'AB - REPRESENTACIONES, COMPRAS Y VENTAS, S.A. (COVESA)','GUATEMALA, GUATEMALA','6632-7100','--',1),(68,'AB - SEIJIRO YAZAWA IWAI GUATEMALA, S.A.','GUATEMALA, GUATEMALA','2506-5300','--',1),(69,'AB - SEMICOM, S.A.','GUATEMALA, GUATEMALA','2302-3500','--',1),(70,'AB - SERVICIOS QUIR?RGICOS, S.A.','GUATEMALA, GUATEMALA','2295-9952/ 53','--',1),(71,'AB - SIEMENS, S.A.','GUATEMALA, GUATEMALA','2319-3477','--',1),(72,'AB - SUMINISTRO DE EQUIPO INDUSTRIAL Y MANTENIMIENTO, S.A. (SEIMA, S.A.)','GUATEMALA, GUATEMALA','2319-9494','--',1),(73,'AB - SUMINISTRO DE TECNOLOG?A M?DICA, S.A. (ST MEDIC)','GUATEMALA, GUATEMALA','2302-8585','--',1),(74,'AB - T.A.G., S.A.','GUATEMALA, GUATEMALA','2442-3129','--',1);
/*!40000 ALTER TABLE `proveedor_insumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor_repuesto`
--

DROP TABLE IF EXISTS `proveedor_repuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor_repuesto` (
  `idproveedor_repuesto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `direccion` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `telefono` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `email` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`idproveedor_repuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor_repuesto`
--

LOCK TABLES `proveedor_repuesto` WRITE;
/*!40000 ALTER TABLE `proveedor_repuesto` DISABLE KEYS */;
INSERT INTO `proveedor_repuesto` VALUES (1,'AB  -  BIO - NUCLEAR DE GUATEMALA, S.A.','18-40, Ofibodegas Centro 5, Bodega 29, Calzada la Paz, Guatemala','2336-7766 ','--',1),(2,'AB - COMPA??A DE EQUIPO M?DICO HOSPITALARIO, S.A. (CASA M?DICA)','2a. Calle 4-08 zona 10 Guatemala, C.A. 01001','2428-9834','--',1),(3,'AB - CORPORACI?N ANALYTICOS, S.A.','17 Calle \"A\" 18-57 zona 10 Guatemala, Guatemala','2379-7888','--',1),(4,'AB - CORPORACI?N ANSARO, S.A.','17 Av. 4-06 Z.11 Col. Miraflores, Guatemala','2216-2722','--',1),(5,'AB - CORPORACI?N NOBLE, S.A. DE C.V.','GUATEMALA, GUATEMALA','2500-7131 / 2500-710','--',1),(6,'AB - DEPOSITO DENTAL DENTECO, S.A.','12 Av. C-35 Local 101 Zona 1, Quetzaltenango, Guatemala.','2380-7474','--',1),(7,'AB - DESARROLLO PROYECTOS Y SERVICIOS AGROPECUARIOS (DAGROP)','GUATEMALA, GUATEMALA','7736-8826','--',1),(8,'AB - DISS GUATEMALA, S. A. EN CONSORCIO CON DIAGNOSTIC IMAGING SUPPLIES & SERVICES, INC.','GUATEMALA, GUATEMALA','2319-3477','--',1),(9,'AB - DISTRIBUIDORA DE LABORATORIO Y EQUIPO INSTITUCIONAL, S.A. (DILAB, S.A.)','GUATEMALA, GUATEMALA','2318-4018','--',1),(10,'AB - EQUIPOS PARA HOSPITALES Y MEDICINAS, S.A.','GUATEMALA, GUATEMALA','2314-7070','--',1),(11,'AB - HOSPIFARMACIA, S.A.','GUATEMALA, GUATEMALA','2314-7070','--',1),(12,'AB - IMPORTADORA M?DICA, FARMAC?UTICA, ODONTOL?GICA, HOSPITALARIA, S.A.','GUATEMALA, GUATEMALA','2317-2121','--',1),(13,'AB - INNOVACIONES M?DICAS, S.A.','GUATEMALA, GUATEMALA','2418-2813','--',1),(14,'AB - INNOVACIONES NOVEDOSAS UNIVERSALES, S.A. (INNOVU)','GUATEMALA, GUATEMALA','2337-3971','--',1),(15,'AB - INTRACARE, S.A.','GUATEMALA, GUATEMALA','2310-8310','--',1),(16,'AB - JORMAR, S.A.','GUATEMALA, GUATEMALA','2334-2509','--',1),(17,'AB - MDT INTERNACIONAL, S.A. (TECNOCHEF)','GUATEMALA, GUATEMALA','2495-1111','--',1),(18,'AB - MEDICA DE GUATEMALA','GUATEMALA, GUATEMALA','2333-7260','--',1),(19,'AB - MEDICORP','GUATEMALA, GUATEMALA','2491-3900','--',1),(20,'AB - MEDITEK SERVICES, S.A.','GUATEMALA, GUATEMALA','2386-9902','--',1),(21,'AB - MUEBLES Y DISE?OS INDUSTRIALES (MUDI)','GUATEMALA, GUATEMALA','2474-2507 / 5016-686','--',1),(22,'AB - OFIMEDIC','GUATEMALA, GUATEMALA','2309-9421','--',1),(23,'AB - OXI - RENT, S.A.','GUATEMALA, GUATEMALA','2247-6262','--',1),(24,'AB - PRODUCTIVE BUSINESS SOLUTIONS (GUATEMALA), S.A.','GUATEMALA, GUATEMALA','2420-9500','--',1),(25,'AB - PRODUCTOS DEL AIRE DE GUATEMALA, S.A.','GUATEMALA, GUATEMALA','2421-0400','--',1),(26,'AB - PROMED, S.A.','GUATEMALA, GUATEMALA','2223-8600','--',1),(27,'AB - REPRESENTACIONES, COMPRAS Y VENTAS, S.A. (COVESA)','GUATEMALA, GUATEMALA','6632-7100','--',1),(28,'AB - SEIJIRO YAZAWA IWAI GUATEMALA, S.A.','GUATEMALA, GUATEMALA','2506-5300','--',1),(29,'AB - SEMICOM, S.A.','GUATEMALA, GUATEMALA','2302-3500','--',1),(30,'AB - SERVICIOS QUIR?RGICOS, S.A.','GUATEMALA, GUATEMALA','2295-9952/ 53','--',1),(31,'AB - SIEMENS, S.A.','GUATEMALA, GUATEMALA','2319-3477','--',1),(32,'AB - SUMINISTRO DE EQUIPO INDUSTRIAL Y MANTENIMIENTO, S.A. (SEIMA, S.A.)','GUATEMALA, GUATEMALA','2319-9494','--',1),(33,'AB - SUMINISTRO DE TECNOLOG?A M?DICA, S.A. (ST MEDIC)','GUATEMALA, GUATEMALA','2302-8585','--',1),(34,'AB - T.A.G., S.A.','GUATEMALA, GUATEMALA','2442-3129','--',1);
/*!40000 ALTER TABLE `proveedor_repuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba_rutina`
--

DROP TABLE IF EXISTS `prueba_rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prueba_rutina` (
  `idprueba_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `prueba_rutina` varchar(255) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idprueba_rutina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba_rutina`
--

LOCK TABLES `prueba_rutina` WRITE;
/*!40000 ALTER TABLE `prueba_rutina` DISABLE KEYS */;
INSERT INTO `prueba_rutina` VALUES (1,'ejemplo 1');
/*!40000 ALTER TABLE `prueba_rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `idregion` varchar(1) COLLATE latin1_general_cs NOT NULL,
  `region` varchar(50) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idregion`),
  UNIQUE KEY `idregion_UNIQUE` (`idregion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES ('A','Metropolitana'),('B','Sur'),('C','Sur-Occidental'),('D','Occidental'),('E','Nor-Oriental');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repuesto`
--

DROP TABLE IF EXISTS `repuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repuesto` (
  `idrepuesto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `codigo` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `num_serie` varchar(100) COLLATE latin1_general_cs DEFAULT NULL,
  `modelo` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  `descripcion` varchar(255) COLLATE latin1_general_cs DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `estado` varchar(50) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idrepuesto`),
  KEY `fk_repuesto_equipo1_idx` (`idequipo`),
  CONSTRAINT `fk_repuesto_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repuesto`
--

LOCK TABLES `repuesto` WRITE;
/*!40000 ALTER TABLE `repuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `repuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_roles_has_users_users1_idx` (`user_id`),
  KEY `fk_roles_has_users_roles1_idx` (`role_id`),
  CONSTRAINT `fk_roles_has_users_roles1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_roles_has_users_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,1),(2,2,2),(3,1,2),(4,4,3),(5,4,4),(6,4,5),(7,3,6),(8,4,7),(9,4,8),(10,3,3),(11,3,4),(12,3,5),(13,3,7),(14,3,8),(15,3,9),(16,3,10),(19,4,11),(20,3,11),(24,1,12),(25,4,10),(26,4,9),(27,4,6),(28,4,13),(29,3,13),(30,2,4),(31,2,8),(32,2,13),(33,2,14),(34,3,14),(35,4,14),(36,2,10),(37,2,6),(38,2,15),(39,3,15),(40,4,15);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `display_name` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `description` text COLLATE latin1_general_cs,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrador',NULL,'2018-10-24 16:41:14','2018-10-24 16:41:14'),(2,'jefe-mantto','Jefe de mantenimiento',NULL,'2018-10-24 16:41:14','2018-10-24 16:41:14'),(3,'jefe-sub','Jefe de subarea',NULL,'2018-10-24 16:41:14','2018-10-24 16:41:14'),(4,'tec-ing','Técnico - Ingeniero',NULL,'2018-10-24 16:41:14','2018-10-24 16:41:14');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina_mantenimiento`
--

DROP TABLE IF EXISTS `rutina_mantenimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutina_mantenimiento` (
  `idrutina_mantenimiento` int(11) NOT NULL AUTO_INCREMENT,
  `idtipo_rutina` int(11) NOT NULL,
  `fecha_realizacion_rutina` date DEFAULT NULL,
  `observaciones_rutina` varchar(1000) COLLATE latin1_general_cs DEFAULT NULL,
  `tiempo_estimado_rutina_mantenimiento` int(11) DEFAULT NULL,
  `responsable_area_rutina_mantenimiento` varchar(100) COLLATE latin1_general_cs DEFAULT NULL,
  `permiso_trabajo_idpermiso_trabajo` int(11) DEFAULT NULL,
  `estado_rutina` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `frecuencia_rutina` int(11) DEFAULT NULL,
  `idsubgrupo` int(11) NOT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idrutina_mantenimiento`),
  KEY `fk_rutina_mantenimiento_tipo_rutina1_idx` (`idtipo_rutina`),
  KEY `fk_rutina_mantenimiento_permiso_trabajo1_idx` (`permiso_trabajo_idpermiso_trabajo`),
  KEY `fk_rutina_mantenimiento_subgrupo1_idx` (`idsubgrupo`),
  KEY `fk_rutina_mantenimiento_equipo1_idx` (`idequipo`),
  CONSTRAINT `fk_rutina_mantenimiento_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rutina_mantenimiento_permiso_trabajo1` FOREIGN KEY (`permiso_trabajo_idpermiso_trabajo`) REFERENCES `permiso_trabajo` (`idpermiso_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rutina_mantenimiento_subgrupo1` FOREIGN KEY (`idsubgrupo`) REFERENCES `subgrupo` (`idsubgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rutina_mantenimiento_tipo_rutina1` FOREIGN KEY (`idtipo_rutina`) REFERENCES `tipo_rutina` (`idtipo_rutina`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina_mantenimiento`
--

LOCK TABLES `rutina_mantenimiento` WRITE;
/*!40000 ALTER TABLE `rutina_mantenimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutina_mantenimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina_mantenimiento_tecnico_externo`
--

DROP TABLE IF EXISTS `rutina_mantenimiento_tecnico_externo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutina_mantenimiento_tecnico_externo` (
  `idrutina_mantenimiento_tecnico_externo` int(11) NOT NULL AUTO_INCREMENT,
  `idrutina_mantenimiento` int(11) NOT NULL,
  `idtecnico_externo` int(11) NOT NULL,
  `tiempo_ejecucion_rutina_mantenimiento_tecnico_externo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idrutina_mantenimiento_tecnico_externo`),
  KEY `fk_table1_rutina_mantenimiento1_idx` (`idrutina_mantenimiento`),
  KEY `fk_table1_tecnico_externo1_idx` (`idtecnico_externo`),
  CONSTRAINT `fk_table1_rutina_mantenimiento1` FOREIGN KEY (`idrutina_mantenimiento`) REFERENCES `rutina_mantenimiento` (`idrutina_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_table1_tecnico_externo1` FOREIGN KEY (`idtecnico_externo`) REFERENCES `tecnico_externo` (`idtecnico_externo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina_mantenimiento_tecnico_externo`
--

LOCK TABLES `rutina_mantenimiento_tecnico_externo` WRITE;
/*!40000 ALTER TABLE `rutina_mantenimiento_tecnico_externo` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutina_mantenimiento_tecnico_externo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina_mantenimiento_tecnico_interno`
--

DROP TABLE IF EXISTS `rutina_mantenimiento_tecnico_interno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutina_mantenimiento_tecnico_interno` (
  `idrutina_mantenimiento_tecnico_interno` int(11) NOT NULL AUTO_INCREMENT,
  `idrutina_mantenimiento` int(11) NOT NULL,
  `idtecnico` int(11) NOT NULL,
  `tiempo_ejecucion_rutina_mantenimiento_tecnico_interno` int(11) DEFAULT NULL,
  PRIMARY KEY (`idrutina_mantenimiento_tecnico_interno`),
  KEY `fk_rutina_mantenimiento_tecnico_rutina_mantenimiento1_idx` (`idrutina_mantenimiento`),
  KEY `fk_rutina_mantenimiento_tecnico_tecnico1_idx` (`idtecnico`),
  CONSTRAINT `fk_rutina_mantenimiento_tecnico_rutina_mantenimiento1` FOREIGN KEY (`idrutina_mantenimiento`) REFERENCES `rutina_mantenimiento` (`idrutina_mantenimiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rutina_mantenimiento_tecnico_tecnico1` FOREIGN KEY (`idtecnico`) REFERENCES `tecnico_interno` (`idtecnico`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina_mantenimiento_tecnico_interno`
--

LOCK TABLES `rutina_mantenimiento_tecnico_interno` WRITE;
/*!40000 ALTER TABLE `rutina_mantenimiento_tecnico_interno` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutina_mantenimiento_tecnico_interno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguimiento`
--

DROP TABLE IF EXISTS `seguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguimiento` (
  `idseguimiento` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_seguimiento` date DEFAULT NULL,
  `responsable_seguimiento` varchar(405) COLLATE latin1_general_cs DEFAULT NULL,
  `solitud_trabajo_idsolitud_trabajo` int(11) NOT NULL,
  PRIMARY KEY (`idseguimiento`),
  KEY `fk_seguimiento_solitud_trabajo1_idx` (`solitud_trabajo_idsolitud_trabajo`),
  CONSTRAINT `fk_seguimiento_solitud_trabajo1` FOREIGN KEY (`solitud_trabajo_idsolitud_trabajo`) REFERENCES `solitud_trabajo` (`idsolitud_trabajo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguimiento`
--

LOCK TABLES `seguimiento` WRITE;
/*!40000 ALTER TABLE `seguimiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio_tecnico`
--

DROP TABLE IF EXISTS `servicio_tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio_tecnico` (
  `idservicio_tecnico` int(11) NOT NULL AUTO_INCREMENT,
  `direccion_servicio_tecnico` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `telefono_servicio_tecnico` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `fax_servicio_tecnico` varchar(20) COLLATE latin1_general_cs DEFAULT NULL,
  `correo_servicio_mantenimiento` varchar(100) COLLATE latin1_general_cs DEFAULT NULL,
  `nombre_contacto_servicio_tecnico` varchar(150) COLLATE latin1_general_cs DEFAULT NULL,
  `nombre_empresa_sevicio_tecnico` varchar(400) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idservicio_tecnico`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_tecnico`
--

LOCK TABLES `servicio_tecnico` WRITE;
/*!40000 ALTER TABLE `servicio_tecnico` DISABLE KEYS */;
INSERT INTO `servicio_tecnico` VALUES (1,'Km 22.5 Carretera a El Salvador ','52027681 ',NULL,'salvador.esquivel@persoñuz.com ','SALVADOR ESQUIVEL ','PERSILUZ - ARQUITECTURA, CIVIL '),(2,' Guatemala, Guatemala ',' 2491 - 3900 ',NULL,'info@medicorp.com','FLAVIO FEDERICO DAVILA ','MEDICORP - BIOMEDICA '),(3,' Guatemala, Guatemala ',' 2317 - 2121 ',NULL,NULL,'WILFREDO GARCÍA ','IMPORTADORA MÉDICA, FARMACÉUTICA, ODONTOLÓGICA, HOSPITALARIA, S.A. - BIOMEDICA '),(4,' Guatemala, Guatemala ',' 2319 - 3477 ',NULL,NULL,'BRENDA LLAMAS ','SIEMENS, S.A. - BIOMEDICA '),(5,' Guatemala, Guatemala ',' 2418 - 2813 ',NULL,NULL,'MARCO ANTONIO LOCON  ','INNOVACIONES MÉDICAS, S.A.'),(6,' Guatemala, Guatemala ',' 2309 - 9421 ',NULL,NULL,'MARÍA CRISTINA BOJÓRQUEZ MEJÍA ','OFIMEDIC - BIOMEDICA '),(7,' Guatemala, Guatemala ',' 2428 - 9834 ',NULL,NULL,' ING. RUDY YAC  ','COMPAÑÍA DE EQUIPO MÉDICO HOSPITALARIO, S.A. (CASA MÉDICA) - BIOMEDICA '),(8,' Guatemala, Guatemala ',' 2223 - 8600 ',NULL,NULL,'WALTER GONZALEZ / SUSAN FUENTES ','PROMED, S.A. - BIOMEDICA '),(9,' Guatemala, Guatemala ',' 2310 - 8310 ',NULL,NULL,'LIC. MARLON STUARDO ORELLANA RECINOS ','INTRACARE, S.A. - BIOMEDICA '),(10,' Guatemala, Guatemala ',' 2420 - 9500 ',NULL,NULL,'ELIGIO ALBERTO REYES AMBROSIO ','PRODUCTIVE BUSINESS SOLUTIONS (GUATEMALA), S.A. - BIOMEDICA '),(11,' Guatemala, Guatemala ',' 2333 - 7260 ',NULL,NULL,'MARIO RENÉ GRAJEDA RECINOS ','MEDICA DE GUATEMALA - BIOMEDICA '),(12,' Guatemala, Guatemala ',' 2500 - 7131 ','2500 - 7100 ',NULL,'ING. FRANCISCO GIRON ','CORPORACIÓN NOBLE, S.A. DE C.V. - BIOMEDICA '),(13,' Guatemala, Guatemala ',' 2336 - 7766 ',NULL,NULL,'JESUS NUÑEZ  (1A OPCION) /   ALMA MUÑOZ (2DA OPCION) ','BIO - NUCLEAR DE GUATEMALA, S.A. - BIOMEDICA '),(14,' Guatemala, Guatemala ',' 2295 - 9952 / 53 ',NULL,NULL,'MANUEL CALDERON ','SERVICIOS QUIRÚRGICOS, S.A. - BIOMEDICA '),(15,' Guatemala, Guatemala ',' 2334 - 2509 ',NULL,NULL,'JORGE MARIO AQUINO HERNÁNDEZ ','JORMAR, S.A. - BIOMEDICA '),(16,' Guatemala, Guatemala ',' 2302 - 8585 ',NULL,NULL,'EDGAR CALEL ','SUMINISTRO DE TECNOLOGÍA MÉDICA, S.A. (ST MEDIC) - BIOMEDICA '),(17,' Guatemala, Guatemala ',' 2216 - 2722 ',NULL,NULL,'JULIO CESAR GARCIA DUEÑAS ','CORPORACIÓN ANSARO, S.A. - BIOMEDICA '),(18,' Guatemala, Guatemala ',' 2506 - 5300 ',NULL,NULL,'INGA. JACKELINE OROZCO ','SEIJIRO YAZAWA IWAI GUATEMALA, S.A. - BIOMEDICA '),(19,' Guatemala, Guatemala ',' 2319 - 3477 ',NULL,NULL,'BRENDA LLAMAS ','DISS GUATEMALA, S. A. EN CONSORCIO CON DIAGNOSTIC IMAGING SUPPLIES & SERVICES, INC. - BIOMEDICA '),(20,' Guatemala, Guatemala ',' 2442 - 3129 ',NULL,NULL,'KAREN BARRIOS  ','T.A.G., S.A. - BIOMEDICA '),(21,' Guatemala, Guatemala ',' 2314 - 7070 ',NULL,NULL,'CESAR MÉNDEZ ','EQUIPOS PARA HOSPITALES Y MEDICINAS, S.A. - BIOMEDICA '),(22,' Guatemala, Guatemala ',' 2386 - 9902 ',NULL,NULL,'JUAN JOSÉ MONROY LÓPEZ ','MEDITEK SERVICES, S.A. - BIOMEDICA '),(23,' Guatemala, Guatemala ',' 2302 - 3500 ',NULL,NULL,'MAURO MÉNDEZ ','SEMICOM, S.A. - BIOMEDICA '),(24,' Guatemala, Guatemala ',' 4149 - 0011 ',NULL,NULL,'SERVICIO TECNICO DE OXIRENT S,A. ','OXI - RENT, S.A. - BIOMEDICA '),(25,' Guatemala, Guatemala ',' 2379 - 7888 ',NULL,NULL,'GABRIELA DE LEÓN ','CORPORACIÓN ANALYTICOS, S.A. - BIOMEDICA '),(26,' Guatemala, Guatemala ',' 6632 - 7100 ',NULL,NULL,'CELESTE MORALES ','REPRESENTACIONES, COMPRAS Y VENTAS, S.A. (COVESA) - BIOMEDICA '),(27,' Guatemala, Guatemala ',' 2380 - 7474 ',NULL,NULL,'LEONEL FRANCO/NUBIA ALVAREZ ','DEPOSITO DENTAL DENTECO, S.A. - BIOMEDICA '),(28,' Guatemala, Guatemala ',' 2495 - 1111 ',NULL,NULL,'JUAN CARLOS DARDON NAVAS  ','MDT INTERNACIONAL, S.A. (TECNOCHEF) - BIOMEDICA '),(29,' Guatemala, Guatemala ',' 2474 - 2507 ',' 5016 - 6868 ',NULL,'CARLOS HUMBERTO MORALES JUAREZ ','MUEBLES Y DISEÑOS INDUSTRIALES (MUDI) - BIOMEDICA '),(30,' Guatemala, Guatemala ',' 7736 - 8826 ',NULL,NULL,'JUAN DIEGO PRECIADO DE LEÓN ','DESARROLLO PROYECTOS Y SERVICIOS AGROPECUARIOS (DAGROP) - BIOMEDICA '),(31,' Guatemala, Guatemala ',' 2319 - 9494 ',NULL,NULL,'SAYDA EUNICE ALVAREZ POLANCO ','SUMINISTRO DE EQUIPO INDUSTRIAL Y MANTENIMIENTO, S.A. (SEIMA, S.A.) - BIOMEDICA '),(32,' Guatemala, Guatemala ',' 2318 - 4018 ',NULL,NULL,'JONATHAN OJEDA ','DISTRIBUIDORA DE LABORATORIO Y EQUIPO INSTITUCIONAL, S.A. (DILAB, S.A.) - BIOMEDICA '),(33,' Guatemala, Guatemala ',' 2314 - 7070 ',NULL,NULL,'CESAR MÉNDEZ ','HOSPIFARMACIA, S.A. - BIOMEDICA '),(34,' Guatemala, Guatemala ',' 2421 - 0400 ',NULL,NULL,'CARLOS MÉRIDA ','PRODUCTOS DEL AIRE DE GUATEMALA, S.A. - BIOMEDICA '),(35,' Guatemala, Guatemala ',' 2337 - 3971 ',NULL,NULL,'RICARDO SMITH ','INNOVACIONES NOVEDOSAS UNIVERSALES, S.A. (INNOVU) - BIOMEDICA '),(36,'Residenciales Catalina, 10 Calle 5-28, Villa Nueva 01064 ','4678 5711  ',NULL,'ventas2@aguatesa.com ','Keneth Pérez ','AGUATESA - Hidrosanitaria '),(37,'6a Calle 4 - 14 Zona 1, Quetzaltenango','7765 5524','77615077','recepcionproyectosmultiples@gmail.com','Erick Fernández','Proyectos Múltiples - Hidrosanitaria'),(38,'33 Ave. D2-68, zona 3, QUETZALTENANGO ','7767 6568 ',NULL,'iqcie.j@gmail.com ','Msc. Ing. Jorge Mario Ordóñez Cifuentes ','IQCIE - Hidrosanitaria '),(39,'3ra. avenida. 8-66, Zona 14. Colonia El Campo, Guatemala Ciudad de Guatemala ','55163318 ',NULL,'crelosaventas@crelosa.com ','CRELOSA ','Barbara - CRELOSA - SEGURIDAD Y SALUD OCUPACIONAL '),(40,'6ta. calle 21-37 Zona 3 Quetzaltenango ','55144494 ',NULL,'info@serviplagas.com.gt ','SERVIPLAGAS ','Ing. Oscar Serrano SERVIPLAGAS - SEGURIDAD Y SALUD OCUPACIONAL '),(41,'7 Av. 10-69 Z.5, Quetzaltenango ','77206000 ',NULL,'oquiroa@productosdelaire.com ','PRODUCTOS DEL AIRE ','Osbin Quiroa - PRODUCTOS DEL AIRE -  SEGURIDAD Y SALUD OCUPACIONAL '),(42,' Calzada Atanasio Tzul 19-97 Z.12, Complejo Empresarial El Cortijo 1 B.713, Zona 12, Ciudad de Guatemala, Guatemala  ','54118162 ',NULL,'info.gt@grupoequipsa.net ','EQUIPSA ','Jorge Mendoza - EQUIPSA - SEGURIDAD Y SALUD OCUPACIONAL '),(43,'Vía 4, 5-52 zona 4. Guatemala C.A. ','2277-5746 ','2277-5701 ','asistentegen@topke.com ','Henry Vidal ','MAQUINARIA TOPKE S.A. - ELECTRICA '),(44,'38 Avenida A 0-10 Villas de Pedregal, zona 7 Guatemala C.A. ','2439-6736 ','4018-6425 ','romeo.tovar@electrica.com.gt ','Romeo Tovar ','ELECTRICA - ELECTRICA  '),(45,'12 Av. A-45 zona 1, Quetzaltenango ','7765-2841 ','5501-4014 ','d.vargas@ceica.com / ingenieria@ceica.com ','Donato Vargas ','CEICA - ELECTRICA  '),(46,'Empresarial El Cortijo I, Interior 217, Calzada Atanasio Tzul 19-97, Guatemala, zona 13 ','2427-2424 ','4513-0713 ','info@isertec.com ','Julio David Mejía Ambrosio ','ISERTEC - ELECTRICA  '),(47,'19 Calle 17-77 zona 10 Guatemala ','223817500 ','23817676 ',NULL,'OTIS ','OTIS-MECANICA '),(48,'31 Av. Sur #632 Col. Flor Blanca, San Salvador, El Salvador ','+(503) 2500-7100 ',NULL,NULL,'Juventino ','CORPORACIÓN NOBLE-MECANICA '),(49,'10a Avenida \"C\" 16-60 Zona 17 colonia el maestro, Guatemala ','22584269 ','22584269 ','erservimedic@yahoo.es ','SERVIMEDIC ','SERVIMEDIC-MECANICA '),(50,'2 Ave. 11-60 Zona 4 Mixco Guatemala ','22097800 ','22097800 ','jirehacsa@gmail.com  ','JIREH-MECANICA ','JIREH-MECANICA '),(51,'Avenida Cirilo Flores, 4-03, zona 1, Quetzaltenango ','7765-8206 ','7765-8206 ',NULL,'Osbin Quiroa ','PRODUCTOS DEL AIRE-MECANICA '),(52,'Guatemala, Guatemala ','4394-8686 ','2483-3310 ','ventas.echoquim@gmail.com ','Mario Casasola ','ECHOQUIM - MECANICA ');
/*!40000 ALTER TABLE `servicio_tecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solitud_trabajo`
--

DROP TABLE IF EXISTS `solitud_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solitud_trabajo` (
  `idsolitud_trabajo` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(400) COLLATE latin1_general_cs DEFAULT NULL,
  `compra_material` tinyint(1) DEFAULT NULL,
  `contratar_trabajo` tinyint(1) DEFAULT NULL,
  `dirigido_solitud_trabajo` varchar(500) COLLATE latin1_general_cs DEFAULT NULL,
  `puesto_dirigido_solitud_trabajo` varchar(450) COLLATE latin1_general_cs DEFAULT NULL,
  `edificio_solitud_trabajo` varchar(100) COLLATE latin1_general_cs DEFAULT NULL,
  `jefe_solitud_trabajo` varchar(200) COLLATE latin1_general_cs DEFAULT NULL,
  `idequipo` varchar(20) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idsolitud_trabajo`),
  KEY `fk_solitud_trabajo_equipo1_idx` (`idequipo`),
  CONSTRAINT `fk_solitud_trabajo_equipo1` FOREIGN KEY (`idequipo`) REFERENCES `equipo` (`idequipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solitud_trabajo`
--

LOCK TABLES `solitud_trabajo` WRITE;
/*!40000 ALTER TABLE `solitud_trabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `solitud_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgrupo`
--

DROP TABLE IF EXISTS `subgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subgrupo` (
  `idsubgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `codigosubgrupo` int(2) unsigned zerofill NOT NULL,
  `subgrupo` varchar(150) COLLATE latin1_general_cs NOT NULL,
  `idgrupo` int(2) unsigned zerofill NOT NULL,
  PRIMARY KEY (`idsubgrupo`),
  KEY `fk_subgrupo_grupo1_idx` (`idgrupo`),
  CONSTRAINT `fk_subgrupo_grupo1` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=758 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgrupo`
--

LOCK TABLES `subgrupo` WRITE;
/*!40000 ALTER TABLE `subgrupo` DISABLE KEYS */;
INSERT INTO `subgrupo` VALUES (1,00,'Equipo para Tratamiento de Agua   ',01),(2,01,'Desmineralizador de agua  ',01),(3,02,'Destilador de agua (Eléctrico)  ',01),(4,03,'Destilador de agua (Vapor)  ',01),(5,04,'Dosificador automático de productos químicos  ',01),(6,05,'Suavizador de agua  ',01),(7,00,'   ',01),(8,99,'Otros  ',01),(9,00,'Equipo de Esterilización y Desinfección  ',02),(10,01,'Cortadora eléctrica de gasa  ',02),(11,02,'Entalcadora de guantes  ',02),(12,03,'Equipo de esterilización y limpieza por ultrasonido  ',02),(13,04,'Esterilizador a baja temperatura  ',02),(14,05,'Esterilizador a vapor (con generador de vapor independiente)  ',02),(15,06,'Esterilizador a vapor (con generador eléctrico de vapor integrado)  ',02),(16,07,'Esterilizador de gas  (EOG)  ',02),(17,08,'Esterilizador de patos (Lavachatas)  ',02),(18,09,'Esterilizador eléctrico de mesa  ',02),(19,10,'Esterilizador por Plasma  ',02),(20,11,'Horno de calor seco (Estufa)  ',02),(21,12,'Lavadora de guantes  ',02),(22,13,'Procesadora de guantes quirúrgicos  ',02),(23,14,'Secadora de guantes  ',02),(24,15,'Sellador Térmico de Bolsas  ',02),(25,00,'   ',02),(26,99,'Otros  ',02),(27,00,'Equipo Laboratorio  ',03),(28,01,'Agitador de bolsas  ',03),(29,02,'Agitador de Pipetas  ',03),(30,03,'Agitador Magnético  ',03),(31,04,'Agitador orbital  ',03),(32,05,'Aglutinómetro (Lámpara de tipeo)  ',03),(33,06,'Analizador de electrolitos  ',03),(34,07,'Analizador de gases arteriales (Gasómetro)  ',03),(35,08,'Analizador hematológico  ',03),(36,09,'Analizadores químicos automáticos y semiautomáticos  ',03),(37,10,'Aparato cultivador de tejidos  ',03),(38,11,'Balanza  ',03),(39,12,'Balanza Analítica  ',03),(40,13,'Baño de María  ',03),(41,14,'Bilirubinómetro  ',03),(42,15,'Centrífuga Refrigerada  ',03),(43,16,'Coagulómetros (Fibrómetros)  ',03),(44,17,'Colorímetro  ',03),(45,18,'Contador de Células  ',03),(46,19,'Contador de células diferencial  ',03),(47,20,'Cromatógrafo  ',03),(48,21,'Diluidores  ',03),(49,22,'Equipo de inmunoensayo  ',03),(50,23,'Equipo de Radioinmunoensayo  ',03),(51,24,'Equipo se electroforesis  ',03),(52,25,'Espectrofotómetro  ',03),(53,26,'Fluorómetro  ',03),(54,27,'Fotómetro  ',03),(55,28,'Incubadora Bacteriológica (Horno de baja temperatura)  ',03),(56,29,'Macrocentrífuga  ',03),(57,30,'Medidor de pH (potenciómetro)  ',03),(58,31,'Medidor de radioactividad  ',03),(59,32,'Microcentrífuga  ',03),(60,33,'Microscopio  ',03),(61,34,'Micrótomo  ',03),(62,35,'Osmómentro  ',03),(63,36,'Pipetas automáticas  ',03),(64,37,'Pipetas semiautomáticas  ',03),(65,38,'Procesador de tejidos  ',03),(66,39,'Refractómetro de Laboratorio  ',03),(67,40,'Rotador Serológico  ',03),(68,41,'Unidad de flujo laminar (campana)  ',03),(69,00,'   ',03),(70,99,'Otros  ',03),(71,00,'Equipo Odontológico y Accesorios  ',04),(72,01,'Amalgamador  ',04),(73,02,'Compresor dental y accesorios  ',04),(74,03,'Equipo para remover cálculo dental (Cavitrón)  ',04),(75,04,'Lámpara de fotocurado  ',04),(76,05,'Lámpara dental  ',04),(77,06,'Módulo dental  ',04),(78,07,'Sillón dental  ',04),(79,00,'   ',04),(80,99,'Otros  ',04),(81,00,'Equipo para Diagnóstico Médico  ',05),(82,01,'Audiómetro  ',05),(83,02,'Báscula  ',05),(84,03,'Campímetro  ',05),(85,04,'Detector ultrasónico de latido fetal  ',05),(86,05,'Electrocardiógrafo (ECG)  ',05),(87,06,'Electroencefalógrafo (EEG)  ',05),(88,07,'Electromiógrafo (EMG)  ',05),(89,08,'Electronistagmógrafo (ENG)  ',05),(90,09,'Equipos para diagnóstico ginecológico  ',05),(91,10,'Equipos para diagnóstico urológico  ',05),(92,11,'Espirómetro  ',05),(93,12,'Fonocardiógrafo  ',05),(94,13,'Lámpara de Hendidura  ',05),(95,14,'Lámpara para examen  ',05),(96,15,'Lensómetro  ',05),(97,16,'Medidor de parámetro físicos/Fisiológicos  ',05),(98,17,'Oculopletismógrafo  ',05),(99,18,'Proyector de optotipos  ',05),(100,19,'Sillón Oftalmológico  ',05),(101,20,'Tensiómetro  ',05),(102,21,'Tonómetro  ',05),(103,22,'Unidad de ORL (Otorrinolaringología)  ',05),(104,00,'   ',05),(105,99,'Otros  ',05),(106,00,'Equipo para Diagnóstico por imágenes Médicas y Equipos Auxiliares  ',06),(107,01,'Arterioscopio  ',06),(108,02,'Broncoscopio  ',06),(109,03,'Colonoscopio  ',06),(110,04,'Colposcopio  ',06),(111,05,'Equipo de Endoscopía  ',06),(112,06,'Equipo de Imagen por Resonancia Magnética (RM) y accesorios  ',06),(113,07,'Equipo de Rx dental  ',06),(114,08,'Equipo de Rx fijo (con Fluoroscopia)  ',06),(115,09,'Equipo de Rx fijo (sin Fluoroscopia)  ',06),(116,10,'Equipo de Rx móvil  ',06),(117,11,'Equipo para diagnóstico por ultrasonido (Ecógrafos)  ',06),(118,12,'Equipo para tomografía por emisión fotónica simple (SPECT)  ',06),(119,13,'Equipo para tomografía por emisión de positrones (PET)  ',06),(120,14,'Equipos para Mamografía  ',06),(121,15,'Equipos para Tomografía Axial Computarizada (TAC)  ',06),(122,16,'Gammacámara  ',06),(123,17,'Impresoras (subliminal o inyección, seca, color, B/N)  ',06),(124,18,'Laparoscopio  ',06),(125,19,'Negtoscopio  ',06),(126,20,'Procesadora de películas radiográficas y accesorios  ',06),(127,00,'   ',06),(128,99,'Otros  ',06),(129,00,'Equipo de Terapia  ',07),(130,01,'Aspirador  ',07),(131,02,'Banda sin fin  ',07),(132,03,'Baño de parafina  ',07),(133,04,'Baño de remolino  ',07),(134,05,'Barras (equilibrio, paralelas, suecas)  ',07),(135,06,'Bicicleta fija  ',07),(136,07,'Bombas de infusión  ',07),(137,08,'Bombas de perfusión  ',07),(138,09,'Cama Eléctrica  ',07),(139,10,'Cámara Hiperbárica  ',07),(140,11,'Camas de Cuidados Especiales  ',07),(141,12,'Cuna térmica (radiante)  ',07),(142,13,'Desfibrilador  ',07),(143,14,'Diadinámica  ',07),(144,15,'Electrocauterio  ',07),(145,16,'Electroestimulador para fisioterapia  ',07),(146,17,'Equipo de terapia radiológica  ',07),(147,18,'Equipo de tracción cervical  ',07),(148,19,'Equipo para Hemodiálisis  ',07),(149,20,'Equipo para terapia por ultrasonido  ',07),(150,21,'Equipos de gimnasia, terapia ocupacional, ayuda de rehabilitación (Mecanoterapia)  ',07),(151,22,'Equipos de hidroterapia  ',07),(152,23,'Equipos de Laserterapia  ',07),(153,24,'Equipos de terapia electroconvulsiva  ',07),(154,25,'Equipos para terapia respiratoria (Nebulizador, Humidificador, etc.)  ',07),(155,26,'Escalera con rampa  ',07),(156,27,'Estimulador electroanalgésico transcutáneo de nervios (TENS)  ',07),(157,28,'Incubadora pediátrica y neonatal  ',07),(158,29,'Lámpara Infrarroja  ',07),(159,30,'Lámpara Quirúrgica (Cielítica o móvil)  ',07),(160,31,'Máquina  corazón-pulmón  ',07),(161,32,'Máquina de anestesia  ',07),(162,33,'Marcapaso  ',07),(163,34,'Mesas de operaciones y mesas especiales  ',07),(164,35,'Microscopio quirúrgico  ',07),(165,36,'Reguladores (O2, N, Vacío, Aire Médico)  ',07),(166,37,'Resucitador Pulmonar  ',07),(167,38,'Sierras para cortar yeso  ',07),(168,39,'Sierras y taladros quirúrgicos  ',07),(169,40,'Tienda de oxígeno  ',07),(170,41,'Unidad de Autotransfusión  ',07),(171,42,'Unidad de Cirugía Láser  ',07),(172,43,'Unidad de Criocirugía  ',07),(173,44,'Unidad de diálisis peritoneal  ',07),(174,45,'Unidad de diatermia  ',07),(175,46,'Unidad de electrocirugía  ',07),(176,47,'Unidad de Fototerapia  ',07),(177,48,'Unidad de Hipo/Hipertermia  ',07),(178,49,'Unidad de Litotripsia  ',07),(179,50,'Ventilador Pulmonar  ',07),(180,00,'   ',07),(181,99,'Otros  ',07),(182,00,'Monitores de Parámetros Fisiológicos  ',08),(183,01,'Capnógrafo  ',08),(184,02,'Equipos de telemetría  ',08),(185,03,'Monitor Central  ',08),(186,04,'Monitor de Apnea  ',08),(187,05,'Monitor de Arritmia  ',08),(188,06,'Monitor de ECG  ',08),(189,07,'Monitor de EEG  ',08),(190,08,'Monitor de frecuencia cardíaca  ',08),(191,09,'Monitor de función cerebral  ',08),(192,10,'Monitor de medición transcutánea PO2 y PCO2  ',08),(193,11,'Monitor de pH  ',08),(194,12,'Monitor de presión  ',08),(195,13,'Monitor de Respiración  ',08),(196,14,'Monitor de signos vitales (ECG, T°, Respiración, Presión Sanguínea)  ',08),(197,15,'Monitor de temperatura  ',08),(198,16,'Monitor fetal  ',08),(199,17,'Oxímetro de pulso  ',08),(200,18,'Pletismógrafo  ',08),(201,19,'Unidad de Presión Sanguínea (Invasiva)  ',08),(202,00,'   ',08),(203,99,'Otros  ',08),(204,00,'Equipo de Alimentación y Dieta  ',09),(205,01,'Báscula mecánica (eléctrica) de mesa  ',09),(206,02,'Batidora universal  ',09),(207,03,'Cafetera eléctrica  ',09),(208,04,'Campana de extracción  ',09),(209,05,'Carro térmico para transporte de alimentos  ',09),(210,06,'Carro transportador de alimentos  ',09),(211,07,'Cocina de gas o eléctrica (con o sin horno)  ',09),(212,08,'Extractor de jugos  ',09),(213,09,'Freidor de profundidad  ',09),(214,10,'Horno eléctrico o a gas  ',09),(215,11,'Licuadora industrial  ',09),(216,12,'Máquina lavadora de platos  ',09),(217,13,'Marmita de volteo  ',09),(218,14,'Marmita fija  ',09),(219,15,'Molino de carne  ',09),(220,16,'Pelador de vegetales  ',09),(221,17,'Plancha de gas propano  ',09),(222,18,'Procesador de alimentos  ',09),(223,19,'Sierra para cortar hueso  ',09),(224,00,'   ',09),(225,99,'Otros  ',09),(226,00,'Equipo de Lavandería y Costurería  ',10),(227,01,'Carro para transporte de ropa húmeda  ',10),(228,02,'Carro para transporte de ropa planchada  ',10),(229,03,'Carro para transporte de ropa sucia  ',10),(230,04,'Centrífuga-extractora  ',10),(231,05,'Cortadora eléctrica de tela  ',10),(232,06,'Lavadora  ',10),(233,07,'Lavadora-extractora  ',10),(234,08,'Máquina de coser eléctrica  ',10),(235,09,'Máquina rana industrial  ',10),(236,10,'Planchador de forma  ',10),(237,11,'Planchador-Secador de rodillo (Calandria)  ',10),(238,12,'Secadora rotativa  ',10),(239,00,'   ',10),(240,99,'Otros  ',10),(241,00,'Sistemas Eléctricos  ',11),(242,01,'Iluminación (normal, emergencia)  ',11),(243,02,'Motores eléctricos  ',11),(244,03,'Panel de transferencia (manual, automática)  ',11),(245,04,'Paneles de aislamiento  ',11),(246,05,'Planta de emergencia  ',11),(247,06,'Red de Tierra física  ',11),(248,07,'Red eléctrica (normal, regulada)  ',11),(249,08,'Reguladores centrales  ',11),(250,09,'Sistema de pararrayos (Edificio)  ',11),(251,10,'Sistema de potencia ininterrumpido (UPS)  ',11),(252,11,'Subestación  ',11),(253,12,'Supresor de trasientes de voltaje  ',11),(254,13,'Tableros de distribución eléctrica  ',11),(255,14,'Transformadores de distribución para servicio en alta tensión  ',11),(256,15,'Transformadores secos  ',11),(257,00,'   ',11),(258,99,'Otros  ',11),(259,00,'Equipo del Sistema Termodinámico y Equipos auxiliares  ',12),(260,01,'Aire acondicionado central (Chiller)  ',12),(261,02,'Aire acondicionado de ventana  ',12),(262,03,'Aire acondicionado tipo Mini-Split  ',12),(263,04,'Banco de Sangre  ',12),(264,05,'Congelador (Frízer)  ',12),(265,06,'Cuartos fríos  ',12),(266,07,'Enfriador de agua (oasis)  ',12),(267,08,'Equipos para sistema de agua caliente  ',12),(268,09,'Frigoríficos  ',12),(269,10,'Generador de vapor (Caldera)  ',12),(270,11,'Incinerador  ',12),(271,12,'Refrigeradores (medicamentos, laboratorio, cocina, médico)  ',12),(272,13,'Refrigeradores Mortuorios (Cadáveres)  ',12),(273,14,'Tanque de condensado  ',12),(274,00,'   ',12),(275,99,'Otros  ',12),(276,00,'Equipos para Instalaciones Hospitalarias Especiales  ',13),(277,01,'Bombas  ',13),(278,02,'Cabeceros de encamamiento  ',13),(279,03,'Central de alarmas (incendio, fuga de gases, humo)  ',13),(280,04,'Equipo para sistema contra incendios  ',13),(281,05,'Equipos Centrales para gases Médicos (O2, N2, Vacío, Aire Médico, etc.)  ',13),(282,06,'Soporte para equipo cielítico (Pendals)  ',13),(283,07,'Tanques Hidroneumáticos  ',13),(284,00,'   ',13),(285,99,'Otro  ',13),(286,00,'Equipo de Informática, Comunicación y Accesorios  ',14),(287,01,'Equipo de Informática, Comunicación y Accesorios  ',14),(288,02,'Equipo en red telefónica (Teléfonos, Fax, Centrales, Radios)  ',14),(289,03,'Equipos en sistema buscapersonas (Voceo)  ',14),(290,04,'Equipos en sistema de llamadas de enfermeras  ',14),(291,05,'Sistema de vigilancia y seguridad (Videocámaras)  ',14),(292,06,'Sistemas de Software Institucionales  ',14),(293,00,'   ',14),(294,99,'Otros  ',14),(295,00,'Equipo para Mantenimiento Hospitalario  ',15),(296,01,'Amperímetro de gancho  ',15),(297,02,'Analizador de desfibrilador  ',15),(298,03,'Analizador de ECG (Electrocardiógrafo)  ',15),(299,04,'Analizador de Rayos X  ',15),(300,05,'Analizador de Seguridad Eléctrica  ',15),(301,06,'Analizador e Ventilador  ',15),(302,07,'Analizador Electroquirúrgico  ',15),(303,08,'Analizador para monitores de presión  ',15),(304,09,'Analizadores de agentes anestésicos  ',15),(305,10,'Aspiradora  ',15),(306,11,'Autotransformador  ',15),(307,12,'Carretilla o diablo  ',15),(308,13,'Equipo de soldadura  ',15),(309,14,'Fresadora  ',15),(310,15,'Fuentes de poder (Generador c.c.)  ',15),(311,16,'Generador de señales  ',15),(312,17,'Lavadora a presión  ',15),(313,18,'Medidor de aislamiento  ',15),(314,19,'Medidor de intensidad luminosa  ',15),(315,20,'Medidor de intensidad sonora  ',15),(316,21,'Medidor de resistencia de tierra  ',15),(317,22,'Monitor de Caldera  ',15),(318,23,'Multímetro Analógico  ',15),(319,24,'Multímetro Digital  ',15),(320,25,'Osciloscopio Digital  ',15),(321,26,'Simulador de paciente  ',15),(322,27,'Sonda de prueba lógica  ',15),(323,28,'Tacómetro Digital  ',15),(324,29,'Taladro (Barreno)  ',15),(325,30,'Torno  ',15),(326,00,'   ',15),(327,99,'Otros  ',15),(328,00,'Equipo Industrial de uso múltiple  ',16),(329,01,'Ascensores (personal, camillero, carga)  ',16),(330,02,'Báscula mecánica de plataforma  ',16),(331,03,'Compresor de aire con tanque  ',16),(332,04,'Tanque de almacenamiento combustible diario  ',16),(333,05,'Tanque de reserva  ',16),(334,00,'   ',16),(335,99,'Otros  ',16),(336,00,'Mobiliario Hospitalario  ',17),(337,01,'Andador (con o sin asiento)  ',17),(338,02,'Armario para instrumentos  ',17),(339,03,'Armario para Placas Rx  ',17),(340,04,'Atriles móviles  ',17),(341,05,'Bacinete infantil  ',17),(342,06,'Cama Giratoria (pacientes inmovilizados)  ',17),(343,07,'Cama ortopédica  ',17),(344,08,'Cama para terapia  ',17),(345,09,'Cama/ Camilla radiotransparente  ',17),(346,10,'Camillas (examen clínico, donador)  ',17),(347,11,'Camillas (transporte, emergencia, mortuoria)   ',17),(348,12,'Carro (de instrumentos, curaciones)  ',17),(349,13,'Carro porta cilindros gases médicos  ',17),(350,14,'Carro rojo (Emergencia)  ',17),(351,15,'Clasificador de Medicamentos (Unidosis)  ',17),(352,16,'Grúa (traslado pacientes)  ',17),(353,17,'Mesa (colocar yesos, lavado, preparación  ',17),(354,18,'Mesa (de Mayo, media luna, neuroquirúrgica)  ',17),(355,19,'Mesa para  autopsias  ',17),(356,20,'Mueble (odontológico, oftálmico, CoEx, etc.)  ',17),(357,21,'Portamandiles plomados  ',17),(358,22,'Silla (relajación, ajustable, cómodo)  ',17),(359,23,'Sillas de ruedas  ',17),(360,00,'   ',17),(361,99,'Otros  ',17),(362,00,'Vehículos de Transporte  ',18),(363,01,'Ambulancia  ',18),(364,02,'Automóvil  ',18),(365,03,'Camión  ',18),(366,04,'Microbús Pasajeros  ',18),(367,05,'Motocicleta  ',18),(368,06,'Panel camionetilla  ',18),(369,07,'Pic-up  ',18),(370,00,'   ',18),(371,99,'Otros  ',18),(372,00,'Obra Civil  ',19),(373,01,'Áreas verdes  ',19),(374,02,'Cielo falso  ',19),(375,03,'Drenajes  ',19),(376,04,'Duchas y accesorios  ',19),(377,05,'Elementos Arquitectónicos (cenefas, voladizos, esculturas, ornamentos, etc.)  ',19),(378,06,'Impermeabilización  ',19),(379,07,'Jardineras  ',19),(380,08,'Lavamanos y accesorios  ',19),(381,09,'Lavaplatos  ',19),(382,10,'Luminarias accesorios e interruptor   ',19),(383,11,'Mingitorios y accesorios  ',19),(384,12,'Muros (perimetrales, prefabricados, malla)  ',19),(385,13,'Paredes (pintura, azulejo, papel, epóxido)  ',19),(386,14,'Parqueos (piedrín, asfalto, cemento, tierra)  ',19),(387,15,'Pasamanos  ',19),(388,16,'Pasos peatonales  ',19),(389,17,'Piso (cerámico, granito, cemento, vinilo, conductivo)  ',19),(390,18,'Portones (manuales, eléctricos)  ',19),(391,19,'Protector (piso, camillas)  ',19),(392,20,'Puertas y cerrajes (nomenclatura color y clasificación)  ',19),(393,21,'Sanitarios y accesorios  ',19),(394,22,'Señalización (rótulos, franjas indicativas, salidas, emergencia, administrativos, etc.)  ',19),(395,23,'Talanqueras (parqueo)  ',19),(396,24,'Techo (pintura, restauración)  ',19),(397,25,'Ventanas y cerrajes  ',19),(398,00,'   ',19),(399,99,'Otros  ',19),(400,00,'Mobiliario Administrativo  ',20),(401,01,'Archiveros  ',20),(402,02,'Armarios (metálico, madera)  ',20),(403,03,'Armarios clínicos  ',20),(404,04,'Banco (carpintería, herrería, mecánica)  ',20),(405,05,'Bancos (con/sin respaldo, giratorias/fijas)  ',20),(406,06,'Batería de Sillas  ',20),(407,07,'Biombo  ',20),(408,08,'Camas tipo fuller (tamaño imperial, catre)  ',20),(409,09,'Contenedores para Basura  ',20),(410,10,'Escritorios (clínicos, secretariales, ejecutivos)  ',20),(411,11,'Estanterías (metálicas, madera)  ',20),(412,12,'Lámparas de pie (escritorio)  ',20),(413,13,'Literas  ',20),(414,14,'Mesas (comedor, reuniones)  ',20),(415,15,'Mesas de trabajo (cocina, almacén, farmacia, esterilización, laboratorio, talleres)  ',20),(416,16,'Mobiliario Clínico   ',20),(417,17,'Mobiliario fijo (Estación enfermería, información, recepción/entrega)  ',20),(418,18,'Porta urinales y patos  ',20),(419,19,'Pupitres  ',20),(420,20,'Sillas (ejecutiva, secretarial, etc.)  ',20),(421,21,'Sillones de sala (mesitas)  ',20),(422,22,'Vitrinas  ',20),(423,00,'   ',20),(424,99,'Otros  ',20),(425,00,'Reguladores ',21),(426,01,'Seccionadores ',21),(427,02,'Transformadores tipo: Pad Monted ',21),(428,03,'Tablero Principal de Distribución ',21),(429,04,'Plantas Generadoras ',21),(430,05,'Banco de capacitores ',21),(431,00,'   ',21),(432,99,'Otros ',21),(433,00,'Emergencia ',22),(434,01,'Critico ',22),(435,02,'Normal ',22),(436,03,'Ups ',22),(437,00,'   ',22),(438,99,'Otros ',22),(439,00,'Sisterna ',23),(440,01,'Planta de Tratamiento ',23),(441,02,'Ups ',23),(442,03,'Gases Medicos ',23),(443,04,'Chilers ',23),(444,05,'Calderas ',23),(445,06,'Transformadores tipo: Secos ',23),(446,07,'Tableros de distribución ',23),(447,08,'Tomacorrientes ',23),(448,09,'Luminarias ',23),(449,00,'   ',23),(450,99,'Otros ',23),(451,00,'Elevadores ',24),(452,01,'Transformadores tipo: Secos ',24),(453,02,'Tableros de distribución ',24),(454,03,'Tomacorrientes ',24),(455,04,'Luminarias ',24),(456,00,'   ',24),(457,99,'Otros ',24),(458,00,'Transformadores tipo: Secos ',25),(459,01,'Tableros de distribución ',25),(460,02,'Tomacorrientes ',25),(461,03,'Luminarias ',25),(462,00,'   ',25),(463,99,'Otros ',25),(464,00,'Soporte Medico ',26),(465,02,'Soporte informatico ',26),(466,00,'   ',26),(467,99,'Otros ',26),(468,00,'Sistema de extracción mecánica ',27),(469,01,'Sistema de aire acondicionado por expansión directa ',27),(470,02,'Sistema de aire acondicionado por agua ',27),(471,03,'Sistema de aire acondicionado por calefacción ',27),(472,00,'   ',27),(473,99,'Otros ',27),(474,00,'Vapor ',28),(475,00,'   ',28),(476,99,'Otros ',28),(477,00,'Oxigeno ',29),(478,01,'Vacío ',29),(479,02,'Óxido nitroso ',29),(480,03,'Aire medico ',29),(481,00,'   ',29),(482,99,'Otros ',29),(483,00,'Diésel ',30),(484,01,'GLP ',30),(485,00,'   ',30),(486,99,'Otros ',30),(487,00,'Sistema hidráulico ',31),(488,01,'Sistema de tracción ',31),(489,00,'   ',31),(490,99,'Otros ',31),(491,00,'Cocina ',32),(492,01,'Lavandería ',32),(493,02,'Fisioterapia ',32),(494,00,'   ',32),(495,99,'Otros ',32),(496,00,'Madera ',33),(497,01,'Metal ',33),(498,02,'Aluminio y Vidrio ',33),(499,03,'Plomada ',33),(500,04,'Portones ',33),(501,05,'PVC ',33),(502,06,'Antifuego ',33),(503,00,'   ',33),(504,99,'Otros ',33),(505,00,'Estructura de cubiertas ',34),(506,01,'Rejas perimetrales ',34),(507,02,'Postes de Iluminación Exterior ',34),(508,03,'Pasamanos ',34),(509,04,'Modulo de Gradas ',34),(510,05,'Rejillas de drenajes ',34),(511,00,'   ',34),(512,99,'Otros ',34),(513,00,'Lamina ',35),(514,01,'Losa ',35),(515,00,'   ',35),(516,99,'Otros ',35),(517,00,'Parqueos ',36),(518,01,'Capa Asfaltica ',36),(519,02,'Pasos peatonales ',36),(520,03,'Base de Jardineras  ',36),(521,04,'Juntas de Dilatación ',36),(522,05,'Muro Perimetral ',36),(523,00,'   ',36),(524,99,'Otros ',36),(525,00,'Piso ',37),(526,01,'Muros ',37),(527,02,'Pintura ',37),(528,03,'Muebles fijo ',37),(529,04,'Cielo Falso ',37),(530,00,'   ',37),(531,99,'Otros ',37),(532,00,'Aluminio y Vidrio ',38),(533,01,'Plomada ',38),(534,02,'Louver ',38),(535,00,'   ',38),(536,99,'Otros ',38),(537,00,'Jardineras ',39),(538,01,'Area Verde ',39),(539,00,'   ',39),(540,99,'Otros ',39),(541,00,'Protectores ',40),(542,01,'Señalización ',40),(543,00,'   ',40),(544,99,'Otros ',40),(545,00,'Autoclaves ',41),(546,01,'Procesador de endoscopios ',41),(547,02,'Lava BACIN ',41),(548,03,'Cortadora eléctrica de gasas ',41),(549,04,'Destilador de agua ',41),(550,00,'Hematología ',42),(551,01,'Contador diferencial ',42),(552,02,'Incubadora bacteriológica ',42),(553,03,'Química sanguínea ',42),(554,04,'Microscopios ',42),(555,05,'Urina ',42),(556,06,'Centrifugas ',42),(557,07,'Inmunizador ',42),(558,08,'Refrigeradores ',42),(559,09,'Microtomo ',42),(560,10,'Criostato ',42),(561,11,'Tanque parafina ',42),(562,12,'Sellador de bolsas ',42),(563,13,'Inclusor de tejidos ',42),(564,14,'Horno para secado ',42),(565,00,'Unidades odontológicas ',43),(566,01,'Compresor ',43),(567,02,'Amalgamadores ',43),(568,00,'Esfigmomanómetros ',44),(569,01,'Estetoscopio ',44),(570,02,'Gonioscopio ',44),(571,03,'Rinoscopio ',44),(572,04,'Laringoscopios ',44),(573,05,'Unidad de otorrinolaringología ',44),(574,06,'Termómetros ',44),(575,07,'Pesas ',44),(576,08,'Lámparas en genera ',44),(577,09,'Termómetro ',44),(578,10,'Otoscopio ',44),(579,11,'Oto Oftalmoscopio ',44),(580,12,'Laringoscopio ',44),(581,13,'Lavador de oidos ',44),(582,00,'Rayos x ',45),(583,01,'Fluoroscopia ',45),(584,02,'Móviles ',45),(585,03,'Tac ',45),(586,04,'Densitometría ',45),(587,05,'Mamografía ',45),(588,06,'Impresora de placas ',45),(589,07,'Negatoscopios ',45),(590,08,'Eco cardiógrafo ',45),(591,00,'Ventiladores mecánicos ',46),(592,01,'Bombas de infusión ',46),(593,00,'Máquinas de anestesia ',47),(594,01,'Detector ultrasónico de latido fetal ',47),(595,02,'Desfibriladores ',47),(596,03,'ECG ',47),(597,04,'Oxímetros ',47),(598,05,'Monitores multiparámetros ',47),(599,06,'Monitor fetal ',47),(600,07,'Holter ',47),(601,08,'Electroencefalógrafo ',47),(602,09,'Electromiografía ',47),(603,10,'Espirómetro ',47),(604,00,'Bombas de alimentación ',48),(605,00,'Laser terapéutico ',49),(606,01,'Compresas frías ',49),(607,02,'Compresas calientes ',49),(608,03,'Estimulador eléctrico ',49),(609,04,'Magnetoterapia ',49),(610,05,'Tracción lumbar ',49),(611,06,'Hidroterapia ',49),(612,07,'Poleas ',49),(613,08,'Bicicleta estacionaria ',49),(614,09,'Tina ',49),(615,10,'Plantoscopio ',49),(616,11,'Fototerapia ',49),(617,00,'Camas ',50),(618,01,'Camillas ',50),(619,02,'Sillas de ruedas ',50),(620,03,'Carritos de medicamentos ',50),(621,04,'Mesas de exploración ',50),(622,05,'Mesas quirúrgicas ',50),(623,06,'Cama de parto ',50),(624,00,'Unidades oftalmológicas ',51),(625,01,'Microscopio oftalmológico ',51),(626,02,'Autoqueratorefractometro ',51),(627,03,'Oftalmoscopio ',51),(628,04,'Oftalmoscopio indirecto ',51),(629,05,'Lensometro ',51),(630,06,'Tonómetro de identación ',51),(631,07,'Exoftálmometro ',51),(632,00,'Incubadoras ',52),(633,01,'Módulos térmicos ',52),(634,00,'Aspiradores ',53),(635,01,'Torres ',53),(636,02,'Electro cauterizador ',53),(637,03,'Sierra corta yeso ',53),(638,04,'Taladro quirúrgico ',53),(639,05,'Torniquete automatico ',53),(640,06,'Sierra corta hueso ',53),(641,00,'Flujómetros ',54),(642,01,'Percutores ',54),(643,02,'Nebulizador ',54),(644,03,'Resucitador manual ',54),(645,04,'Humificador ',54),(646,00,'Otros ',55),(647,00,'Extinguidores de polvo químico seco ',56),(648,01,'Extinguidores de dióxido de carbono ',56),(649,02,'Extinguidores Halogenados ',56),(650,03,'Extinguidores clase K ',56),(651,04,'Sistema de supresión de incendios ',56),(652,00,'   ',56),(653,99,'Otros ',56),(654,00,'Radios de comunicación local ',57),(655,01,'Repetidora fija ',57),(656,00,'   ',57),(657,99,'Otros ',57),(658,00,'Cebaderos ',58),(659,01,'Trampas de captura ',58),(660,02,'Gel insecticidas ',58),(661,00,'   ',58),(662,99,'Otros ',58),(663,00,'Bombas de presión constante ',59),(664,01,'Sistema contra incendios ',59),(665,02,'Tanque hidroneumático ',59),(666,03,'Variador de frecuencia ',59),(667,00,'  ',59),(668,99,'Otros ',59),(669,00,'Cuarto de cloración ',60),(670,01,'Cuarto de tableros ',60),(671,00,'   ',60),(672,99,'Otros ',60),(673,00,'Tanque de pretratamiento ',61),(674,01,'Tanque de homogenización ',61),(675,02,'Tanque aireador ',61),(676,03,'Tanque digestor de lodos ',61),(677,04,'Tanque coronador o de cloración ',61),(678,05,'Cuarto de tableros ',61),(679,00,'   ',61),(680,99,'Otros ',61),(681,00,'Maquinas y herramientas menores',00),(682,01,'Computadora de Escritorio',62),(683,02,'LapTop',62),(684,03,'Impresora',62),(685,04,'Tablet',62),(686,05,'Fotocopiadora',62),(687,06,'UPS',62),(688,07,'Monitor',62),(689,08,'Escaner',62),(690,09,'Proyector',62),(691,10,'Telefonia IP',62),(692,00,'',62),(693,99,'Otros',62),(694,01,'Switch',63),(695,02,'Odf Red',63),(696,03,'Acces Point',63),(697,04,'Wirless controller',63),(698,05,'Ups Red',63),(699,06,'Servidor',63),(700,07,'Media Converter',63),(701,08,'Biometricos',63),(702,09,'Firewall',63),(703,00,'',63),(704,99,'Otros',63),(705,01,'Camara',64),(706,02,'Administrador de red',64),(707,03,'Grabador',64),(708,04,'Pantalla CCTV',64),(709,05,'Joystick',64),(710,06,'Consolas',64),(711,07,'Encoder',64),(712,00,'',64),(713,99,'Otros',64),(714,01,'Detectores de Humo',65),(715,02,'Activador Manual de Humo',65),(716,03,'Panel de incendios',65),(717,04,'Luces Estroboscopicas',65),(718,05,'BASS',65),(719,06,'SIPASS',65),(720,07,'Teclados de Acceso',65),(721,08,'Servidor PLC',65),(722,09,'Talanqueras',65),(723,10,'Bocinas de Acceso',65),(724,00,'',65),(725,99,'Otros',65),(726,01,'Luces Llamado',66),(727,02,'Botones de Cama',66),(728,03,'Botones de Ducha',66),(729,04,'Botones de Ba?o',66),(730,05,'Marcador',66),(731,06,'Tablet LLamado Enfemera',66),(732,07,'Acces Point Llamado Enfermera',66),(733,08,'Regleta Llamado',66),(734,09,'Beeper',66),(735,10,'Repetidor',66),(736,00,'',66),(737,99,'Otros',66),(738,01,'Raspberry PI',67),(739,02,'Amplificadores',67),(740,03,'Bocinas',67),(741,04,'Tablet de Musica',67),(742,05,'Telefonos VoIp Voceo',67),(743,06,'Zonificador',67),(744,00,'',67),(745,99,'Otros',67),(746,01,'Antena',68),(747,02,'Relojes IP',68),(748,03,'Servidor NTP',68),(749,00,'',68),(750,99,'Otros',68),(751,01,'Televisores',69),(752,02,'DVD',69),(753,03,'Modulador',69),(754,04,'ODF Video',69),(755,05,'MiniSplit',69),(756,00,'',69),(757,99,'Otros',69);
/*!40000 ALTER TABLE `subgrupo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_updActualSubgrupo` AFTER INSERT ON `subgrupo`
 FOR EACH ROW UPDATE conf_subgrupo set conf_subgrupo.actual=conf_subgrupo.actual + 1 
WHERE conf_subgrupo.idgrupo=NEW.idgrupo */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `subgrupo_carac_tecnica`
--

DROP TABLE IF EXISTS `subgrupo_carac_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subgrupo_carac_tecnica` (
  `idsubgrupo_carac_tecnica` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_subgrupo_carac_tecnica` varchar(100) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idsubgrupo_carac_tecnica`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgrupo_carac_tecnica`
--

LOCK TABLES `subgrupo_carac_tecnica` WRITE;
/*!40000 ALTER TABLE `subgrupo_carac_tecnica` DISABLE KEYS */;
INSERT INTO `subgrupo_carac_tecnica` VALUES (1,'Subgrupo 1');
/*!40000 ALTER TABLE `subgrupo_carac_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgrupo_prueba`
--

DROP TABLE IF EXISTS `subgrupo_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subgrupo_prueba` (
  `idsubgrupo_prueba` int(11) NOT NULL AUTO_INCREMENT,
  `subgrupo_prueba` varchar(1000) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idsubgrupo_prueba`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgrupo_prueba`
--

LOCK TABLES `subgrupo_prueba` WRITE;
/*!40000 ALTER TABLE `subgrupo_prueba` DISABLE KEYS */;
INSERT INTO `subgrupo_prueba` VALUES (1,'ejemplo 1');
/*!40000 ALTER TABLE `subgrupo_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgrupo_rutina`
--

DROP TABLE IF EXISTS `subgrupo_rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subgrupo_rutina` (
  `idsubgrupo_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `subgrupo_rutina` varchar(1000) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idsubgrupo_rutina`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgrupo_rutina`
--

LOCK TABLES `subgrupo_rutina` WRITE;
/*!40000 ALTER TABLE `subgrupo_rutina` DISABLE KEYS */;
INSERT INTO `subgrupo_rutina` VALUES (1,'ejemplo 1'),(2,'Luminaria');
/*!40000 ALTER TABLE `subgrupo_rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnico_externo`
--

DROP TABLE IF EXISTS `tecnico_externo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnico_externo` (
  `idtecnico_externo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tecnico_externo` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `telefono_tecnico_externo` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  `idservicio_tecnico` int(11) NOT NULL,
  PRIMARY KEY (`idtecnico_externo`),
  KEY `fk_tecnico_externo_servicio_tecnico1_idx` (`idservicio_tecnico`),
  CONSTRAINT `fk_tecnico_externo_servicio_tecnico1` FOREIGN KEY (`idservicio_tecnico`) REFERENCES `servicio_tecnico` (`idservicio_tecnico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnico_externo`
--

LOCK TABLES `tecnico_externo` WRITE;
/*!40000 ALTER TABLE `tecnico_externo` DISABLE KEYS */;
INSERT INTO `tecnico_externo` VALUES (1,'Keneth P?rez','4678 5711',36),(2,'Erick Fernandez','7765 5524',37),(3,'Msc. Ing. Jorge Mario Ordo?ez Cifuentes','7767 6568',38),(4,'AB - FLAVIO FEDERICO DAVILA','2491-3900',2),(5,'AB - WILFREDO GARC?A','2317-2121',3),(6,'AB - BRENDA LLAMAS','2319-3477',4),(7,'AB - MARCO ANTONIO LOCON ','2418-2813',5),(8,'AB - MAR?A CRISTINA BOJ?RQUEZ MEJ?A','2309-9421',6),(9,'AB -  ING. RUDY YAC ','2428-9834',7),(10,'AB - WALTER GONZALEZ / SUSAN FUENTES','2223-8600',8),(11,'AB - LIC. MARLON STUARDO ORELLANA RECINOS','2310-8310',9),(12,'AB - ELIGIO ALBERTO REYES AMBROSIO','2420-9500',10),(13,'AB - MARIO REN? GRAJEDA RECINOS','2333-7260',11),(14,'AB - ING. FRANCISCO GIRON','2500-7131 / 2500-7100',12),(15,'AB - JESUS NU?EZ  (1A OPCION) /   ALMA MU?OZ (2DA OPCION)','2336-7766 ',13),(16,'AB - MANUEL CALDERON','2295-9952/ 53',14),(17,'AB - JORGE MARIO AQUINO HERN?NDEZ','2334-2509',15),(18,'AB - EDGAR CALEL','2302-8585',16),(19,'AB - JULIO CESAR GARCIA DUE?AS','2216-2722',17),(20,'AB - INGA. JACKELINE OROZCO','2506-5300',18),(21,'AB - BRENDA LLAMAS','2319-3477',19),(22,'AB - KAREN BARRIOS ','2442-3129',20),(23,'AB - CESAR M?NDEZ','2314-7070',21),(24,'AB - JUAN JOS? MONROY L?PEZ','2386-9902',22),(25,'AB - MAURO M?NDEZ','2302-3500',23),(26,'AB - SERVICIO TECNICO DE OXIRENT S,A.','4149-0011',24),(27,'AB - GABRIELA DE LE?N','2379-7888',25),(28,'AB - CELESTE MORALES','6632-7100',26),(29,'AB - LEONEL FRANCO/NUBIA ALVAREZ','2380-7474',27),(30,'AB - JUAN CARLOS DARDON NAVAS ','2495-1111',28),(31,'AB - CARLOS HUMBERTO MORALES JUAREZ','2474-2507 / 5016-6868',29),(32,'AB - JUAN DIEGO PRECIADO DE LE?N','7736-8826',30),(33,'AB - SAYDA EUNICE ALVAREZ POLANCO','2319-9494',31),(34,'AB - JONATHAN OJEDA','2318-4018',32),(35,'AB - CESAR M?NDEZ','2314-7070',33),(36,'AB - CARLOS M?RIDA','2421-0400',34),(37,'AB - RICARDO SMITH','2337-3971',35),(38,'SO-Barbara','55163318',39),(39,'SO-Ing. Oscar Serrano ','55144494',40),(40,'SO-Osbin Quiroa','77206000',41),(41,'SO-Ing. Jorge Mendoza ','54118162',42);
/*!40000 ALTER TABLE `tecnico_externo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnico_interno`
--

DROP TABLE IF EXISTS `tecnico_interno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnico_interno` (
  `idtecnico` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tecnico` varchar(400) COLLATE latin1_general_cs NOT NULL,
  `codigo_tecnico` varchar(45) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idtecnico`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnico_interno`
--

LOCK TABLES `tecnico_interno` WRITE;
/*!40000 ALTER TABLE `tecnico_interno` DISABLE KEYS */;
INSERT INTO `tecnico_interno` VALUES (1,'AC-Erwin Christian Francisco Esteban','9101'),(2,'AC-Miguel Antonio Ovando L?pez','9004'),(3,'AC-Evert Fernando Villagr?n Momotic','9111'),(4,'AC-Franki Ara?n Gramajo De Le?n ','9112'),(5,'AC-Adr?an Abel Pac L?pez','9145'),(6,'AC-Efra?n Cucum Hern?ndez','9146'),(7,'AC-Luis Alberto P?rez Hern?ndez','9121'),(8,'AC-Rafael Garc?a Vicente','9131'),(9,'AC-Hugo Humberto Escobar Cortez','9142'),(10,'AC-Jos? Luis Bautista Monz?n','9147'),(11,'AC-Juan Raymundo Yac','9133'),(12,'AC-Gerson Ricardo Calder?n Mazariegos','9143'),(13,'AC-Byron Jacobo Cifuentes Rodr?guez','9148'),(14,'AC-Deany Eduard Tax Chuc','9141'),(15,'AC-Pedro Jos? P?rez V?squez','9149'),(16,'AC-Kevin Estuardo Arango M?rida','9132'),(17,'AC-Filogonio Abel Aldair Lima Aguilar','9134'),(18,'AC-Mario Gamaliel S?nchez Contreras','9144'),(19,'AH-Macario V?squez Marvin Humberto','9241'),(20,'AH-Ruiz Rodr?guez Felipe Dionisio','9244'),(21,'AH-Mazariegos Ral?n Isa?as Gamaliel','9245'),(22,'AH-Cutz Gamarro Eswin Lucilo','9242'),(23,'AH-Tomas P?rez Enilson Natanael','9243'),(24,'AH-Vel?squez Xicar? Giovanni Daniel','9221'),(25,'AH-Fuentes Tobar German Francisco','9211'),(26,'AH-Tacam Sic Jonat?n Natanael','9201'),(27,'AE - Marco Vinicio L?pez Alvarado','9301'),(28,'AE - Marcos Alejandro Vel?squez Ovalle','9312'),(29,'AE - William Saul Garc?a Rosales','9321'),(30,'AE - Maynor David Xet Sontay','9332'),(31,'AE - Bryan Alberto Salanic Barreno','9333'),(32,'AE - Omar Fernando Galicia Tob?as','9334'),(33,'AE - Walter Isidro L?pez','9335'),(34,'AE - Yefry Adonias Lux Serech','9341'),(35,'AE - Jorge Jacobo P?rez','9342'),(36,'AE - Luis Raul Toj Florencio','9343'),(37,'AE - Heber Eliezer Tupul Otuc','9344'),(38,'AB - Waldemar Esa? Garc?a B?maca','9511'),(39,'AB - Erwin Eduardo Escobar Rodas','9512'),(40,'AB - Kenneth Rolando Juarez Diaz','9531'),(41,'SO-Edgar Fidel Sacalxot Gonz?lez','9021');
/*!40000 ALTER TABLE `tecnico_interno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_rutina`
--

DROP TABLE IF EXISTS `tipo_rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_rutina` (
  `idtipo_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_rutina` varchar(100) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idtipo_rutina`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_rutina`
--

LOCK TABLES `tipo_rutina` WRITE;
/*!40000 ALTER TABLE `tipo_rutina` DISABLE KEYS */;
INSERT INTO `tipo_rutina` VALUES (1,'ejemplo 1');
/*!40000 ALTER TABLE `tipo_rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_trabajo`
--

DROP TABLE IF EXISTS `tipo_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_trabajo` (
  `idtipo_trabajo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo` varchar(450) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idtipo_trabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_trabajo`
--

LOCK TABLES `tipo_trabajo` WRITE;
/*!40000 ALTER TABLE `tipo_trabajo` DISABLE KEYS */;
INSERT INTO `tipo_trabajo` VALUES (1,'ejemplo 1'),(2,'Supervisión de Trabajos Contratados'),(3,'Evaluación y Mediciones para Contratar'),(4,'Supervisión y Reparación de Trabajos'),(5,'Trabajos que generan calor, chispas o flamas'),(6,'Trabajos en alto voltaje'),(7,'Trabajos en altura'),(8,'Trabajos en equipo con partes en movimiento'),(9,'Trabajos en espacio confinados'),(10,'Trabajos de excavación y/o rupturas'),(11,'Trabajos mecánicos'),(12,'Trabajos con materiales peligrosos'),(13,'Izaje y levantamiento de cargas'),(14,'Otros');
/*!40000 ALTER TABLE `tipo_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomanual`
--

DROP TABLE IF EXISTS `tipomanual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipomanual` (
  `idtipomanual` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_manual` varchar(400) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idtipomanual`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomanual`
--

LOCK TABLES `tipomanual` WRITE;
/*!40000 ALTER TABLE `tipomanual` DISABLE KEYS */;
INSERT INTO `tipomanual` VALUES (1,'Técnico'),(2,'Usuario');
/*!40000 ALTER TABLE `tipomanual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipounidadsalud`
--

DROP TABLE IF EXISTS `tipounidadsalud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipounidadsalud` (
  `idtipounidad` varchar(1) COLLATE latin1_general_cs NOT NULL,
  `nivel_atencion` varchar(45) COLLATE latin1_general_cs NOT NULL,
  `categoria` varchar(45) COLLATE latin1_general_cs NOT NULL,
  `comp_res` varchar(45) COLLATE latin1_general_cs NOT NULL,
  `unidad_medica` varchar(400) COLLATE latin1_general_cs NOT NULL,
  `idhospital` int(11) NOT NULL,
  PRIMARY KEY (`idtipounidad`),
  UNIQUE KEY `idtipounidad_UNIQUE` (`idtipounidad`),
  KEY `fk_tipounidadsalud_hospital1_idx` (`idhospital`),
  CONSTRAINT `fk_tipounidadsalud_hospital1` FOREIGN KEY (`idhospital`) REFERENCES `hospital` (`idhospital`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipounidadsalud`
--

LOCK TABLES `tipounidadsalud` WRITE;
/*!40000 ALTER TABLE `tipounidadsalud` DISABLE KEYS */;
INSERT INTO `tipounidadsalud` VALUES ('A','Primer nivel (Nivel I) ','I-1 ','1','Consultorio II: Sólo Consulta externa general, atendida por médico general. ',1),('B','Segundo nivel ','II-1 ','2','Consultorio II: Consulta externa general con algunas especialidades básicas en algunos casos puede incluir atención de emergencia o encamamiento. ',1),('C','(Nivel II) ','II-2 ','3','Hospital General I: Consulta externa, hospitalización y emergencia de mediana complejidad con las 5 especialidades básicas (MI,C,P,GO y T) ',1),('D','Tercer nivel (Nivel III) ','III-1 ','4','Consultorio III: Sólo consulta externa especializada con subespecialización. ',1),('E','Tercer nivel (Nivel III) ','III-2 ','5','Hospital General II: Consulta externa, hospitalización y emergencia de alta complejidad con especialidades y subespecialidades. ',1),('F','Tercer nivel (Nivel III) ','III-3 ','6','Hospital de una especialidad de referencia nacional:  (Traumatología, Salud Mental, Gineco Obstetricia, Rehabilitación y otras) ',1),('G','Cuarto nivel (Nivel IV) ','IV-1 ','7','Hospital Superespecializado: Para trasplantes, micro neurocirugía y otras, incluyendo centros de diagnóstico altamente especializados. ',1),('H','Administración Nivel ','V-1 ','8','Direcciones Regionales ',1),('I','Departamental ','V-2 ','8','Direcciones Departamentales ',1),('J','Departamental ','V-3 ','8','Delegaciones Departamentales ',1),('K','Departamental ','V-4 ','8','Caja Departamental ',1),('L','Departamental ','V-5 ','8','Unidades Integrales de Adscripción (UIA) y Unidades de Adscripción ',1),('M','Administración Nivel Central ','VI-1 ','9','Oficinas Centrales ',1),('N','Administración Nivel Central ','VI-2 ','9','Oficinas Administrativas (Edificio Administrativo, Edificio Torre Café) ',1),('O','Administración Nivel Central ','VI-3 ','9','Bodega, Archivo, Predio ',1),('P','Administración Nivel Central ','VI-4 ','9','Asistencia (Hemodiálisis) ',1),('Q','Administración Nivel Central ','VI-5 ','9','Otras Entidades ',1);
/*!40000 ALTER TABLE `tipounidadsalud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadsalud`
--

DROP TABLE IF EXISTS `unidadsalud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidadsalud` (
  `idunidadsalud` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `unidad_salud` varchar(100) COLLATE latin1_general_cs NOT NULL,
  `idhospital` int(11) NOT NULL,
  PRIMARY KEY (`idunidadsalud`),
  UNIQUE KEY `idunidadsalud_UNIQUE` (`idunidadsalud`),
  KEY `fk_unidadsalud_hospital1_idx` (`idhospital`),
  CONSTRAINT `fk_unidadsalud_hospital1` FOREIGN KEY (`idhospital`) REFERENCES `hospital` (`idhospital`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadsalud`
--

LOCK TABLES `unidadsalud` WRITE;
/*!40000 ALTER TABLE `unidadsalud` DISABLE KEYS */;
INSERT INTO `unidadsalud` VALUES (01,'Consultorio II',1),(02,'Hospital General I',1),(03,'Consultorio III',1),(04,'Hospital General II',1),(05,'Hospital de una especialidad de referencia nacional',1),(06,'Hospital Superespecializado',1),(07,'Direcciones Regionales ',1),(08,'Direcciones Departamentales ',1),(09,'Delegaciones Departamentales ',1),(10,'Caja Departamental ',1),(11,'Unidades Integrales de Adscripción (UIA) y Unidades de Adscripción ',1),(12,'Oficinas Centrales ',1),(13,'Oficinas Administrativas',1),(14,'Bodega, Archivo, Predio ',1),(15,'Asistencia (Hemodiálisis) ',1),(16,'Otras Entidades ',1);
/*!40000 ALTER TABLE `unidadsalud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `email` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `password` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `remember_token` varchar(100) COLLATE latin1_general_cs DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrador','admin@igss.com','$2y$10$rSdLPKvcLn0Pn8iORt./0.khvoe.9/B/JiAUtfm.nclf4fPtkj4GC','utqVfzELgVpkkCMvxmtxGwmz71HBroGB6YsXF7ZKyaZtsXbjRn7X828I7YSm','2018-10-24 16:38:16','2018-10-24 16:38:16'),(2,'Alicia Izaguirre','alicia.izaguirre@igss.com','$2y$10$R2DCucwOaua.e7nmCmws6eAWSjRsnPuUxlcSH9lhb.FgQSzDfVZNu','Em9TTE6xiVBvYl5NFgJyeXUsAqVn7e9lkLk4THSiin36NlClak93fdYuK1Cz','2019-05-07 21:04:47','2019-05-07 21:04:47'),(3,'German Fuentes','german.fuentes@igssgt.org','$2y$10$AmsG9jN305gx08ILeK.2I.MyOUrxpljtC8TXmdo8Ux0EE07jCd3RG','NYI8AqKjWETBGuZOY5xtrzcXpEXfNUXxFCiMkXtKUEzOnCASruPxleVAISmt','2019-05-07 21:19:35','2019-05-07 21:19:35'),(4,'Evert Villagran','evert.villagran@igssgt.org','$2y$10$ef7uCI4/xmg2sskgpCGdh.cKc20WEu0O374pT02JgBDSQpOK3TEqe','gyU0gWdNBBMERnNerUpZPDKHpMhZqrdVw9Acp5hf6Vw97pgTaB1UyTMthDla','2019-05-07 21:20:44','2019-05-07 21:20:44'),(5,'Diana Mérida','diana.merida@igssgt.org','$2y$10$zYpczpDY7aUeKJ4zQf8BYOv.L7Ahn.UCWXxVQ4lYhJDIitLdKuN/a','WlC7vLB70abEcRqeeMd1UujzVjue5YneCm5x8YNKHVpv7mBmQwwdC7u1dTuc','2019-05-07 21:21:05','2019-05-07 21:21:05'),(6,'Sergio Martínez','sergioa.martinez@igssgt.org','$2y$10$TOM8wPXf4r2xxkFJMHcdOupotEDM6Ael63tOjenYIKTWrZ5oi0tSy','YF4rXvILbgtLslnwYMkBP9Si26MXyMmgjAEEpzODyFPdlC3GKqRp1xXFfip9','2019-05-07 21:21:27','2019-05-07 21:21:27'),(7,'Erwin Escobar','eredesro@gmail.com','$2y$10$AjeT9pDeRw46wbao6pIWUOsVVuhmFp5zFQSnttMy71Wy8yGR7KsRO','QYmR6chHsQuU8CtpdEM0oSit5kTNQemlLWYkR9mckKgDk8LUpBtdXysq16Vu','2019-05-07 21:22:29','2019-05-07 21:22:29'),(8,'Franki Gramajo','franki.gramajo@igss.org','$2y$10$fY/h3ZpWLKCqgOmN1t1UfON1Vl30y5uZkGCV7NuAlrgPt2UWcgbhW','NVP8Pq0rD5djZKI12LWFO1flVAiMg82xQBZYJXG840ZMC45SB4bwuVPgv3DY','2019-05-07 21:25:40','2019-05-07 21:25:40'),(9,'waldemar garcia','waldemar.garcia@igssgt.org','$2y$10$tz0i1vGs5GJ48qtEZb98IeMWFcg0M7v5rk7RbAMhO3EsBxTSrRnDK','W9PX6qaY7novcJrRMJmCAFe2X3JGljaEGosumEk3XcSU2wBR9RMb3QxR3Ccj','2019-05-07 21:27:58','2020-03-06 18:24:18'),(10,'Marcos Velásquez','marcos.velasquez@igssgt.org','$2y$10$EB0CxVDGJ/J6.hrrCgkJkOnqCA/GFVyFpoGapVanedLSk98WqaLjS','eD3nxNIkahpgn8Zs4l5Uz5NjyD7H2rAM2z0oMCzywPSKtUYKibwNwugfwEdX','2019-05-07 22:06:24','2019-05-07 22:06:24'),(11,'Bryan Salanic','yan.salanic@gmail.com','$2y$10$8fSt2MHGlsD.evt56SC1q.uPsFbqwU14iWIMDQZWLzuIaw2dfKq3S',NULL,'2019-06-27 21:40:29','2019-06-27 21:40:29'),(12,'Pamela Rodriguez','pamelar56@gmail.com','$2y$10$DHROgyoFD3bCL.JTEwU6UO7Cw07T5wuKlozIgn8RoyoMmxTYJGptW','aal8sOdH0NiAsTDdWnjSVi5WHhGsiYET9S4ysI25QpfrNxC46Uq1cEODdXoD','2019-07-04 18:00:04','2020-02-25 18:01:57'),(13,'Kenneth Juarez','kenneth.juarez@igssgt.org','$2y$10$esIVN3pgnz9lb7kwRrlkHefqhy9KR3H1ovkE.37q.QXSF7hpBZU9.',NULL,'2019-09-24 15:35:37','2019-09-24 15:45:43'),(14,'Wiliam Daniel Velasquez','wiliam.velasquez@igssgt.org','$2y$10$edoi2V2dOSLlLz7WBeGbC.UCC9yUMRmCubVx12eOr.achowiJhBu6',NULL,'2019-09-24 17:11:12','2020-06-12 20:08:24'),(15,'Edgar Sacalxot','edgar.sacalxot@igssgt.org','$2y$10$UYYJKwQGFABvIOhCIhONO.yDgPgviNkOggK73zNsx8zM.UDn3lcSm',NULL,'2019-09-24 17:14:41','2019-09-24 17:14:41'),(16,'Denis','denisjuarez98@gmail.com','$2y$10$cp5dDkMsvzBwJ/uWJU1VMOthJEBNy7Fakm5SSJ0ig5m2FnEy8IJla','jTzk5HauZQ8cuInQkSE91Dcsgqvsxfk2ApgoedPAyyFoZrdwKK9Enx6QlN9B','2020-03-23 23:45:21','2020-03-23 23:45:21'),(17,'Werner Coyoy','werner.coyoy@igssgt.org','$2y$10$a3aJRF1sDuDH3CeyOPeWu.MAY44KVsXJTljDWIi9xGHIjn9XvqXYu',NULL,'2020-05-13 17:49:49','2020-05-13 17:49:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valor_ref_esp`
--

DROP TABLE IF EXISTS `valor_ref_esp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valor_ref_esp` (
  `idvalor_ref_esp` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_valor_ref_esp` varchar(100) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idvalor_ref_esp`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valor_ref_esp`
--

LOCK TABLES `valor_ref_esp` WRITE;
/*!40000 ALTER TABLE `valor_ref_esp` DISABLE KEYS */;
INSERT INTO `valor_ref_esp` VALUES (1,'valor referencia 1');
/*!40000 ALTER TABLE `valor_ref_esp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valor_ref_prueba`
--

DROP TABLE IF EXISTS `valor_ref_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valor_ref_prueba` (
  `idvalor_ref_prueba` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(1000) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idvalor_ref_prueba`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valor_ref_prueba`
--

LOCK TABLES `valor_ref_prueba` WRITE;
/*!40000 ALTER TABLE `valor_ref_prueba` DISABLE KEYS */;
INSERT INTO `valor_ref_prueba` VALUES (1,'ejemplo 1');
/*!40000 ALTER TABLE `valor_ref_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valor_ref_rutina`
--

DROP TABLE IF EXISTS `valor_ref_rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valor_ref_rutina` (
  `idvalor_ref_rutina` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(1000) COLLATE latin1_general_cs DEFAULT NULL,
  PRIMARY KEY (`idvalor_ref_rutina`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valor_ref_rutina`
--

LOCK TABLES `valor_ref_rutina` WRITE;
/*!40000 ALTER TABLE `valor_ref_rutina` DISABLE KEYS */;
INSERT INTO `valor_ref_rutina` VALUES (1,'ejemplo 1'),(2,'Rayos X Edificio A');
/*!40000 ALTER TABLE `valor_ref_rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valor_ref_tec`
--

DROP TABLE IF EXISTS `valor_ref_tec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valor_ref_tec` (
  `idvalor_ref_tec` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_valor_ref_tec` varchar(100) COLLATE latin1_general_cs NOT NULL,
  PRIMARY KEY (`idvalor_ref_tec`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valor_ref_tec`
--

LOCK TABLES `valor_ref_tec` WRITE;
/*!40000 ALTER TABLE `valor_ref_tec` DISABLE KEYS */;
INSERT INTO `valor_ref_tec` VALUES (1,'Valor referencia');
/*!40000 ALTER TABLE `valor_ref_tec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbmantenmiento'
--

--
-- Dumping routines for database 'dbmantenmiento'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-01 15:24:42
