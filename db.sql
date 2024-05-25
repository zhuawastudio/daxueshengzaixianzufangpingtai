/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - daxueshengzaixianzufangpingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daxueshengzaixianzufangpingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `daxueshengzaixianzufangpingtai`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `baoxiu_uuid_number` varchar(200) DEFAULT NULL COMMENT '报修编号',
  `baoxiu_address` varchar(200) DEFAULT NULL COMMENT '报修标题 Search111  ',
  `baoxiu_name` varchar(200) DEFAULT NULL COMMENT '报修位置',
  `baoxiu_photo` varchar(200) DEFAULT NULL COMMENT '报修图片',
  `baoxiu_types` int(11) NOT NULL COMMENT '报修类型 Search111 ',
  `baoxiu_content` longtext COMMENT '报修内容',
  `baoxiu_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `baoxiu_yesno_text` longtext COMMENT '审核意见',
  `baoxiu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报修时间',
  `baoxiu_zhuangtai_types` int(11) DEFAULT '1' COMMENT '报修状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`fangwu_id`,`yonghu_id`,`baoxiu_uuid_number`,`baoxiu_address`,`baoxiu_name`,`baoxiu_photo`,`baoxiu_types`,`baoxiu_content`,`baoxiu_yesno_types`,`baoxiu_yesno_text`,`baoxiu_shenhe_time`,`insert_time`,`baoxiu_zhuangtai_types`,`create_time`) values (1,1,3,'1682662933850','报修标题1','报修位置1','upload/baoxiu1.jpg',2,'报修内容1',1,NULL,NULL,'2023-04-28 14:22:13',3,'2023-04-28 14:22:13'),(2,2,3,'1682662933828','报修标题2','报修位置2','upload/baoxiu2.jpg',3,'报修内容2',1,NULL,NULL,'2023-04-28 14:22:13',1,'2023-04-28 14:22:13'),(3,3,1,'1682662933843','报修标题3','报修位置3','upload/baoxiu3.jpg',4,'报修内容3',1,NULL,NULL,'2023-04-28 14:22:13',2,'2023-04-28 14:22:13'),(4,4,1,'1682662933898','报修标题4','报修位置4','upload/baoxiu4.jpg',3,'报修内容4',1,NULL,NULL,'2023-04-28 14:22:13',2,'2023-04-28 14:22:13'),(5,5,1,'1682662933809','报修标题5','报修位置5','upload/baoxiu5.jpg',3,'报修内容5',1,NULL,NULL,'2023-04-28 14:22:13',3,'2023-04-28 14:22:13'),(6,6,1,'1682662933886','报修标题6','报修位置6','upload/baoxiu6.jpg',4,'报修内容6',1,NULL,NULL,'2023-04-28 14:22:13',2,'2023-04-28 14:22:13'),(7,7,1,'1682662933899','报修标题7','报修位置7','upload/baoxiu7.jpg',2,'报修内容7',1,NULL,NULL,'2023-04-28 14:22:13',3,'2023-04-28 14:22:13'),(8,8,3,'1682662933845','报修标题8','报修位置8','upload/baoxiu8.jpg',4,'报修内容8',1,NULL,NULL,'2023-04-28 14:22:13',1,'2023-04-28 14:22:13'),(9,9,2,'1682662933883','报修标题9','报修位置9','upload/baoxiu9.jpg',1,'报修内容9',1,NULL,NULL,'2023-04-28 14:22:13',3,'2023-04-28 14:22:13'),(10,10,1,'1682662933838','报修标题10','报修位置10','upload/baoxiu10.jpg',2,'报修内容10',1,NULL,NULL,'2023-04-28 14:22:13',2,'2023-04-28 14:22:13'),(11,11,1,'1682662933885','报修标题11','报修位置11','upload/baoxiu11.jpg',2,'报修内容11',2,'归还','2023-04-28 15:35:28','2023-04-28 14:22:13',3,'2023-04-28 14:22:13'),(12,12,2,'1682662933834','报修标题12','报修位置12','upload/baoxiu12.jpg',2,'报修内容12',1,NULL,NULL,'2023-04-28 14:22:13',3,'2023-04-28 14:22:13'),(13,13,2,'1682662933870','报修标题13','报修位置13','upload/baoxiu13.jpg',1,'报修内容13',1,NULL,NULL,'2023-04-28 14:22:13',1,'2023-04-28 14:22:13'),(14,14,2,'1682662933856','报修标题14','报修位置14','upload/baoxiu14.jpg',2,'报修内容14',1,NULL,NULL,'2023-04-28 14:22:13',1,'2023-04-28 14:22:13'),(15,11,1,'1682667601909','查实的上传','测试','upload/1682667613554.jpg',4,'测试是',2,'红色的sad ','2023-04-28 15:41:06','2023-04-28 15:40:17',3,'2023-04-28 15:40:17');

/*Table structure for table `baoxiu_commentback` */

DROP TABLE IF EXISTS `baoxiu_commentback`;

CREATE TABLE `baoxiu_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `baoxiu_id` int(11) DEFAULT NULL COMMENT '报修',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `baoxiu_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='报修评价';

/*Data for the table `baoxiu_commentback` */

insert  into `baoxiu_commentback`(`id`,`baoxiu_id`,`yonghu_id`,`baoxiu_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-04-28 14:22:13','回复信息1','2023-04-28 14:22:13','2023-04-28 14:22:13'),(2,2,2,'评价内容2','2023-04-28 14:22:13','回复信息2','2023-04-28 14:22:13','2023-04-28 14:22:13'),(3,3,2,'评价内容3','2023-04-28 14:22:13','回复信息3','2023-04-28 14:22:13','2023-04-28 14:22:13'),(4,4,2,'评价内容4','2023-04-28 14:22:13','回复信息4','2023-04-28 14:22:13','2023-04-28 14:22:13'),(5,5,1,'评价内容5','2023-04-28 14:22:13','回复信息5','2023-04-28 14:22:13','2023-04-28 14:22:13'),(6,6,3,'评价内容6','2023-04-28 14:22:13','回复信息6','2023-04-28 14:22:13','2023-04-28 14:22:13'),(7,7,2,'评价内容7','2023-04-28 14:22:13','回复信息7','2023-04-28 14:22:13','2023-04-28 14:22:13'),(8,8,2,'评价内容8','2023-04-28 14:22:13','回复信息8','2023-04-28 14:22:13','2023-04-28 14:22:13'),(9,9,2,'评价内容9','2023-04-28 14:22:13','回复信息9','2023-04-28 14:22:13','2023-04-28 14:22:13'),(10,10,3,'评价内容10','2023-04-28 14:22:13','回复信息10','2023-04-28 14:22:13','2023-04-28 14:22:13'),(11,11,3,'评价内容11','2023-04-28 14:22:13','回复信息11','2023-04-28 14:22:13','2023-04-28 14:22:13'),(12,12,2,'评价内容12','2023-04-28 14:22:13','回复信息12','2023-04-28 14:22:13','2023-04-28 14:22:13'),(13,13,2,'评价内容13','2023-04-28 14:22:13','回复信息13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(14,14,2,'评价内容14','2023-04-28 14:22:13','回复信息14','2023-04-28 14:22:13','2023-04-28 14:22:13'),(15,11,1,'sad按时打算 ','2023-04-28 15:26:29',NULL,NULL,'2023-04-28 15:26:29'),(16,11,1,'sad大','2023-04-28 15:35:44',NULL,NULL,'2023-04-28 15:35:44'),(17,11,1,'45646456','2023-04-28 15:36:23',NULL,NULL,'2023-04-28 15:36:23'),(18,15,1,'呀呀呀','2023-04-28 15:43:24','sad撒','2023-04-28 15:44:35','2023-04-28 15:43:24');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-28 14:21:56'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-28 14:21:56'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-28 14:21:56'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-28 14:21:56'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-28 14:21:56'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-28 14:21:56'),(7,'fangwu_zhuangtai_types','房屋状态',1,'已租赁',NULL,NULL,'2023-04-28 14:21:56'),(8,'fangwu_zhuangtai_types','房屋状态',2,'未租赁',NULL,NULL,'2023-04-28 14:21:56'),(9,'fangwu_types','房屋类型',1,'房屋类型1',NULL,NULL,'2023-04-28 14:21:56'),(10,'fangwu_types','房屋类型',2,'房屋类型2',NULL,NULL,'2023-04-28 14:21:56'),(11,'fangwu_types','房屋类型',3,'房屋类型3',NULL,NULL,'2023-04-28 14:21:56'),(12,'fangwu_types','房屋类型',4,'房屋类型4',NULL,NULL,'2023-04-28 14:21:56'),(13,'fangwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-28 14:21:56'),(14,'fangwu_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-28 14:21:56'),(15,'fangwu_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-28 14:21:56'),(16,'fangwu_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-28 14:21:56'),(17,'baoxiu_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-28 14:21:56'),(18,'baoxiu_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-28 14:21:56'),(19,'baoxiu_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-28 14:21:56'),(20,'baoxiu_types','报修类型',1,'报修类型1',NULL,NULL,'2023-04-28 14:21:56'),(21,'baoxiu_types','报修类型',2,'报修类型2',NULL,NULL,'2023-04-28 14:21:56'),(22,'baoxiu_types','报修类型',3,'报修类型3',NULL,NULL,'2023-04-28 14:21:56'),(23,'baoxiu_types','报修类型',4,'报修类型4',NULL,NULL,'2023-04-28 14:21:56'),(24,'baoxiu_zhuangtai_types','报修状态',1,'已报修',NULL,NULL,'2023-04-28 14:21:56'),(25,'baoxiu_zhuangtai_types','报修状态',2,'已维修',NULL,NULL,'2023-04-28 14:21:56'),(26,'baoxiu_zhuangtai_types','报修状态',3,'已评价',NULL,NULL,'2023-04-28 14:21:56');

/*Table structure for table `fangdong` */

DROP TABLE IF EXISTS `fangdong`;

CREATE TABLE `fangdong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fangdong_uuid_number` varchar(200) DEFAULT NULL COMMENT '房东编号 Search111 ',
  `fangdong_name` varchar(200) DEFAULT NULL COMMENT '房东姓名 Search111 ',
  `fangdong_phone` varchar(200) DEFAULT NULL COMMENT '房东手机号',
  `fangdong_id_number` varchar(200) DEFAULT NULL COMMENT '房东身份证号',
  `fangdong_photo` varchar(200) DEFAULT NULL COMMENT '房东头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `fangdong_email` varchar(200) DEFAULT NULL COMMENT '房东邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房东';

/*Data for the table `fangdong` */

insert  into `fangdong`(`id`,`username`,`password`,`fangdong_uuid_number`,`fangdong_name`,`fangdong_phone`,`fangdong_id_number`,`fangdong_photo`,`sex_types`,`fangdong_email`,`new_money`,`create_time`) values (1,'a1','123456','1682662934037','房东姓名1','17703786901','410224199010102001','upload/fangdong1.jpg',2,'1@qq.com','237.70','2023-04-28 14:22:13'),(2,'a2','123456','1682662934082','房东姓名2','17703786902','410224199010102002','upload/fangdong2.jpg',1,'2@qq.com','680.11','2023-04-28 14:22:13'),(3,'a3','123456','1682662934038','房东姓名3','17703786903','410224199010102003','upload/fangdong3.jpg',1,'3@qq.com','267.29','2023-04-28 14:22:13');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangdong_id` int(11) DEFAULT NULL COMMENT '房东',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称  Search111 ',
  `fangwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '房屋照片',
  `fangwu_address` varchar(200) DEFAULT NULL COMMENT '房屋地点',
  `fangwu_file` varchar(200) DEFAULT NULL COMMENT '房屋信息文件',
  `fangwu_types` int(11) DEFAULT NULL COMMENT '房屋类型 Search111',
  `fangwu_zhuangtai_types` int(11) DEFAULT NULL COMMENT '房屋状态 ',
  `fangwu_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/积分 ',
  `fangwu_content` longtext COMMENT '房屋介绍 ',
  `fangwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`fangdong_id`,`fangwu_name`,`fangwu_uuid_number`,`fangwu_photo`,`fangwu_address`,`fangwu_file`,`fangwu_types`,`fangwu_zhuangtai_types`,`fangwu_new_money`,`fangwu_content`,`fangwu_delete`,`insert_time`,`create_time`) values (1,1,'房屋名称1','1682662934016','upload/fangwu1.jpg','房屋地点1','upload/file.rar',1,1,'439.90','房屋介绍1',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(2,1,'房屋名称2','1682662934027','upload/fangwu2.jpg','房屋地点2','upload/file.rar',1,2,'401.76','房屋介绍2',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(3,1,'房屋名称3','1682662934015','upload/fangwu3.jpg','房屋地点3','upload/file.rar',1,1,'438.95','房屋介绍3',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(4,3,'房屋名称4','1682662934036','upload/fangwu4.jpg','房屋地点4','upload/file.rar',2,2,'425.68','房屋介绍4',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(5,3,'房屋名称5','1682662934065','upload/fangwu5.jpg','房屋地点5','upload/file.rar',1,2,'145.60','房屋介绍5',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(6,2,'房屋名称6','1682662934002','upload/fangwu6.jpg','房屋地点6','upload/file.rar',1,2,'488.99','房屋介绍6',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(7,3,'房屋名称7','1682662934011','upload/fangwu7.jpg','房屋地点7','upload/file.rar',4,2,'271.73','房屋介绍7',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(8,1,'房屋名称8','1682662934056','upload/fangwu8.jpg','房屋地点8','upload/file.rar',1,1,'98.60','房屋介绍8',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(9,3,'房屋名称9','1682662934069','upload/fangwu9.jpg','房屋地点9','upload/file.rar',3,2,'32.53','房屋介绍9',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(10,3,'房屋名称10','1682662933994','upload/fangwu10.jpg','房屋地点10','upload/file.rar',3,2,'198.67','房屋介绍10',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(11,1,'房屋名称11','1682662934047','upload/fangwu11.jpg','房屋地点11','upload/file.rar',3,1,'141.31','<p>房屋介绍11</p>',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(12,3,'房屋名称12','1682662934076','upload/fangwu12.jpg','房屋地点12','upload/file.rar',3,1,'28.30','房屋介绍12',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(13,2,'房屋名称13','1682662934059','upload/fangwu13.jpg','房屋地点13','upload/file.rar',1,2,'192.94','房屋介绍13',1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(14,3,'房屋名称14','1682662934032','upload/fangwu14.jpg','房屋地点14','upload/file.rar',4,2,'119.36','房屋介绍14',1,'2023-04-28 14:22:13','2023-04-28 14:22:13');

/*Table structure for table `fangwu_collection` */

DROP TABLE IF EXISTS `fangwu_collection`;

CREATE TABLE `fangwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='房屋收藏';

/*Data for the table `fangwu_collection` */

insert  into `fangwu_collection`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(2,2,2,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(3,3,3,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(4,4,2,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(5,5,3,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(6,6,3,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(7,7,2,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(8,8,1,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(9,9,3,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(10,10,1,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(12,12,1,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(13,13,2,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(14,14,2,1,'2023-04-28 14:22:13','2023-04-28 14:22:13'),(15,11,1,1,'2023-04-28 15:38:53','2023-04-28 15:38:53');

/*Table structure for table `fangwu_liuyan` */

DROP TABLE IF EXISTS `fangwu_liuyan`;

CREATE TABLE `fangwu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='房屋留言';

/*Data for the table `fangwu_liuyan` */

insert  into `fangwu_liuyan`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-28 14:22:13','回复信息1','2023-04-28 14:22:13','2023-04-28 14:22:13'),(2,2,2,'留言内容2','2023-04-28 14:22:13','回复信息2','2023-04-28 14:22:13','2023-04-28 14:22:13'),(3,3,3,'留言内容3','2023-04-28 14:22:13','回复信息3','2023-04-28 14:22:13','2023-04-28 14:22:13'),(4,4,1,'留言内容4','2023-04-28 14:22:13','回复信息4','2023-04-28 14:22:13','2023-04-28 14:22:13'),(5,5,1,'留言内容5','2023-04-28 14:22:13','回复信息5','2023-04-28 14:22:13','2023-04-28 14:22:13'),(6,6,3,'留言内容6','2023-04-28 14:22:13','回复信息6','2023-04-28 14:22:13','2023-04-28 14:22:13'),(7,7,2,'留言内容7','2023-04-28 14:22:13','回复信息7','2023-04-28 14:22:13','2023-04-28 14:22:13'),(8,8,2,'留言内容8','2023-04-28 14:22:13','回复信息8','2023-04-28 14:22:13','2023-04-28 14:22:13'),(9,9,3,'留言内容9','2023-04-28 14:22:13','回复信息9','2023-04-28 14:22:13','2023-04-28 14:22:13'),(10,10,1,'留言内容10','2023-04-28 14:22:13','回复信息10','2023-04-28 14:22:13','2023-04-28 14:22:13'),(11,11,2,'留言内容11','2023-04-28 14:22:13','回复信息11','2023-04-28 14:22:13','2023-04-28 14:22:13'),(12,12,2,'留言内容12','2023-04-28 14:22:13','回复信息12','2023-04-28 14:22:13','2023-04-28 14:22:13'),(13,13,3,'留言内容13','2023-04-28 14:22:13','回复信息13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(14,14,3,'留言内容14','2023-04-28 14:22:13','回复信息14','2023-04-28 14:22:13','2023-04-28 14:22:13'),(15,11,1,'sad撒','2023-04-28 15:38:58','地方发','2023-04-28 15:40:54','2023-04-28 15:38:58');

/*Table structure for table `fangwu_yuyue` */

DROP TABLE IF EXISTS `fangwu_yuyue`;

CREATE TABLE `fangwu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_yuyue_text` longtext COMMENT '报名理由',
  `fangwu_yuyue_file` varchar(200) DEFAULT NULL COMMENT '学生证',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '房屋租赁时间',
  `fangwu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `fangwu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `fangwu_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='房屋租赁';

/*Data for the table `fangwu_yuyue` */

insert  into `fangwu_yuyue`(`id`,`fangwu_yuyue_uuid_number`,`fangwu_id`,`yonghu_id`,`fangwu_yuyue_text`,`fangwu_yuyue_file`,`insert_time`,`fangwu_yuyue_yesno_types`,`fangwu_yuyue_yesno_text`,`fangwu_yuyue_shenhe_time`,`create_time`) values (1,'1682662933993',1,3,'报名理由1','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(2,'1682662934072',2,3,'报名理由2','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(3,'1682662934004',3,1,'报名理由3','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(4,'1682662934000',4,1,'报名理由4','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(5,'1682662934090',5,3,'报名理由5','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(6,'1682662934027',6,1,'报名理由6','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(7,'1682662933997',7,1,'报名理由7','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(8,'1682662934017',8,3,'报名理由8','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(9,'1682662934027',9,1,'报名理由9','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(10,'1682662934088',10,3,'报名理由10','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(11,'1682662934085',11,3,'报名理由11','upload/file.rar','2023-04-28 14:22:13',2,'海报','2023-04-28 15:30:10','2023-04-28 14:22:13'),(12,'1682662934050',12,2,'报名理由12','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(13,'1682662934056',13,2,'报名理由13','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(14,'1682662934062',14,3,'报名理由14','upload/file.rar','2023-04-28 14:22:13',1,NULL,NULL,'2023-04-28 14:22:13'),(15,'1682665942047',13,1,'sad','upload/1682665948672.jpg','2023-04-28 15:12:31',1,NULL,NULL,'2023-04-28 15:12:31'),(16,'1682666082238',8,1,'sad撒','upload/1682666116791.jpg','2023-04-28 15:15:17',2,'好说的','2023-04-28 15:21:05','2023-04-28 15:15:17'),(17,'1682667546493',11,1,'我要租房','upload/1682667554818.jpg','2023-04-28 15:39:16',2,'好的','2023-04-28 15:42:44','2023-04-28 15:39:16');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangdong_id` int(11) DEFAULT NULL COMMENT '房东',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='租房论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`fangdong_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',495,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(2,'帖子标题2',2,NULL,NULL,'发布内容2',83,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',212,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',215,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',436,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(6,'帖子标题6',2,NULL,NULL,'发布内容6',491,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',216,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(8,'帖子标题8',1,NULL,NULL,'发布内容8',406,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',161,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',232,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',429,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',455,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',179,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(14,'帖子标题14',1,NULL,NULL,'发布内容14',24,1,'2023-04-28 14:22:13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(16,'VR的',1,NULL,NULL,'<p>测试</p>',NULL,1,'2023-04-28 15:39:42',NULL,'2023-04-28 15:39:42'),(17,NULL,NULL,1,NULL,'成都市手打',16,2,'2023-04-28 15:42:53',NULL,'2023-04-28 15:42:53');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-28 14:22:13','公告详情1','2023-04-28 14:22:13'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-28 14:22:13','公告详情2','2023-04-28 14:22:13'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-28 14:22:13','公告详情3','2023-04-28 14:22:13'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-28 14:22:13','公告详情4','2023-04-28 14:22:13'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-28 14:22:13','公告详情5','2023-04-28 14:22:13'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-28 14:22:13','公告详情6','2023-04-28 14:22:13'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-28 14:22:13','公告详情7','2023-04-28 14:22:13'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-28 14:22:13','公告详情8','2023-04-28 14:22:13'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-28 14:22:13','公告详情9','2023-04-28 14:22:13'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-28 14:22:13','公告详情10','2023-04-28 14:22:13'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-28 14:22:13','公告详情11','2023-04-28 14:22:13'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-28 14:22:13','公告详情12','2023-04-28 14:22:13'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-04-28 14:22:13','公告详情13','2023-04-28 14:22:13'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-28 14:22:13','公告详情14','2023-04-28 14:22:13');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,3,'留言标题1','留言内容1','2023-04-28 14:22:13','回复信息1','2023-04-28 14:22:13','2023-04-28 14:22:13'),(2,3,'留言标题2','留言内容2','2023-04-28 14:22:13','回复信息2','2023-04-28 14:22:13','2023-04-28 14:22:13'),(3,1,'留言标题3','留言内容3','2023-04-28 14:22:13','回复信息3','2023-04-28 14:22:13','2023-04-28 14:22:13'),(4,2,'留言标题4','留言内容4','2023-04-28 14:22:13','回复信息4','2023-04-28 14:22:13','2023-04-28 14:22:13'),(5,2,'留言标题5','留言内容5','2023-04-28 14:22:13','回复信息5','2023-04-28 14:22:13','2023-04-28 14:22:13'),(6,3,'留言标题6','留言内容6','2023-04-28 14:22:13','回复信息6','2023-04-28 14:22:13','2023-04-28 14:22:13'),(7,3,'留言标题7','留言内容7','2023-04-28 14:22:13','回复信息7','2023-04-28 14:22:13','2023-04-28 14:22:13'),(8,2,'留言标题8','留言内容8','2023-04-28 14:22:13','回复信息8','2023-04-28 14:22:13','2023-04-28 14:22:13'),(9,1,'留言标题9','留言内容9','2023-04-28 14:22:13','回复信息9','2023-04-28 14:22:13','2023-04-28 14:22:13'),(10,1,'留言标题10','留言内容10','2023-04-28 14:22:13','回复信息10','2023-04-28 14:22:13','2023-04-28 14:22:13'),(11,1,'留言标题11','留言内容11','2023-04-28 14:22:13','回复信息11','2023-04-28 14:22:13','2023-04-28 14:22:13'),(12,3,'留言标题12','留言内容12','2023-04-28 14:22:13','回复信息12','2023-04-28 14:22:13','2023-04-28 14:22:13'),(13,2,'留言标题13','留言内容13','2023-04-28 14:22:13','回复信息13','2023-04-28 14:22:13','2023-04-28 14:22:13'),(14,1,'留言标题14','留言内容14','2023-04-28 14:22:13','回复信息14','2023-04-28 14:22:13','2023-04-28 14:22:13'),(15,1,'测试','测试','2023-04-28 15:39:55','手打撒','2023-04-28 15:45:39','2023-04-28 15:39:55');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','80dxp3t2cvl7krmazfj0dc1mev6n39tu','2023-04-28 14:24:16','2023-04-28 16:38:31'),(2,1,'admin','users','管理员','ubjq8mqik0muha4imfbvgft4kiselow6','2023-04-28 14:28:17','2023-04-28 16:44:44'),(3,1,'a1','fangdong','房东','tvnrkw9h329157wo9f0265uwhvoo9wlm','2023-04-28 14:41:26','2023-04-28 16:43:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-28 14:21:56');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','1682662934062','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','198.15','2023-04-28 14:22:13'),(2,'a2','123456','1682662934028','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','154.72','2023-04-28 14:22:13'),(3,'a3','123456','1682662934064','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','547.56','2023-04-28 14:22:13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
