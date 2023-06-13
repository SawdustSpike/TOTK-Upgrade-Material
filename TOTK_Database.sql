-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: totk
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `MaterialID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `AmountNeeded` int DEFAULT NULL,
  PRIMARY KEY (`MaterialID`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES (8,'Amber',665),(10,'Bokoblin Horn',15),(11,'Blue Bokoblin Horn',15),(12,'Bokoblin Fang',9),(13,'Bokoblin Guts',45),(14,'Black Bokoblin Horn',15),(15,'Silver Bokoblin Horn',24),(16,'Acorn',30),(17,'Farosh\'s Scale',6),(18,'Courser Bee Honey',15),(19,'Farosh\'s Claw',6),(20,'Energetic Rhino Beetle',9),(21,'Shard of Farosh\'s Fang',6),(22,'Shard of Farosh\'s Spike',45),(23,'Star Fragment',103),(24,'Farosh\'s Horn',8),(25,'Lizalfos Horn',9),(26,'Hyrule Bass',15),(27,'Lizalfos Talon',15),(28,'Hearty Bass',9),(29,'Lizalfos Tail',18),(30,'Blue Lizalfos Horn',15),(31,'Black Lizalfos Horn',15),(32,'Blue Lizalfos Tail',15),(33,'Opal',376),(34,'White Chuchu Jelly',24),(35,'Cool Safflina',9),(36,'Chillshroom',15),(37,'Ice Keese Wing',39),(38,'Ice-Breath Lizalfos Tail',54),(39,'Ice-Breath Lizalfos Horn',30),(40,'Sapphire',121),(41,'Red Chuchu Jelly',24),(42,'Warm Safflina',9),(43,'Sunshroom',15),(44,'Fire Keese Wing',45),(45,'Fire-Breath Lizalfos Tail',78),(46,'Fire-Breath Lizalfos Horn',45),(48,'Moblin Horn',9),(49,'Moblin Fang',15),(50,'Fireproof Lizard',15),(51,'Blue Moblin Horn',15),(52,'Flint',277),(53,'Smotherwing Butterfly',9),(54,'Blue Nightshade',24),(55,'Sunset Firefly',15),(56,'Silent Shroom',24),(57,'Sneaky River Snail',15),(58,'Sundelion',75),(59,'Stealthfin Trout',30),(60,'Silent Princess',72),(61,'Keese Wing',18),(62,'Rushroom',39),(63,'Electric Keese Wing',15),(64,'Hightail Lizard',21),(65,'Hot-Footed Frog',30),(66,'Swift Violet',90),(67,'Luminous Stone',540),(68,'Moblin Guts',15),(69,'Horriblin Guts',39),(70,'Gibdo Bone',50),(71,'Lynel Guts',30),(72,'Molduga Jaw',9),(73,'Chuchu Jelly',15),(74,'Keese Eyeball',30),(75,'Hinox Guts',33),(76,'Lynel Hoof',15),(77,'Diamond',27),(78,'Topaz',106),(79,'Ruby',136),(80,'Yellow Chuchu Jelly',33),(81,'Electric Lizalfos Horn',33),(82,'Voltfruit',15),(83,'Zapshroom',15),(84,'Electric Lizalfos Tail',54),(85,'Electric Safflina',24),(86,'Mighty Thistle',9),(87,'Razorshroom',15),(88,'Lynel Saber Horn',6),(89,'Lynel Mace Horn',6),(90,'Blue-Maned Lynel Saber Horn',9),(91,'Blue-Maned Lynel Mace Horn',9),(92,'Razorclaw Crab',9),(93,'White-Maned Lynel Saber Horn',9),(94,'White-Maned Lynel Mace Horn',9),(95,'Bladed Rhino Beetle',9),(96,'Swift Carrot',10),(97,'Gibdo Guts',5),(98,'Molduga Fin',5),(99,'Molduga Guts',23),(100,'Hearty Lizard',5),(101,'Aerocuda Wing',63),(102,'Aerocuda Eyeball',42),(103,'Gibdo Wing',24),(104,'Gleeok Wing',36),(105,'Zonaite',150),(106,'Large Zonaite',190),(107,'Frox Guts',18),(108,'Silver Moblin Horn',9),(109,'Silver Lizalfos Horn',9),(110,'Silver Lynel Saber Horn',9),(111,'Silver Lynel Mace Horn',9),(112,'Gleeok Guts',18),(113,'Sticky Lizard',24),(114,'Horriblin Horn',15),(115,'Blue Horriblin Horn',15),(116,'Sticky Frog',15),(117,'Black Horriblin Horn',15),(118,'Brightbloom Seed',90),(119,'Brightcap',15),(120,'Giant Brightbloom Seed',105),(121,'Deep Firefly',39),(122,'Glowing Cave Fish',15),(123,'Fire Fruit',9),(124,'Summerwing Butterfly',15),(125,'Fire Like Stone',15),(126,'Warm Darner',15),(127,'Large Zonai Charge',114),(128,'Gleeok Flame Horn',15),(129,'Sizzlefin Trout',30),(130,'Shock Fruit',9),(131,'Thunderwing Butterfly',9),(132,'Shock Like Stone',15),(133,'Electric Darner',15),(134,'Gleeok Thunder Horn',15),(135,'Voltfin Trout',30),(136,'Ice Fruit',9),(137,'Winterwing Butterfly',15),(138,'Ice Like Stone',15),(139,'Cold Darner',15),(140,'Gleeok Frost Horn',15),(141,'Chillfin Trout',30),(142,'Soldier Construct Horn',15),(143,'Soldier Construct II Horn',15),(144,'Captain Construct I Horn',15),(145,'Captain Construct II Horn',15),(146,'Soldier Construct III Horn',15),(147,'Captain Construct III Horn',15),(148,'Soldier Construct IV Horn',15),(149,'Light Dragon\'s Scale',3),(150,'Light Dragon\'s Talon',3),(151,'Shard of Light Dragon\'s Fang',3),(152,'Light Dragon\'s Horn',3),(153,'Dark Clump',15),(154,'Frox Fang',9),(155,'Frox Fingernail',9),(156,'Obsidian Frox Fang',9),(157,'Blue-White Frox Fang',15),(158,'Naydra\'s Horn',2),(159,'Dinraal\'s Horn',5),(160,'Octorok Eyeball',6),(161,'Puffshroom',9),(162,'Black Hinox Horn',9),(163,'Mighty Bananas',30),(164,'Octorok Tentacle',5),(165,'Octo Balloon',5),(166,'Naydra\'s Scale',2),(167,'Boss Bokoblin Horn',9),(168,'Blue Boss Bokoblin Horn',9),(169,'Boss Bokoblin Fang',9),(170,'Black Boss Bokoblin Horn',9),(171,'Silver Boss Bokoblin Horn',9),(172,'Dazzlefruit',60),(173,'Hinox Toenail',15),(174,'Dinraal\'s Scale',3),(175,'Hinox Tooth',15),(176,'Dinraal\'s Claw',3),(177,'Shard of Dinraal\'s Fang',3);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 21:54:29
