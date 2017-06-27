-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ControlHotel
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `dnn_catacciones_cnf`
--

DROP TABLE IF EXISTS `dnn_catacciones_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catacciones_cnf` (
  `idaccion` int(11) NOT NULL,
  `accion` varchar(45) NOT NULL DEFAULT '-',
  `descripcion` varchar(255) DEFAULT NULL,
  `esactivo` int(11) NOT NULL,
  `fechareg` timestamp NULL DEFAULT NULL,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idurmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catacciones_cnf`
--

LOCK TABLES `dnn_catacciones_cnf` WRITE;
/*!40000 ALTER TABLE `dnn_catacciones_cnf` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catacciones_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_catgruposproductos`
--

DROP TABLE IF EXISTS `dnn_catgruposproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catgruposproductos` (
  `idgrupo` int(11) NOT NULL,
  `grupo` varchar(50) NOT NULL DEFAULT '-',
  `abrevia` varchar(10) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idgrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catgruposproductos`
--

LOCK TABLES `dnn_catgruposproductos` WRITE;
/*!40000 ALTER TABLE `dnn_catgruposproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catgruposproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_catmenu_cnf`
--

DROP TABLE IF EXISTS `dnn_catmenu_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catmenu_cnf` (
  `idmenu` int(11) NOT NULL,
  `menu` varchar(150) NOT NULL DEFAULT '-',
  `descripcion` varchar(255) NOT NULL DEFAULT '-',
  `tooltip` varchar(150) NOT NULL DEFAULT '-',
  `orden` int(11) NOT NULL DEFAULT '1',
  `icono` varchar(255) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmenu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catmenu_cnf`
--

LOCK TABLES `dnn_catmenu_cnf` WRITE;
/*!40000 ALTER TABLE `dnn_catmenu_cnf` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catmenu_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_catopcionesmenu_cnf`
--

DROP TABLE IF EXISTS `dnn_catopcionesmenu_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catopcionesmenu_cnf` (
  `idopcion` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `idpadre` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL DEFAULT '-',
  `descripcion` varchar(255) NOT NULL DEFAULT '-',
  `tooltip` varchar(150) NOT NULL DEFAULT '-',
  `icono` varchar(255) NOT NULL DEFAULT '-',
  `archjar` varchar(255) NOT NULL DEFAULT '-',
  `clase` varchar(255) NOT NULL DEFAULT '-',
  `metodo` varchar(255) NOT NULL DEFAULT '-',
  `parametros` text,
  `esactivo` int(11) NOT NULL DEFAULT '0',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idopcion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catopcionesmenu_cnf`
--

LOCK TABLES `dnn_catopcionesmenu_cnf` WRITE;
/*!40000 ALTER TABLE `dnn_catopcionesmenu_cnf` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catopcionesmenu_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_catstores_cnf`
--

DROP TABLE IF EXISTS `dnn_catstores_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catstores_cnf` (
  `idstorejec` int(11) NOT NULL,
  `storejec` varchar(255) NOT NULL DEFAULT '-',
  `descripcion` varchar(255) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idstorejec`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catstores_cnf`
--

LOCK TABLES `dnn_catstores_cnf` WRITE;
/*!40000 ALTER TABLE `dnn_catstores_cnf` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catstores_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_cattipoproductos`
--

DROP TABLE IF EXISTS `dnn_cattipoproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_cattipoproductos` (
  `idtipo` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '0',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_cattipoproductos`
--

LOCK TABLES `dnn_cattipoproductos` WRITE;
/*!40000 ALTER TABLE `dnn_cattipoproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_cattipoproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_catunidades`
--

DROP TABLE IF EXISTS `dnn_catunidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catunidades` (
  `idunidad` int(11) NOT NULL,
  `unidad` varchar(50) NOT NULL DEFAULT '-',
  `abrevia` varchar(50) NOT NULL DEFAULT '-',
  `esactivo` int(11) DEFAULT '0',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idunidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catunidades`
--

LOCK TABLES `dnn_catunidades` WRITE;
/*!40000 ALTER TABLE `dnn_catunidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catunidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_catventanas_cnf`
--

DROP TABLE IF EXISTS `dnn_catventanas_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catventanas_cnf` (
  `idventana` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL DEFAULT '-',
  `titulo` varchar(255) NOT NULL DEFAULT '-',
  `descripcion` varchar(255) NOT NULL DEFAULT '-',
  `archjar` varchar(255) NOT NULL DEFAULT '-',
  `paquete` varchar(255) NOT NULL DEFAULT '-',
  `archjava` varchar(255) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idventana`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catventanas_cnf`
--

LOCK TABLES `dnn_catventanas_cnf` WRITE;
/*!40000 ALTER TABLE `dnn_catventanas_cnf` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catventanas_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_kardexproductos`
--

DROP TABLE IF EXISTS `dnn_kardexproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_kardexproductos` (
  `idmov` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:01',
  `idsucursal` int(11) NOT NULL,
  `tipomovto` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `idunidad` int(11) DEFAULT NULL,
  `cantidad` double DEFAULT '0',
  `costo` decimal(12,4) DEFAULT '0.0000',
  `venta` decimal(12,4) DEFAULT '0.0000',
  `iva` decimal(12,4) DEFAULT '0.0000',
  `ieps` decimal(12,4) DEFAULT '0.0000',
  `referencia` varchar(20) DEFAULT '-',
  `factura` varchar(255) DEFAULT '-',
  `factor` double DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmov`,`fecha`,`idsucursal`,`tipomovto`,`idprod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_kardexproductos`
--

LOCK TABLES `dnn_kardexproductos` WRITE;
/*!40000 ALTER TABLE `dnn_kardexproductos` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_kardexproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_logaccesos_cnf`
--

DROP TABLE IF EXISTS `dnn_logaccesos_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_logaccesos_cnf` (
  `idlog` bigint(20) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lugar` varchar(255) NOT NULL DEFAULT '-',
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_logaccesos_cnf`
--

LOCK TABLES `dnn_logaccesos_cnf` WRITE;
/*!40000 ALTER TABLE `dnn_logaccesos_cnf` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_logaccesos_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_logcambios_cnf`
--

DROP TABLE IF EXISTS `dnn_logcambios_cnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_logcambios_cnf` (
  `idcambio` bigint(20) NOT NULL AUTO_INCREMENT,
  `idaccion` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `idopcion` int(11) NOT NULL,
  `idventana` int(11) NOT NULL,
  `valoresact` text,
  `valoresnvo` text,
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `idusrreg` int(11) DEFAULT NULL,
  `respuesta` int(11) DEFAULT NULL,
  `msgsalida` int(11) DEFAULT NULL,
  `storejec` varchar(255) DEFAULT NULL,
  `paramin` text,
  `paramout` text,
  PRIMARY KEY (`idcambio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_logcambios_cnf`
--

LOCK TABLES `dnn_logcambios_cnf` WRITE;
/*!40000 ALTER TABLE `dnn_logcambios_cnf` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_logcambios_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_productos`
--

DROP TABLE IF EXISTS `dnn_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_productos` (
  `idproducto` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL DEFAULT '-',
  `descripcion` varchar(255) NOT NULL DEFAULT '-',
  `idunidad` int(11) NOT NULL DEFAULT '0',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `idtipo` int(11) NOT NULL DEFAULT '0',
  `idgrupo` int(11) NOT NULL DEFAULT '0',
  `costouni` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `idproveedor` int(11) DEFAULT NULL,
  `iva` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `ieps` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT '	',
  `costoneto` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `ultimaexist` double NOT NULL DEFAULT '0',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_productos`
--

LOCK TABLES `dnn_productos` WRITE;
/*!40000 ALTER TABLE `dnn_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_proveedores`
--

DROP TABLE IF EXISTS `dnn_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_proveedores` (
  `idproveedor` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL DEFAULT '-',
  `descripcion` varchar(255) NOT NULL DEFAULT '-',
  `rfc` varchar(150) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `direccion` text,
  `direccionfiscal` text,
  `email` varchar(255) NOT NULL DEFAULT '-',
  `telefono` varchar(255) NOT NULL DEFAULT '-',
  `personacontacto` text,
  `ultimacompra` timestamp NULL DEFAULT NULL,
  `montoultimacompra` decimal(12,4) DEFAULT '0.0000',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_proveedores`
--

LOCK TABLES `dnn_proveedores` WRITE;
/*!40000 ALTER TABLE `dnn_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_usuarios`
--

DROP TABLE IF EXISTS `dnn_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_usuarios` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(150) NOT NULL DEFAULT '-',
  `apellidos` varchar(150) NOT NULL DEFAULT '-',
  `idempleado` int(11) NOT NULL DEFAULT '0',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `idperfil` int(11) NOT NULL DEFAULT '1',
  `ultimoacc` timestamp NULL DEFAULT NULL,
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusermod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_usuarios`
--

LOCK TABLES `dnn_usuarios` WRITE;
/*!40000 ALTER TABLE `dnn_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ControlHotel'
--

--
-- Dumping routines for database 'ControlHotel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-26 19:28:44
