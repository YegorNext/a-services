/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.4-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: autologin
-- ------------------------------------------------------
-- Server version	11.4.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `accesstoken`
--

DROP TABLE IF EXISTS `accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesstoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(192) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesstoken`
--

LOCK TABLES `accesstoken` WRITE;
/*!40000 ALTER TABLE `accesstoken` DISABLE KEYS */;
INSERT INTO `accesstoken` VALUES
(1,'07767c5b-7f1f-4fea-b338-8f48bb2c2edf');
/*!40000 ALTER TABLE `accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation` (
  `id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `config_path` varchar(512) DEFAULT NULL,
  `accesstoken_id` int(11) NOT NULL,
  `status` enum('New','Success','Error','Expired') NOT NULL DEFAULT 'New',
  PRIMARY KEY (`id`),
  KEY `fk_operation_accesstoken` (`accesstoken_id`),
  CONSTRAINT `fk_operation_accesstoken` FOREIGN KEY (`accesstoken_id`) REFERENCES `accesstoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` VALUES
('0129449e-b3aa-444a-9d80-a459e5102c22','2025-08-04 17:57:14','2025-08-04 18:02:14','D:\\Projects\\autologin\\logger\\0129449e-b3aa-444a-9d80-a459e5102c22\\proxy_config.json',1,'Expired'),
('0165802c-01c2-4234-a183-73f8c7195d2e','2025-08-13 17:53:03','2025-08-13 17:58:03','D:\\Projects\\autologin\\logger\\0165802c-01c2-4234-a183-73f8c7195d2e\\proxy_config.json',1,'Success'),
('1dd5f13f-f1d9-46dd-b5b3-a7eac7e72549','2025-08-04 16:43:30','2025-08-04 16:48:30','D:\\Projects\\autologin\\logger\\1dd5f13f-f1d9-46dd-b5b3-a7eac7e72549\\proxy_config.json',1,'Expired'),
('1fe99a7b-e7a6-429d-8c4b-5c56495d757c','2025-08-13 17:55:40','2025-08-13 18:00:40','D:\\Projects\\autologin\\logger\\1fe99a7b-e7a6-429d-8c4b-5c56495d757c\\proxy_config.json',1,'Success'),
('29c746c1-2e5f-4a8f-8b5a-2af4fc7f39b8','2025-08-13 19:12:17','2025-08-13 19:17:17','D:\\Projects\\autologin\\logger\\29c746c1-2e5f-4a8f-8b5a-2af4fc7f39b8\\proxy_config.json',1,'New'),
('408ab26e-49a7-4be3-99f1-4f46ff02df4c','2025-08-04 11:40:48','2025-08-04 11:45:48','D:\\Projects\\autologin\\logger\\408ab26e-49a7-4be3-99f1-4f46ff02df4c\\proxy_config.json',1,'Expired'),
('469ad7c8-79cd-4878-93b3-8b077bc4f606','2025-08-04 11:11:17','2025-08-04 11:16:17','D:\\Projects\\autologin\\logger\\469ad7c8-79cd-4878-93b3-8b077bc4f606\\proxy_config.json',1,'Expired'),
('506e048d-e24e-44f1-ba7e-4e3137586a17','2025-08-04 23:11:10','2025-08-04 23:16:10','D:\\Projects\\autologin\\logger\\506e048d-e24e-44f1-ba7e-4e3137586a17\\proxy_config.json',1,'Expired'),
('50839aa7-690a-4bee-897f-ca35eb90f309','2025-08-04 11:37:25','2025-08-04 11:42:25','D:\\Projects\\autologin\\logger\\50839aa7-690a-4bee-897f-ca35eb90f309\\proxy_config.json',1,'Expired'),
('5778eace-0129-4d3c-9401-b42ba88c91b0','2025-08-04 23:39:15','2025-08-04 23:44:15','D:\\Projects\\autologin\\logger\\5778eace-0129-4d3c-9401-b42ba88c91b0\\proxy_config.json',1,'Success'),
('5d81fdc3-0da1-4d6c-9f11-9e09b4090931','2025-08-04 18:03:46','2025-08-04 18:08:46','D:\\Projects\\autologin\\logger\\5d81fdc3-0da1-4d6c-9f11-9e09b4090931\\proxy_config.json',1,'Expired'),
('5e2b85b4-19b9-487f-8385-39bf8246e922','2025-08-13 17:49:26','2025-08-13 17:54:26','D:\\Projects\\autologin\\logger\\5e2b85b4-19b9-487f-8385-39bf8246e922\\proxy_config.json',1,'Success'),
('73b6acab-5852-42a4-815d-6c2c573995a5','2025-08-04 17:47:05','2025-08-04 17:52:05','D:\\Projects\\autologin\\logger\\73b6acab-5852-42a4-815d-6c2c573995a5\\proxy_config.json',1,'Expired'),
('76b68f53-fe39-4170-b3f6-5352bfcdb739','2025-08-13 17:47:17','2025-08-13 17:52:17','D:\\Projects\\autologin\\logger\\76b68f53-fe39-4170-b3f6-5352bfcdb739\\proxy_config.json',1,'Success'),
('858aaf7e-abc3-4d02-9d15-b637cfa3d406','2025-08-04 22:22:20','2025-08-04 22:27:20','D:\\Projects\\autologin\\logger\\858aaf7e-abc3-4d02-9d15-b637cfa3d406\\proxy_config.json',1,'Expired'),
('864f7de5-bc5c-433b-9444-b6241fa24805','2025-08-22 15:54:14','2025-08-22 15:59:14','D:\\Projects\\autologin\\logger\\864f7de5-bc5c-433b-9444-b6241fa24805\\proxy_config.json',1,'New'),
('960ce901-7879-462f-b1b6-b7d6814126e2','2025-08-04 22:19:52','2025-08-04 22:24:52','D:\\Projects\\autologin\\logger\\960ce901-7879-462f-b1b6-b7d6814126e2\\proxy_config.json',1,'Success'),
('9790c247-1cac-42b5-ad4f-92566484c875','2025-08-04 23:24:58','2025-08-04 23:29:58','D:\\Projects\\autologin\\logger\\9790c247-1cac-42b5-ad4f-92566484c875\\proxy_config.json',1,'Success'),
('9bafa891-fbc3-4b48-9e2c-26629a25dee3','2025-08-22 15:53:30','2025-08-22 15:58:30','D:\\Projects\\autologin\\logger\\9bafa891-fbc3-4b48-9e2c-26629a25dee3\\proxy_config.json',1,'New'),
('a50f0018-b5fb-4c08-923d-0935cba4d934','2025-08-22 15:47:09','2025-08-22 15:52:09','D:\\Projects\\autologin\\logger\\a50f0018-b5fb-4c08-923d-0935cba4d934\\proxy_config.json',1,'Success'),
('b77ceafb-48af-479d-8892-a7402abc4694','2025-08-04 23:44:03','2025-08-04 23:49:03','D:\\Projects\\autologin\\logger\\b77ceafb-48af-479d-8892-a7402abc4694\\proxy_config.json',1,'Success'),
('bb02c686-cc77-4f2b-81e8-d7aeafc61d3d','2025-08-22 15:54:36','2025-08-22 15:59:36','D:\\Projects\\autologin\\logger\\bb02c686-cc77-4f2b-81e8-d7aeafc61d3d\\proxy_config.json',1,'New'),
('c0cc8731-8e7c-4c61-9368-c9e518444938','2025-08-13 17:52:16','2025-08-13 17:57:16','D:\\Projects\\autologin\\logger\\c0cc8731-8e7c-4c61-9368-c9e518444938\\proxy_config.json',1,'New'),
('cbb50460-319b-4f86-9560-f3aaecc3cc08','2025-08-04 11:39:29','2025-08-04 11:44:29','D:\\Projects\\autologin\\logger\\cbb50460-319b-4f86-9560-f3aaecc3cc08\\proxy_config.json',1,'Expired'),
('cbdb6ce2-6bcb-4e06-8350-77df309a4060','2025-08-04 17:05:14','2025-08-04 17:10:14','D:\\Projects\\autologin\\logger\\cbdb6ce2-6bcb-4e06-8350-77df309a4060\\proxy_config.json',1,'Expired'),
('d3335fe8-d867-44c2-8ba9-99a029f8f4be','2025-08-04 23:19:52','2025-08-04 23:24:52','D:\\Projects\\autologin\\logger\\d3335fe8-d867-44c2-8ba9-99a029f8f4be\\proxy_config.json',1,'Success'),
('da2502c1-5af2-4a33-bdb6-cb127a9b2619','2025-08-04 22:10:27','2025-08-04 22:15:27','D:\\Projects\\autologin\\logger\\da2502c1-5af2-4a33-bdb6-cb127a9b2619\\proxy_config.json',1,'Expired'),
('e2c57947-3585-4098-a4b7-dacbf9271ac9','2025-08-04 18:08:54','2025-08-04 18:13:54','D:\\Projects\\autologin\\logger\\e2c57947-3585-4098-a4b7-dacbf9271ac9\\proxy_config.json',1,'Expired'),
('e3a48be6-d748-48f1-9bb2-75f0d35645ca','2025-08-04 23:22:52','2025-08-04 23:27:52','D:\\Projects\\autologin\\logger\\e3a48be6-d748-48f1-9bb2-75f0d35645ca\\proxy_config.json',1,'Success'),
('eb7f982f-4578-4336-99a8-5e2b97f56985','2025-08-04 11:34:14','2025-08-04 11:39:14','D:\\Projects\\autologin\\logger\\eb7f982f-4578-4336-99a8-5e2b97f56985\\proxy_config.json',1,'Expired'),
('edf1a9d9-e521-4a9d-88db-390b2abed19f','2025-08-04 16:57:35','2025-08-04 17:02:35','D:\\Projects\\autologin\\logger\\edf1a9d9-e521-4a9d-88db-390b2abed19f\\proxy_config.json',1,'Expired'),
('fc4057bc-fa42-421c-81ae-cfb6d2a1390d','2025-08-04 23:14:45','2025-08-04 23:19:45','D:\\Projects\\autologin\\logger\\fc4057bc-fa42-421c-81ae-cfb6d2a1390d\\proxy_config.json',1,'Expired');
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-01-15 16:18:32
