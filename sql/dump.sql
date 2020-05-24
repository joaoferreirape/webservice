-- mysqldump --user=root -p --add-drop-database --complete-insert --dump-date --events --force --hex-blob --opt --add-drop-table --add-locks --create-options --disable-keys --extended-insert=1 --quick --set-charset --skip-lock-tables --order-by-primary --quote-names --single-transaction --tz-utc --verbose --result-file=dump.sql --databases sidi134projeto2

-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sidi134projeto2
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `sidi134projeto2`
--

/*!40000 DROP DATABASE IF EXISTS `sidi134projeto2`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sidi134projeto2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sidi134projeto2`;

--
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `idaccess` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` varchar(45) NOT NULL,
  `hostname` varchar(45) NOT NULL,
  `ip` varchar(19) NOT NULL,
  PRIMARY KEY (`idaccess`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--
-- ORDER BY:  `idaccess`

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` (`idaccess`, `timestamp`, `hostname`, `ip`) VALUES (1,'1590347486815','JJACER','192.168.56.1'),(2,'1590347528219','JJACER','192.168.56.1'),(3,'1590347920570','JJACER','192.168.56.1'),(4,'1590347932492','JJACER','192.168.56.1'),(5,'1590347934120','JJACER','192.168.56.1'),(6,'1590347935217','JJACER','192.168.56.1'),(7,'1590347967252','JJACER','192.168.56.1'),(8,'1590347968356','JJACER','192.168.56.1'),(9,'1590348050143','JJACER','192.168.56.1'),(10,'1590348071644','JJACER','192.168.56.1'),(11,'1590349076334','JJACER','192.168.56.1'),(12,'1590349112004','JJACER','192.168.56.1'),(13,'1590349266214','JJACER','192.168.56.1'),(14,'1590349280203','JJACER','192.168.56.1'),(15,'1590350165797','JJACER','192.168.56.1');
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sidi134projeto2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-24 17:14:50
