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
-- Table structure for table `giro`
--

DROP TABLE IF EXISTS `giro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giro` (
  `gir_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `gir_produto` varchar(255) NOT NULL,
  `gir_estoqueMaximo` int(11) NOT NULL,
  `gir_estoqueMinimo` int(11) DEFAULT NULL,
  `gir_estoqueMedio` int(11) DEFAULT NULL,
  `gir_estoqueAtual` int(11) DEFAULT NULL,
  `gir_vendas` int(11) NOT NULL,
  PRIMARY KEY (`gir_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giro`
--

LOCK TABLES `giro` WRITE;
/*!40000 ALTER TABLE `giro` DISABLE KEYS */;
INSERT INTO `giro` VALUES (1,'Bloco de Vedação',100,NULL,NULL,NULL,50);
/*!40000 ALTER TABLE `giro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_login`
--

DROP TABLE IF EXISTS `log_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_login` (
  `LOG_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `LOG_NOME` varchar(255) NOT NULL,
  `LOG_SENHA` varchar(45) NOT NULL,
  `LOG_TIPO` int(11) NOT NULL,
  `USU_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`LOG_CODIGO`),
  KEY `USU_CODIGO` (`USU_CODIGO`),
  CONSTRAINT `log_login_ibfk_1` FOREIGN KEY (`USU_CODIGO`) REFERENCES `usu_usuario` (`USU_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_login`
--

LOCK TABLES `log_login` WRITE;
/*!40000 ALTER TABLE `log_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `met_metas`
--

DROP TABLE IF EXISTS `met_metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_metas` (
  `met_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `met_mes` varchar(45) NOT NULL,
  `met_ano` varchar(45) DEFAULT NULL,
  `met_meta` int(11) NOT NULL,
  `met_produto` varchar(45) NOT NULL,
  `met_descricao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`met_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `met_metas`
--

LOCK TABLES `met_metas` WRITE;
/*!40000 ALTER TABLE `met_metas` DISABLE KEYS */;
/*!40000 ALTER TABLE `met_metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_perda`
--

DROP TABLE IF EXISTS `per_perda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_perda` (
  `per_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `per_ordem` int(11) NOT NULL,
  `per_produto` varchar(45) NOT NULL,
  `per_quantidade` int(11) NOT NULL,
  `per_motivo` varchar(255) NOT NULL,
  PRIMARY KEY (`per_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_perda`
--

LOCK TABLES `per_perda` WRITE;
/*!40000 ALTER TABLE `per_perda` DISABLE KEYS */;
/*!40000 ALTER TABLE `per_perda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_despesas`
--

DROP TABLE IF EXISTS `tbl_despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_despesas` (
  `des_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `des_quantidade` int(11) NOT NULL,
  `des_valor` double NOT NULL,
  `des_data` varchar(10) NOT NULL,
  `des_descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`des_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_despesas`
--

LOCK TABLES `tbl_despesas` WRITE;
/*!40000 ALTER TABLE `tbl_despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estoque`
--

DROP TABLE IF EXISTS `tbl_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estoque` (
  `est_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `est_dataMovimento` varchar(45) NOT NULL,
  `est_codigoProduto` int(11) NOT NULL,
  `est_descricaoProduto` varchar(255) DEFAULT NULL,
  `est_tipoMovimento` varchar(45) NOT NULL,
  `est_quantidade` int(11) NOT NULL,
  `est_estoqueAtual` int(11) NOT NULL,
  PRIMARY KEY (`est_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estoque`
--

LOCK TABLES `tbl_estoque` WRITE;
/*!40000 ALTER TABLE `tbl_estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estoque` ENABLE KEYS */;
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
  `os_funcionario` varchar(45) NOT NULL,
  PRIMARY KEY (`os_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_os`
--

LOCK TABLES `tbl_os` WRITE;
/*!40000 ALTER TABLE `tbl_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pessoa`
--

DROP TABLE IF EXISTS `tbl_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pessoa` (
  `pes_codigo` int(10) NOT NULL AUTO_INCREMENT,
  `pes_nome` varchar(255) NOT NULL,
  `pes_email` varchar(255) NOT NULL,
  `pes_senha` varchar(255) NOT NULL,
  `pes_tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`pes_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pessoa`
--

LOCK TABLES `tbl_pessoa` WRITE;
/*!40000 ALTER TABLE `tbl_pessoa` DISABLE KEYS */;
INSERT INTO `tbl_pessoa` VALUES (13,'Sonia','claudiadadi_damacena@hotmail.com','1234','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
INSERT INTO `tbl_produto` VALUES (2,'Bloco Estrutural',0.9,4500,'Bloco perfeito para construção de paredes',2000,'bloco-estrutural-D_NQ_NP_718635-MLB25886747314_082017-F.jpg',1);
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuario` (
  `usu_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nome` varchar(255) NOT NULL,
  `usu_sobreNome` varchar(45) NOT NULL,
  `usu_senha` varchar(45) NOT NULL,
  `usu_ativo` int(1) NOT NULL,
  PRIMARY KEY (`usu_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usu_usuario`
--

DROP TABLE IF EXISTS `usu_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usu_usuario` (
  `USU_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `USU_NOME` varchar(255) NOT NULL,
  `USU_SENHA` varchar(45) NOT NULL,
  `USU_TIPO` int(10) NOT NULL,
  PRIMARY KEY (`USU_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usu_usuario`
--

LOCK TABLES `usu_usuario` WRITE;
/*!40000 ALTER TABLE `usu_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usu_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-06 11:03:31
