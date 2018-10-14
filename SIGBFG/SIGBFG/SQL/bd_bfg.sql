CREATE DATABASE  IF NOT EXISTS `bd_bfg` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bd_bfg`;
-- MySQL dump 10.13  Distrib 5.6.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_bfg
-- ------------------------------------------------------
-- Server version	5.6.41-log

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
-- Table structure for table `met_metas`
--

DROP TABLE IF EXISTS `met_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_metas` (
  `met_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `met_mes` varchar(45) NOT NULL,
  `met_ano` varchar(45) NOT NULL,
  `met_meta` int(11) NOT NULL,
  `met_produto` varchar(45) NOT NULL,
  `met_descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`met_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `met_metas`
--

LOCK TABLES `met_metas` WRITE;
/*!40000 ALTER TABLE `met_metas` DISABLE KEYS */;
INSERT INTO `met_metas` VALUES (1,'abril-2','2018-2',3332,'Estrutural-2','Bloco perfeito para construção de paredes 2');
/*!40000 ALTER TABLE `met_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_os`
--

DROP TABLE IF EXISTS `tbl_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_os` (
  `os_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `os_quantidade` int(11) NOT NULL,
  `os_produto` varchar(45) NOT NULL,
  `os_dataInicio` varchar(45) NOT NULL,
  `os_dataExpiracao` varchar(45) NOT NULL,
  `os_descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`os_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_os`
--

LOCK TABLES `tbl_os` WRITE;
/*!40000 ALTER TABLE `tbl_os` DISABLE KEYS */;
INSERT INTO `tbl_os` VALUES (1,1000,'Estrutural','01','02','paredes'),(2,4000,'Estrutural','01','02','paredes'),(3,1000,'Estrutural','01','02','compor paredes'),(4,1000,'Estrutural','01','02','excelente para compor paredes');
/*!40000 ALTER TABLE `tbl_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pessoa`
--

DROP TABLE IF EXISTS `tbl_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pessoa` (
  `pes_id` int(10) unsigned NOT NULL,
  `pes_nome` varchar(255) NOT NULL,
  `pes_email` varchar(255) NOT NULL,
  `pes_senha` varchar(255) NOT NULL,
  `pes_tipo` varchar(11) NOT NULL,
  PRIMARY KEY (`pes_id`),
  UNIQUE KEY `pes_id_UNIQUE` (`pes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pessoa`
--

LOCK TABLES `tbl_pessoa` WRITE;
/*!40000 ALTER TABLE `tbl_pessoa` DISABLE KEYS */;
INSERT INTO `tbl_pessoa` VALUES (1,'jose','magal_jr@hotmail.com','m1234567','1'),(2,'junior','magal.50@gmail.com','1234567m','2');
/*!40000 ALTER TABLE `tbl_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto`
--

DROP TABLE IF EXISTS `tbl_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_produto` (
  `pro_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pro_nome` varchar(50) NOT NULL,
  `pro_preco` double NOT NULL,
  `pro_quantidade` int(11) DEFAULT NULL,
  `pro_descricao` varchar(255) DEFAULT NULL,
  `pro_quantidadeMinima` int(11) NOT NULL,
  `pro_foto` varchar(255) DEFAULT NULL,
  `pro_ativo` int(1) NOT NULL,
  PRIMARY KEY (`pro_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-14 20:27:32
