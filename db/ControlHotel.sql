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

insert  into `dnn_catacciones_cnf`(`idaccion`,`accion`,`descripcion`,`esactivo`,`fechareg`,`fechamod`,`idusrreg`,`idurmod`) values (1,'INICIO DE SESION','ACCION AL INICIAR LA SESION',1,NULL,NULL,1,NULL);

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

/*Data for the table `dnn_consumohabitacion_det` */

/*Table structure for table `dnn_consumohabitacion_enc` */

DROP TABLE IF EXISTS `dnn_consumohabitacion_enc`;

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
