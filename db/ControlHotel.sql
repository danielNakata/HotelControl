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
INSERT INTO `dnn_catacciones_cnf` VALUES (1,'INICIO DE SESION','ACCION AL INICIAR LA SESION',1,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `dnn_catacciones_cnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_catestatusconsumo`
--

DROP TABLE IF EXISTS `dnn_catestatusconsumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catestatusconsumo` (
  `idestatus` int(11) NOT NULL,
  `estatusconsumo` varchar(50) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catestatusconsumo`
--

LOCK TABLES `dnn_catestatusconsumo` WRITE;
/*!40000 ALTER TABLE `dnn_catestatusconsumo` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catestatusconsumo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_catestatushabitacion`
--

DROP TABLE IF EXISTS `dnn_catestatushabitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catestatushabitacion` (
  `idestatus` int(11) NOT NULL,
  `estatushabitacion` varchar(50) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catestatushabitacion`
--

LOCK TABLES `dnn_catestatushabitacion` WRITE;
/*!40000 ALTER TABLE `dnn_catestatushabitacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catestatushabitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_catformaspago`
--

DROP TABLE IF EXISTS `dnn_catformaspago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catformaspago` (
  `idformapago` int(11) NOT NULL,
  `formapago` varchar(50) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT NULL,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idformapago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catformaspago`
--

LOCK TABLES `dnn_catformaspago` WRITE;
/*!40000 ALTER TABLE `dnn_catformaspago` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catformaspago` ENABLE KEYS */;
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
-- Table structure for table `dnn_catmovimientosproducto`
--

DROP TABLE IF EXISTS `dnn_catmovimientosproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catmovimientosproducto` (
  `idtipomovto` int(11) NOT NULL,
  `tipomovto` varchar(50) NOT NULL DEFAULT '-',
  `factor` double DEFAULT NULL,
  `esactivo` int(11) DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtipomovto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catmovimientosproducto`
--

LOCK TABLES `dnn_catmovimientosproducto` WRITE;
/*!40000 ALTER TABLE `dnn_catmovimientosproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catmovimientosproducto` ENABLE KEYS */;
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
-- Table structure for table `dnn_cattipohabitaciones`
--

DROP TABLE IF EXISTS `dnn_cattipohabitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_cattipohabitaciones` (
  `idtipohabitacion` int(11) NOT NULL,
  `tipohabitacion` varchar(100) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtipohabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_cattipohabitaciones`
--

LOCK TABLES `dnn_cattipohabitaciones` WRITE;
/*!40000 ALTER TABLE `dnn_cattipohabitaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_cattipohabitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_cattipopagosempleados`
--

DROP TABLE IF EXISTS `dnn_cattipopagosempleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_cattipopagosempleados` (
  `idtipopago` int(11) NOT NULL,
  `tipopago` varchar(50) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT NULL,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_cattipopagosempleados`
--

LOCK TABLES `dnn_cattipopagosempleados` WRITE;
/*!40000 ALTER TABLE `dnn_cattipopagosempleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_cattipopagosempleados` ENABLE KEYS */;
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
-- Table structure for table `dnn_catturnos`
--

DROP TABLE IF EXISTS `dnn_catturnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_catturnos` (
  `idturno` int(11) NOT NULL,
  `turno` varchar(50) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idturno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_catturnos`
--

LOCK TABLES `dnn_catturnos` WRITE;
/*!40000 ALTER TABLE `dnn_catturnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_catturnos` ENABLE KEYS */;
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
-- Table structure for table `dnn_consumohabitacion_det`
--

DROP TABLE IF EXISTS `dnn_consumohabitacion_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_consumohabitacion_det` (
  `idconsumo` bigint(20) NOT NULL,
  `idhabitacion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ticket` varchar(50) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` double NOT NULL DEFAULT '0',
  `costounitario` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `costo` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `iva` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `ieps` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `costototal` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idconsumo`,`idhabitacion`,`fecha`,`ticket`,`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_consumohabitacion_det`
--

LOCK TABLES `dnn_consumohabitacion_det` WRITE;
/*!40000 ALTER TABLE `dnn_consumohabitacion_det` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_consumohabitacion_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_consumohabitacion_enc`
--

DROP TABLE IF EXISTS `dnn_consumohabitacion_enc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_consumohabitacion_enc` (
  `idconsumo` bigint(20) NOT NULL,
  `idhabitacion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `ticket` varchar(50) NOT NULL,
  `totalproductos` int(11) NOT NULL DEFAULT '0',
  `costo` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `iva` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `ieps` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `descuentos` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `costoneto` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `idformapago` int(11) NOT NULL DEFAULT '0',
  `idestatus` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idconsumo`,`idhabitacion`,`fecha`,`ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_consumohabitacion_enc`
--

LOCK TABLES `dnn_consumohabitacion_enc` WRITE;
/*!40000 ALTER TABLE `dnn_consumohabitacion_enc` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_consumohabitacion_enc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_empleados`
--

DROP TABLE IF EXISTS `dnn_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_empleados` (
  `idempleado` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `apellidos` varchar(150) NOT NULL,
  `rfc` varchar(100) NOT NULL,
  `curp` varchar(100) NOT NULL,
  `fechanac` date NOT NULL DEFAULT '2000-01-01',
  `fechaalta` date DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  `idsucursal` int(11) NOT NULL DEFAULT '0',
  `sueldodiario` decimal(12,4) DEFAULT '0.0000',
  `horaslabora` double DEFAULT '0',
  `diaslabora` double DEFAULT '0',
  `diasvacaciones` int(11) DEFAULT '0',
  `idturno` int(11) DEFAULT '0',
  `idtipopago` int(11) DEFAULT '0',
  `direccion` text,
  `tel1` varchar(20) DEFAULT '-',
  `tel2` varchar(20) DEFAULT '-',
  `email` varchar(255) DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_empleados`
--

LOCK TABLES `dnn_empleados` WRITE;
/*!40000 ALTER TABLE `dnn_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dnn_habitaciones`
--

DROP TABLE IF EXISTS `dnn_habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dnn_habitaciones` (
  `idhabitacion` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL DEFAULT '-',
  `descripcion` varchar(255) NOT NULL DEFAULT '-',
  `idtipohabitacion` int(11) NOT NULL DEFAULT '0',
  `capacidad` int(11) NOT NULL DEFAULT '0',
  `extras` int(11) NOT NULL DEFAULT '0',
  `idestatus` int(11) NOT NULL DEFAULT '1',
  `comentarios` text,
  `costohora` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `costonoche` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `costodia` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `iva` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `ieps` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `costopersonaextra` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NULL DEFAULT NULL,
  `idusrreg` int(11) DEFAULT NULL,
  `idusrmod` int(11) DEFAULT NULL,
  PRIMARY KEY (`idhabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dnn_habitaciones`
--

LOCK TABLES `dnn_habitaciones` WRITE;
/*!40000 ALTER TABLE `dnn_habitaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `dnn_habitaciones` ENABLE KEYS */;
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
  `idtipomovto` int(11) NOT NULL,
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
  PRIMARY KEY (`idmov`,`fecha`,`idsucursal`,`idtipomovto`,`idprod`)
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
/*!50003 DROP PROCEDURE IF EXISTS `DNN_SP_INICIOSESION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_INICIOSESION`(
	IN paUsuario varchar(50)
    ,in paContrasena varchar(150)
    ,in paLugar varchar(255)
    ,out paRes int
    ,out paMsg varchar(150)
)
BEGIN
	declare vlexiste int;
    declare vlidusuario int;
    set vlexiste = 0;
    set paRes = vlexiste;
    set paMsg = 'EL USUARIO INDICADO NO EXISTE';
	select count(*) into vlexiste from dnn_usuarios where usuario = paUsuario;
    if vlexiste > 0 then
		set vlexiste = 0;
        set paMsg = 'LA CONTRASENA ES INCORRECTA';
		select count(*) into vlexiste from dnn_usuarios where usuario = paUsuario AND contrasena = paContrasena;
		if vlexiste > 0 then
			set paMsg = 'EL USUARIO NO ESTA ACTIVO';
			SET vlexiste = 0;
		    select esactivo into vlexiste from dnn_usuarios where usuario = paUsuario;
            if vlexiste = 1 then
				select idusuario into vlidusuario from dnn_usuarios where usuario = paUsuario;
				update dnn_usuarios set ultimoacc = current_timestamp where usuario = paUsuario;
				set vlexiste = 1;
				set paMsg = 'BIENVENIDO';
				set paRes = vlexiste;
				insert into dnn_logaccesos_cnf(idusuario, fechareg, lugar, fecha, hora) values (vlidusuario, current_timestamp, paLugar, now(), now());
			end if;
		end if;
    end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-27 19:40:29
