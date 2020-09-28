/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.14-MariaDB : Database - ubl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ubl` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `ubl`;

/*Table structure for table `doctors` */

DROP TABLE IF EXISTS `doctors`;

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `organization` varchar(55) COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `bmdc_number` varchar(255) COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `specialization` varchar(255) COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `chamber_name` varchar(255) COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `chamber_address` text COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

/*Data for the table `doctors` */

insert  into `doctors`(`id`,`user_id`,`designation`,`organization`,`bmdc_number`,`specialization`,`chamber_name`,`chamber_address`,`created_at`,`updated_at`) values 
(1,15,'11111','11111','11111','11111','11111','11111','2020-09-20 19:04:02','2020-09-28 11:35:17');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
