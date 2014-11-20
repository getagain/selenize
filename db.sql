/*
SQLyog Ultimate v9.50 
MySQL - 5.6.12-log : Database - seli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`seli` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `seli`;

/*Table structure for table `baseclass` */

DROP TABLE IF EXISTS `baseclass`;

CREATE TABLE `baseclass` (
  `bc_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bc_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`bc_id`,`bc_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `baseclass` */

/*Table structure for table `fn_steps` */

DROP TABLE IF EXISTS `fn_steps`;

CREATE TABLE `fn_steps` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_code` text COLLATE utf8mb4_unicode_ci,
  `bc_fn_ref_id` mediumint(8) unsigned NOT NULL,
  `list_index` mediumint(8) NOT NULL DEFAULT '0',
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `fn_steps` */

/*Table structure for table `function` */

DROP TABLE IF EXISTS `function`;

CREATE TABLE `function` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fn_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_parameters` mediumint(8) DEFAULT '0',
  `parametsrs` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bc_ref_id` mediumint(8) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`fn_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `function` */

/*Table structure for table `tc_test_case` */

DROP TABLE IF EXISTS `tc_test_case`;

CREATE TABLE `tc_test_case` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tc_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tc_user_story_ref_id` mediumint(8) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tc_test_case` */

/*Table structure for table `tc_test_steps` */

DROP TABLE IF EXISTS `tc_test_steps`;

CREATE TABLE `tc_test_steps` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `test_case_ref_id` mediumint(8) unsigned NOT NULL,
  `function_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `function_ref_id` mediumint(8) NOT NULL,
  `list_index` mediumint(8) NOT NULL DEFAULT '0',
  `timestamp` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tc_test_steps` */

/*Table structure for table `tc_user_story` */

DROP TABLE IF EXISTS `tc_user_story`;

CREATE TABLE `tc_user_story` (
  `bc_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bc_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gn_imports` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bc_imports` text COLLATE utf8mb4_unicode_ci,
  `gn_before` text COLLATE utf8mb4_unicode_ci,
  `gn_after` text COLLATE utf8mb4_unicode_ci,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tc_user_story` */

/*Table structure for table `test_cases` */

DROP TABLE IF EXISTS `test_cases`;

CREATE TABLE `test_cases` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `tc_name` varchar(250) NOT NULL,
  `user_story` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `test_cases` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `User_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` char(40) NOT NULL,
  `registration_date` datetime NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`User_id`,`first_name`,`last_name`,`sex`,`email`,`password`,`registration_date`) values (1,'Jon','Doe','male','random@email.com','5cec175b165e3d5e62c9e13ce848ef6feac81bff','2012-08-11 18:13:09'),(10,'test','last','female','test@test','c29da3f6a48cb429c3f146edb5e0dcbbfaaf515d','2014-11-20 11:56:55'),(11,'test2','test2','M','test2@test2','baec485a5c517708378233ea257a7675121b2c2f','2014-11-20 12:02:41');

/*Table structure for table `var_item` */

DROP TABLE IF EXISTS `var_item`;

CREATE TABLE `var_item` (
  `item_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_value` mediumtext COLLATE utf8mb4_unicode_ci,
  `locator_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `linked_to_form_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `final_var_item` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`item_id`,`item_name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `var_item` */

insert  into `var_item`(`item_id`,`item_name`,`item_type`,`item_value`,`locator_type`,`description`,`linked_to_form_page`,`timestamp`,`final_var_item`) values (1,'srd_button','we','test','xpath','srd button of container',NULL,'2014-11-20 13:22:30',NULL),(2,'srd_button','we','test','xpath','srd button of container',NULL,'2014-11-20 14:26:50',NULL),(3,'srd_button','we','{@class=test','xpath','srd button of container',NULL,'2014-11-20 14:59:49',NULL),(4,'srd_button','we','\\\\div{@class=\'test\'\\\\div','xpath','srd button of container',NULL,'2014-11-20 15:01:58',NULL),(5,'vartest','var','test value','String','test88',NULL,'2014-11-20 15:30:45',NULL),(6,'vartest','var','test value','String','test88',NULL,'2014-11-20 15:32:01',NULL),(7,'vartest','var','test value','String','test889',NULL,'2014-11-20 15:33:36',NULL),(8,'srd_button','WebElement','{@class=\'test','xpath','test4545',NULL,'2014-11-20 15:34:59',NULL),(9,'vartest','String','test','String','test8899',NULL,'2014-11-20 15:35:36',NULL),(10,'srd_button','String','test value','','test888888',NULL,'2014-11-20 15:38:20',NULL),(11,'srd_button','WebElement','test value','cssSelector','test8888889',NULL,'2014-11-20 15:38:45',NULL),(12,'srd_button','WebElement','\\\\div{@class=\'test\'\\\\div','xpath','test88',NULL,'2014-11-20 16:07:29','test'),(13,'test','WebElement','\\\\@test','xpath','test786',NULL,'2014-11-20 16:08:14','WebElement test = driver.findElement(By.xpath(\\\\\\\\@test));'),(14,'test','WebElement','\\@test','xpath','test78633',NULL,'2014-11-20 16:10:20','WebElement test = driver.findElement(By.xpath(\\\\\\\\@test));'),(15,'test','WebElement','\\\\@test','xpath','test786334',NULL,'2014-11-20 16:11:38','WebElement test = driver.findElement(By.xpath(\\\\@test));'),(16,'var11','String','testing test','','test7863345',NULL,'2014-11-20 16:12:46','String var11 = \"testing test\"'),(17,'srd_button','String','test value','id','2222',NULL,'2014-11-20 18:04:45','String srd_button = \"test value\";'),(18,'srd_button12313','String','test value','id','test88',NULL,'2014-11-20 18:18:11','String srd_button12313 = \"test value\";'),(19,'srd_button','WebElement','\\\\div{@class=\'test\'\\\\div','id','444','All','2014-11-20 18:24:12','WebElement srd_button = driver.findElement(By.id(\\\\div{@class=\'test\'\\\\div));'),(20,'srd_button','String','\\\\div{@class=\'test\'\\\\div','id','test88','All','2014-11-20 18:24:47','String srd_button = \"\\\\div{@class=\'test\'\\\\div\";'),(21,'srd_button','String','test value','','test88','All','2014-11-20 18:25:21','String srd_button = \"test value\";');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
