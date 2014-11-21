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
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `before_content` text COLLATE utf8mb4_unicode_ci,
  `after_content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `baseclass` */

insert  into `baseclass`(`id`,`name`,`timestamp`,`before_content`,`after_content`) values (1,'Home','2014-11-20 22:46:05','import static org.hamcrest.Matchers.equalTo;\nimport static org.junit.Assert.assertThat;\nimport org.junit.Before;\nimport org.junit.Test;\nimport org.openqa.selenium.By;\nimport org.openqa.selenium.WebDriver;\nimport org.openqa.selenium.WebElement;\nimport org.openqa.selenium.htmlunit.HtmlUnitDriver;\npublic class ','}'),(2,'SRD','2014-11-20 22:46:05','import static org.hamcrest.Matchers.equalTo;\nimport static org.junit.Assert.assertThat;\nimport org.junit.Before;\nimport org.junit.Test;\nimport org.openqa.selenium.By;\nimport org.openqa.selenium.WebDriver;\nimport org.openqa.selenium.WebElement;\nimport org.openqa.selenium.htmlunit.HtmlUnitDriver;\npublic class ','}'),(3,'eEdition','2014-11-20 22:46:05','import static org.hamcrest.Matchers.equalTo;\nimport static org.junit.Assert.assertThat;\nimport org.junit.Before;\nimport org.junit.Test;\nimport org.openqa.selenium.By;\nimport org.openqa.selenium.WebDriver;\nimport org.openqa.selenium.WebElement;\nimport org.openqa.selenium.htmlunit.HtmlUnitDriver;\npublic class ','}');

/*Table structure for table `baseclass_function` */

DROP TABLE IF EXISTS `baseclass_function`;

CREATE TABLE `baseclass_function` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4,
  `baseclass_id` mediumint(8) unsigned NOT NULL,
  `no_of_parameters` mediumint(8) DEFAULT '0',
  `param_1_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `param_1_description` text CHARACTER SET utf8mb4,
  `param_2_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `param_2_description` text COLLATE utf8mb4_unicode_ci,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `baseclass_function` */

insert  into `baseclass_function`(`id`,`name`,`description`,`baseclass_id`,`no_of_parameters`,`param_1_type`,`param_1_description`,`param_2_type`,`param_2_description`,`timestamp`) values (1,'launch_srd','launch srd from home',1,1,'WebElement','webelement for SRD',NULL,NULL,'2014-11-20 23:06:54'),(2,'launch_eEdition','launch eEdition from home',1,1,'WebElement','webelement for eEdition',NULL,NULL,'2014-11-20 23:07:19'),(3,'validate_header_text','validate home page header text',1,1,'String','reference string value for header text',NULL,NULL,'2014-11-20 23:15:28');

/*Table structure for table `baseclass_function_steps` */

DROP TABLE IF EXISTS `baseclass_function_steps`;

CREATE TABLE `baseclass_function_steps` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `event_type` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `locator_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseclass_function_id` mediumint(8) unsigned NOT NULL,
  `list_index` mediumint(8) NOT NULL DEFAULT '0',
  `event_return_bool` tinyint(1) NOT NULL,
  `event_return_variable` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `event_return_variable_type` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `event_java_code` text CHARACTER SET utf8mb4,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `baseclass_function_steps` */

insert  into `baseclass_function_steps`(`id`,`event_type`,`locator_name`,`baseclass_function_id`,`list_index`,`event_return_bool`,`event_return_variable`,`event_return_variable_type`,`event_java_code`,`timestamp`) values (1,'Click','context_menu_srd',1,0,0,NULL,NULL,'context_menu_srd.click();','2014-11-21 00:10:11'),(2,'Click','context_menu_eEdition',2,0,0,NULL,NULL,'context_menu_eEdition.click();','2014-11-21 00:11:22'),(3,'getText','context_menu_eEdition',3,0,1,'var1','String','String var1 = context_menu_eEdition.getText();','2014-11-21 00:23:40'),(5,'AssertEquals','home_header_text',3,1,0,NULL,NULL,'AssertEquals(home_header_text,var1);','2014-11-21 00:28:27');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cat_id` int(2) NOT NULL AUTO_INCREMENT,
  `category` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `category` */

insert  into `category`(`cat_id`,`category`) values (1,'Fruits'),(2,'Colors'),(3,'Games'),(4,'Vehicles');

/*Table structure for table `subcategory` */

DROP TABLE IF EXISTS `subcategory`;

CREATE TABLE `subcategory` (
  `subcat_id` int(3) NOT NULL AUTO_INCREMENT,
  `cat_id` int(2) NOT NULL DEFAULT '0',
  `subcategory` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `subcat_id` (`subcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `subcategory` */

insert  into `subcategory`(`subcat_id`,`cat_id`,`subcategory`) values (1,1,'Mango'),(2,1,'Banana'),(3,1,'Orange'),(4,1,'Apple'),(5,2,'Red'),(6,2,'Blue'),(7,2,'Green'),(8,2,'Yellow'),(9,3,'Cricket'),(10,3,'Football'),(11,3,'Baseball'),(12,3,'Tennis'),(13,4,'Cars'),(14,4,'Trucks'),(15,4,'Blkes'),(16,4,'Train');

/*Table structure for table `subcategory2` */

DROP TABLE IF EXISTS `subcategory2`;

CREATE TABLE `subcategory2` (
  `subcat_id` int(3) NOT NULL DEFAULT '0',
  `subcat2` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `subcategory2` */

insert  into `subcategory2`(`subcat_id`,`subcat2`) values (1,'Mango good'),(1,'Mango bad'),(2,'Banana sweet'),(2,'Banana hot'),(3,'Orange sweet'),(3,'Orange Sour'),(4,'Apple sweet'),(4,'Apple sour'),(5,'Red light'),(5,'Red Zone'),(6,'Blue deep'),(6,'Blue light'),(7,'Green light'),(7,'Green color'),(9,'Cricket Oneday'),(9,'Cricket test'),(10,'Football world'),(10,'Football team'),(11,'Base Ball team'),(11,'Base ball game'),(13,'Cars Big'),(13,'Cars small'),(14,'Trucks Big'),(14,'Trucks small'),(15,'Bikes sports'),(15,'Bike small'),(16,'Train fast'),(16,'Train slow'),(8,'Yellow card'),(8,'Yellow line'),(12,'Tennis Long'),(12,'Tennis table');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `var_item` */

insert  into `var_item`(`item_id`,`item_name`,`item_type`,`item_value`,`locator_type`,`description`,`linked_to_form_page`,`timestamp`,`final_var_item`) values (23,'context_menu_srd','WebElement','\\\\div\\srd','xpath','srd context menu xpath','Home','2014-11-21 00:01:29','WebElement context_menu_srd = driver.findElement(By.xpath(\\\\div\\srd));'),(24,'context_menu_eEdition','WebElement','\\\\div\\ebook','xpath','eEdition context menu xpath','Home','2014-11-21 00:02:24','WebElement context_menu_eEdition = driver.findElement(By.xpath(\\\\div\\ebook));'),(25,'home_header_text','String','Home','','Home header text value','Home','2014-11-21 00:03:06','String home_header_text = \"Home\";');

/*Table structure for table `web_elements` */

DROP TABLE IF EXISTS `web_elements`;

CREATE TABLE `web_elements` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `elements_type` varchar(35) NOT NULL,
  `locator_type` varchar(35) NOT NULL,
  `xpath_id` int(8) NOT NULL,
  `locator_name` varchar(35) NOT NULL,
  `find_by` varchar(150) NOT NULL,
  `linked_to_baseclass` varchar(255) NOT NULL DEFAULT 'All',
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `web_elements` */

insert  into `web_elements`(`id`,`elements_type`,`locator_type`,`xpath_id`,`locator_name`,`find_by`,`linked_to_baseclass`,`user`) values (1,'WebElement','xpath',1,'context_menu_srd','@FindBy(how = How.xpath, using =Create_Course) \n			private Button Create_Course;','All','shubham'),(2,'WebElement','linkText',2,'context_menu_eEdition','@FindBy(how = How.linkText, using =Home) \n			private Link Home;','All','shubham'),(3,'WebElement','id',3,'home_header_text','@FindBy(how = How.id, using =login) \n			private Textbox login;','All','shubham'),(4,'WebElement','id',4,'login_button','@FindBy(how = How.id, using =login1) \n			private Textbox login1;','All','shubham');

/*Table structure for table `xpath` */

DROP TABLE IF EXISTS `xpath`;

CREATE TABLE `xpath` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `locator_name` varchar(255) NOT NULL,
  `element_by_id` varchar(255) DEFAULT NULL,
  `element_by_name` varchar(255) DEFAULT NULL,
  `element_by_xpath` varchar(255) DEFAULT NULL,
  `element_by_xpath_rel` varchar(255) DEFAULT NULL,
  `css_path` varchar(255) DEFAULT NULL,
  `expected_text_value` varchar(255) DEFAULT NULL,
  `linked_to_baseclass` varchar(255) NOT NULL DEFAULT 'All',
  `sheet_name` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `xpath` */

insert  into `xpath`(`id`,`locator_name`,`element_by_id`,`element_by_name`,`element_by_xpath`,`element_by_xpath_rel`,`css_path`,`expected_text_value`,`linked_to_baseclass`,`sheet_name`,`user`) values (1,'context_menu_srd','','','//div[@id=\'shadow\']/div[2]/div/div[2]/div[1]/img[2]','/html/body/div/div/div[2]/div/div[2]/div[1]/img[2]','css=html > body > div > #shadow > div:nth-of-type(1) > div > div:nth-of-type(1) > div > img:nth-of-t',NULL,'Home','xpathSheet.xlsx','shubham'),(2,'context_menu_eEdition','j_username','j_username','//input[@id=\'j_username\']','/html/body/div/div/div[2]/div[3]/form/div/div/div[1]/div[2]/input','css=html > body > div > #shadow > div:nth-of-type(1) > div:nth-of-type(2) > #loginForm > div > div >',NULL,'Home','xpathSheet.xlsx','shubham'),(3,'home_header_text','passwordField','j_password','//input[@id=\'passwordField\']','/html/body/div/div/div[2]/div[3]/form/div/div/div[2]/div[2]/input','css=html > body > div > #shadow > div:nth-of-type(1) > div:nth-of-type(2) > #loginForm > div > div >',NULL,'Home','xpathSheet.xlsx','shubham'),(4,'login_button','imgLogin','','//a[@id=\'imgLogin\']','/html/body/div/div/div[2]/div[3]/form/div/div/div[3]/a','css=html > body > div > #shadow > div:nth-of-type(1) > div:nth-of-type(2) > #loginForm > div > div >',NULL,'Home','xpathSheet.xlsx','shubham');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
