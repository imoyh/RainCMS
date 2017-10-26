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

/*Table structure for table `think_categorys` */

DROP TABLE IF EXISTS `think_categorys`;

CREATE TABLE `think_categorys` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `name` varchar(20) DEFAULT NULL COMMENT '栏目名',
  `pid` int(5) DEFAULT '0' COMMENT '父级ID',
  `level` int(1) DEFAULT '0' COMMENT '层级',
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `mid` int(5) DEFAULT NULL COMMENT '模型id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `think_categorys` */

/*Table structure for table `think_config` */

DROP TABLE IF EXISTS `think_config`;

CREATE TABLE `think_config` (
  `name` varchar(20) NOT NULL COMMENT '配置名',
  `value` text COMMENT '配置数据',
  `info` varchar(255) DEFAULT NULL COMMENT '信息',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `think_config` */

/*Table structure for table `think_content` */

DROP TABLE IF EXISTS `think_content`;

CREATE TABLE `think_content` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '内容ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '内容',
  `kids` varchar(255) DEFAULT NULL COMMENT '关键词ID',
  `keywords` text COMMENT '关键词',
  `description` text COMMENT '网页描述',
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `add_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `cid` int(5) DEFAULT '1' COMMENT '栏目ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `think_content` */

/*Table structure for table `think_models` */

DROP TABLE IF EXISTS `think_models`;

CREATE TABLE `think_models` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `name` varchar(20) DEFAULT NULL COMMENT '模型名称',
  `templet` varchar(20) DEFAULT NULL COMMENT '模型对应模块',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `think_models` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `think_users` */

insert  into `think_users`(`id`,`username`,`password`,`email`,`auth_code`,`last_time`,`last_ip`,`reg_time`,`reg_ip`,`update_time`,`status`,`token`) values 
(1,'admin','15214a9d0236a132c48470cc18f13f67','admin@cms.io','8e22f25ca12beabdc39bdfe9a9f10ab9','2017-10-26 22:36:57','192.168.1.100','2017-10-21 13:42:36','127.0.0.1',NULL,'default','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
