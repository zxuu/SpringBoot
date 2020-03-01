/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.24-log : Database - lzhpo-shiro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lzhpo-shiro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;

USE `lzhpo-shiro`;

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(36) NOT NULL,
  `name` varchar(40) DEFAULT NULL COMMENT '菜单名称',
  `parent_id` varchar(36) DEFAULT NULL COMMENT '父菜单',
  `level` bigint(2) DEFAULT NULL COMMENT '菜单层级',
  `parent_ids` varchar(2000) DEFAULT NULL COMMENT '父菜单联集',
  `sort` smallint(6) DEFAULT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接地址',
  `target` varchar(20) DEFAULT NULL COMMENT '打开方式',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `bg_color` varchar(255) DEFAULT NULL COMMENT '显示背景色',
  `is_show` tinyint(2) DEFAULT NULL COMMENT '是否显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(36) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`name`,`parent_id`,`level`,`parent_ids`,`sort`,`href`,`target`,`icon`,`bg_color`,`is_show`,`permission`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('3b54e2a2-9adb-11e8-aebe-1368d4ec24eb','用户管理','7d1020ee-9ad9-11e8-aebe-1368d4ec24eb',2,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,',9,'/admin/system/user/list',NULL,'','#47e69c',1,'sys:user:list','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-01-16 11:31:18','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-01-20 05:59:20',NULL,0),('3b58e01e-9adb-11e8-aebe-1368d4ec24eb','角色管理','7d1020ee-9ad9-11e8-aebe-1368d4ec24eb',2,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,',10,'/admin/system/role/list',NULL,'','#c23ab9',1,'sys:role:list','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-01-16 11:32:33','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-01-20 05:58:58',NULL,0),('3b5cb607-9adb-11e8-aebe-1368d4ec24eb','权限管理','7d1020ee-9ad9-11e8-aebe-1368d4ec24eb',2,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,',20,'/admin/system/menu/list',NULL,'','#d4573b',1,'sys:menu:list','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-01-16 11:33:19','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:49:28',NULL,0),('3e0b86a3-9adc-11e8-aebe-1368d4ec24eb','新增用户','3b54e2a2-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e0b86a3-9adc-11e8-aebe-1368d4ec24eb,',0,'',NULL,NULL,NULL,0,'sys:user:add','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 10:10:32','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 10:10:32',NULL,0),('3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb','编辑用户','3b54e2a2-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb,',10,'',NULL,NULL,NULL,0,'sys:user:edit','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 10:11:49','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 10:11:49',NULL,0),('3e36cf2f-9adc-11e8-aebe-1368d4ec24eb','删除用户','3b54e2a2-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,3e36cf2f-9adc-11e8-aebe-1368d4ec24eb,',20,'',NULL,NULL,NULL,0,'sys:user:delete','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 10:12:43','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 10:12:43',NULL,0),('7d1020ee-9ad9-11e8-aebe-1368d4ec24eb','系统管理',NULL,1,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,',1,'',NULL,'',NULL,1,'','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-01-16 11:29:46','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-01-20 03:09:26',NULL,0),('96fd6a5a-9adb-11e8-aebe-1368d4ec24eb','新增权限','3b5cb607-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,96fd6a5a-9adb-11e8-aebe-1368d4ec24eb,',0,'',NULL,NULL,NULL,0,'sys:menu:add','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:49:15','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:49:38',NULL,0),('9703ccf2-9adb-11e8-aebe-1368d4ec24eb','编辑权限','3b5cb607-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,9703ccf2-9adb-11e8-aebe-1368d4ec24eb,',10,'',NULL,NULL,NULL,0,'sys:menu:edit','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:50:16','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:50:25',NULL,0),('9707cf58-9adb-11e8-aebe-1368d4ec24eb','删除权限','3b5cb607-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b5cb607-9adb-11e8-aebe-1368d4ec24eb,9707cf58-9adb-11e8-aebe-1368d4ec24eb,',20,'',NULL,NULL,NULL,0,'sys:menu:delete','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:51:53','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:53:42',NULL,0),('ed63866b30cf46bfb6797a1d31ae930c','锁定用户','3b54e2a2-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b54e2a2-9adb-11e8-aebe-1368d4ec24eb,ed63866b30cf46bfb6797a1d31ae930c,',21,'',NULL,NULL,'',0,'sys:user:lock','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-08-21 17:44:05','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-08-21 17:44:05',NULL,0),('ff619e04-9adb-11e8-aebe-1368d4ec24eb','新增角色','3b58e01e-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,ff619e04-9adb-11e8-aebe-1368d4ec24eb,',0,'',NULL,NULL,NULL,0,'sys:role:add','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:58:11','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:58:11',NULL,0),('ff9477c9-9adb-11e8-aebe-1368d4ec24eb','编辑权限','3b58e01e-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,ff9477c9-9adb-11e8-aebe-1368d4ec24eb,',10,'',NULL,NULL,NULL,0,'sys:role:edit','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:59:01','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:59:01',NULL,0),('ff9ad846-9adb-11e8-aebe-1368d4ec24eb','删除角色','3b58e01e-9adb-11e8-aebe-1368d4ec24eb',3,'7d1020ee-9ad9-11e8-aebe-1368d4ec24eb,3b58e01e-9adb-11e8-aebe-1368d4ec24eb,ff9ad846-9adb-11e8-aebe-1368d4ec24eb,',20,'',NULL,NULL,NULL,0,'sys:role:delete','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:59:56','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-02-08 09:59:56',NULL,0);

/*Table structure for table `sys_rescource` */

DROP TABLE IF EXISTS `sys_rescource`;

CREATE TABLE `sys_rescource` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `web_url` varchar(500) DEFAULT NULL COMMENT '资源网络地址',
  `hash` varchar(255) DEFAULT NULL COMMENT '文件标识',
  `file_size` varchar(50) DEFAULT NULL COMMENT '文件大小',
  `file_type` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `original_net_url` text,
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(36) DEFAULT NULL COMMENT '创建人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(36) DEFAULT NULL COMMENT '修改人',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统资源';

/*Data for the table `sys_rescource` */

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(36) NOT NULL,
  `name` varchar(40) DEFAULT NULL COMMENT '角色名称',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`create_date`,`create_by`,`update_date`,`update_by`,`remarks`,`del_flag`) values ('70689483-9ad7-11e8-aebe-1368d4ec24eb','前台用户','2017-11-02 14:19:07','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-08-21 20:04:02','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','',0),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','系统管理员','2017-11-29 19:36:37','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-08-21 17:45:09','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','',0);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` varchar(36) NOT NULL,
  `menu_id` varchar(36) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values ('706e0195-9ad7-11e8-aebe-1368d4ec24eb','3b54e2a2-9adb-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','3b58e01e-9adb-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','3b5cb607-9adb-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','3e0b86a3-9adc-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','3e2fa8b6-9adc-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','3e36cf2f-9adc-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','7d1020ee-9ad9-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','96fd6a5a-9adb-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','9703ccf2-9adb-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','9707cf58-9adb-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','ed63866b30cf46bfb6797a1d31ae930c'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','ff619e04-9adb-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','ff9477c9-9adb-11e8-aebe-1368d4ec24eb'),('706e0195-9ad7-11e8-aebe-1368d4ec24eb','ff9ad846-9adb-11e8-aebe-1368d4ec24eb');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(36) NOT NULL COMMENT '用户ID',
  `login_name` varchar(36) DEFAULT NULL COMMENT '登录名',
  `nick_name` varchar(40) DEFAULT NULL COMMENT '昵称',
  `icon` varchar(2000) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) DEFAULT NULL COMMENT 'shiro加密盐',
  `tel` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱地址',
  `locked` tinyint(2) DEFAULT NULL COMMENT '是否锁定',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(36) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(36) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` tinyint(4) NOT NULL,
  `is_admin` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`login_name`,`nick_name`,`icon`,`password`,`salt`,`tel`,`email`,`locked`,`create_date`,`create_by`,`update_date`,`update_by`,`remarks`,`del_flag`,`is_admin`) values ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb','admin','管理员',NULL,'9c5feb7aba88c7c87bc047c7cec7c6e3b63e1894','08c5900125b80cd2','15083759163','760613041@qq.com',0,'2017-11-27 22:19:39','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','2018-08-28 13:25:18','18b8b543-9ad7-11e8-aebe-1368d4ec24eb','',0,1);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values ('18b8b543-9ad7-11e8-aebe-1368d4ec24eb','706e0195-9ad7-11e8-aebe-1368d4ec24eb');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
