-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: transito
-- ------------------------------------------------------
-- Server version	5.5.48-log

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
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examen` (
  `idexamen` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `numero_preguntas` bigint(20) DEFAULT NULL,
  `tematica` int(11) DEFAULT NULL,
  `aprueba_con` int(11) DEFAULT NULL,
  PRIMARY KEY (`idexamen`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen`
--

LOCK TABLES `examen` WRITE;
/*!40000 ALTER TABLE `examen` DISABLE KEYS */;
INSERT INTO `examen` VALUES (3,'Examen convivencia vial ciclistas','responda las preguntas de selección múltiple ','2019-06-19',5,1,3);
/*!40000 ALTER TABLE `examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen` (
  `idImagen` int(11) NOT NULL AUTO_INCREMENT,
  `Foto` varchar(100) DEFAULT NULL,
  `tematica_idTematica` int(11) NOT NULL,
  PRIMARY KEY (`idImagen`),
  KEY `fk_imagen_tematica_idx` (`tematica_idTematica`),
  CONSTRAINT `fk_imagen_tematica` FOREIGN KEY (`tematica_idTematica`) REFERENCES `tematica` (`idTematica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (1,'../../imagenes/1.PNG',1),(2,'../../imagenes/2.PNG',1),(3,'../../imagenes/3.PNG',1),(16,'../../imagenes/4.PNG',1),(20,'../../imagenes/img 35.jpg',3),(21,'../../imagenes/5.PNG',1);
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) NOT NULL,
  `Icono` varchar(45) NOT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Gestionar Persona','fa fa-male'),(2,'Curso','fa fa-car'),(3,'Gestionar Tematica','fa fa-book'),(4,'Gestionar Evaluacion','fa fa-mortar-board'),(5,'Perfil','fa fa-male'),(6,'Resultados','fa fa-check-square-o');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdf`
--

DROP TABLE IF EXISTS `pdf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdf` (
  `idpdf` int(11) NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(500) DEFAULT NULL,
  `tematica_idTematica` int(11) NOT NULL,
  PRIMARY KEY (`idpdf`),
  KEY `fk_pdf_tematica_idx` (`tematica_idTematica`),
  CONSTRAINT `fk_pdf_tematica` FOREIGN KEY (`tematica_idTematica`) REFERENCES `tematica` (`idTematica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdf`
--

LOCK TABLES `pdf` WRITE;
/*!40000 ALTER TABLE `pdf` DISABLE KEYS */;
INSERT INTO `pdf` VALUES (2,'../../pdf/03_Capitulo_2A-señales_preventivas.pdf',2);
/*!40000 ALTER TABLE `pdf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `cedula` bigint(11) NOT NULL,
  `correol` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `recontrasena` varchar(45) NOT NULL,
  PRIMARY KEY (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'','',0,'','',''),(2,'m','m',1,'eee@hotmail.es','1','1'),(3,'mateo','m',1,'s@hotmail.com','1','1'),(4,'fafo','ll',123,'w@hotmail.com','12','12'),(5,'Jaime Andres','Florez Ospitia',1083882135,'jaflors2010@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055','81dc9bdb52d04dc20036dbd8313ed055'),(6,'David  Hernando','Florez Ospitia',10847234123,'david@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055','81dc9bdb52d04dc20036dbd8313ed055');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_rol`
--

DROP TABLE IF EXISTS `persona_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_rol` (
  `idPersona` int(11) NOT NULL AUTO_INCREMENT,
  `Persona_idpersona` int(11) NOT NULL,
  `rol_idrol` int(11) NOT NULL,
  PRIMARY KEY (`idPersona`),
  KEY `fk_persona_idx` (`Persona_idpersona`),
  KEY `fk_rol_idx` (`rol_idrol`),
  CONSTRAINT `fk_persona` FOREIGN KEY (`Persona_idpersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rol` FOREIGN KEY (`rol_idrol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_rol`
--

LOCK TABLES `persona_rol` WRITE;
/*!40000 ALTER TABLE `persona_rol` DISABLE KEYS */;
INSERT INTO `persona_rol` VALUES (1,3,1),(2,4,2),(3,5,1),(4,6,2);
/*!40000 ALTER TABLE `persona_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `idpreguntas` int(11) NOT NULL AUTO_INCREMENT,
  `cont` int(11) DEFAULT NULL,
  `enunciado` varchar(1000) DEFAULT NULL,
  `opc1` varchar(1000) DEFAULT NULL,
  `opc2` varchar(1000) DEFAULT NULL,
  `opc3` varchar(1000) DEFAULT NULL,
  `opc4` varchar(1000) DEFAULT NULL,
  `respuesta` int(11) DEFAULT NULL,
  `examen_idexamen` int(11) NOT NULL,
  PRIMARY KEY (`idpreguntas`),
  KEY `fk_preguntas_examen_idx` (`examen_idexamen`),
  CONSTRAINT `fk_preguntas_examen` FOREIGN KEY (`examen_idexamen`) REFERENCES `examen` (`idexamen`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (1,1,'rerr','ert','e3tr','ert','ert',2,3),(2,2,'rterert','etrer','ertert','ert','ert',3,3),(3,3,'jhhjhhgjhghgjh','uuyy','bnbnb','nbnbn','jhjhhj',3,3),(4,4,'hgfhgfhgfgh','dfgggfdg','dfgdfg','gfdg','gfdgd',3,3),(5,5,'jkjkknjjkjjnn','hjjjh','hjj','jkk','lklk',3,3);
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado`
--

DROP TABLE IF EXISTS `resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultado` (
  `idresultado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) DEFAULT NULL,
  `pre_buenas` bigint(20) DEFAULT NULL,
  `pre_malas` bigint(20) DEFAULT NULL,
  `total_preguntas` bigint(20) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `examen_idexamen` int(11) NOT NULL,
  `persona_idPersona` int(11) NOT NULL,
  PRIMARY KEY (`idresultado`),
  KEY `fk_resultado_examen_idx` (`examen_idexamen`),
  KEY `fk_resultado_persona1_idx` (`persona_idPersona`),
  CONSTRAINT `fk_resultado_examen` FOREIGN KEY (`examen_idexamen`) REFERENCES `examen` (`idexamen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resultado_persona1` FOREIGN KEY (`persona_idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
INSERT INTO `resultado` VALUES (1,'Pass',4,1,5,'22/06/2019 11:04:46 p. m.',3,6),(2,'Pass',5,0,5,'24/06/2019 9:09:19 p. m.',3,6);
/*!40000 ALTER TABLE `resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `NombreRol` varchar(45) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Docente'),(2,'Estudiante');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_vista`
--

DROP TABLE IF EXISTS `rol_vista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol_vista` (
  `idRol_vista` int(11) NOT NULL AUTO_INCREMENT,
  `rol_idrol` int(11) NOT NULL,
  `Vista_idvista` int(11) NOT NULL,
  PRIMARY KEY (`idRol_vista`),
  KEY `fk_idRol_idx` (`rol_idrol`),
  KEY `fk_idVista_idx` (`Vista_idvista`),
  CONSTRAINT `fk_idRol` FOREIGN KEY (`rol_idrol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idVista` FOREIGN KEY (`Vista_idvista`) REFERENCES `vista` (`idVista`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_vista`
--

LOCK TABLES `rol_vista` WRITE;
/*!40000 ALTER TABLE `rol_vista` DISABLE KEYS */;
INSERT INTO `rol_vista` VALUES (5,1,5),(6,1,6),(8,1,8),(11,2,11),(12,2,12),(13,2,13),(14,2,14);
/*!40000 ALTER TABLE `rol_vista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tematica`
--

DROP TABLE IF EXISTS `tematica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tematica` (
  `idTematica` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Numero` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `tipo_idTipo` int(11) NOT NULL,
  PRIMARY KEY (`idTematica`),
  KEY `fk_tematica_ tipo1_idx` (`tipo_idTipo`),
  CONSTRAINT `fk_tematica_ tipo1` FOREIGN KEY (`tipo_idTipo`) REFERENCES `tipo` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tematica`
--

LOCK TABLES `tematica` WRITE;
/*!40000 ALTER TABLE `tematica` DISABLE KEYS */;
INSERT INTO `tematica` VALUES (1,'Convivencia Vial Ciclistas ','1','A',1),(2,'tipos de señales','2','I',2),(3,'Señalamientos viales ','3','A',1);
/*!40000 ALTER TABLE `tematica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'imagen'),(2,'Video');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `idvideo` int(11) NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(100) DEFAULT NULL,
  `tematica_idTematica` int(11) NOT NULL,
  PRIMARY KEY (`idvideo`),
  KEY `fk_video_tematica1_idx` (`tematica_idTematica`),
  CONSTRAINT `fk_video_tematica1` FOREIGN KEY (`tematica_idTematica`) REFERENCES `tematica` (`idTematica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vista`
--

DROP TABLE IF EXISTS `vista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vista` (
  `idVista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `icono` varchar(45) NOT NULL,
  `menu_idmenu` int(11) NOT NULL,
  PRIMARY KEY (`idVista`),
  KEY `fk_menu_idx` (`menu_idmenu`),
  CONSTRAINT `fk_menu` FOREIGN KEY (`menu_idmenu`) REFERENCES `menu` (`idMenu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vista`
--

LOCK TABLES `vista` WRITE;
/*!40000 ALTER TABLE `vista` DISABLE KEYS */;
INSERT INTO `vista` VALUES (1,'Registrar Usuario','../Usuario/RegistrarU.aspx','fa fa-pencil',1),(3,'Actualizar Usuario','../Usuario/ActualizarU.aspx','fa fa-edit',1),(5,'Registrar Tematica','../Administrador/Agregar_tematica.aspx','fa fa-pencil',3),(6,'Agregar Contenido','../Administrador/Ver_tematica_admin.aspx','fa fa-edit',3),(8,'Realizar Evaluacion ','../Administrador/examen.aspx','fa fa-line-chart',4),(10,'Eliminar Evaluacion ','e','fa fa-times',4),(11,'Actualizar Datos','a','fa fa-pencil',5),(12,'Ver  temáticas ','../Estudiante/Tematicas_estudiantes.aspx','fa fa-gamepad',2),(13,'Ver Resultados','../Estudiante/mis_resulltados.aspx','fa fa-check-square-o',6),(14,'Evaluación','../Estudiante/ver_examenes.aspx','fa fa-pencil',2);
/*!40000 ALTER TABLE `vista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'transito'
--

--
-- Dumping routines for database 'transito'
--
/*!50003 DROP PROCEDURE IF EXISTS `InsertarPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarPersona`(
	IN `p_nombre` VARCHAR(45),
	IN `p_apellidos` VARCHAR(45),
	IN `p_cedula` BIGINT(11),
	IN `p_correo` VARCHAR(45),
	IN `p_contrasena` VARCHAR(45),
	IN `p_recontrasena` VARCHAR(45)
)
BEGIN
DECLARE cont int;
set cont=(select max(idPersona)+1 from persona);
insert into persona values(cont,p_nombre,p_apellidos,p_cedula,p_correo,md5(p_contrasena),md5(p_recontrasena));
insert into persona_rol (persona_idpersona,rol_idrol) values((select max(idPersona)from persona),2);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_imagen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_imagen`(
IN p_imagen varchar(100),
IN p_id_tematica INT (50) 
)
BEGIN
insert into imagen (Foto,tematica_idTematica) values (p_imagen,p_id_tematica);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_pdf` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_pdf`(
IN p_pdf varchar(100),
IN p_id_tematica INT (50) 
)
BEGIN
insert into pdf (ubicacion,tematica_idTematica) values (p_pdf,p_id_tematica);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_tematica` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_tematica`(

	IN `p_nombre` VARCHAR(50),
	IN `p_numero` VARCHAR(50),
	IN `p_tipo` INT (50)
)
BEGIN
  insert into tematica (Nombre,Numero,estado,tipo_idTipo)values (p_nombre,p_numero,'A',p_tipo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_video` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_video`(
IN p_ubicacion varchar (100),
IN P_id_temamtia INT (12)

)
BEGIN

insert into video(ubicacion,tematica_idTematica)values (concat('https://www.youtube.com/embed/',p_ubicacion),P_id_temamtia);

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

-- Dump completed on 2019-06-26 21:32:35
