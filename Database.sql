/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.1.44-community : Database - p11
*********************************************************************
Server version : 5.1.44-community
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `p11`;

USE `p11`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `name` text,
  `pass` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`name`,`pass`) values ('admin','admin');

/*Table structure for table `blocked_user` */

DROP TABLE IF EXISTS `blocked_user`;

CREATE TABLE `blocked_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `tname` text,
  `ip` text,
  `dt` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `blocked_user` */

/*Table structure for table `bnb_users` */

DROP TABLE IF EXISTS `bnb_users`;

CREATE TABLE `bnb_users` (
  `user` text,
  `number` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bnb_users` */

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recommendfrom` varchar(45) DEFAULT NULL,
  `recommendto` varchar(45) DEFAULT NULL,
  `tname` varchar(45) DEFAULT NULL,
  `date` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recommend` */

/*Table structure for table `requests` */

DROP TABLE IF EXISTS `requests`;

CREATE TABLE `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(222) DEFAULT NULL,
  `utopic` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT NULL,
  `ip` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `requests` */

insert  into `requests`(`id`,`user`,`utopic`,`status`,`ip`) values (2,'sunny','dotnet','REQUEST','192.168.43.122'),(3,'sunny','chitra','REQUEST','192.168.43.122');

/*Table structure for table `topics` */

DROP TABLE IF EXISTS `topics`;

CREATE TABLE `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `url` text,
  `descr` text,
  `uses` text,
  `image` longblob,
  `auth` text,
  `year` text,
  `rank` int(11) DEFAULT NULL,
  `dt` text,
  `admin_name` text,
  `ip` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `topics` */

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `tname` text,
  `task` text,
  `dt` text,
  `ip` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transaction` */

/*Table structure for table `unblock_req` */

DROP TABLE IF EXISTS `unblock_req`;

CREATE TABLE `unblock_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `status` text,
  `req_dt` text,
  `res_dt` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `unblock_req` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `image` longblob,
  `status` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`pass`,`email`,`mobile`,`addr`,`dob`,`gender`,`pin`,`location`,`image`,`status`) values (1,'sunny','sunny','sunny@gmail.com','9666563655','ameerpet','11/11/1990','Male','523117','hyderabad','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0f\0\0\0f\0\0\0P\0\0\0�PLTE���4I^,>P.@S2F���1G\\.DZ1F\\���(@W\'?V���$=U���:Nb���BUi�����乿���щ��Qbt���0E���Xiz��◡���u��gw�H[o���N\\gq{����GWfWcp^lz`p�$8K6O���\0\0IDATh��ٶ�0E�bB��E����װ�S�TJ*>���G���rj��諯����,�}���(s?ŐM��Ǚ�ڏj]7��xYY���2ŬZ��!Y�+�B��L+D����I\\�|�\'�&���\"J��,_�rᔺ��X}�NV�\"�3���,���빗�ys:%�LaL���N��9_OA�QSZ5L0]�(2�}1��-��,�rB&Q�ٯ�����RN-��b�\\k*T�N�6L�K�6*J%\rd��%�b,��hb����r7���W�{�&�����5�2��^�0�94#�ۈ�2��0�����8�`�-TȔF�=�h ��JG?��mZ��rD@�;����/���T�-�i�T������#v�r?en�o?�v���ʻ����Sf��4�Xj�_�k�ׁ܇Ĉ��pB�(���\r�&����}�S@�Pg�[�P�9C�@ڪA�Q�W�A���=�{oO��Z�8�M��� !���e�\r�t���U�V��K��Z�i�z99���(}r�5(���}BvmnI8�N��؛O��� �-�e�p.Z+6��|%;�C╊���\"eM��ΰ��D�%\r,D ��BiN�r�ڠ�e-!��e;@\"�N-Zge�)_�����P�[n�0E�C6� �F����\0��,�`hg���-��܍>�����0;m�����Q��#p7�0�z\n�ؘCH8�\'do��C�&�Ƹ�~����c\r2�(Z�fo�!Gc��b�X-�)b��YSO	���#����N�p7��P�b\0\0\0\0IEND�B`�','Authorized');

/*Table structure for table `user_web_limits` */

DROP TABLE IF EXISTS `user_web_limits`;

CREATE TABLE `user_web_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text,
  `name` text,
  `count` text,
  `type` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_web_limits` */

/*Table structure for table `web_limits` */

DROP TABLE IF EXISTS `web_limits`;

CREATE TABLE `web_limits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `count` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `web_limits` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
