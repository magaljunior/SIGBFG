-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: bdbfg
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
  `cli_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(255) NOT NULL,
  `cli_endereco` varchar(255) NOT NULL,
  `cli_bairro` varchar(255) NOT NULL,
  `cli_numero` int(11) NOT NULL,
  `cli_cnpj` varchar(45) NOT NULL,
  `cli_telefone` varchar(45) NOT NULL,
  PRIMARY KEY (`cli_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cli_cliente`
--

LOCK TABLES `cli_cliente` WRITE;
/*!40000 ALTER TABLE `cli_cliente` DISABLE KEYS */;
INSERT INTO `cli_cliente` VALUES (1,'jose','Rua São José','São José',38,'51774149000101','1233522860');
/*!40000 ALTER TABLE `cli_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cus_custo`
--

DROP TABLE IF EXISTS `cus_custo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_custo` (
  `cus_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cus_nome` varchar(255) NOT NULL,
  `cus_valor` double NOT NULL,
  PRIMARY KEY (`cus_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_custo`
--

LOCK TABLES `cus_custo` WRITE;
/*!40000 ALTER TABLE `cus_custo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cus_custo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `des_despesa`
--

DROP TABLE IF EXISTS `des_despesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `des_despesa` (
  `des_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `des_nome` varchar(255) NOT NULL,
  `des_valor` double NOT NULL,
  PRIMARY KEY (`des_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `des_despesa`
--

LOCK TABLES `des_despesa` WRITE;
/*!40000 ALTER TABLE `des_despesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `des_despesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `est_estoque`
--

DROP TABLE IF EXISTS `est_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `est_estoque` (
  `est_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `est_nome` varchar(255) NOT NULL,
  `est_quantidade` int(11) NOT NULL,
  `est_descricao` varchar(255) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `per_codigo` int(11) NOT NULL,
  `met_codigo` int(11) NOT NULL,
  `ven_codigo` int(11) NOT NULL,
  PRIMARY KEY (`est_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `est_estoque`
--

LOCK TABLES `est_estoque` WRITE;
/*!40000 ALTER TABLE `est_estoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `est_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_login`
--

DROP TABLE IF EXISTS `log_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_login` (
  `log_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `log_nome` varchar(255) NOT NULL,
  `log_senha` varchar(45) NOT NULL,
  `log_tipo` varchar(45) NOT NULL,
  `usu_codigo` int(11) NOT NULL,
  PRIMARY KEY (`log_codigo`)
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
-- Table structure for table `lot_lote`
--

DROP TABLE IF EXISTS `lot_lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lot_lote` (
  `lot_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `lot_nome` varchar(255) NOT NULL,
  `lot_quantidade` int(11) NOT NULL,
  `lot_descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`lot_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `met_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `met_nome` varchar(255) NOT NULL,
  `met_mes` date NOT NULL,
  `met_ano` date NOT NULL,
  `met_descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`met_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `met_meta`
--

LOCK TABLES `met_meta` WRITE;
/*!40000 ALTER TABLE `met_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `met_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ord_ordem`
--

DROP TABLE IF EXISTS `ord_ordem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ord_ordem` (
  `ord_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ord_nome` varchar(255) NOT NULL,
  `ord_datainicio` date NOT NULL,
  `ord_dataexpiracao` date NOT NULL,
  `ord_quantidade` int(11) NOT NULL,
  `ord_funcionario` varchar(255) NOT NULL,
  `ord_descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`ord_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ord_ordem`
--

LOCK TABLES `ord_ordem` WRITE;
/*!40000 ALTER TABLE `ord_ordem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ord_ordem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_perda`
--

DROP TABLE IF EXISTS `per_perda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_perda` (
  `per_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `per_nome` varchar(255) NOT NULL,
  `per_quantidade` int(11) NOT NULL,
  `per_descricao` varchar(255) NOT NULL,
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
-- Table structure for table `pro_produto`
--

DROP TABLE IF EXISTS `pro_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_produto` (
  `pro_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `pro_nome` varchar(255) NOT NULL,
  `pro_valor` double NOT NULL,
  `pro_quantidade` int(11) NOT NULL,
  `pro_descricao` varchar(255) NOT NULL,
  `pro_foto` varchar(255) NOT NULL,
  `des_codigo` int(11) NOT NULL,
  `ord_codigo` int(11) NOT NULL,
  `cus_codigo` int(11) NOT NULL,
  `lot_codigo` int(11) NOT NULL,
  `ven_codigo` int(11) NOT NULL,
  PRIMARY KEY (`pro_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_produto`
--

LOCK TABLES `pro_produto` WRITE;
/*!40000 ALTER TABLE `pro_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usu_usuario`
--

DROP TABLE IF EXISTS `usu_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usu_usuario` (
  `usu_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nome` varchar(255) NOT NULL,
  `usu_senha` varchar(45) NOT NULL,
  `usu_tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`usu_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usu_usuario`
--

LOCK TABLES `usu_usuario` WRITE;
/*!40000 ALTER TABLE `usu_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usu_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ven_venda`
--

DROP TABLE IF EXISTS `ven_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ven_venda` (
  `ven_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `ven_cliente` varchar(255) NOT NULL,
  `ven_endereco` varchar(255) NOT NULL,
  `ven_bairro` varchar(255) NOT NULL,
  `ven_numero` int(11) NOT NULL,
  `ven_cnpj` varchar(45) NOT NULL,
  `ven_telefone` varchar(45) NOT NULL,
  `ven_nome` varchar(255) NOT NULL,
  `ven_quantidade` int(11) NOT NULL,
  `ven_valor` double NOT NULL,
  `ven_data` date NOT NULL,
  PRIMARY KEY (`ven_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ven_venda`
--

LOCK TABLES `ven_venda` WRITE;
/*!40000 ALTER TABLE `ven_venda` DISABLE KEYS */;
INSERT INTO `ven_venda` VALUES (1,'José da Costa','Rua São José','Vila São Sebastião',300,'51774149000101','31537749','Bloco de Vedação',2000,3000,'2012-12-12'),(2,'João da Silva','Avenida do Petróleo','Chácara do Visconde',333,'51774149000269','33015555','bloco canaleta',2000,2000,'2018-10-18');
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

-- Dump completed on 2018-11-09 14:21:44
