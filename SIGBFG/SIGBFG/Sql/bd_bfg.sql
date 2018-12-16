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
-- Table structure for table `cli_cliente`
--

DROP TABLE IF EXISTS `cli_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cli_cliente` (
  `CLI_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `CLI_NOME` varchar(255) NOT NULL,
  `CLI_ENDERECO` varchar(255) NOT NULL,
  `CLI_BAIRRO` varchar(255) NOT NULL,
  `CLI_NUMERO` int(10) NOT NULL,
  `CLI_CNPJ` varchar(255) NOT NULL,
  `CLI_TELEFONE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLI_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cli_cliente`
--

LOCK TABLES `cli_cliente` WRITE;
/*!40000 ALTER TABLE `cli_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cli_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cus_custo`
--

DROP TABLE IF EXISTS `cus_custo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_custo` (
  `CUS_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `CUS_NOME` varchar(255) NOT NULL,
  `CUS_VALOR` double NOT NULL,
  PRIMARY KEY (`CUS_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_custo`
--

LOCK TABLES `cus_custo` WRITE;
/*!40000 ALTER TABLE `cus_custo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cus_custo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lot_lote`
--

DROP TABLE IF EXISTS `lot_lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lot_lote` (
  `LOT_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `LOT_NOME` varchar(255) NOT NULL,
  `LOT_QUANTIDADE` int(11) NOT NULL,
  `LOT_DESCRICAO` varchar(255) NOT NULL,
  `PRO_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`LOT_CODIGO`),
  KEY `fk_LOT_LOTE_PRO_PRODUTO1_idx` (`PRO_CODIGO`),
  CONSTRAINT `fk_LOT_LOTE_PRO_PRODUTO1` FOREIGN KEY (`PRO_CODIGO`) REFERENCES `tbl_produto` (`PRO_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lot_lote`
--

LOCK TABLES `lot_lote` WRITE;
/*!40000 ALTER TABLE `lot_lote` DISABLE KEYS */;
/*!40000 ALTER TABLE `lot_lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `met_meta`
--

DROP TABLE IF EXISTS `met_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_meta` (
  `MET_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `MET_META` varchar(255) NOT NULL,
  `MET_MES` varchar(45) NOT NULL,
  `MET_ANO` varchar(45) NOT NULL,
  `MET_DESCRICAO` varchar(255) NOT NULL,
  `MET_PRODUTO` varchar(45) NOT NULL,
  PRIMARY KEY (`MET_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `met_meta`
--

LOCK TABLES `met_meta` WRITE;
/*!40000 ALTER TABLE `met_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `met_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_perda`
--

DROP TABLE IF EXISTS `per_perda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_perda` (
  `PER_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `PER_ORDEM` varchar(255) NOT NULL,
  `PER_QUANTIDADE` int(11) NOT NULL,
  `PER_MOTIVO` varchar(255) NOT NULL,
  `PER_PRODUTO` varchar(45) NOT NULL,
  `per_data` varchar(45) NOT NULL,
  PRIMARY KEY (`PER_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_perda`
--

LOCK TABLES `per_perda` WRITE;
/*!40000 ALTER TABLE `per_perda` DISABLE KEYS */;
INSERT INTO `per_perda` VALUES (5,'0',4,'Ocorreu trincas no processo de cura','MV10 - MEIO BLOCO DE VEDAÇÃO 09X19X19','11/12/2018'),(6,'0',5,'Danificado pelo funcionário ao transporta-lo','V12 - BLOCO DE VEDAÇÃO  DE 11,5X19X39','12/12/2018'),(7,'0',6,'Ocorreu trincas no processo de cura','VF15 - BLOCO DE VEDAÇÃO COM FUNDO 14X19X39','10/12/2018');
/*!40000 ALTER TABLE `per_perda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prd_producao`
--

DROP TABLE IF EXISTS `prd_producao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prd_producao` (
  `PRD_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `PRD_DATA` date NOT NULL,
  `CUS_CODIGO` int(11) NOT NULL,
  `ORD_CODIGO` int(11) NOT NULL,
  `PRD_TABUAS` int(11) NOT NULL,
  PRIMARY KEY (`PRD_CODIGO`),
  KEY `fk_PRD_PRODUCAO_CUS_CUSTO1_idx` (`CUS_CODIGO`),
  KEY `fk_PRD_PRODUCAO_ORD_ORDEM1_idx` (`ORD_CODIGO`),
  CONSTRAINT `fk_PRD_PRODUCAO_CUS_CUSTO1` FOREIGN KEY (`CUS_CODIGO`) REFERENCES `cus_custo` (`CUS_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRD_PRODUCAO_ORD_ORDEM1` FOREIGN KEY (`ORD_CODIGO`) REFERENCES `tbl_os` (`OS_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prd_producao`
--

LOCK TABLES `prd_producao` WRITE;
/*!40000 ALTER TABLE `prd_producao` DISABLE KEYS */;
/*!40000 ALTER TABLE `prd_producao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_produto_has_ven_venda`
--

DROP TABLE IF EXISTS `pro_produto_has_ven_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_produto_has_ven_venda` (
  `PRO_CODIGO` int(11) NOT NULL,
  `VEN_CODIGO` int(11) NOT NULL,
  PRIMARY KEY (`PRO_CODIGO`,`VEN_CODIGO`),
  KEY `fk_PRO_PRODUTO_has_VEN_VENDA_VEN_VENDA1_idx` (`VEN_CODIGO`),
  KEY `fk_PRO_PRODUTO_has_VEN_VENDA_PRO_PRODUTO1_idx` (`PRO_CODIGO`),
  CONSTRAINT `fk_PRO_PRODUTO_has_VEN_VENDA_PRO_PRODUTO1` FOREIGN KEY (`PRO_CODIGO`) REFERENCES `tbl_produto` (`PRO_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRO_PRODUTO_has_VEN_VENDA_VEN_VENDA1` FOREIGN KEY (`VEN_CODIGO`) REFERENCES `ven_venda` (`VEN_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_produto_has_ven_venda`
--

LOCK TABLES `pro_produto_has_ven_venda` WRITE;
/*!40000 ALTER TABLE `pro_produto_has_ven_venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_produto_has_ven_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_despesas`
--

DROP TABLE IF EXISTS `tbl_despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_despesas` (
  `DES_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `DES_DATA` varchar(45) NOT NULL,
  `DES_QUANTIDADE` int(11) NOT NULL,
  `DES_DESCRICAO` varchar(255) DEFAULT NULL,
  `DES_VALOR` double NOT NULL,
  PRIMARY KEY (`DES_CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `est_quantidade` int(11) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `per_codigo` int(11) NOT NULL,
  `os_codigo` int(11) NOT NULL,
  PRIMARY KEY (`est_codigo`),
  KEY `pro_codigo_idx` (`pro_codigo`),
  KEY `per_codigo_idx` (`per_codigo`),
  KEY `os_codigo_idx` (`os_codigo`),
  CONSTRAINT `os_codigo` FOREIGN KEY (`os_codigo`) REFERENCES `tbl_os` (`OS_CODIGO`) ON UPDATE NO ACTION,
  CONSTRAINT `per_codigo` FOREIGN KEY (`per_codigo`) REFERENCES `per_perda` (`PER_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pro_codigo` FOREIGN KEY (`pro_codigo`) REFERENCES `tbl_produto` (`PRO_CODIGO`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
-- Table structure for table `tbl_motivo`
--

DROP TABLE IF EXISTS `tbl_motivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_motivo` (
  `mot_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mot_motivoPerda` varchar(45) NOT NULL,
  PRIMARY KEY (`mot_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_motivo`
--

LOCK TABLES `tbl_motivo` WRITE;
/*!40000 ALTER TABLE `tbl_motivo` DISABLE KEYS */;
INSERT INTO `tbl_motivo` VALUES (2,'Danificado pelo funcionário ao transporta-lo'),(3,'Ocorreu trincas no processo de cura');
/*!40000 ALTER TABLE `tbl_motivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_os`
--

DROP TABLE IF EXISTS `tbl_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_os` (
  `OS_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `OS_PRODUTO` varchar(255) NOT NULL,
  `OS_DATAINICIO` varchar(45) NOT NULL,
  `OS_DATAEXPIRACAO` varchar(45) NOT NULL,
  `OS_QUANTIDADE` int(11) NOT NULL,
  `OS_FUNCIONARIO` varchar(255) NOT NULL,
  `OS_DESCRICAO` varchar(255) NOT NULL,
  PRIMARY KEY (`OS_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_os`
--

LOCK TABLES `tbl_os` WRITE;
/*!40000 ALTER TABLE `tbl_os` DISABLE KEYS */;
INSERT INTO `tbl_os` VALUES (1,'MV10 - MEIO BLOCO DE VEDAÇÃO 09X19X19','10/12/2018','12/12/2018',4000,'Danilo','Bloco perfeito para construção de paredes'),(2,'V12 - BLOCO DE VEDAÇÃO  DE 11,5X19X39','12/12/2018','12/12/2018',3000,'Felipe','excelente para compor paredes'),(3,'VF15 - BLOCO DE VEDAÇÃO COM FUNDO 14X19X39','12/12/2018','12/12/2018',10000,'Pedro','Bloco perfeito para construção de paredes');
/*!40000 ALTER TABLE `tbl_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pessoa`
--

DROP TABLE IF EXISTS `tbl_pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pessoa` (
  `PES_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `PES_NOME` varchar(255) NOT NULL,
  `PES_SENHA` varchar(255) NOT NULL,
  `PES_EMAIL` varchar(255) NOT NULL,
  `PES_TIPO` varchar(45) NOT NULL,
  PRIMARY KEY (`PES_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pessoa`
--

LOCK TABLES `tbl_pessoa` WRITE;
/*!40000 ALTER TABLE `tbl_pessoa` DISABLE KEYS */;
INSERT INTO `tbl_pessoa` VALUES (1,'pedro','12345678','pedrosantos0509@gmail.com','Administrador');
/*!40000 ALTER TABLE `tbl_pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_produto`
--

DROP TABLE IF EXISTS `tbl_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_produto` (
  `PRO_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_NOME` varchar(255) NOT NULL,
  `PRO_PRECO` double NOT NULL,
  `PRO_QUANTIDADE` int(11) NOT NULL,
  `PRO_DESCRICAO` varchar(255) DEFAULT NULL,
  `PRO_FOTO` varchar(255) NOT NULL DEFAULT 'DEFAULT NULL',
  `PRO_QUANTIDADEMINIMA` varchar(45) NOT NULL,
  `PRO_ATIVO` int(1) NOT NULL,
  PRIMARY KEY (`PRO_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_produto`
--

LOCK TABLES `tbl_produto` WRITE;
/*!40000 ALTER TABLE `tbl_produto` DISABLE KEYS */;
INSERT INTO `tbl_produto` VALUES (11,'MV10 - MEIO BLOCO DE VEDAÇÃO 09X19X19',0.94,3688,'','Meio Bloco Vedação - Dimensão 9 X 19 X 19.jpg','2000',1),(12,'V12 - BLOCO DE VEDAÇÃO  DE 11,5X19X39',1.47,2890,'','Bloco Vedação - Dimensão - 11,5 X 19 X 39.jpg','2000',1),(13,'VF15 - BLOCO DE VEDAÇÃO COM FUNDO 14X19X39',1.7,9838,'','Bloco Vedação - Dimensão - 14 X 19 X 39.jpg','2000',1),(14,'V15 - BLOCO DE VEDAÇÃO 14X19X39',1.7,0,'','Bloco Vedação - Dimensão - 14 X 19 X 39.jpg','2000',1),(15,'MV15 - MEIO BLOCO DE VEDAÇÃO 14X19X19',1.42,0,'','Meio Bloco Vedação e Estrutural - Dimensão 14 X 19 X 19.jpg','2000',1),(16,'V20 - BLOCO DE VEDAÇÃO 19X19X39',2.1,0,'','Bloco Vedação - Dimensão - 19 X 19 X 39.jpg','2000',1),(17,'MV20 - MEIO BLOCO DE VEDAÇÃO 19X19X19',1.75,0,'','Meio Bloco Vedação e Estrutural - Dimensão 19 X 19 X 19.jpg','2000',1),(18,'E15 - BLOCO ESTRUTURAL 14X19X39',2.1,0,'','Bloco Estrutural - Dimensão - 14 X 19 X 39.jpg','2000',1),(19,'ME15 - MEIO BLOCO ESTRUTURAL 14X19X19',1.75,0,'','Bloco Estrutural - Dimensão - 14 X 19 X 39.jpg','2000',1),(20,'E20 - BLOCO ESTRUTURAL 19X19X39',2.35,0,'','Bloco Estrutural - Dimensão - 19 X 19 X 39.jpg','2000',1),(21,'ME20 - MEIO BLOCO ESTRUTURAL 19x19X19',1.96,0,'','Bloco Estrutural - Dimensão - 19 X 19 X 39.jpg','2000',1),(22,'C10 - CANALETA 09X19X39',1.7,0,'','Bloco Canaleta - 9 X 19 X 39.jpg','2000',1),(23,'C12 - CANALETA 11,5X19X39',1.9,0,'','Bloco Canaleta - 11,5 X 19 X 19.jpg','2000',1),(24,'C15 - CANALETA 14X19X39',2.11,0,'','Bloco Canaleta - 14 X 19 X 39.jpg','2000',1),(25,'C20 - CANALETA 19X19X39',2.65,0,'','Bloco Canaleta - 19 X 19 X 39.jpg','2000',1),(29,'V10 - BLOCO DE VEDAÇÃO 09X19X39',1.35,0,'','Bloco Canaleta - 9 X 19 X 39.jpg','2000',1);
/*!40000 ALTER TABLE `tbl_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuario`
--

DROP TABLE IF EXISTS `tbl_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuario` (
  `USU_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `USU_NOME` varchar(255) NOT NULL,
  `USU_SENHA` varchar(45) NOT NULL,
  `USU_ATIVO` varchar(45) NOT NULL,
  `USU_SOBRENOME` varchar(255) NOT NULL,
  PRIMARY KEY (`USU_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuario`
--

LOCK TABLES `tbl_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_usuario` DISABLE KEYS */;
INSERT INTO `tbl_usuario` VALUES (1,'admin','admin','1','adm'),(2,'client','client','1','cliente');
/*!40000 ALTER TABLE `tbl_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ven_venda`
--

DROP TABLE IF EXISTS `ven_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ven_venda` (
  `VEN_CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `VEN_CLIENTE` varchar(255) NOT NULL,
  `VEN_DATA` varchar(45) NOT NULL,
  `VEN_ENDERECO` varchar(255) NOT NULL,
  `VEN_BAIRRO` varchar(255) NOT NULL,
  `VEN_NUMERO` varchar(11) NOT NULL,
  `VEN_CNPJ` varchar(45) DEFAULT NULL,
  `VEN_TELEFONE` varchar(45) NOT NULL,
  `VEN_VALOR` double NOT NULL,
  `VEN_NOME` varchar(255) DEFAULT NULL,
  `VEN_PRODUTO` varchar(255) NOT NULL,
  `VEN_CEP` varchar(45) NOT NULL,
  `VEN_CPF` varchar(45) DEFAULT NULL,
  `VEN_QUANTIDADE` int(11) NOT NULL,
  PRIMARY KEY (`VEN_CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ven_venda`
--

LOCK TABLES `ven_venda` WRITE;
/*!40000 ALTER TABLE `ven_venda` DISABLE KEYS */;
INSERT INTO `ven_venda` VALUES (1,'Pedro','10/12/2018','Rua Ipê, N 130, Bairro Da Cruz, 153','Cruz','153','30.757.851/0001-44','(94) 99278-9239',400,NULL,'MV10 - MEIO BLOCO DE VEDAÇÃO 09X19X19','12606-480','025.109.402-28',300),(2,'José Malaquias','12/12/2018','Rua Ipê, N 130, Bairro Da Cruz, 153','Cruz','153','30.757.851/0001-44','(94) 99278-9239',200,NULL,'V12 - BLOCO DE VEDAÇÃO  DE 11,5X19X39','12606-480','025.109.402-28',100),(3,'Pedro Santos','12/12/2018','Rua Quarenta E Sete, Jardim São Paulo','Cruz','1030','30.757.851/0001-44','(94) 99140-2999',400,NULL,'VF15 - BLOCO DE VEDAÇÃO COM FUNDO 14X19X39','08465-312','025.109.402-28',150);
/*!40000 ALTER TABLE `ven_venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-16 15:09:46
