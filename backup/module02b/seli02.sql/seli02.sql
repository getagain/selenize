/*
SQLyog Ultimate v9.50 
MySQL - 5.6.17 : Database - seli
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
  `before_content` text COLLATE utf8mb4_unicode_ci,
  `after_content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`bc_id`,`bc_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `baseclass` */

insert  into `baseclass`(`bc_id`,`bc_name`,`timestamp`,`before_content`,`after_content`) values (1,'Home','2014-11-20 22:46:05','import static org.hamcrest.Matchers.equalTo;\nimport static org.junit.Assert.assertThat;\n\nimport org.junit.Before;\nimport org.junit.Test;\nimport org.openqa.selenium.By;\nimport org.openqa.selenium.WebDriver;\nimport org.openqa.selenium.WebElement;\nimport org.openqa.selenium.htmlunit.HtmlUnitDriver;\n\npublic class TestEndToEndPages {\n\n	private WebDriver driver;\n\n	@Before\n	public void setUp() {\n		// Create a new instance of the html unit driver\n		driver = new HtmlUnitDriver();\n\n		//Navigate to desired web page\n		driver.get(\"www.myngconnect.com.com\");\n	}','}'),(2,'SRD','2014-11-20 22:46:05','import static org.hamcrest.Matchers.equalTo;\nimport static org.junit.Assert.assertThat;\n\nimport org.junit.Before;\nimport org.junit.Test;\nimport org.openqa.selenium.By;\nimport org.openqa.selenium.WebDriver;\nimport org.openqa.selenium.WebElement;\nimport org.openqa.selenium.htmlunit.HtmlUnitDriver;\n\npublic class TestEndToEndPages {\n\n	private WebDriver driver;\n\n	@Before\n	public void setUp() {\n		// Create a new instance of the html unit driver\n		driver = new HtmlUnitDriver();\n\n		//Navigate to desired web page\n		driver.get(\"www.myngconnect.com.com\");\n	}','}'),(3,'eEdition','2014-11-20 22:46:05','import static org.hamcrest.Matchers.equalTo;\nimport static org.junit.Assert.assertThat;\n\nimport org.junit.Before;\nimport org.junit.Test;\nimport org.openqa.selenium.By;\nimport org.openqa.selenium.WebDriver;\nimport org.openqa.selenium.WebElement;\nimport org.openqa.selenium.htmlunit.HtmlUnitDriver;\n\npublic class TestEndToEndPages {\n\n	private WebDriver driver;\n\n	@Before\n	public void setUp() {\n		// Create a new instance of the html unit driver\n		driver = new HtmlUnitDriver();\n\n		//Navigate to desired web page\n		driver.get(\"www.myngconnect.com.com\");\n	}','}');

/*Table structure for table `fn_steps` */

DROP TABLE IF EXISTS `fn_steps`;

CREATE TABLE `fn_steps` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `event_type` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `var_item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_java_code` text CHARACTER SET utf8mb4,
  `bc_fn_ref_id` mediumint(8) unsigned NOT NULL,
  `list_index` mediumint(8) NOT NULL DEFAULT '0',
  `event_return` tinyint(1) NOT NULL,
  `event_return_variable` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `event_return_variable_type` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `fn_steps` */

insert  into `fn_steps`(`id`,`event_type`,`var_item_name`,`event_java_code`,`bc_fn_ref_id`,`list_index`,`event_return`,`event_return_variable`,`event_return_variable_type`,`timestamp`) values (1,'Click','context_menu_srd','context_menu_srd.click();',1,0,0,NULL,NULL,'2014-11-21 00:10:11'),(2,'Click','context_menu_eEdition','context_menu_eEdition.click();',2,0,0,NULL,NULL,'2014-11-21 00:11:22'),(3,'getText','context_menu_eEdition','String var1 = context_menu_eEdition.getText();',3,0,1,'var1','String','2014-11-21 00:23:40'),(5,'AssertEquals','home_header_text','AssertEquals(home_header_text,var1);',3,1,0,NULL,NULL,'2014-11-21 00:28:27');

/*Table structure for table `function` */

DROP TABLE IF EXISTS `function`;

CREATE TABLE `function` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `fn_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fn_description` text CHARACTER SET utf8mb4,
  `no_of_parameters` mediumint(8) DEFAULT '0',
  `bc_ref_id` mediumint(8) unsigned NOT NULL,
  `param1_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `param1_description` text CHARACTER SET utf8mb4,
  `param2_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `param2_description` text COLLATE utf8mb4_unicode_ci,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`fn_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `function` */

insert  into `function`(`id`,`fn_name`,`fn_description`,`no_of_parameters`,`bc_ref_id`,`param1_type`,`param1_description`,`param2_type`,`param2_description`,`timestamp`) values (1,'launch_srd','launch srd from home',1,1,'WebElement','webelement for SRD',NULL,NULL,'2014-11-20 23:06:54'),(2,'launch_eEdition','launch eEdition from home',1,1,'WebElement','webelement for eEdition',NULL,NULL,'2014-11-20 23:07:19'),(3,'validate_header_text','validate home page header text',1,1,'String','reference string value for header text',NULL,NULL,'2014-11-20 23:15:28');

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
  `function_ref_name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `function_ref_id` mediumint(8) NOT NULL,
  `fn_parameters` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `var_item` */

insert  into `var_item`(`item_id`,`item_name`,`item_type`,`item_value`,`locator_type`,`description`,`linked_to_form_page`,`timestamp`,`final_var_item`) values (23,'context_menu_srd','WebElement','\\\\div\\srd','xpath','srd context menu xpath','Home','2014-11-21 00:01:29','WebElement context_menu_srd = driver.findElement(By.xpath(\\\\div\\srd));'),(24,'context_menu_eEdition','WebElement','\\\\div\\ebook','xpath','eEdition context menu xpath','Home','2014-11-21 00:02:24','WebElement context_menu_eEdition = driver.findElement(By.xpath(\\\\div\\ebook));'),(25,'home_header_text','String','Home','','Home header text value','Home','2014-11-21 00:03:06','String home_header_text = \"Home\";');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
