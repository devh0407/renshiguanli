/*
SQLyog Ultimate v11.26 (32 bit)
MySQL - 5.7.17-log : Database - shujuku_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shujuku_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shujuku_db`;

/*Table structure for table `t_bumen` */

DROP TABLE IF EXISTS `t_bumen`;

CREATE TABLE `t_bumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deletestatus` int(11) NOT NULL,
  `jibengongzi` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_bumen` */

insert  into `t_bumen`(`id`,`deletestatus`,`jibengongzi`,`name`) values (1,0,'2000','技术部');

/*Table structure for table `t_gongzi` */

DROP TABLE IF EXISTS `t_gongzi`;

CREATE TABLE `t_gongzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chidao` varchar(255) DEFAULT NULL,
  `chuchai` varchar(255) DEFAULT NULL,
  `jiangjin` varchar(255) DEFAULT NULL,
  `jibengongzi` varchar(255) DEFAULT NULL,
  `kuangong` varchar(255) DEFAULT NULL,
  `qingjia` varchar(255) DEFAULT NULL,
  `yuefen` varchar(255) DEFAULT NULL,
  `zaotui` varchar(255) DEFAULT NULL,
  `zongji` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32F029DB142D988B` (`userid`),
  CONSTRAINT `FK32F029DB142D988B` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_gongzi` */

insert  into `t_gongzi`(`id`,`chidao`,`chuchai`,`jiangjin`,`jibengongzi`,`kuangong`,`qingjia`,`yuefen`,`zaotui`,`zongji`,`userid`) values (2,'0','200.0','200.0','2000','0','0','2018-03','0','2400.0',2),(3,'0','100.0','0','2000','0','0','2018-04','0','2100.0',2);

/*Table structure for table `t_hetong` */

DROP TABLE IF EXISTS `t_hetong`;

CREATE TABLE `t_hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beizhu` varchar(255) DEFAULT NULL,
  `bianhao` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `deletestatus` int(11) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK341AEE3C142D988B` (`userid`),
  CONSTRAINT `FK341AEE3C142D988B` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_hetong` */

insert  into `t_hetong`(`id`,`beizhu`,`bianhao`,`createtime`,`deletestatus`,`path`,`userid`) values (1,'','20180318192810','2018-03-18 19:28:10',0,'20180318192810.zip',2);

/*Table structure for table `t_jiaban` */

DROP TABLE IF EXISTS `t_jiaban`;

CREATE TABLE `t_jiaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime DEFAULT NULL,
  `deletestatus` int(11) NOT NULL,
  `jiabandidian` varchar(255) DEFAULT NULL,
  `jiabanjihua` varchar(255) DEFAULT NULL,
  `jiabanneirong` varchar(255) DEFAULT NULL,
  `jiabanshichang` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK41BCD5C8142D988B` (`userid`),
  CONSTRAINT `FK41BCD5C8142D988B` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_jiaban` */

insert  into `t_jiaban`(`id`,`createtime`,`deletestatus`,`jiabandidian`,`jiabanjihua`,`jiabanneirong`,`jiabanshichang`,`userid`) values (1,'2018-04-19 06:32:12',1,'公司','新龙项目外包','ssm整合','5',2);

/*Table structure for table `t_jiangjin` */

DROP TABLE IF EXISTS `t_jiangjin`;

CREATE TABLE `t_jiangjin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `deletestatus` int(11) NOT NULL,
  `jine` varchar(255) DEFAULT NULL,
  `riqi` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1BF6547F142D988B` (`userid`),
  CONSTRAINT `FK1BF6547F142D988B` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_jiangjin` */

insert  into `t_jiangjin`(`id`,`content`,`createtime`,`deletestatus`,`jine`,`riqi`,`userid`) values (1,'因公受伤','2018-03-18 19:29:03',0,'200','2018-03-27',2);

/*Table structure for table `t_kaoqin` */

DROP TABLE IF EXISTS `t_kaoqin`;

CREATE TABLE `t_kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beizhu` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `deletestatus` int(11) NOT NULL,
  `kouqian` varchar(255) DEFAULT NULL,
  `leixing` varchar(255) DEFAULT NULL,
  `riqi` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK38FEDB28142D988B` (`userid`),
  CONSTRAINT `FK38FEDB28142D988B` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_kaoqin` */

insert  into `t_kaoqin`(`id`,`beizhu`,`createtime`,`deletestatus`,`kouqian`,`leixing`,`riqi`,`userid`) values (1,'','2018-03-18 19:28:46',0,'100','出差','2018-04-04',2),(2,'','2018-03-18 19:29:40',0,'200','出差','2018-03-02',2),(3,'请假审核通过','2018-04-19 06:26:44',0,'50','请假','2018-03-29',3);

/*Table structure for table `t_qingjia` */

DROP TABLE IF EXISTS `t_qingjia`;

CREATE TABLE `t_qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `deletestatus` int(11) NOT NULL,
  `qingjiariqi` varchar(255) DEFAULT NULL,
  `shenhe` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK31D612A6142D988B` (`userid`),
  CONSTRAINT `FK31D612A6142D988B` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_qingjia` */

insert  into `t_qingjia`(`id`,`content`,`createtime`,`deletestatus`,`qingjiariqi`,`shenhe`,`userid`) values (1,'家中有事','2018-04-19 06:25:56',0,'2018-03-29','审核通过',3),(2,'家中有事','2018-04-19 06:26:24',0,'2018-03-30','未审核',2);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime DEFAULT NULL,
  `deletestatus` int(11) NOT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `jiguan` varchar(255) DEFAULT NULL,
  `lianxifangshi` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `ruzhishijian` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `wenhuachengdu` varchar(255) DEFAULT NULL,
  `xingbie` varchar(255) DEFAULT NULL,
  `xingxiang` varchar(255) DEFAULT NULL,
  `zhengzhimianmao` varchar(255) DEFAULT NULL,
  `zhiwu` varchar(255) DEFAULT NULL,
  `bumenid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCB5540D68738F247` (`bumenid`),
  CONSTRAINT `FKCB5540D68738F247` FOREIGN KEY (`bumenid`) REFERENCES `t_bumen` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`createtime`,`deletestatus`,`dizhi`,`jiguan`,`lianxifangshi`,`password`,`role`,`ruzhishijian`,`truename`,`username`,`wenhuachengdu`,`xingbie`,`xingxiang`,`zhengzhimianmao`,`zhiwu`,`bumenid`) values (1,NULL,0,NULL,NULL,NULL,'111111',1,NULL,'admin','admin',NULL,NULL,NULL,NULL,NULL,NULL),(2,'2018-03-18 19:27:46',0,'123','1','1','111111',0,'2018-03-04','xy','xianyin','1','男','20180418192746.jpg','1','普通员工',1),(3,'2018-04-19 06:25:11',0,'123','1','1','123456',0,'2018-03-20','qqq','qq','1','男','20180419062511.jpg','1','普通员工',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
