/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - renshi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`renshi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `renshi`;

/*Table structure for table `caiwubaoxiao` */

DROP TABLE IF EXISTS `caiwubaoxiao`;

CREATE TABLE `caiwubaoxiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '员工',
  `caiwubaoxiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '财务报销编号 Search111  ',
  `caiwubaoxiao_name` varchar(200) DEFAULT NULL COMMENT '财务报销名称 Search111  ',
  `caiwubaoxiao_photo` varchar(200) DEFAULT NULL COMMENT '发票图片',
  `caiwubaoxiao_types` int(11) NOT NULL COMMENT '财务报销类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间 ',
  `caiwubaoxiao_content` text COMMENT '财务报销内容',
  `caiwubaoxiao_yesno_types` int(11) NOT NULL COMMENT '财务报销状态 Search111 ',
  `caiwubaoxiao_yesno_text` text COMMENT '审核理由',
  `caiwubaoxiao_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='财务报销';

/*Data for the table `caiwubaoxiao` */

insert  into `caiwubaoxiao`(`id`,`yonghu_id`,`caiwubaoxiao_uuid_number`,`caiwubaoxiao_name`,`caiwubaoxiao_photo`,`caiwubaoxiao_types`,`insert_time`,`caiwubaoxiao_content`,`caiwubaoxiao_yesno_types`,`caiwubaoxiao_yesno_text`,`caiwubaoxiao_shenhe_time`,`create_time`) values (1,1,'165062590788366','财务报销名称1','http://localhost:8080/renshi/upload/yonghu1.jpg',3,'2022-04-22 19:11:47','财务报销内容1',1,NULL,NULL,'2022-04-22 19:11:47'),(2,2,'165062590788382','财务报销名称2','http://localhost:8080/renshi/upload/yonghu2.jpg',3,'2022-04-22 19:11:47','财务报销内容2',1,NULL,NULL,'2022-04-22 19:11:47'),(3,1,'165062590788318','财务报销名称3','http://localhost:8080/renshi/upload/yonghu3.jpg',1,'2022-04-22 19:11:47','财务报销内容3',1,NULL,NULL,'2022-04-22 19:11:47'),(4,2,'16506259078849','财务报销名称4','http://localhost:8080/renshi/upload/yonghu1.jpg',3,'2022-04-22 19:11:47','财务报销内容4',1,NULL,NULL,'2022-04-22 19:11:47'),(5,3,'165062590788444','财务报销名称5','http://localhost:8080/renshi/upload/yonghu2.jpg',2,'2022-04-22 19:11:47','财务报销内容5',3,'金额太大 不予报销','2022-04-22 19:25:11','2022-04-22 19:11:47'),(6,1,'1650626856065','财务报销1111','http://localhost:8080/renshi/upload/1650626864472.jpg',1,'2022-04-22 19:27:48','<p>飒飒华东和大伙</p>',1,'',NULL,'2022-04-22 19:27:48');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/renshi/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/renshi/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/renshi/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-22 19:08:22'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-22 19:08:22'),(3,'bumen_types','部门',1,'部门1',NULL,NULL,'2022-04-22 19:08:22'),(4,'bumen_types','部门',2,'部门2',NULL,NULL,'2022-04-22 19:08:22'),(5,'bumen_types','部门',3,'部门3',NULL,NULL,'2022-04-22 19:08:22'),(6,'zhiwu_types','职务',1,'职务1',NULL,NULL,'2022-04-22 19:08:22'),(7,'zhiwu_types','职务',2,'职务2',NULL,NULL,'2022-04-22 19:08:22'),(8,'zhiwu_types','职务',3,'职务3',NULL,NULL,'2022-04-22 19:08:22'),(9,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-22 19:08:22'),(10,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-22 19:08:22'),(11,'qingjia_types','请假类型',1,'病假',NULL,NULL,'2022-04-22 19:08:22'),(12,'qingjia_types','请假类型',2,'事假',NULL,NULL,'2022-04-22 19:08:22'),(13,'qingjia_yesno_types','请假状态',1,'待审核',NULL,NULL,'2022-04-22 19:08:22'),(14,'qingjia_yesno_types','请假状态',2,'同意',NULL,NULL,'2022-04-22 19:08:22'),(15,'qingjia_yesno_types','请假状态',2,'拒绝',NULL,NULL,'2022-04-22 19:08:22'),(16,'caiwubaoxiao_types','财务报销类型',1,'财务报销类型1',NULL,NULL,'2022-04-22 19:08:22'),(17,'caiwubaoxiao_types','财务报销类型',2,'财务报销类型2',NULL,NULL,'2022-04-22 19:08:22'),(18,'caiwubaoxiao_types','财务报销类型',3,'财务报销类型3',NULL,NULL,'2022-04-22 19:08:23'),(19,'caiwubaoxiao_yesno_types','财务报销状态',1,'待审核',NULL,NULL,'2022-04-22 19:08:23'),(20,'caiwubaoxiao_yesno_types','财务报销状态',2,'同意',NULL,NULL,'2022-04-22 19:08:23'),(21,'caiwubaoxiao_yesno_types','财务报销状态',2,'拒绝',NULL,NULL,'2022-04-22 19:08:23'),(22,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2022-04-22 19:08:23'),(23,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2022-04-22 19:08:23'),(24,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2022-04-22 19:08:23'),(25,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2022-04-22 19:08:23'),(26,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2022-04-22 19:08:23'),(27,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2022-04-22 19:08:23'),(28,'zhiwu_types','职务',4,'职务4',NULL,'','2022-04-22 19:24:10');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`exampaper_types`,`exampaper_delete`,`create_time`) values (1,'考试试卷1',100,100,1,1,'2022-04-22 19:08:23'),(2,'问卷2',60,25,1,1,'2022-04-22 19:25:32');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int(20) DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`exampaper_id`,`examquestion_name`,`examquestion_options`,`examquestion_score`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,1,'单选题1','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"答案B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',10,'C','无',1,1,'2022-04-22 19:08:23'),(2,1,'多选题1','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"正确答案B\",\"code\":\"B\"},{\"text\":\"正确答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',34,'B,C','无',2,2,'2022-04-22 19:08:23'),(3,1,'填空题(正)_____','[]',41,'正','无',4,3,'2022-04-22 19:08:23'),(4,1,'判断题1','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',11,'A','无',3,4,'2022-04-22 19:08:23'),(5,1,'单选题2','[{\"text\":\"答案A\",\"code\":\"A\"},{\"text\":\"正确答案B\",\"code\":\"B\"},{\"text\":\"答案C\",\"code\":\"C\"},{\"text\":\"答案D\",\"code\":\"D\"}]',4,'B','无',1,5,'2022-04-22 19:08:23'),(6,2,'问题2的题目1','[{\"text\":\"正确A\",\"code\":\"A\"},{\"text\":\"正确B\",\"code\":\"B\"},{\"text\":\"正确C\",\"code\":\"C\"},{\"text\":\"d\",\"code\":\"D\"}]',20,'A,B,C','Wu',2,1,'2022-04-22 19:26:29'),(7,2,'问卷2的试题2','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',5,'B','无',3,2,'2022-04-22 19:26:53');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (3,'1650626548661',1,1,11,'2022-04-22 19:22:29','2022-04-22 19:22:29'),(4,'1650626591496',1,1,79,'2022-04-22 19:23:11','2022-04-22 19:23:11');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1650626414217',1,5,'C',0,'2022-04-22 19:20:24'),(2,'1650626548661',1,5,'A',0,'2022-04-22 19:22:32'),(3,'1650626548661',1,4,'A',11,'2022-04-22 19:22:45'),(4,'1650626548661',1,3,'sag',0,'2022-04-22 19:22:48'),(5,'1650626548661',1,2,'C,B',0,'2022-04-22 19:22:52'),(6,'1650626548661',1,1,NULL,0,'2022-04-22 19:22:54'),(7,'1650626591496',1,5,'B',4,'2022-04-22 19:23:15'),(8,'1650626591496',1,4,'B',0,'2022-04-22 19:23:17'),(9,'1650626591496',1,3,'正',41,'2022-04-22 19:23:21'),(10,'1650626591496',1,2,'B,C',34,'2022-04-22 19:23:24'),(11,'1650626591496',1,1,'B',0,'2022-04-22 19:23:27');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,1,5,'C','2022-04-22 19:20:24','2022-04-22 19:20:24'),(2,1,1,5,'A','2022-04-22 19:22:32','2022-04-22 19:22:32'),(3,1,1,3,'sag','2022-04-22 19:22:48','2022-04-22 19:22:48'),(4,1,1,2,'C,B','2022-04-22 19:22:52','2022-04-22 19:22:52'),(5,1,1,1,NULL,'2022-04-22 19:22:54','2022-04-22 19:22:54'),(6,1,1,4,'B','2022-04-22 19:23:17','2022-04-22 19:23:17'),(7,1,1,1,'B','2022-04-22 19:23:27','2022-04-22 19:23:27');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/renshi/upload/gonggao1.jpg',2,'2022-04-22 19:11:47','公告详情1','2022-04-22 19:11:47'),(2,'公告名称2','http://localhost:8080/renshi/upload/gonggao2.jpg',2,'2022-04-22 19:11:47','公告详情2','2022-04-22 19:11:47'),(3,'公告名称3','http://localhost:8080/renshi/upload/gonggao3.jpg',1,'2022-04-22 19:11:47','公告详情3','2022-04-22 19:11:47'),(4,'公告名称4','http://localhost:8080/renshi/upload/gonggao4.jpg',2,'2022-04-22 19:11:47','公告详情4','2022-04-22 19:11:47'),(5,'公告名称5','http://localhost:8080/renshi/upload/gonggao5.jpg',1,'2022-04-22 19:11:47','公告详情5','2022-04-22 19:11:47');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '员工',
  `qingjia_uuid_number` varchar(200) DEFAULT NULL COMMENT '请假编号 Search111  ',
  `qingjia_name` varchar(200) DEFAULT NULL COMMENT '请假名称 Search111  ',
  `qingjia_types` int(11) NOT NULL COMMENT '请假类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间 ',
  `qingjia_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '请假开始时间',
  `qingjia_jieshu_time` timestamp NULL DEFAULT NULL COMMENT '请假结束时间',
  `qingjia_content` text COMMENT '请假内容',
  `qingjia_yesno_types` int(11) NOT NULL COMMENT '请假状态 Search111 ',
  `qingjia_yesno_text` text COMMENT '审核理由',
  `qingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`qingjia_uuid_number`,`qingjia_name`,`qingjia_types`,`insert_time`,`qingjia_kaishi_time`,`qingjia_jieshu_time`,`qingjia_content`,`qingjia_yesno_types`,`qingjia_yesno_text`,`qingjia_shenhe_time`,`create_time`) values (1,3,'165062590789446','请假名称1',2,'2022-04-22 19:11:47','2022-04-22 19:11:47','2022-04-22 19:11:47','请假内容1',1,NULL,NULL,'2022-04-22 19:11:47'),(2,2,'165062590789495','请假名称2',1,'2022-04-22 19:11:47','2022-04-22 19:11:47','2022-04-22 19:11:47','请假内容2',1,NULL,NULL,'2022-04-22 19:11:47'),(3,3,'165062590789476','请假名称3',1,'2022-04-22 19:11:47','2022-04-22 19:11:47','2022-04-22 19:11:47','请假内容3',1,NULL,NULL,'2022-04-22 19:11:47'),(4,1,'165062590789478','请假名称4',2,'2022-04-22 19:11:47','2022-04-22 19:11:47','2022-04-22 19:11:47','请假内容4',1,NULL,NULL,'2022-04-22 19:11:47'),(5,2,'165062590789446','请假名称5',1,'2022-04-22 19:11:47','2022-04-22 19:11:47','2022-04-22 19:11:47','请假内容5',2,'同意了','2022-04-22 19:24:28','2022-04-22 19:11:47'),(6,1,'1650626836497','请假2222',1,'2022-04-22 19:27:31','2022-04-23 00:00:00','2022-04-24 00:00:00','<p>啥啊哈的回答是</p>',1,'',NULL,'2022-04-22 19:27:31');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','qlixjb846ksjrc9hm59tumf1q3y96ux1','2022-04-22 19:17:42','2022-04-22 20:31:25'),(2,1,'a1','yonghu','员工','cvoekzfl36u20pgg8cj22eii8bayndar','2022-04-22 19:19:00','2022-04-22 20:27:07');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `bumen_types` int(11) DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwu_types` int(11) DEFAULT NULL COMMENT '职务 Search111 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`bumen_types`,`zhiwu_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','员工姓名1','17703786901','410224199610232001','http://localhost:8080/renshi/upload/yonghu1.jpg',1,1,2,'1@qq.com','2022-04-22 19:11:47'),(2,'a2','123456','员工姓名2','17703786902','410224199610232002','http://localhost:8080/renshi/upload/yonghu2.jpg',1,2,2,'2@qq.com','2022-04-22 19:11:47'),(3,'a3','123456','员工姓名3','17703786903','410224199610232003','http://localhost:8080/renshi/upload/yonghu3.jpg',2,3,1,'3@qq.com','2022-04-22 19:11:47');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
