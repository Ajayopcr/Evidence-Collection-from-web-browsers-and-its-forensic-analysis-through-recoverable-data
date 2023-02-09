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

insert  into `user`(`id`,`name`,`pass`,`email`,`mobile`,`addr`,`dob`,`gender`,`pin`,`location`,`image`,`status`) values (1,'sunny','sunny','sunny@gmail.com','9666563655','ameerpet','11/11/1990','Male','523117','hyderabad','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0f\0\0\0f\0\0\0P\0\0\0„PLTEÿÿÿ4I^,>P.@S2F¥­1G\\.DZ1F\\úûû(@W\'?V¤­¶$=Uïğò:Nb°·¿BUiÁÇÎİáä¹¿ÆÇÍÑ‰• Qbtæèê0E„™XizÛßâ—¡¬‰”u‚gw†H[o«²ºN\\gq{†ÑÔ×GWfWcp^lz`p€$8K6O±‰Ò\0\0IDAThíšÙ¶¢0EbB¡E¯úÿÿ×°®S«TJ*>µçÁG÷ª¤rjĞÑè«¯¾ú¬Ü,Š}ÛöÃ(s?ÅM½®Ç™ÍÚj]7ò”xYY–ÉÎ2Å¬ZÆÚ!Yé‰+ãBòÊL+DúàìI\\œ|\'ç&‘Ü\"J´å‚,_…rá”ºâÙX}NV©\"—3ˆÂØ,ÑÏÜë¹—ë¹ys:%ËLaLäô¼NÀ‹9_OAÆQSZ5L0]Ğ(2è}1÷â-ÙæŠ,»rB&Q¦Ù¯éÔä‹ÙRN-ûÁb”\\k*T´N6LŒK´6*J%\rd¦™%Õb,†”hbìİğŠr7«‹ÉWŒ{À&ô†Ô¬±˜5…2²‘^“0Ã94#œÛˆ2šŸ0˜­´­î8º`È-TÈ”FÀ=úh —êJG?˜ímZ«•rD@ñ™;…À¤ğ/§êåˆT¥-ÖiÏTàŠó³ïÅ#v›r?en¥o?àvû€—Ê»ı€´Sfõú4·XjÓ_§k³×Ü‡ÄˆÉøpBî(›·€\rà&ƒŠòş}ÀS@æPg›[ÈPÎ9Cü@ÚªAıQ¦W¿A…ºœ=Š{oOÔşZî8âMİÿ !™–ıeî\r¢tÈ‹•UúVİK¤øZŠišz99–’ (}r5(ÆõÍ}BvmnI8²N¢ÄØ›O¤´ñ ²-e×p.Z+6›Í|%;¢Câ•Š’’ù\"eMÀÎ°Ä¦DØ%\r,D ÆÖBiNÖrÚ ªe-!Ìêe;@\"‡N-Zge‚)_ÃÛü•¼P‰[n£0E—C6ç› ›FüºÆ\0«Ü,×`hgàÒè-ìñÜ>Ì¸ìù0;m˜É¸›ÍQ“ğ#p7²0Æz\nÁØ˜CH8\'do¿…C&·Æ¸Õ~…ÿíc\r2ş(Z¨fo!Gc¯¢b·X-»)b¨–YSO	ª›ì#òøê«ÿN°p7ŞPòb\0\0\0\0IEND®B`‚','Authorized');

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
