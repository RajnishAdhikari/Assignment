-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Temporary view structure for view `final_table`
--

DROP TABLE IF EXISTS `final_table`;
/*!50001 DROP VIEW IF EXISTS `final_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `final_table` AS SELECT 
 1 AS `id`,
 1 AS `area`,
 1 AS `is_tv_subscriber`,
 1 AS `is_movie_package_subscriber`,
 1 AS `subscription_age`,
 1 AS `bill_avg_in_dollar`,
 1 AS `remaining_contract`,
 1 AS `service_failure_count`,
 1 AS `download_avg`,
 1 AS `upload_avg`,
 1 AS `download_over_limit`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `final_table`
--

/*!50001 DROP VIEW IF EXISTS `final_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `final_table` AS select `aa`.`id` AS `id`,`aa`.`area` AS `area`,`ss`.`is_tv_subscriber` AS `is_tv_subscriber`,`ss`.`is_movie_package_subscriber` AS `is_movie_package_subscriber`,`ss`.`subscription_age` AS `subscription_age`,`ss`.`bill_avg_in_dollar` AS `bill_avg_in_dollar`,`ss`.`remaining_contract` AS `remaining_contract`,`ss`.`service_failure_count` AS `service_failure_count`,`ss`.`download_avg` AS `download_avg`,`ss`.`upload_avg` AS `upload_avg`,`ss`.`download_over_limit` AS `download_over_limit` from (`stats` `ss` join `address` `aa` on((`aa`.`id` = `ss`.`id`))) */;
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

-- Dump completed on 2023-03-05 19:19:51
