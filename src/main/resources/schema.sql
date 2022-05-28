-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db-movie-theater
-- ------------------------------------------------------
-- Server version	5.7.33-log

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence`
(
    `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK
TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence`
VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `tb_classification`
--

DROP TABLE IF EXISTS `tb_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_classification`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_classification`
--

LOCK
TABLES `tb_classification` WRITE;
/*!40000 ALTER TABLE `tb_classification` DISABLE KEYS */;
INSERT INTO `tb_classification`
VALUES (1, 'GA: General Audience'),
       (2, '+13'),
       (3, '+18');
/*!40000 ALTER TABLE `tb_classification` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `tb_genres`
--

DROP TABLE IF EXISTS `tb_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_genres`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_genres`
--

LOCK
TABLES `tb_genres` WRITE;
/*!40000 ALTER TABLE `tb_genres` DISABLE KEYS */;
INSERT INTO `tb_genres`
VALUES (1, 'Drama'),
       (2, 'Action'),
       (3, 'Documental');
/*!40000 ALTER TABLE `tb_genres` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Table structure for table `tb_movie`
--

DROP TABLE IF EXISTS `tb_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_movie`
(
    `id`          bigint(20) NOT NULL AUTO_INCREMENT,
    `description` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
    `director`    varchar(255) COLLATE utf8mb4_bin  DEFAULT NULL,
    `line_up`     varchar(255) COLLATE utf8mb4_bin  DEFAULT NULL,
    `name`        varchar(255) COLLATE utf8mb4_bin  DEFAULT NULL,
    `gen_id`      bigint(20) DEFAULT NULL,
    `class_id`    bigint(20) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY           `tb_movie_FK` (`gen_id`),
    KEY           `tb_movie_FK_1` (`class_id`),
    CONSTRAINT `tb_movie_FK` FOREIGN KEY (`gen_id`) REFERENCES `tb_genres` (`id`),
    CONSTRAINT `tb_movie_FK_1` FOREIGN KEY (`class_id`) REFERENCES `tb_classification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movie`
--

LOCK
TABLES `tb_movie` WRITE;
/*!40000 ALTER TABLE `tb_movie` DISABLE KEYS */;
INSERT INTO `tb_movie`
VALUES (1,
        'Con la identidad de Spider-Man revelada, Peter le pide ayuda al Doctor Strange. Cuando un hechizo sale mal, comienzan a aparecer enemigos de otros mundos, lo que obliga a Peter a descubrir lo que realmente significa ser Spider-Man.',
        'Jon Watts', 'TomHolland, Zendaya, Benedict Cumberbatch', 'Spider-Man: sin camino a casa', 3, 3),
       (2,
        'Mike Banning está en Londres para asistir al funeral del Primer Ministro y se ve envuelto en un complot para asesinar a todos los líderes mundiales en asistencia.',
        'Babak Najafi', 'Gerad Butler, Aaron Eckhart, Morgan Freeman', 'Londres bajo fuego', 1, 2);
/*!40000 ALTER TABLE `tb_movie` ENABLE KEYS */;
UNLOCK
TABLES;

--
-- Dumping routines for database 'db-movie-theater'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-28 17:08:41
