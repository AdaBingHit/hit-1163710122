/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_librarysys` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_librarysys`;

/*Table structure for table `tb_bookcase` */

DROP TABLE IF EXISTS `tb_bookcase`;

CREATE TABLE `tb_bookcase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `Column_3` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bookcase` */

insert  into `tb_bookcase`(`id`,`name`,`Column_3`) values (3,'A架',NULL),(4,'B架',NULL);

/*Table structure for table `tb_bookinfo` */

DROP TABLE IF EXISTS `tb_bookinfo`;

CREATE TABLE `tb_bookinfo` (
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) unsigned DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) unsigned DEFAULT NULL,
  `bookcase` int(10) unsigned DEFAULT NULL,
  `inTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bookinfo` */

insert  into `tb_bookinfo`(`barcode`,`bookname`,`typeid`,`author`,`translator`,`ISBN`,`price`,`page`,`bookcase`,`inTime`,`operator`,`del`,`id`) values ('1','Java核心技术',1,'***','11','7-302',39.00,440,3,'2007-11-22','hit1',0,1),('jk','kjkj',1,'***','','7-302',12.00,0,1,'2007-11-22','hit1',1,2),('3','javaweb指南',1,'***','','978-7',89.00,816,3,'2007-11-23','hit1',0,3),('123','额',1,'11','11','7-302',11.00,11,1,'2007-12-18','hit1',1,5),('5','建筑艺术',4,'做做','的','7-302',11.00,11,4,'2013-05-03','hit2',0,6);

/*Table structure for table `tb_booktype` */

DROP TABLE IF EXISTS `tb_booktype`;

CREATE TABLE `tb_booktype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) DEFAULT NULL,
  `days` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_booktype` */

insert  into `tb_booktype`(`id`,`typename`,`days`) values (1,'计算机类',30),(3,'文学类',35),(4,'建筑类',20);

/*Table structure for table `tb_borrow` */

DROP TABLE IF EXISTS `tb_borrow`;

CREATE TABLE `tb_borrow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(10) unsigned DEFAULT NULL,
  `bookid` int(10) DEFAULT NULL,
  `borrowTime` date DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `ifback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tb_borrow` */

insert  into `tb_borrow`(`id`,`readerid`,`bookid`,`borrowTime`,`backTime`,`operator`,`ifback`) values (1,1,1,'2019-1-22','2019-2-22','hit1',1),(2,1,3,'2018-11-26','2018-12-26','hit1',0),(3,1,1,'2018-11-26','2018-12-26','hit1',0),(4,3,6,'2018-12-29','2019-01-08','hit1',0),(5,3,1,'2018-12-29','2019-01-28','hit1',0),(6,3,3,'2018-12-29','2019-01-28','hit1',1),(7,1,6,'2019-04-03','2019-05-23','hit2',1),(8,1,6,'2019-04-03','2019-05-23','hit2',1),(9,1,6,'2019-04-03','2019-05-23','hit2',1),(10,1,1,'2019-04-03','2019-06-02','hit2',0);

/*Table structure for table `tb_giveback` */

DROP TABLE IF EXISTS `tb_giveback`;

CREATE TABLE `tb_giveback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tb_giveback` */

insert  into `tb_giveback`(`id`,`readerid`,`bookid`,`backTime`,`operator`) values (1,1,1,'2019-1-22','hit1'),(2,3,3,'2019-01-03','hit1'),(3,1,6,'2019-04-03','hit2'),(4,1,6,'2019-04-03','hit2'),(5,1,6,'2019-04-03','hit2');

/*Table structure for table `tb_library` */

DROP TABLE IF EXISTS `tb_library`;

CREATE TABLE `tb_library` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `libraryname` varchar(50) DEFAULT NULL,
  `curator` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `introduce` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_library` */

insert  into `tb_library`(`id`,`libraryname`,`curator`,`tel`,`address`,`email`,`url`,`createDate`,`introduce`) values (1,'是','wj','1389********','ccs','wj717@****.com','http://','1998-05-06','是');

/*Table structure for table `tb_manager` */

DROP TABLE IF EXISTS `tb_manager`;

CREATE TABLE `tb_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `PWD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_manager` */

insert  into `tb_manager`(`id`,`name`,`PWD`) values (3,'hit1','1234'),(4,'hit2','1234');

/*Table structure for table `tb_parameter` */

DROP TABLE IF EXISTS `tb_parameter`;

CREATE TABLE `tb_parameter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cost` int(10) unsigned DEFAULT NULL,
  `validity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_parameter` */

insert  into `tb_parameter`(`id`,`cost`,`validity`) values (1,45,3);

/*Table structure for table `tb_publishing` */

DROP TABLE IF EXISTS `tb_publishing`;

CREATE TABLE `tb_publishing` (
  `ISBN` varchar(20) DEFAULT NULL,
  `pubname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_publishing` */

insert  into `tb_publishing`(`ISBN`,`pubname`) values ('7-302','电子工业出版社'),('978-7','清华大学出版社');

/*Table structure for table `tb_purview` */

DROP TABLE IF EXISTS `tb_purview`;

CREATE TABLE `tb_purview` (
  `id` int(11) NOT NULL,
  `sysset` tinyint(1) DEFAULT '0',
  `readerset` tinyint(1) DEFAULT '0',
  `bookset` tinyint(1) DEFAULT '0',
  `borrowback` tinyint(1) DEFAULT '0',
  `sysquery` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_purview` */

insert  into `tb_purview`(`id`,`sysset`,`readerset`,`bookset`,`borrowback`,`sysquery`) values (3,1,1,1,1,1),(4,1,1,1,1,1);

/*Table structure for table `tb_reader` */

DROP TABLE IF EXISTS `tb_reader`;

CREATE TABLE `tb_reader` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `vocation` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `paperType` varchar(10) DEFAULT NULL,
  `paperNO` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `remark` text,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `tb_reader` */

insert  into `tb_reader`(`id`,`name`,`sex`,`barcode`,`vocation`,`birthday`,`paperType`,`paperNO`,`tel`,`email`,`createDate`,`operator`,`remark`,`typeid`) values (1,'wj','女','1163710122','的','1998-12-10','身份证','230902199812100927','1389*******','wj384@****.com','2018-11-22','hit1','的',1),(2,'的','女','123123123','的','1983-02-22','身份证','220','','','2007-12-29','hit1','',2);

/*Table structure for table `tb_readertype` */

DROP TABLE IF EXISTS `tb_readertype`;

CREATE TABLE `tb_readertype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `number` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `tb_readertype` */

insert  into `tb_readertype`(`id`,`name`,`number`) values (1,'学生',10),(2,'教师',20),(3,'其他',5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
