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


DROP TABLE IF EXISTS `encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encuesta` (
  `ID` int(11) NOT NULL,
  `Valor` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encuesta`
--

LOCK TABLES `encuesta` WRITE;
/*!40000 ALTER TABLE `encuesta` DISABLE KEYS */;
INSERT INTO `encuesta` VALUES (1,2);
/*!40000 ALTER TABLE `encuesta` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen`
--

LOCK TABLES `examen` WRITE;
/*!40000 ALTER TABLE `examen` DISABLE KEYS */;
INSERT INTO `examen` VALUES (3,'Examen convivencia vial ciclistas','responda las preguntas de selección múltiple ','2019-07-07',5,1,3),(4,'Examen Señales de información','Según el enunciado responda el nombre de la señal  ','2019-07-09',6,3,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (1,'../../imagenes/1.PNG',1),(2,'../../imagenes/2.PNG',1),(3,'../../imagenes/3.PNG',1),(16,'../../imagenes/4.PNG',1),(20,'../../imagenes/img 35.jpg',3),(21,'../../imagenes/5.PNG',1),(22,'../../imagenes/6.PNG',1),(23,'../../imagenes/7.PNG',1),(24,'../../imagenes/img 36.jpg',3),(25,'../../imagenes/img 37.jpg',3),(26,'../../imagenes/img 38.jpg',3),(27,'../../imagenes/img 39.jpg',3),(29,'../../imagenes/img 40.jpg',3),(30,'../../imagenes/img 41.jpg',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Gestionar Persona','fa fa-male'),(2,'Curso','fa fa-car'),(3,'Gestionar Tematica','fa fa-book'),(4,'Gestionar Evaluacion','fa fa-mortar-board'),(5,'Perfil','fa fa-male'),(6,'Resultados','fa fa-check-square-o'),(7,'información ','fa fa-info-circle');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdf`
--

LOCK TABLES `pdf` WRITE;
/*!40000 ALTER TABLE `pdf` DISABLE KEYS */;
INSERT INTO `pdf` VALUES (2,'../../pdf/03_Capitulo_2A-señales_preventivas.pdf',2),(3,'../../pdf/04_Capitulo_2B-señales_reglamentarias.pdf',2),(5,'../../pdf/05_Capitulo_2C-se_ales_inf.pdf',3),(6,'../../pdf/el-ciclista.pdf',1);
/*!40000 ALTER TABLE `pdf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pers_encuesta`
--

DROP TABLE IF EXISTS `pers_encuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pers_encuesta` (
  `id` int(11) NOT NULL,
  `Persona` int(11) NOT NULL,
  `Encuesta` int(11) NOT NULL,
  `Estado` enum('Activo','Inactivo') NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Fk_person_encusta_idx` (`Persona`),
  KEY `fk_person_encuesta_idx` (`Encuesta`),
  CONSTRAINT `fk_person_encuesta` FOREIGN KEY (`Encuesta`) REFERENCES `encuesta` (`ID`),
  CONSTRAINT `Fk_person_personencu` FOREIGN KEY (`Persona`) REFERENCES `persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pers_encuesta`
--

LOCK TABLES `pers_encuesta` WRITE;
/*!40000 ALTER TABLE `pers_encuesta` DISABLE KEYS */;
INSERT INTO `pers_encuesta` VALUES (4,7,1,'Activo','2019-07-07 15:23:28');
/*!40000 ALTER TABLE `pers_encuesta` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'','',0,'','',''),(2,'m','m',1,'eee@hotmail.es','1','1'),(3,'mateo','m',1,'s@hotmail.com','1','1'),(4,'fafo','ll',123,'w@hotmail.com','12','12'),(5,'Jaime Andres','Florez Ospitia',1083882135,'jaflors2010@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055','81dc9bdb52d04dc20036dbd8313ed055'),(6,'David  Hernando','Florez Ospitia',10847234123,'david@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055','81dc9bdb52d04dc20036dbd8313ed055'),(7,'Rous ','Duran',1083882137,'rous@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055','2fc4a68635c26db1019047965180ce1b'),(8,'Carlos Javier','Ramirez',1083882137,'carlos@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055','81dc9bdb52d04dc20036dbd8313ed055'),(9,'Alejandra florez ','Florez Ospitia',1083884763,'aleja@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055','81dc9bdb52d04dc20036dbd8313ed055');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `ejercicio`
--

DROP TABLE IF EXISTS `ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejercicio` (
  `Id` int(11) NOT NULL,
  `Erro` varchar(45) NOT NULL,
  `Acierto` varchar(45) NOT NULL,
  `Nota` varchar(45) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Persona` int(11) NOT NULL,
  `Estado` enum('activo','inactivo') NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_persona_idx` (`Persona`),
  CONSTRAINT `FK_persona_ejercicio` FOREIGN KEY (`Persona`) REFERENCES `persona` (`idPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicio`
--

LOCK TABLES `ejercicio` WRITE;
/*!40000 ALTER TABLE `ejercicio` DISABLE KEYS */;
INSERT INTO `ejercicio` VALUES (1,'0','1','50','2019-07-08 09:11:51',6,'activo'),(2,'1','1','50','2019-07-08 15:24:44',6,'activo'),(3,'0','1','50','2019-07-15 17:31:57',6,'activo'),(4,'0','0','0','2019-07-15 17:37:02',6,'activo'),(5,'0','0','0','2019-07-17 17:25:42',6,'activo'),(6,'0','1','50','2019-07-17 17:25:58',6,'inactivo'),(7,'1','1','50','2019-07-17 17:26:10',6,'inactivo');
/*!40000 ALTER TABLE `ejercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encuesta`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_rol`
--

LOCK TABLES `persona_rol` WRITE;
/*!40000 ALTER TABLE `persona_rol` DISABLE KEYS */;
INSERT INTO `persona_rol` VALUES (1,3,1),(2,4,2),(3,5,1),(4,6,2),(5,7,2),(6,8,2),(7,9,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (1,1,'¿Que distancia   adecuada se debe mantener  a la hora de sobrepasar a  un ciclista ??','1,5 mts','2 mts','3,5 mts','1 mts',1,3),(2,2,'¿cual es la indumentaria que deber llevar un ciclista a la hora de transitar en la vía? ','casco bien abrochado ','ropa clara ','ropa refractante','todas las anteriores ',4,3),(3,3,'¿ cual no es un consejo para mayor seguridad  de un ciclista ??','transitar por la derecha ','utilizar casco ','respetar el sentido del transito ','no respetar el sentido del transito ',4,3),(4,4,'¿Los ciclistas no deben transitar por la acera a menos que ? ','sea menor de 14   y años   este acompañado por una adulto ','sea una persona con discapacidad','sea un adulto mayor','todas las anteriores ',4,3),(5,5,'¿a cuantos centímetros de la acera puede transitar un ciclista ? ','30 cm','30 cm ','1 mts','15 cm',1,3),(6,1,'\r\nEsta señal indica la prohibición para circular en bicicleta. Como por ejemplo en autopistas, autovías y túneles.\r\n','Prohibida Circulación de Bicicletas','Prohibida Circulación de Maquinaria','Prohibida Circulación  de Motocicletas','No peatones ',1,4),(7,2,'Esta señal Sirve para indicar la proximidad de una calle que cruza en forma perpendicular la vía por la cual un conductor transita, de tal forma de disminuir la velocidad, estando atento para evitar algún accidente','Cruce en T','Cruce','Cruce Ferroviario','Empalme Lateral',2,4),(8,3,'Esta señal se emplea para indicar a los conductores, antes del paso por una intersección, la dirección correcta a seguir para llegar a una población, sitio de interés, o destino de viaje, mediante el uso de mensajes escritos y flechas','Información previa de destino ','Informativa de decisión de destino','Poste de referencia','SEGURIDAD VIAL',1,4),(9,4,'Tienen por objetivo guiar al usuario de la vía, suministrándole información de localidades, destinos, direcciones, sitios especiales, distancias y prestación de servicios','señales reglamentarias ','señales informativas','señales de advertencia ','señales de advertencia ',1,4),(10,5,'Tienen por objetivo guiar al usuario de la vía, suministrándole información de localidades, destinos, direcciones, sitios especiales, distancias y prestación de servicios.','señales reglamentarias ','señales informativas ','señales de advertencia','señales reglamentarias ',2,4),(11,6,'Con lluvia, el ciclomotor se adhiere mejor a la calzada si:','Se aumenta la presión de inflado del neumático','El neumático conserva el dibujo en toda la superficie.','Se baja la presión de inflado del neumático','Cualquier casco que cubra bien la cabeza.',2,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
INSERT INTO `resultado` VALUES (1,'REPROBADO',2,3,5,'8/07/2019 9:12:44 a. m.',3,6),(2,'APROBADO',4,2,6,'8/07/2019 8:45:42 a. m.',4,6),(3,'APROBADO',5,0,5,'8/07/2019 8:55:13 a. m.',3,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_vista`
--

LOCK TABLES `rol_vista` WRITE;
/*!40000 ALTER TABLE `rol_vista` DISABLE KEYS */;
INSERT INTO `rol_vista` VALUES (5,1,5),(6,1,6),(8,1,8),(11,2,11),(12,2,12),(13,2,13),(14,2,14),(15,2,15),(16,2,16),(17,2,17),(18,2,18),(19,2,19),(20,1,20),(21,1,21);
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
INSERT INTO `tematica` VALUES (1,'Convivencia Vial Ciclistas ','1','A',1),(2,'tipos de señales','2','A',2),(3,'Señales de Información ','3','A',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (6,'https://www.youtube.com/embed/qYBHeRMwxiE',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vista`
--

LOCK TABLES `vista` WRITE;
/*!40000 ALTER TABLE `vista` DISABLE KEYS */;
INSERT INTO `vista` VALUES (1,'Registrar Usuario','../Usuario/RegistrarU.aspx','fa fa-pencil',1),(3,'Actualizar Usuario','../Usuario/ActualizarU.aspx','fa fa-edit',1),(5,'Registrar Tematica','../Administrador/Agregar_tematica.aspx','fa fa-pencil',3),(6,'Agregar Contenido','../Administrador/Ver_tematica_admin.aspx','fa fa-edit',3),(8,'Añadir  Evaluacion ','../Administrador/examen.aspx','fa fa-plus',4),(10,'Eliminar Evaluacion ','e','fa fa-times',4),(11,'Actualizar Datos','../Estudiante/Actualizar_datos.aspx','fa fa-pencil',5),(12,'Ver  temáticas ','../Estudiante/Tematicas_estudiantes.aspx','fa fa-gamepad',2),(13,'Ver Resultados','../Estudiante/mis_resulltados.aspx','fa fa-check-square-o',6),(14,'Evaluación','../Estudiante/ver_examenes.aspx','fa fa-pencil',2),(15,'Documentación vehículos ','../Estudiante/Referente.aspx','fa fa-file-o',7),(16,'El cuerpo y la moto','../Estudiante/Tecnica.aspx','fa fa-male',7),(17,'Seguridad en el vehículo','../Estudiante/Vista1.aspx','fa fa-shield',7),(18,'Seguridad al viajar','../Estudiante/vista2.aspx','fa fa-shield',7),(19,'Ejercicio','../Estudiante/Ejercicio.aspx','fa fa-gamepad',2),(20,'Resultados','../Administrador/Result.aspx','fa fa-trophy',4),(21,'Resultado Ejercicio','../Administrador/MostrarRespuesta.aspx','fa fa-pencil',4);
/*!40000 ALTER TABLE `vista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'transito'
--

--
-- Dumping routines for database 'transito'
--
/*!50003 DROP PROCEDURE IF EXISTS `con_ejer_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `con_ejer_all`()
BEGIN
select persona.IdPersona, persona.Nombres from ejercicio 
inner join persona on ejercicio.Persona=persona.IdPersona
where ejercicio.Estado='activo'
group by persona.IdPersona;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `con_ejer_per` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `con_ejer_per`(
in idt int
)
BEGIN
select ejercicio.Erro, ejercicio.Acierto, ejercicio.Nota, ejercicio.Fecha from ejercicio 
inner join persona on ejercicio.Persona=persona.IdPersona
where persona.IdPersona=idt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
/*!50003 DROP PROCEDURE IF EXISTS `Insert_encuesta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_encuesta`(
in id int,
in valor int,
in id_perso int
)
BEGIN
insert into encuesta value(id,valor);
set @est =(select count(*) from ejercicio);
insert into pers_encuesta value(@est+1,id_perso,id,1,now());
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
/*!50003 DROP PROCEDURE IF EXISTS `insert_test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_test`(
in erro varchar(45),
in acert varchar(45),
in nota float,
in usuario int(11)
)
BEGIN
declare ent int;

set @est =(select count(*) from ejercicio where ejercicio.Persona=usuario);
set @est_v=(select if(@est < 5,1,2));
SET @num =(select IFNULL(MAX(ejercicio.id),0) FROM ejercicio);

insert into ejercicio values(@num+1,erro,acert,nota,now(), usuario,@est_v);


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

-- Dump completed on 2019-07-17 22:22:29
