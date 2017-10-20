/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 5.5.53 : Database - cms_io
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cms_io` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cms_io`;

/*Table structure for table `think_users` */

DROP TABLE IF EXISTS `think_users`;

CREATE TABLE `think_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` char(32) DEFAULT NULL COMMENT '密码',
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `auth_code` char(32) DEFAULT NULL COMMENT '验证',
  `last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后登录时间',
  `last_ip` varchar(20) NOT NULL COMMENT '最后登录IP',
  `reg_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `reg_ip` varchar(20) NOT NULL COMMENT '注册IP',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(20) NOT NULL DEFAULT 'default' COMMENT '用户状态',
  `token` char(32) DEFAULT '' COMMENT '用户识别',
  PRIMARY KEY (`id`,`username`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `think_users` */

insert  into `think_users`(`id`,`username`,`password`,`email`,`auth_code`,`last_time`,`last_ip`,`reg_time`,`reg_ip`,`update_time`,`status`,`token`) values 
(1,'admin','7462366fc7a082375dc751bd19bd7229','admin@admin.com','7f82bc79a652fe50a32aed3b88b769db','2017-10-20 01:38:45','127.0.0.1','2017-10-20 01:16:26','127.0.0.1',NULL,'default','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
