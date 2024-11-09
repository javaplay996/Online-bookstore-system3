/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangluoshudian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangluoshudian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangluoshudian`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619613615857 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619613602301,'2021-04-28 20:40:01',1614431342348,'河南省郑州市金水区杜岭街道张寨南街西里路54号院','a1','17703786964','否'),(1619613615856,'2021-04-28 20:40:15',1614431342348,'河南省郑州市金水区杜岭街道二七路51号郑州百货大楼','a2','17703786932','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619613702946 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (22,'picture2','http://localhost:8080/wangluoshudian/upload/1619612000734.jpg'),(23,'picture2','http://localhost:8080/wangluoshudian/upload/1619612007537.jpg'),(24,'picture2','http://localhost:8080/wangluoshudian/upload/1619613508748.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619613069271 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1619612159148,'2021-04-28 20:15:58',1619611769063,1614430386281,'怎么样',NULL),(1619613069270,'2021-04-28 20:31:08',1619611977155,1614430386281,'好么','很好');

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (47,1614431342348,1619613441757,'添加',4,'2021-04-28 20:40:38','2021-04-28 20:40:39'),(48,1614431342348,1619613441757,'使用',56,'2021-04-28 20:41:29','2021-04-28 20:41:30'),(49,1614431342348,1619613441757,'添加',12,'2021-04-28 20:41:29','2021-04-28 20:41:30'),(50,1614431342348,1619608817346,'使用',12,'2021-04-28 20:41:55','2021-04-28 20:41:56'),(51,1614431342348,1619608817346,'添加',1,'2021-04-28 20:41:55','2021-04-28 20:41:56'),(52,1614431342348,1619611977155,'使用',12,'2021-04-28 20:41:56','2021-04-28 20:41:56'),(53,1614431342348,1619611977155,'添加',4,'2021-04-28 20:41:56','2021-04-28 20:41:56');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-04-28 22:39:58','新闻标题1','http://localhost:8080/wangluoshudian/upload/news_picture1.jpg','内容1'),(82,'2021-04-28 22:39:58','新闻标题2','http://localhost:8080/wangluoshudian/upload/news_picture2.jpg','内容2'),(83,'2021-04-28 22:39:58','新闻标题3','http://localhost:8080/wangluoshudian/upload/news_picture3.jpg','内容3'),(84,'2021-04-28 22:39:58','新闻标题4','http://localhost:8080/wangluoshudian/upload/news_picture4.jpg','内容4'),(85,'2021-04-28 22:39:58','新闻标题5','http://localhost:8080/wangluoshudian/upload/news_picture5.jpg','内容5');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619613716680 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1619613639543,'2021-04-28 20:40:38','202142820403840025485','shangpinxinxi',1614431342348,1619613441757,'心','http://localhost:8080/wangluoshudian/upload/1619613405415.jpg',2,50,28,100,56,1,'已完成','河南省郑州市金水区杜岭街道二七路51号郑州百货大楼'),(1619613655942,'2021-04-28 20:40:55','202142820405481832279','shangpinxinxi',1614431342348,1619608817346,'寒鸦','http://localhost:8080/wangluoshudian/upload/1619608767213.jpg',5,100,48,500,240,1,'未支付','河南省郑州市金水区杜岭街道二七路51号郑州百货大楼'),(1619613690314,'2021-04-28 20:41:29','202142820412960363590','shangpinxinxi',1614431342348,1619613441757,'心','http://localhost:8080/wangluoshudian/upload/1619613405415.jpg',6,50,28,300,168,1,'已完成','河南省郑州市金水区杜岭街道二七路51号郑州百货大楼'),(1619613715967,'2021-04-28 20:41:55','202142820415382418044','shangpinxinxi',1614431342348,1619608817346,'寒鸦','http://localhost:8080/wangluoshudian/upload/1619608767213.jpg',1,100,48,100,48,1,'已发货','河南省郑州市金水区杜岭街道二七路51号郑州百货大楼'),(1619613716679,'2021-04-28 20:41:56','202142820415435745901','shangpinxinxi',1614431342348,1619611977155,'文城','http://localhost:8080/wangluoshudian/upload/1619611941731.jpg',2,100,88,200,176,1,'已支付','河南省郑州市金水区杜岭街道二七路51号郑州百货大楼');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619613394624 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-04-28 22:39:58','小说'),(22,'2021-04-28 22:39:58','儿童读物'),(23,'2021-04-28 22:39:58','专业书'),(24,'2021-04-28 22:39:58','工具书'),(25,'2021-04-28 22:39:58','手册'),(26,'2021-04-28 22:39:58','书目'),(1619613394623,'2021-04-28 20:36:34','分类6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619613441758 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`zuozhe`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1619608817346,'2021-04-28 19:20:16','1619608762','寒鸦','小说','994','作者1','本','寒鸦的详情\r\n','http://localhost:8080/wangluoshudian/upload/1619608767213.jpg','2021-04-28 21:01:37',6,100,48,1,1),(1619611769063,'2021-04-28 20:09:28','1619611721','科幻世界','手册','1000','作者2','册','科幻世界的详情\r\n','http://localhost:8080/wangluoshudian/upload/1619611725047.jpg','2021-04-28 21:02:54',4,80,66,2,1),(1619611977155,'2021-04-28 20:12:56','1619611936','文城','小说','998','作者3','本','文城的详情\r\n','http://localhost:8080/wangluoshudian/upload/1619611941731.jpg','2021-04-28 20:43:29',7,100,88,2,1),(1619613441757,'2021-04-28 20:37:21','1619613400','心','儿童读物','1102','作者4','册','心的详情\r\n','http://localhost:8080/wangluoshudian/upload/1619613405415.jpg','2021-04-28 20:43:22',7,50,28,2,1);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1387386805419814914 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

insert  into `shouhou`(`id`,`orderid`,`suqiu`,`suqiutime`,`shouhoutype`,`chulitype`,`chulicontent`,`chulitime`,`addtime`) values (1387386805419814913,'202142820412960363590','质量差','2021-04-28 20:42:45',1,2,'三十三','2021-04-28 20:43:00','2021-04-28 20:42:45');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619613803336 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619613052920,'2021-04-28 20:30:52',1614430386281,1619611769063,'shangpinxinxi','科幻世界','http://localhost:8080/wangluoshudian/upload/1619611725047.jpg'),(1619613059618,'2021-04-28 20:30:58',1614430386281,1619611977155,'shangpinxinxi','文城','http://localhost:8080/wangluoshudian/upload/1619611941731.jpg'),(1619613793583,'2021-04-28 20:43:13',1614431342348,1619611769063,'shangpinxinxi','科幻世界','http://localhost:8080/wangluoshudian/upload/1619611725047.jpg'),(1619613797598,'2021-04-28 20:43:17',1614431342348,1619611977155,'shangpinxinxi','文城','http://localhost:8080/wangluoshudian/upload/1619611941731.jpg'),(1619613803335,'2021-04-28 20:43:22',1614431342348,1619613441757,'shangpinxinxi','心','http://localhost:8080/wangluoshudian/upload/1619613405415.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (9,1,'admin','users','管理员','h1gjqwlvuat7tj6s24gnowmvihpl4cu4','2021-03-13 09:42:19','2021-04-28 21:59:09'),(15,1614430386281,'a2','yonghu','用户','6eaq7pbnkjyk5jotircj0obmip5qwx4j','2021-04-28 20:14:09','2021-04-28 21:14:10'),(16,1614431342348,'a4','yonghu','用户','vvwxkqv5ep8th2e36u8ufh08y86z41x0','2021-04-28 20:39:28','2021-04-28 22:01:12'),(17,1619613916849,'a5','yonghu','用户','ysmz1lpdxjxxp2sbx2opbt57ldtwnlzy','2021-04-28 20:45:26','2021-04-28 21:56:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-03-09 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619613916850 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-04-28 20:53:06','a2','a2','123456','男','13823888883','229992@qq.ccom',3286,112),(1614431342348,'2021-04-28 20:53:06','a4','a4','123456','男','a41','22850@qq.com',506,8),(1615339905628,'2021-04-28 20:53:06','a3','a3','123456','男','13823888883','77389000222@qq.com',300,3),(1619613916849,'2021-04-28 20:45:16','a5','张5','123456',NULL,'17703786969','22@qq.com',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
