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
  `doctor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `department` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `specialization` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `bmdc_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `chamber_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `chamber_address` text CHARACTER SET utf8 COLLATE utf8_unicode_nopad_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagelink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online_consultation` varchar(22) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `doctors` */

insert  into `doctors`(`id`,`user_id`,`doctor_name`,`designation`,`department`,`specialization`,`bmdc_number`,`chamber_name`,`chamber_address`,`education`,`location`,`imagelink`,`online_consultation`,`created_at`,`updated_at`) values 
(3,20,'Dr.Md.Mosaddeque Hossain test','Oral And Dental Surgeon, President,Bangladesh Dental Society,Sylhet Division.','1','Oral And Dental Surgeon, President,Bangladesh Dental Society,Sylhet Division.','182','Adhunik Dental Surgery and Research Center.','Shapla Bhaban,Manikpir road,Nayasarak,Sylhet.','BDS,FCPS',NULL,'../ubl_laravel/public/images/doctor/image_2020_10_04T10_29_54_580Z (1).png','asdas','2020-09-30 11:06:12','2020-09-30 11:08:10'),
(4,22,'dsad','asdas','2','asdas','dsa','asd','asd','asd',NULL,'../ubl_laravel/public/images/doctor/3aa.v1.jpg','asd','2020-10-05 16:32:02','2020-10-05 16:32:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
