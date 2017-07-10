/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.5.5-10.1.9-MariaDB : Database - controlhotel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`controlhotel` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `controlhotel`;

/*Table structure for table `dnn_catacciones_cnf` */

DROP TABLE IF EXISTS `dnn_catacciones_cnf`;

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

/*Data for the table `dnn_catacciones_cnf` */

insert  into `dnn_catacciones_cnf`(`idaccion`,`accion`,`descripcion`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idurmod`) values (101,'INICIO DE SESION','ACCION AL INICIAR LA SESION',1,'2017-07-09 01:51:53',NULL,1,NULL),(102,'ALTA USUARIO','ALTA USUARIO',1,'2017-07-09 01:52:47',NULL,1,NULL),(103,'MODIFICA USUARIO','MODIFICA USUARIO',1,'2017-07-09 01:52:13',NULL,1,NULL),(104,'RESET CONTRASENA','RESET CONTRASENA',1,'2017-07-09 01:52:35',NULL,1,NULL),(105,'CONSULTA USUARIOS','CONSULTA USUARIOS',1,'2017-07-09 01:53:16',NULL,1,NULL),(201,'ALTA HABITACION','ALTA HABITACION',1,'2017-07-09 01:53:41',NULL,1,NULL),(202,'EDITA HABITACION','EDITA HABITACION',1,'2017-07-09 01:53:58',NULL,1,NULL),(205,'CONSULTA HABITACION','CONSULTA HABITACION',1,'2017-07-09 01:54:27',NULL,1,NULL);

/*Table structure for table `dnn_catestatusconsumo` */

DROP TABLE IF EXISTS `dnn_catestatusconsumo`;

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

/*Data for the table `dnn_catestatusconsumo` */

insert  into `dnn_catestatusconsumo`(`idestatus`,`estatusconsumo`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (1,'POR PAGAR',1,'2017-07-09 23:22:20',NULL,NULL,NULL),(2,'PAGADO',1,'2017-07-09 23:22:25',NULL,NULL,NULL),(3,'CANCELADO',1,'2017-07-09 23:22:38',NULL,NULL,NULL),(4,'CORTESIA',1,'2017-07-09 23:22:45',NULL,NULL,NULL);

/*Table structure for table `dnn_catestatushabitacion` */

DROP TABLE IF EXISTS `dnn_catestatushabitacion`;

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

/*Data for the table `dnn_catestatushabitacion` */

insert  into `dnn_catestatushabitacion`(`idestatus`,`estatushabitacion`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (1,'DISPONIBLE',1,'2017-07-09 02:26:03',NULL,1,NULL),(2,'OCUPADA',1,'2017-07-09 02:26:11',NULL,1,NULL),(3,'RESERVADA',1,'2017-07-09 02:26:19',NULL,1,NULL),(4,'MANTENIMIENTO',1,'2017-07-09 02:26:28',NULL,1,NULL),(5,'REMODELACION',1,'2017-07-09 02:26:47',NULL,1,NULL),(9,'BAJA',1,'2017-07-09 02:26:55',NULL,1,NULL);

/*Table structure for table `dnn_catestatusrenta` */

DROP TABLE IF EXISTS `dnn_catestatusrenta`;

CREATE TABLE `dnn_catestatusrenta` (
  `idestatusrenta` int(11) NOT NULL,
  `estatusrenta` varchar(50) NOT NULL DEFAULT '-',
  `esactivo` int(11) NOT NULL DEFAULT '1',
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idusrreg` int(11) DEFAULT '0',
  `idusrmod` int(11) DEFAULT '0',
  PRIMARY KEY (`idestatusrenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dnn_catestatusrenta` */

insert  into `dnn_catestatusrenta`(`idestatusrenta`,`estatusrenta`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (0,'CAPTURADA',1,'2017-07-09 21:22:28','0000-00-00 00:00:00',0,0),(1,'ACTIVA',1,'2017-07-09 19:25:29','0000-00-00 00:00:00',0,0),(2,'TERMINADA',1,'2017-07-09 19:25:34','0000-00-00 00:00:00',0,0),(3,'CANCELADA',1,'2017-07-09 19:25:47','0000-00-00 00:00:00',0,0);

/*Table structure for table `dnn_catformaspago` */

DROP TABLE IF EXISTS `dnn_catformaspago`;

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

/*Data for the table `dnn_catformaspago` */

insert  into `dnn_catformaspago`(`idformapago`,`formapago`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (1,'EFECTIVO',1,'2017-07-09 02:27:19',NULL,1,NULL),(2,'DEBITO/CREDITO',1,'2017-07-09 02:27:39',NULL,1,NULL),(3,'AMERICAN EXPRESS',1,'2017-07-09 02:27:50',NULL,1,NULL),(4,'OTRO',1,'2017-07-09 02:28:03',NULL,1,NULL);

/*Table structure for table `dnn_catgruposproductos` */

DROP TABLE IF EXISTS `dnn_catgruposproductos`;

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

/*Data for the table `dnn_catgruposproductos` */

insert  into `dnn_catgruposproductos`(`idgrupo`,`grupo`,`abrevia`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (1,'HIGIENICOS','HGC',1,'2017-07-09 02:28:28',NULL,1,NULL),(2,'BEBIDA S/ALCOHOL','BSA',1,'2017-07-09 02:28:45',NULL,1,NULL),(3,'BEBIDA C/ALCOHOL','BCA',1,'2017-07-09 02:29:05',NULL,1,NULL),(4,'ALIMENTOS','CMD',1,'2017-07-09 02:29:54',NULL,1,NULL),(5,'DULCES','DLS',1,'2017-07-09 02:30:28',NULL,1,NULL),(6,'PRESERVATIVOS','PRS',1,'2017-07-09 02:30:39',NULL,1,NULL),(7,'AFRODICIACOS','AFR',1,'2017-07-09 02:30:20',NULL,1,NULL);

/*Table structure for table `dnn_catmenu_cnf` */

DROP TABLE IF EXISTS `dnn_catmenu_cnf`;

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

/*Data for the table `dnn_catmenu_cnf` */

/*Table structure for table `dnn_catmovimientosproducto` */

DROP TABLE IF EXISTS `dnn_catmovimientosproducto`;

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

/*Data for the table `dnn_catmovimientosproducto` */

/*Table structure for table `dnn_catopcionesmenu_cnf` */

DROP TABLE IF EXISTS `dnn_catopcionesmenu_cnf`;

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

/*Data for the table `dnn_catopcionesmenu_cnf` */

/*Table structure for table `dnn_catstores_cnf` */

DROP TABLE IF EXISTS `dnn_catstores_cnf`;

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

/*Data for the table `dnn_catstores_cnf` */

/*Table structure for table `dnn_cattipohabitaciones` */

DROP TABLE IF EXISTS `dnn_cattipohabitaciones`;

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

/*Data for the table `dnn_cattipohabitaciones` */

insert  into `dnn_cattipohabitaciones`(`idtipohabitacion`,`tipohabitacion`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (1,'SENCILLA',1,'2017-07-09 02:32:51',NULL,1,NULL),(2,'TINA HIDROMASAJE',1,'2017-07-09 02:33:04',NULL,1,NULL),(3,'JACUZZI',1,'2017-07-09 02:33:12',NULL,1,NULL),(4,'OTRA',1,'2017-07-09 02:33:25',NULL,1,NULL);

/*Table structure for table `dnn_cattipopagosempleados` */

DROP TABLE IF EXISTS `dnn_cattipopagosempleados`;

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

/*Data for the table `dnn_cattipopagosempleados` */

insert  into `dnn_cattipopagosempleados`(`idtipopago`,`tipopago`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (1,'QUINCENAL',1,'2017-07-09 02:31:12',NULL,1,NULL),(2,'SEMANAL',1,'2017-07-09 02:31:24',NULL,1,NULL),(3,'MENSUAL',1,'2017-07-09 02:31:36',NULL,1,NULL),(4,'DIARIO',1,'2017-07-09 02:31:44',NULL,1,NULL);

/*Table structure for table `dnn_cattipoproductos` */

DROP TABLE IF EXISTS `dnn_cattipoproductos`;

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

/*Data for the table `dnn_cattipoproductos` */

insert  into `dnn_cattipoproductos`(`idtipo`,`tipo`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (1,'VENTA Y CONSUMO',1,'2017-07-09 02:33:44',NULL,1,NULL),(2,'INSUMOS',1,'2017-07-09 02:33:55',NULL,1,NULL),(3,'MAQUINARIA Y EQUIPO',1,'2017-07-09 02:34:05',NULL,1,NULL),(4,'SEGURIDAD',1,'2017-07-09 14:34:02',NULL,1,NULL),(5,'ASEO E HIGIENE',1,'2017-07-09 14:34:03',NULL,1,NULL);

/*Table structure for table `dnn_catturnos` */

DROP TABLE IF EXISTS `dnn_catturnos`;

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

/*Data for the table `dnn_catturnos` */

insert  into `dnn_catturnos`(`idturno`,`turno`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (1,'MATUTINO',1,'2017-07-09 02:34:17',NULL,1,NULL),(2,'VESPERTINO',1,'2017-07-09 02:34:24',NULL,1,NULL),(3,'NOCTURNO',1,'2017-07-09 02:34:31',NULL,1,NULL),(4,'MIXTO ROTACION',1,'2017-07-09 02:34:40',NULL,1,NULL);

/*Table structure for table `dnn_catunidades` */

DROP TABLE IF EXISTS `dnn_catunidades`;

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

/*Data for the table `dnn_catunidades` */

insert  into `dnn_catunidades`(`idunidad`,`unidad`,`abrevia`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idusrmod`) values (1,'PIEZA','PZA',1,'2017-07-09 02:34:56',NULL,1,NULL),(2,'GRAMO','GR',1,'2017-07-09 02:35:06',NULL,1,NULL),(3,'KILOGRAMO','KG',1,'2017-07-09 02:35:24',NULL,1,NULL),(4,'LITRO','LT',1,'2017-07-09 02:35:33',NULL,1,NULL),(5,'ORDEN','ORD',1,'2017-07-09 02:35:52',NULL,1,NULL);

/*Table structure for table `dnn_catventanas_cnf` */

DROP TABLE IF EXISTS `dnn_catventanas_cnf`;

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

/*Data for the table `dnn_catventanas_cnf` */

/*Table structure for table `dnn_consumohabitacion_det` */

DROP TABLE IF EXISTS `dnn_consumohabitacion_det`;

CREATE TABLE `dnn_consumohabitacion_det` (
  `idconsumo` bigint(20) NOT NULL,
  `idrenta` bigint(20) NOT NULL,
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
  PRIMARY KEY (`idconsumo`,`idrenta`,`idhabitacion`,`fecha`,`ticket`,`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dnn_consumohabitacion_det` */

/*Table structure for table `dnn_consumohabitacion_enc` */

DROP TABLE IF EXISTS `dnn_consumohabitacion_enc`;

CREATE TABLE `dnn_consumohabitacion_enc` (
  `idconsumo` bigint(20) NOT NULL,
  `idrenta` bigint(20) NOT NULL,
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
  PRIMARY KEY (`idconsumo`,`idrenta`,`idhabitacion`,`fecha`,`ticket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dnn_consumohabitacion_enc` */

/*Table structure for table `dnn_empleados` */

DROP TABLE IF EXISTS `dnn_empleados`;

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

/*Data for the table `dnn_empleados` */

/*Table structure for table `dnn_habitaciones` */

DROP TABLE IF EXISTS `dnn_habitaciones`;

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

/*Data for the table `dnn_habitaciones` */

/*Table structure for table `dnn_habitaciones_renta` */

DROP TABLE IF EXISTS `dnn_habitaciones_renta`;

CREATE TABLE `dnn_habitaciones_renta` (
  `idrenta` bigint(20) NOT NULL,
  `idhabitacion` int(11) NOT NULL,
  `fechaini` date NOT NULL,
  `horaini` time NOT NULL,
  `idtiporenta` int(11) NOT NULL DEFAULT '1',
  `idcliente` int(11) NOT NULL DEFAULT '0',
  `fechafin` date DEFAULT NULL,
  `horafin` date DEFAULT NULL,
  `totaltiemporenta` double DEFAULT '0',
  `idestatus` int(11) NOT NULL DEFAULT '0',
  `numpersonas` int(11) DEFAULT '0',
  `idformapago` int(11) NOT NULL DEFAULT '1',
  `renta` decimal(12,4) DEFAULT '0.0000',
  `ivarenta` decimal(12,4) DEFAULT '0.0000',
  `iepsrenta` decimal(12,4) DEFAULT '0.0000',
  `totalrenta` decimal(12,4) DEFAULT '0.0000',
  `numprodconsumo` int(11) DEFAULT '0',
  `consumo` decimal(12,4) DEFAULT '0.0000',
  `ivaconsumo` decimal(12,4) DEFAULT '0.0000',
  `iepsconsumo` decimal(12,4) DEFAULT '0.0000',
  `totalconsumo` decimal(12,4) DEFAULT '0.0000',
  `extra` decimal(12,4) DEFAULT '0.0000',
  `ivaextra` decimal(12,4) DEFAULT '0.0000',
  `iepsextra` decimal(12,4) DEFAULT '0.0000',
  `totalextra` decimal(12,4) DEFAULT '0.0000',
  `total` decimal(12,4) DEFAULT '0.0000',
  `ivatotal` decimal(12,4) DEFAULT '0.0000',
  `iepstotal` decimal(12,4) DEFAULT '0.0000',
  `grantotal` decimal(12,4) DEFAULT '0.0000',
  `comentarios` text,
  `fechareg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechamod` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `idusrreg` int(11) DEFAULT '0',
  `idusrmod` int(11) DEFAULT '0',
  PRIMARY KEY (`idrenta`,`idhabitacion`,`fechaini`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dnn_habitaciones_renta` */

/*Table structure for table `dnn_kardexproductos` */

DROP TABLE IF EXISTS `dnn_kardexproductos`;

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

/*Data for the table `dnn_kardexproductos` */

/*Table structure for table `dnn_logaccesos_cnf` */

DROP TABLE IF EXISTS `dnn_logaccesos_cnf`;

CREATE TABLE `dnn_logaccesos_cnf` (
  `idlog` bigint(20) NOT NULL AUTO_INCREMENT,
  `idusuario` int(11) NOT NULL,
  `fechareg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `lugar` varchar(255) NOT NULL DEFAULT '-',
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dnn_logaccesos_cnf` */

/*Table structure for table `dnn_logcambios_cnf` */

DROP TABLE IF EXISTS `dnn_logcambios_cnf`;

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

/*Data for the table `dnn_logcambios_cnf` */

/*Table structure for table `dnn_productos` */

DROP TABLE IF EXISTS `dnn_productos`;

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

/*Data for the table `dnn_productos` */

/*Table structure for table `dnn_proveedores` */

DROP TABLE IF EXISTS `dnn_proveedores`;

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

/*Data for the table `dnn_proveedores` */

/*Table structure for table `dnn_usuarios` */

DROP TABLE IF EXISTS `dnn_usuarios`;

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
  `numintentos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dnn_usuarios` */

/* Procedure structure for procedure `DNN_FN_EMPLEADO_LST` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_FN_EMPLEADO_LST` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_FN_EMPLEADO_LST`(
	IN paTipoBsq int
	,in paFiltro text
	,in paSoloAct int
    )
BEGIN
	declare vlqry text;
	set vlqry = 'select a.idempleado, a.nombre, a.apellidos, a.rfc, a.curp, a.fechanac, a.fechaalta, a.fechabaja, a.idsucursal, a.sueldodiario,
		a.horaslabora, a.diaslabora, a.diasvacaciones, a.idturno, a.idtipopago, a.direccion, a.tel1, a.tel2, a.email, a.esactivo, 
		a.fechareg, a.fechamod, a.idusrreg, a.idusrmod from dnn_empleados a where ';
		
	case paTipoBsq 
		when 1 then set vlqry = concat(vlqry, ' idempleado = ',paFiltro,' and ');
		WHEN 1 THEN SET vlqry = CONCAT(vlqry, ' nombre like "',paFiltro,'%" and ');
		WHEN 1 THEN SET vlqry = CONCAT(vlqry, ' apellidos like "',paFiltro,'%" and ');
		WHEN 1 THEN SET vlqry = CONCAT(vlqry, ' rfc = "',paFiltro,'" and ');
		WHEN 1 THEN SET vlqry = CONCAT(vlqry, ' curp = "',paFiltro,'" and ');
		WHEN 1 THEN SET vlqry = CONCAT(vlqry, ' fechaalta = "',paFiltro,'" and ');
		WHEN 1 THEN SET vlqry = CONCAT(vlqry, ' idsucursal = ',paFiltro,' and ');
		WHEN 1 THEN SET vlqry = CONCAT(vlqry, ' idturno = ',paFiltro,' and ');
	end case;
	
	if paSoloAct = 1 then
		set vlqry = concat(vlqry,' esactivo = ', paSoloAct,' ');
	end if;
	
	set vlqry = concat(vlqry, ' order by idempleado asc ');
	
	SET @qry = vlqry;
	PREPARE smtp FROM @qry;
	EXECUTE smtp;
	DEALLOCATE PREPARE smtp;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_FN_HABITACION_LST` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_FN_HABITACION_LST` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_FN_HABITACION_LST`(
	IN paTipoBsq int
	,in paFiltro int
    )
BEGIN
	DECLARE vlqry TEXT;
	set vlqry = 'select a.idhabitacion, a.nombre, a.descripcion, a.idtipohabitacion, a.capacidad, a.extras, a.idestatus, a.comentarios, a.costohora, a.costonoche, a.costodia
			,a. iva, a.ieps, a.costopersonaextra, a.fechareg, a.fechamod, a.idusrreg, a.idusrmod from dnn_habitaciones a ';
	case paTipoBsq
		when 1 then set vlqry = concat(vlqry,' where idhabitacion = ', paFiltro,' ');
		WHEN 2 THEN SET vlqry = CONCAT(vlqry,' where idestatus = ', paFiltro,' ');
		WHEN 3 THEN SET vlqry = CONCAT(vlqry,' where nombre like "', paFiltro,'%" or descripcion like "',paFiltro,'%" ',' ');
		WHEN 4 THEN SET vlqry = CONCAT(vlqry,' where capacidad >= ', paFiltro,' ');
		WHEN 5 THEN SET vlqry = CONCAT(vlqry,' where (costonoche <= ', paFiltro,' or costonoche <= ', paFiltro,' or costodia <= ',paFiltro,') ');
		else set vlqry = concat(vlqry, ' ');
	end case;
	
	set vlqry = concat(vlqry, ' order by a.idhabitacion asc ');
	SET @qry = vlqry;
	PREPARE smtp FROM @qry;
	EXECUTE smtp;
	DEALLOCATE PREPARE smtp;
		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_FN_PRODUCTO_LST` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_FN_PRODUCTO_LST` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_FN_PRODUCTO_LST`(
	IN paTipoBsq int
	,in paFiltro text
	,in paSoloAct int
    )
BEGIN
	declare vlqry text;
	set vlqry = 'select a.idproducto, a.nombre, a.descripcion, a.idunidad, a.esactivo, a.idtipo, a.idgrupo, a.costouni, a.idproveedor, a.iva, a.ieps, a.costoneto
			, a.ultimaexist, a.fechareg, a.fechamod, a.idusrreg, a.idusrmod from dnn_productos ';
	case paTipoBsq
		when 1 then SET vlqry = concat(vlqry, ' WHERE idproducto = ',paFiltro,' ');
		WHEN 2 THEN SET vlqry = CONCAT(vlqry, ' WHERE nombre like "',paFiltro,'%" ');
		WHEN 3 THEN SET vlqry = CONCAT(vlqry, ' WHERE idtipo = ',paFiltro,' ');
		WHEN 5 THEN SET vlqry = CONCAT(vlqry, ' WHERE idgrupo = ',paFiltro,' ');
		WHEN 6 THEN SET vlqry = CONCAT(vlqry, ' WHERE idproveedor = ',paFiltro,' ');
	end case;
	
	if paSoloAct = 1 then
		set vlqry = concat(vlqry, ' AND a.esactivo = ',paSoloAct,' ');
	end if;
	
	set vlqry = concat(vlqry,' ORDER BY a.idproducto asc ');
	
	SET @qry = vlqry;
	PREPARE smtp FROM @qry;
	EXECUTE smtp;
	DEALLOCATE PREPARE smtp;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_FN_PROVEEDOR_LST` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_FN_PROVEEDOR_LST` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_FN_PROVEEDOR_LST`(
	IN paTipoBsq int
	,in paFiltro Text
	,in paSoloActivos int
    )
BEGIN
	declare vlqry text;
	set vlqry = 'select a.idproveedor, a.nombre, a.descripcion, a.rfc, a.esactivo, a.direccion, a.direccionfiscal, a.email, a.telefono, a.personacontacto, a.ultimacompra, a.montoultimacompra
	, a.fechareg, a.fechamod, a.idusrreg, a.idusrmod from dnn_proveedores a ';
	case paTipoBsq 
		when 1 then set vlqry = concat(vlqry,' where idproveedor = ',paFiltro,' ');
		WHEN 2 THEN SET vlqry = CONCAT(vlqry,' where nombre like "',paFiltro,'%" ');
		WHEN 3 THEN SET vlqry = CONCAT(vlqry,' where rfc = "',paFiltro,'" ');
		WHEN 4 THEN SET vlqry = CONCAT(vlqry,' where email = "',paFiltro,'" ');
		WHEN 5 THEN SET vlqry = CONCAT(vlqry,' where personacontacto like ',paFiltro,'%" ');
	end case;
	
	if paSoloActivos = 1 then
		set vlqry = concat(vlqry, " and esactivo = 1 ");
	end if;
	
	set vlqry = concat(vlqry, " order by idproveedor asc ");
	
	SET @qry = vlqry;
	PREPARE smtp FROM @qry;
	EXECUTE smtp;
	DEALLOCATE PREPARE smtp;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_HABITACION_CONSUMO_AGREGA` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_HABITACION_CONSUMO_AGREGA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_HABITACION_CONSUMO_AGREGA`(
	IN paIdRenta int
	,in paIdHabitacion int
	,in paFecha date
	,IN paIdProducto int
	,in paCantidad double
	,in paCostoUni decimal(12,4)
	,in paCosto DECIMAL(12,4)
	,in paIva DECIMAL(12,4)
	,in paIeps DECIMAL(12,4)
	,in paCostoTotal DECIMAL(12,4)
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlexiste int;
	DECLARE csEstatusRenta INT;
	SET csEstatusRenta = 2;
	set vlexiste = 0;
	set paRes = 0;
	set paMsg = 'LA HABITACION INDICADA NO SE ENCUENTRA RENTADA EN ESTE MOMENTO, VERIFIQUE SUS DATOS';
	select count(*) into vlexiste from dnn_habitaciones where idhabitacion = paIdHabitacion and idestatus = csEstatusRenta;
	if vlexiste = 1 then
		set vlexiste = 0;
		select count(*) into vlexiste from dnn_consumohabitacion_enc where idrenta = paIdRenga and idhabitacion = paIdHabitacion and fecha = paFecha;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_USUARIO_EDT` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_USUARIO_EDT` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_USUARIO_EDT`(
	IN paIdUsuario int
	,in paNombre varchar(150)
	,in paApellidos varchar(150)
	,in paIdEmpleado int
	,in paEsActivo int
	,in paIdPerfil int
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlexiste int;
	set paRes = 0;
	set paMsg = 'EL USUARIO INDICADO NO EXISTE, VERIFIQUE SUS DATOS';
	SELECT count(*) into vlexiste from dnn_usuarios where idusuario = paIdUsuario;
	if vlexiste > 0 then
		update dnn_usuarios set nombre = paNombre, apellidos = paApellidos, idempleado = paIdEmpleado, esactivo = paEsActivo, idperfil = paIdPerfil
		,fechamod = current_timestamp, idusermod = paIdUsrreg where idusuario = paIdUsuario;
		set paRes = 1;
		set paMsg = 'USUARIO ACTUALIZADO CORRECTAMENTE!';
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_USUARIO_RST` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_USUARIO_RST` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_USUARIO_RST`(
	IN paIdUsuario int
	,in paContrasena varchar(150)
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlexiste int;
	set paRes = 0;
	set paMsg = 'EL USUARIO INDICADO NO EXISTE, VERIFIQUE SUS DATOS';
	select count(*) into vlexiste from dnn_usuarios where idusuario = paIdUsuario;
	if vlexiste > 0 then 
		update dnn_usuarios set contrasena = password(paContrasena), fechamod = current_timestamp, idusermod = paIdUsrreg where idusuario = paIdUsuario;
		set paRes = 1;
		set paMsg = 'CONTRASENA REESTABLECIDA CORRECTAMENTE';
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_FN_USUARIO_LST` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_FN_USUARIO_LST` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_FN_USUARIO_LST`(
	IN paTipoBsq int
	,in paFiltro text
	,in paSoloActivos int
    )
BEGIN
	DECLARE vlqry TEXT;
	set vlqry = concat('select idusuario, usuario, email, nombre, apellidos, idempleado, esactivo, idperfil, ultimoacc, fechareg, fechamod, idusrreg, idusermod, numintentos
	 from dnn_usuarios where ');
	 case paTipoBsq 
		when 1 then set vlqry = concat(vlqry, ' ',' idusuario = ',paFiltro,' ');
		WHEN 2 THEN SET vlqry = CONCAT(vlqry, ' ',' usuario = "',paFiltro,'" ');
		WHEN 3 THEN SET vlqry = CONCAT(vlqry, ' ',' email = "',paFiltro,'" ');
		WHEN 4 THEN SET vlqry = CONCAT(vlqry, ' ',' (nombre like "',paFiltro,'%" or apellidos like "',paFiltro,'%") ');
		WHEN 5 THEN SET vlqry = CONCAT(vlqry, ' ',' idperfil = ',paFiltro,' ');
		else set vlqry = concat(vlqry,' ');
	end case;
	set vlqry = concat(vlqry,' and esactivo = ',paSoloActivo,' order by idusuario asc ');
	
	SET @qry = vlqry;
	PREPARE smtp FROM @qry;
	EXECUTE smtp;
	DEALLOCATE PREPARE smtp;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_EMPLEADO_AGR` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_EMPLEADO_AGR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_EMPLEADO_AGR`(
	IN paNombre varchar(150)
	,in paApellidos varchar(150)
	,in paRfc varchar(100)
	,in paCurp varchar(100)
	,in paFechaNac date
	,in paIdSucursal int
	,in paSueldoDiario decimal(12,4)
	,in paHorasLabora DOUBLE
	,in paDiasVacaciones int
	,in paIdTurno int
	,in paIdTipoPago int
	,in paDireccion text
	,in paTel1 varchar(20)
	,in paTel2 varchar(20)
	,in paEmail varchar(255)
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
	,out paIdEmpleado int
    )
BEGIN
	declare vlexiste int;
	set paRes = 0;
	set paMsg = 'YA EXISTE UN EMPLEADO CON ESE NOMBRE Y APELLIDOS, VERI';
	SELECT COUNT(*) INTO vlexiste from dnn_empleados where (nombre like concat(paNombre,'%') and apellidos like concat(paApellidos,'%'));
	if vlexiste = 0 then
		set vlexiste = 0;
		select ifnull((select max(idempleado) from dnn_empleados),0) into vlexiste;
		set vlexiste = vlexiste + 1;
		insert into dnn_empleados(idempleado, nombre, apellidos, rfc, curp, fechanac, fechaalta, idsucursal, sueldodiario, horaslabora, diaslabora, diasvacaciones,
		idturno, idtipopago, direccion, tel1 , tel2, email, esactivo, fechareg, idusrreg) values (
		vlexiste, paNombre, paApellidos, paRfc, paCurp, paFechanac, date(now()), paIdSucursal, paSueldoDiario, paHorasLabora, paDiasLabora, paDiasVacaciones, 
		paIdTurno, paIdtipoPago, paDireccion, paTel1, paTel2, paEmail, 1, current_timestamp, paIdUsrreg);
		set paRes = 1;
		set paMsg = 'EMPLEADO REGISTRADO CORRECTAMENTE';
		SET paIdEmpleado = vlexiste;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_EMPLEADO_EDT` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_EMPLEADO_EDT` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_EMPLEADO_EDT`(
	IN paIdEmpleado int
	,IN paNombre VARCHAR(150)
	,IN paApellidos VARCHAR(150)
	,IN paRfc VARCHAR(100)
	,IN paCurp VARCHAR(100)
	,IN paFechaNac DATE
	,IN paFechaAlta DATE
	,IN paIdSucursal INT
	,IN paSueldoDiario DECIMAL(12,4)
	,IN paHorasLabora DOUBLE
	,IN paDiasVacaciones INT
	,IN paIdTurno INT
	,IN paIdTipoPago INT
	,IN paDireccion TEXT
	,IN paTel1 VARCHAR(20)
	,IN paTel2 VARCHAR(20)
	,IN paEmail VARCHAR(255)
	,IN paIdUsrreg INT
	,OUT paRes INT
	,OUT paMsg VARCHAR(150)
    )
BEGIN
	declare vlexiste int;
	set vlexiste = 0;
	set paRes = 0;
	set paMsg = 'EL EMPLEADO INDICADO NO EXISTE';
	select count(*) into vlexiste from dnn_empleados where idempleado = paIdEmpleado;
	if vlexiste > 0 then
		set vlexiste = 0;
		update dnn_empleados set nombre = paNombre, apellidos = paApellidos, rfc = paRfc, curp = paCurp, fechanac = paFechaNac, fechaalta = paFechaAlta,
		idsucursal = paIdSucursal, sueldodiario = paSueldoDiario, horaslabora = paHorasLabora, diaslabora = paDiasLabora, diasvacaciones = paDiasVacaciones,
		idturno = paIdTurono, direccion = paDireccion, tel1 = paTel1, tel2 = paTel2, email = paEmail, fechamod = current_timestamp, idusrmod = paIdUsrreg
		where idempleado = paIdEmpleado;
		set paRes = 1;
		set paMsg = 'EMPLEADO ACTUALIZADO CORRECTAMENTE';
	
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_HABITACION_AGR` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_HABITACION_AGR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_HABITACION_AGR`(
	IN paNombre varchar(100)
	,in paDescripcion varchar(255)
	,in paIdTipoHabitacion int
	,in paCapacidad int
	,in paExtras int
	,in paComentarios varchar(255)
	,in paCostoHora decimal(12,4)
	,in paCostoNoche decimal(12,4)
	,in paCostoDia decimal(12,4)
	,in paIva decimal(12,4)
	,in paIeps decimal(12,4)
	,in paCostoPersonaExtra decimal(12,4)
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
	,out paIdHabitacion int
    )
BEGIN
	declare vlExiste int;
	set paRes = 0;
	set paMsg = 'LA HABITACION INDICADA YA EXISTE, VERIFIQUE SUS DATOS';
	SET vlExiste = 0;
	select count(*) into vlexiste from dnn_habitaciones where nombre like concat('%',paNombre,'%');
	if vlexiste = 0 then
		set vlexiste = 0;
		select IFNULL((select max(idhabitacion) from dnn_habitaciones),0) into vlexiste;
		set vlexiste = vlexiste + 1;
		insert into dnn_habitaciones(idhabitacion, nombre, descripcion, idtipohabitacion, capacidad, extras, idestatus, comentarios, costohora, costonoche
		,costodia, iva, ieps, costopersonaextra, fechareg, idusrreg) values (
		vlexiste, paNombre, paDescripcion, paIdTipoHabitacion, paCapacidad, paExtras, paIdEstatus, paCapacidad, paExtras, paComentarios, paCostoHora, paCostoNoche
		,paCostoDia, paIva, paIeps, paCostoPersonaExtra, current_timestamp, paIdUsrreg);
		set paRes = 1;
		set paMsg = 'HABITACION AGREGADA CORRECTAMENTE';
		set paIdHabitacion = vlexiste;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_HABITACION_EDT` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_HABITACION_EDT` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_HABITACION_EDT`(
	IN paIdHabitacion int
	,IN paNombre VARCHAR(100)
	,in paDescripcion varchar(255)
	,IN paIdTipoHabitacion INT
	,IN paCapacidad INT
	,IN paExtras INT
	,in paIdEstatus int
	,IN paComentarios VARCHAR(255)
	,IN paCostoHora DECIMAL(12,4)
	,IN paCostoNoche DECIMAL(12,4)
	,IN paCostoDia DECIMAL(12,4)
	,IN paIva DECIMAL(12,4)
	,IN paIeps DECIMAL(12,4)
	,IN paCostoPersonaExtra DECIMAL(12,4)
	,IN paIdUsrreg INT
	,OUT paRes INT
	,OUT paMsg VARCHAR(150)
    )
BEGIN
	declare vlexiste int;
	set vlexiste = 0;
	set paRes = 0;
	set paMsg = 'LA HABITACION INDICADA NO EXISTE';
	SElect count(*) into vlexiste from dnn_habitaciones where idhabitacion = paIdHabitacion;
	if vlexiste > 0 then
		set vlexiste = 0;
		UPDATE dnn_habitaciones set nombre = paNombre, descripcion = paDescripcion, idtipohabitacion = paIdTipoHabitacion, capacidad = paCapacidad, extras = paExtras
		, idestatus = paIdEstatus, comentarios = paComentarios, costohora = paCostoHora, costonoche = paCostoNoche, costodia = paCostoDia, iva = paIva, ieps = paIeps
		, costopersonaextra = paCostoPersonaExtra, fechamod = current_timestamp, idusrmod = paIdUsrreg
		where idhabitacion = paIdHabitacion;
		set paRes = 1;
		set paMsg = 'HABITACION ACTUALIZADA CORRECTAMENTE';	
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_HABITACION_RENTA_CIERRA` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_HABITACION_RENTA_CIERRA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_HABITACION_RENTA_CIERRA`(
	IN paIdRenta int
	,in paIdHabitacion int
	,in paFecha date
	,in paHora time
	,in paFechaFin date
	,in paHoraFin time
	,in paRenta decimal(12,4)
	,in paIvaRenta DECIMAL(12,4)
	,in paIepsRenta DECIMAL(12,4)
	,IN paTotalRenta DECIMAL(12,4)
	,in paNumProdconsumo int
	,in paConsumo DECIMAL(12,4)
	,in paIvaConsumo DECIMAL(12,4)
	,in paIepsConsumo DECIMAL(12,4)
	,IN paTotalConsumo DECIMAL(12,4)
	,in paExtra DECIMAL(12,4)
	,in paIvaExtra DECIMAL(12,4)
	,in paIepsExtra DECIMAL(12,4)
	,IN paTotalExtra DECIMAL(12,4)
	,in paTotal DECIMAL(12,4)
	,in paIvaTotal DECIMAL(12,4)
	,in paIepsTotal DECIMAL(12,4)
	,in paGranTotal DECIMAL(12,4)
	,in paComentarios text
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlexiste int;
	declare vltotalrenta DECIMAL(12,4);
	declare vltotalConsumo decimal(12,4);
	declare csEstatusTermina int;
	DECLARE csEstatusActiva int;
	set csEstatusActiva = 1;
	set csEstatusTermina = 2;
	set vlexiste = 0;
	set paRes = 0;
	set paMsg = 'NO EXISTE LA RENTA INDICADA';
	SELECT count(*) into vlexiste from dnn_habitaciones_renta where idrenta = paIdRenta and idhabitacion = paIdHabitacion and fechaini = paFecha;
	if vlexiste = 1 then 
		update dnn_habitaciones_renta set idestatus = csEstatusTermina, fechafin = paFechaFin, horaFin = paHoraFin
		,renta = paRenta, ivarenta = paIvaRenta, iepsrenta = paIepsRenta, totalRenta = paTotalRenta, numprodconsumo = paNumProdConsumo, consumo = paConsumo
		,ivaconsumo = paIvaConsumo, iepsConsumo = paIepsConsumo, totalconsumo = paTotalConsumo, extra = paExtra, ivaextra = paIvaExtra, iepsextra = paIepsExtra
		,totalextra = paTotalExtra, total = paTotal, ivatotal = paIvaTotal, iepstotal = paIepsTotal, grantotal = paGranTotal, comentarios = paComentarios
		,fechamod = current_timestamp, idusrmod = paIdUsrreg
		where idrenta = paIdRenta AND idhabitacion = paIdHabitacion AND fechaini = paFecha AND horaini = paHora;
		
		UPDATE dnn_habitaciones set idestatus = csEstatusActiva where idhabitacion = paIdHabitacion;
		
		set paRes = 1;
		set paMSg = 'RENTA DE LA HABITACION FINALIZADA CORRECTAMENTE, HABITACION DISPONIBLE NUEVAMENTE';
		
		
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_HABITACION_RENTA_NUEVA` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_HABITACION_RENTA_NUEVA` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_HABITACION_RENTA_NUEVA`(
	IN paIdHabitacion int
	,in paFecha date
	,in paHora time
	,in paIdTipoRenta int
	,in paIdCliente int
	,in paRenta decimal(12,4)
	,in paIva DECIMAL(12,4)
	,in paIeps DECIMAL(12,4)
	,in paTotalRenta DECIMAL(12,4)
	,in paIdFormaPago int
	,in paNumPersonas int
	,in paComentarios text
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
	,out paIdRenta bigint
    )
BEGIN
	declare vlexiste bigint;
	declare vlexiste2 bigint;
	declare vldeldia int;
	declare csEstatusDisp int;
	declare csEstatusRenta int;
	DECLARE vlTicket varchar(50);
	declare csEstatusPorPagar int;
	set csEstatusPorPagar = 1;
	set vldeldia = 0;
	set vlTicket = '';
	set vlexiste2 = 0;
	set csEstatusRenta = 2;
	set csEstatusDisp = 1;
	set paRes = 0;
	set paMSg = 'LA HABITACION NO ESTA DISPONIBLE PARA RENTA';
	SELECT COUNT(*) INTO vlexiste from dnn_habitaciones where idhabitacion = paIdHabitacion and idestatus = csEstatusDisp;
	if vlexiste = 1 then
		SET vlexiste = 0;
		select ifnull((select max(idhabitacion) from dnn_habitaciones_renta),0) into vlexiste;
		set vlexiste = vlexiste + 1;
		
		insert into dnn_habitaciones_renta(idrenta, idhabitacion, fechaini, horaini, idtiporenta, idcliente, idestatus
		, numpersonas, idformapago, renta, ivarenta, iepsrenta, totalrenta, comentarios, fechareg, idusrreg)
		values(vlexiste, paIdHabitacion, paFecha, paHora, paIdTipoRenta, paIdCliente, csEstatusRenta
		, paNumPersonas, paIdFormaPago, paRenta, paIvaRenta, paIepsRenta, paTotalRenta, paComentarios, current_timestamp, paIdUsrreg);
		
		select count(*) into vldeldia from dnn_consumohabitacion_enc where fecha = date(now());
		set vldeldia = vldeldia + 1;		
		set vlTicket = concat('TKT-',vldeldia);
		
		select ifnull((select max(idconsumo) from dnn_consumohabitacion_enc),0) into vlexiste2;
		set vlexiste2 = vlexiste2 + 1;		
		
		insert into dnn_consumohabitacion_enc(idconsumo, idrenta, idhabitacion, fecha, ticket, totalproductos, costo, iva, ieps, descuentos, costoneto, idformapago, idestatus, fechareg, idusrreg)
		values (vlexiste2, vlexiste, paIdHabitacion, paFecha, vlTicket, 0, 0, 0, 0, 0, 0, paIdFormaPago, csEstatusPorPagar, current_timestamp, paIdUsrreg);
		
		update dnn_habitaciones set idestatus = csEstatusRenta where idhabitacion = paIdHabitacion;
		
		
		set paRes = 1;
		set paMsg = 'REGISTRO DE RENTA CORRECTO';
		SET paIdRenta = vlexiste;
	end if;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_INICIOSESION` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_INICIOSESION` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_INICIOSESION`(
	IN paUsuario varchar(50)
    ,in paContrasena varchar(150)
    ,in paLugar varchar(255)
    ,out paRes int
    ,out paMsg varchar(150)
)
BEGIN
	declare vlexiste int;
	declare vlbloqueo int;
	DECLARE vlnumintentos int;
	declare vlidusuario int;
	set vlbloqueo = 1;
	set vlexiste = 0;
	set paRes = vlexiste;
	set paMsg = 'EL USUARIO INDICADO NO EXISTE';
	select count(*) into vlexiste from dnn_usuarios where usuario = paUsuario;
	if vlexiste > 0 then
		set vlexiste = 0;
		SELECT numintentos INTO vlnumintentos FROM dnn_usuarios WHERE usuario = paUsuario;
		set paMsg = 'LA CONTRASENA ES INCORRECTA';
		select count(*) into vlexiste from dnn_usuarios where usuario = paUsuario AND contrasena = paContrasena;
		if vlexiste > 0 then
			set paMsg = 'EL USUARIO NO ESTA ACTIVO';
			SET vlexiste = 0;
			select esactivo into vlexiste from dnn_usuarios where usuario = paUsuario;
			if vlexiste = 1 then
				select idusuario into vlidusuario from dnn_usuarios where usuario = paUsuario;
				update dnn_usuarios set ultimoacc = current_timestamp, numintentos = 0 where usuario = paUsuario;
				set vlexiste = 1;
				set paMsg = 'BIENVENIDO';
				set paRes = vlexiste;
				insert into dnn_logaccesos_cnf(idusuario, fechareg, lugar, fecha, hora) values (vlidusuario, current_timestamp, paLugar, now(), now());
			end if;
		else
			set vlnumintentos = vlnumintentos + 1;
			if vlnumintentos > 3 then 
				set vlbloqueo = 0;
			end if;
			UPDATE dnn_usuarios SET numintentos = vlnumbloqueos, esactivo = vlbloqueo WHERE usuario = paUsuario;
		end if;
	end if;
END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_PRODUCTO_AGR` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_PRODUCTO_AGR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_PRODUCTO_AGR`(
	IN paNombre varchar(150)
	,in paDescripcion varchar(150)
	,in paIdUnidad int
	,in paIdTipo int
	,in paIdGrupo int
	,in paCostoUni DECIMAL(12,4)
	,in paIdProveedor int
	,in paIva DECIMAL(12,4)
	,in paIeps decimal(12,4)
	,in paCostoNeto decimal(12,4)
	,in paUltimaExist double
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
	,out paIdProducto int
    )
BEGIN
	declare vlexiste int;
	set vlexiste = 0;
	set paRes = 0;
	set paMsg = 'EL PRODUCTO INDICADO YA EXISTE, VERIFIQUE SUS DATOS';
	SELECT count(*) into vlexiste from dnn_productos where paNombre = paNombre;
	if vlexiste = 0 then
		set vlexiste = 0;
		select ifnull((select max(idproducto) from dnn_productos),0) into vlexiste;
		set vlexiste = vlexiste + 1;
		insert into dnn_productos(idproducto, nombre, descripcion, idunidad, esactivo, idtipo, idgrupo, costouni, idproveedor
		, iva, ieps, costoneto, ultimaexist, fechareg, idusrreg)
		values (vlexiste, panombre, padescripcion, paidunidad, 1, paidtipo, paidgrupo, pacostouni, paidproveedor
		, paiva, paieps, pacostoneto, paultimaexist, current_timestamp, paidusrreg);
		set paRes = 1;
		set paMsg = 'PRODUCTO AGREGADO CORRECTAMENTE';
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_PRODUCTO_EDT` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_PRODUCTO_EDT` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_PRODUCTO_EDT`(
	IN paIdProducto int
	,IN paNombre VARCHAR(150)
	,IN paDescripcion VARCHAR(150)
	,IN paIdUnidad INT
	,in paEsActivo int
	,IN paIdTipo INT
	,IN paIdGrupo INT
	,IN paCostoUni DECIMAL(12,4)
	,IN paIdProveedor INT
	,IN paIva DECIMAL(12,4)
	,IN paIeps DECIMAL(12,4)
	,IN paCostoNeto DECIMAL(12,4)
	,IN paUltimaExist DOUBLE
	,IN paIdUsrreg INT
	,OUT paRes INT
	,OUT paMsg VARCHAR(150)
    )
BEGIN
	declare vlexiste int;
	set vlexiste = 0;
	set paRes = 0;
	set paMsg = 'EL PRODUCTO INDICADO NO EXISTE, VERIFIQUE SUS DATOS';
	SELECT COUNT(*) INTO vlexiste from dnn_productos where idproducto = paIdProducto;
	if vlexiste > 0 then
		update dnn_productos set nombre = paNombre, descripcion = paDescripcion, idunidad = paIdUnidad, esactivo = paEsActivo, idtipo = paIdTipo
		,idgrupo = paIdGrupo, costouni = paCostoUni, idproveedor = paIdProveedor, iva = paIva, ieps = paIeps, costoneto = paCostoNeto, ultimaexist = paUltimaExist
		,fechamod = current_timestamp, idusrmod = paIdUSrreg
		where idproducto = paIdProducto;
		set paRes = 1;
		set paMsg = 'PRODUCTO MODIFICADO CORRECTAMENTE';
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_PROVEEDOR_AGR` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_PROVEEDOR_AGR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_PROVEEDOR_AGR`(
	IN paNombre varchar(255)
	,in paDescripcion varchar(255)
	,in paRfc varchar(150)
	,in paDireccion text
	,IN paDireccionFiscal TEXT
	,in paEmail varchar(255)
	,in paTelefono varchar(255)
	,in paPersonaContacto text
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
	,out paIdProveedor int
    )
BEGIN
	declare vlexiste int;
	set paRes = 0;
	set paMsg = 'EL PROVEEDOR INDICADO YA EXISTE, VERIFIQUE SUS DATOS';
	select count(*) into vlexiste from dnn_proveedores where nombre like concat('%',paNombre,'%');
	if vlexiste = 0 then
		set vlexiste = 0;
		select ifnull((Select max(idproveedor) from dnn_proveedores), 0 ) into vlexiste;
		insert into dnn_proveedores(idproveedor, nombre, descripcion, rfc, esactivo, direccion, direccionfiscal, email, telefono, personacontacto, fechareg, idusrreg)
		values(vlexiste, paNombre, paDescripcion, paRfc, 1, paDireccion, paDireccionFiscal, paEmail, paTelefono, paPersonalContacto, current_timestamp, paIdUsrreg);
		set paRes = 1;
		set paMsg = 'PROVEEDOR REGISTRADO CORRECTAMENTE';
		SET paIdProveedor = vlexiste;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_PROVEEDOR_EDT` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_PROVEEDOR_EDT` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_PROVEEDOR_EDT`(
	IN paIdProveedor int
	,in paNombre varchar(255)
	,in paDescripcion varchar(255)
	,in paRfc varchar(150)
	,in paEsActivo int
	,in paDireccion text
	,in paDireccionFiscal text
	,in paEmail varchar(255)
	,in paTelefono varchar(255)
	,in paPersonaContacto text
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlexiste int;
	set paRes = 0;
	set paMsg = 'EL PROVEEDOR INDICADO NO EXISTE, VERIFIQUE SUS DATOS';
	select count(*) into vlexiste from dnn_proveedores where idproveedor = paIdProveedor;
	if vlexiste > 0 then
		set vlexiste = 0;
		update dnn_proveedores set nombre = paNombre, descripcion = paDescripcion, rfc = paRfc, esactivo = paEsActivo, direccion = paDireccion, direccionfiscal = paDireccionFiscal
			,email = paEmail, telefono = paTelefono, fehcamod = current_timestamp, idusrmod = paIdUsrreg
		where idproveedor = paIdProveedor;
		set paRes = 1;
		set paMsg = 'PROVEEDOR ACTUALIZADO CORRECTAMENTE';
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_USUARIO_AGR` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_USUARIO_AGR` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_USUARIO_AGR`(
	IN paUsuario varchar(50)
	,in paEmail varchar(255)
	,in paNombre varchar(150)
	,in paApellidos varchar(150)
	,in paIdEmpleado int
	,in paIdPerfil int
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
	,out paIdUsuario int
    )
BEGIN
	declare vlexiste int;
	set paRes = 0;
	set paMsg = 'EL USUARIO INDICADO YA EXISTE, VALIDE SUS DATOS';
	SET vlexiste = 0;
	select count(*) into vlexiste from dnn_usuarios where usuario = paUsuario;
	if vlexiste = 0 then
		set paMsg = 'EL EMAIL INDICADO YA EXISTE, VALIDE SUS DATOS';
		SELECT count(*) into vlexiste from dnn_usuarios where email = paEmail;
		if vlexiste = 0 then
			select ifnull((select max(idusuario) from dnn_usuarios),0) into vlexiste;
			set vlexiste = vlexiste + 1;
			insert into dnn_usuarios(idusuario, usuario, contrasena, email, nombre, apellidos, idempleado, esactivo, idperfil, fechareg, idusrreg, numintentos)
			VALUES(vlexiste, paUsuario, password(paUsuario), paEmail, paNombre, paApellidos, paIdEmpleado, paIdPerfil, current_timestamp, paIdUsrreg, 0);
			set paRes = 1;
			set paMsg = 'USUARIO REGISTRADO CORRECTAMENTE!';
			SET paIdUsuario = vlexiste;
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DNN_SP_USUARIO_PAS` */

/*!50003 DROP PROCEDURE IF EXISTS  `DNN_SP_USUARIO_PAS` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DNN_SP_USUARIO_PAS`(
	IN paIdUsuario int
	,in paAntPass varchar(150)
	,in paNvoPass varchar(150)
	,in paIdUsrreg int
	,out paRes int
	,out paMsg varchar(150)
    )
BEGIN
	declare vlexiste int;
	set paRes = 0;
	set paMsg = 'EL USUARIO INDICADO NO EXISTE, VERIFIQUE SUS DATOS';
	SELECT count(*) into vlexiste from dnn_usuarios where idusuario = paIdUsuario;
	if vlexiste > 0 then
		set vlexiste = 0;
		set paMsg = 'LA CONTRASEÑA NO COINCIDE, VERIFIQUE SUS DATOS';
		select count(*) into vlexiste from dnn_usuarios where idusuario = paIdUsuario and contrasena = paAntPass;
		IF vlexiste > 0 then
			set vlexiste = 0;
			update dnn_usuarios set contrasena = PASSWORD(paNvoPass), fechamod = current_timestamp, idusermod = paIdUsrreg where idusuario = paIdUsuario;
			set paRes = 1;
			set paMsg = 'CONTRASEÑA ACTUALIZADA';
		end if;
	end if;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
