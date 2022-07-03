-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_app_db2
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `QTD_leituras_de_leitor`
--

DROP TABLE IF EXISTS `QTD_leituras_de_leitor`;
/*!50001 DROP VIEW IF EXISTS `QTD_leituras_de_leitor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `QTD_leituras_de_leitor` AS SELECT 
 1 AS `leitor`,
 1 AS `leituras`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `amizade`
--

DROP TABLE IF EXISTS `amizade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amizade` (
  `leitor_follower_id` bigint NOT NULL,
  `leitor_followed_id` bigint NOT NULL,
  PRIMARY KEY (`leitor_follower_id`,`leitor_followed_id`),
  KEY `leitor_followed_fk` (`leitor_followed_id`),
  CONSTRAINT `leitor_followed_fk` FOREIGN KEY (`leitor_followed_id`) REFERENCES `leitor` (`id`),
  CONSTRAINT `leitor_follower_fk` FOREIGN KEY (`leitor_follower_id`) REFERENCES `leitor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amizade`
--

LOCK TABLES `amizade` WRITE;
/*!40000 ALTER TABLE `amizade` DISABLE KEYS */;
INSERT INTO `amizade` VALUES (2,1),(3,1),(4,1),(5,1),(6,1),(1,2),(3,2),(4,2),(5,2),(6,2),(1,3),(2,3),(4,3),(5,3),(6,3),(1,4),(2,4),(3,4),(5,4),(6,4),(1,5),(2,5),(3,5),(4,5),(6,5),(1,6),(2,6),(3,6),(4,6),(5,6);
/*!40000 ALTER TABLE `amizade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Stephen King','1947-09-21'),(2,'Pendleton Ward','1982-09-23'),(3,'Sêneca','1970-01-01');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca`
--

DROP TABLE IF EXISTS `biblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biblioteca` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `leitor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `biblioteca_leitor_fk` (`leitor_id`),
  CONSTRAINT `biblioteca_leitor_fk` FOREIGN KEY (`leitor_id`) REFERENCES `leitor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca`
--

LOCK TABLES `biblioteca` WRITE;
/*!40000 ALTER TABLE `biblioteca` DISABLE KEYS */;
INSERT INTO `biblioteca` VALUES (1,'xa',1),(2,'medoteca',1),(3,'bibliotur',2),(4,'IA',2),(5,'bloca',3),(6,'inhamee',4),(7,'e-manga',5),(8,'costela',6);
/*!40000 ALTER TABLE `biblioteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editora`
--

DROP TABLE IF EXISTS `editora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editora` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `data_fundacao` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editora`
--

LOCK TABLES `editora` WRITE;
/*!40000 ALTER TABLE `editora` DISABLE KEYS */;
INSERT INTO `editora` VALUES (1,'Annapurna','2016-12-01'),(2,'Square Enix','2003-04-01');
/*!40000 ALTER TABLE `editora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Terror'),(2,'Aventura'),(3,'Drama'),(4,'Romance'),(5,'Conto'),(6,'Ciências');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leitor`
--

DROP TABLE IF EXISTS `leitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leitor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leitor`
--

LOCK TABLES `leitor` WRITE;
/*!40000 ALTER TABLE `leitor` DISABLE KEYS */;
INSERT INTO `leitor` VALUES (1,'fvck leoz','2000-05-10'),(2,'linnn_','2001-02-02'),(3,'Ferogui','2000-10-08'),(4,'Mike','2000-12-28'),(5,'Pekazera','2000-06-28'),(6,'Chaosroline','2000-10-01');
/*!40000 ALTER TABLE `leitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leitor_pontuacao`
--

DROP TABLE IF EXISTS `leitor_pontuacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leitor_pontuacao` (
  `leitor_id` bigint NOT NULL,
  `pontuacao` int DEFAULT NULL,
  PRIMARY KEY (`leitor_id`),
  CONSTRAINT `leitor_leitor_pontuacao_fk` FOREIGN KEY (`leitor_id`) REFERENCES `leitor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leitor_pontuacao`
--

LOCK TABLES `leitor_pontuacao` WRITE;
/*!40000 ALTER TABLE `leitor_pontuacao` DISABLE KEYS */;
INSERT INTO `leitor_pontuacao` VALUES (1,0);
/*!40000 ALTER TABLE `leitor_pontuacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leitor_possui_livro`
--

DROP TABLE IF EXISTS `leitor_possui_livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leitor_possui_livro` (
  `leitor_id` bigint NOT NULL,
  `livro_id` bigint NOT NULL,
  PRIMARY KEY (`leitor_id`,`livro_id`),
  KEY `leitor_possui_livro_livro_fk` (`livro_id`),
  CONSTRAINT `leitor_possui_livro_leitor_fk` FOREIGN KEY (`leitor_id`) REFERENCES `leitor` (`id`),
  CONSTRAINT `leitor_possui_livro_livro_fk` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leitor_possui_livro`
--

LOCK TABLES `leitor_possui_livro` WRITE;
/*!40000 ALTER TABLE `leitor_possui_livro` DISABLE KEYS */;
INSERT INTO `leitor_possui_livro` VALUES (1,1),(6,1),(3,2),(4,2),(5,2),(6,2),(2,3),(4,3);
/*!40000 ALTER TABLE `leitor_possui_livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leitura`
--

DROP TABLE IF EXISTS `leitura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leitura` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `leitor_id` bigint DEFAULT NULL,
  `livro_id` bigint DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leitura_leitor_fk` (`leitor_id`),
  KEY `leitura_livro_fk` (`livro_id`),
  CONSTRAINT `leitura_leitor_fk` FOREIGN KEY (`leitor_id`) REFERENCES `leitor` (`id`),
  CONSTRAINT `leitura_livro_fk` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leitura`
--

LOCK TABLES `leitura` WRITE;
/*!40000 ALTER TABLE `leitura` DISABLE KEYS */;
INSERT INTO `leitura` VALUES (1,1,2,'2006-12-06','2007-01-04'),(2,2,3,'2006-12-06','2006-12-27'),(3,3,1,'2006-12-06','2007-01-02'),(5,1,2,'2006-12-06','2007-01-04'),(6,1,2,'2006-12-06','2007-01-04');
/*!40000 ALTER TABLE `leitura` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `ATUALIZA_PONTUACAO_LEITOR` AFTER INSERT ON `leitura` FOR EACH ROW BEGIN
   CALL INCREMENTA_PONTUCAO(NEW.leitor_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `data_publicacao` date DEFAULT NULL,
  `classificacao_etaria` int DEFAULT NULL,
  `autor_id` bigint DEFAULT NULL,
  `editora_id` bigint DEFAULT NULL,
  `genero_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `livro_autor_fk` (`autor_id`),
  KEY `livro_editora_fk` (`editora_id`),
  KEY `livro_genero_fk` (`genero_id`),
  CONSTRAINT `livro_autor_fk` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`),
  CONSTRAINT `livro_editora_fk` FOREIGN KEY (`editora_id`) REFERENCES `editora` (`id`),
  CONSTRAINT `livro_genero_fk` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'Campo do medo','2019-09-20',18,1,1,1),(2,'Hora de aventura','2010-04-05',10,2,1,2),(3,'Sobre a brevidade da vida','1001-01-01',14,3,1,4);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro_em_biblioteca`
--

DROP TABLE IF EXISTS `livro_em_biblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro_em_biblioteca` (
  `biblioteca_id` bigint NOT NULL,
  `livro_id` bigint NOT NULL,
  PRIMARY KEY (`biblioteca_id`,`livro_id`),
  KEY `livro_em_biblioteca_livro_fk` (`livro_id`),
  CONSTRAINT `livro_em_biblioteca_biblioteca_fk` FOREIGN KEY (`biblioteca_id`) REFERENCES `biblioteca` (`id`),
  CONSTRAINT `livro_em_biblioteca_livro_fk` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro_em_biblioteca`
--

LOCK TABLES `livro_em_biblioteca` WRITE;
/*!40000 ALTER TABLE `livro_em_biblioteca` DISABLE KEYS */;
INSERT INTO `livro_em_biblioteca` VALUES (2,1),(5,2),(3,3);
/*!40000 ALTER TABLE `livro_em_biblioteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_app_db2'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `reseta_pontuacao` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`%`*/ /*!50106 EVENT `reseta_pontuacao` ON SCHEDULE EVERY 1 MONTH STARTS '2022-07-03 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	TRUNCATE TABLE leitor_pontuacao;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'db_app_db2'
--
/*!50003 DROP FUNCTION IF EXISTS `QTD_amigos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `QTD_amigos`( leitor_id INT ) RETURNS int
    DETERMINISTIC
BEGIN
	SET @soma_amigos := (
		select
			count(followed.nome) as followed
		from amizade
			inner join leitor as follower on leitor_follower_id = follower.id
			inner join leitor as followed on leitor_followed_id = followed.id
		where
			follower.id = 1
    );

   RETURN @soma_amigos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `INCREMENTA_PONTUCAO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `INCREMENTA_PONTUCAO`( IN leitor_Id INT )
BEGIN
	IF (NOT EXISTS (SELECT leitor_id from leitor_pontuacao where leitor_pontuacao.leitor_id = leitor_Id)) THEN
		INSERT INTO leitor_pontuacao VALUES (leitor_Id, 0); 
	ELSE
		UPDATE leitor_pontuacao SET pontuacao = pontuacao + 1 where leitor_pontuacao.leitor_id = leitor_Id; 
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `QTD_leituras_de_leitor`
--

/*!50001 DROP VIEW IF EXISTS `QTD_leituras_de_leitor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `QTD_leituras_de_leitor` AS select `leitor`.`nome` AS `leitor`,count(0) AS `leituras` from (`leitura` join `leitor` on((`leitura`.`leitor_id` = `leitor`.`id`))) group by `leitor`.`id` order by `leituras` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-02 22:56:43
