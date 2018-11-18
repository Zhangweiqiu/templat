/*
SQLyog Community v10.3 
MySQL - 5.5.27 : Database - pang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `pang`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '文章分类',
  `content` varchar(255) DEFAULT NULL COMMENT '文章内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `article` */

/*Table structure for table `borrow_order` */

DROP TABLE IF EXISTS `borrow_order`;

CREATE TABLE `borrow_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) DEFAULT NULL COMMENT '订单号',
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `band_card` varchar(255) DEFAULT NULL,
  `borrow_money` double DEFAULT NULL COMMENT '借款金额',
  `borrow_deadline` varchar(255) DEFAULT NULL COMMENT '借款期限',
  `apply_date` varchar(255) DEFAULT NULL COMMENT '申请时间',
  `nuclear_member` varchar(255) DEFAULT NULL COMMENT '审核员',
  `borrow_status` varchar(255) DEFAULT NULL COMMENT '借款状态',
  `inner_remark` varchar(255) DEFAULT NULL COMMENT '内部备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `borrow_order` */

/*Table structure for table `borrow_rate` */

DROP TABLE IF EXISTS `borrow_rate`;

CREATE TABLE `borrow_rate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `money` double DEFAULT NULL,
  `rate` double DEFAULT NULL COMMENT '利率',
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `borrow_rate` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `receive_name` varchar(255) DEFAULT NULL COMMENT '接收人名字',
  `receive_phone` varchar(255) DEFAULT NULL COMMENT '接收人手机',
  `message_content` varchar(255) DEFAULT NULL COMMENT '短信消息',
  `send_date` varchar(255) DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message` */

/*Table structure for table `message_status` */

DROP TABLE IF EXISTS `message_status`;

CREATE TABLE `message_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL COMMENT '客户不同的状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message_status` */

/*Table structure for table `remit_order` */

DROP TABLE IF EXISTS `remit_order`;

CREATE TABLE `remit_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) DEFAULT NULL COMMENT '订单号',
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `band_card` varchar(255) DEFAULT NULL,
  `borrow_money` double DEFAULT NULL COMMENT '借款金额',
  `remit_money` double DEFAULT NULL COMMENT '放款金额',
  `borrow_count` int(11) DEFAULT NULL COMMENT '第几次借款',
  `remit_status` varchar(255) DEFAULT NULL COMMENT '回款状态',
  `apply_date` varchar(255) DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `remit_order` */

/*Table structure for table `sn` */

DROP TABLE IF EXISTS `sn`;

CREATE TABLE `sn` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_party` varchar(255) DEFAULT NULL COMMENT '甲方',
  `second_party` varchar(255) DEFAULT NULL COMMENT '乙方',
  `sn_content` varchar(255) DEFAULT NULL COMMENT '合同内容',
  `sign_date` varchar(255) DEFAULT NULL COMMENT '签署时间',
  `expire_date` varchar(255) DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sn` */

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `sys_user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sys_user_name` varchar(255) DEFAULT NULL,
  `sys_user_password` varchar(255) DEFAULT NULL,
  `sys_user_status` varchar(255) DEFAULT NULL,
  `sys_user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sys_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) DEFAULT NULL,
  `borrow_limit` double DEFAULT NULL COMMENT '借款额度',
  `borrow_status` varchar(255) DEFAULT NULL,
  `borrow_number` int(11) DEFAULT NULL,
  `history_borrow_count` double DEFAULT NULL COMMENT '历史借款总额',
  `inner_remark` varchar(255) DEFAULT NULL COMMENT '内部备注',
  `roster` varchar(255) DEFAULT NULL COMMENT '黑白名单',
  `second_borrow` varchar(255) DEFAULT NULL COMMENT '二次借款',
  `password` varchar(255) DEFAULT NULL,
  `register_time` varchar(255) DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
