-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmtmmo0
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmtmmo0/upload/1616807570527.jpg'),(2,'picture2','http://localhost:8080/jspmtmmo0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmtmmo0/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgudongxinwen`
--

DROP TABLE IF EXISTS `discussgudongxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgudongxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='古董新闻评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgudongxinwen`
--

LOCK TABLES `discussgudongxinwen` WRITE;
/*!40000 ALTER TABLE `discussgudongxinwen` DISABLE KEYS */;
INSERT INTO `discussgudongxinwen` VALUES (81,'2021-03-27 01:09:43',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-03-27 01:09:43',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-03-27 01:09:43',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-03-27 01:09:43',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-03-27 01:09:43',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-03-27 01:09:43',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussgudongxinwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusspaipinxinxi`
--

DROP TABLE IF EXISTS `discusspaipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusspaipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616807945568 DEFAULT CHARSET=utf8 COMMENT='拍品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusspaipinxinxi`
--

LOCK TABLES `discusspaipinxinxi` WRITE;
/*!40000 ALTER TABLE `discusspaipinxinxi` DISABLE KEYS */;
INSERT INTO `discusspaipinxinxi` VALUES (91,'2021-03-27 01:09:43',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-03-27 01:09:43',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-03-27 01:09:43',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-03-27 01:09:43',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-03-27 01:09:43',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-03-27 01:09:43',6,6,'用户名6','评论内容6','回复内容6'),(1616807695962,'2021-03-27 01:14:55',43,1616807613421,NULL,'vsahbs',NULL),(1616807945567,'2021-03-27 01:19:04',1616807834129,1616807613421,NULL,'ajhrajewRN',NULL);
/*!40000 ALTER TABLE `discusspaipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gudongxinwen`
--

DROP TABLE IF EXISTS `gudongxinwen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gudongxinwen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) DEFAULT NULL COMMENT '新闻标题',
  `neirong` longtext COMMENT '内容',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616807513704 DEFAULT CHARSET=utf8 COMMENT='古董新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gudongxinwen`
--

LOCK TABLES `gudongxinwen` WRITE;
/*!40000 ALTER TABLE `gudongxinwen` DISABLE KEYS */;
INSERT INTO `gudongxinwen` VALUES (31,'2021-03-27 01:09:43','新闻标题1','内容1','发布人1','2021-03-27 09:09:43','http://localhost:8080/jspmtmmo0/upload/gudongxinwen_zhaopian1.jpg','2021-03-27 09:09:43',1),(32,'2021-03-27 01:09:43','新闻标题2','内容2','发布人2','2021-03-27 09:09:43','http://localhost:8080/jspmtmmo0/upload/gudongxinwen_zhaopian2.jpg','2021-03-27 09:09:43',2),(33,'2021-03-27 01:09:43','新闻标题3','内容3','发布人3','2021-03-27 09:09:43','http://localhost:8080/jspmtmmo0/upload/gudongxinwen_zhaopian3.jpg','2021-03-27 09:09:43',3),(34,'2021-03-27 01:09:43','新闻标题4','内容4','发布人4','2021-03-27 09:09:43','http://localhost:8080/jspmtmmo0/upload/gudongxinwen_zhaopian4.jpg','2021-03-27 09:09:43',4),(35,'2021-03-27 01:09:43','新闻标题5','内容5','发布人5','2021-03-27 09:09:43','http://localhost:8080/jspmtmmo0/upload/gudongxinwen_zhaopian5.jpg','2021-03-27 09:09:43',5),(36,'2021-03-27 01:09:43','新闻标题6','内容6','发布人6','2021-03-27 09:09:43','http://localhost:8080/jspmtmmo0/upload/gudongxinwen_zhaopian6.jpg','2021-03-27 09:09:43',6),(1616807513703,'2021-03-27 01:11:53','共和国的好多天','昂贵的ＧＳｒ三个人\r\n','都好贵','2021-03-31 14:17:29','http://localhost:8080/jspmtmmo0/upload/1616807504148.jpg','2021-03-27 09:15:18',1);
/*!40000 ALTER TABLE `gudongxinwen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingpaipaipin`
--

DROP TABLE IF EXISTS `jingpaipaipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingpaipaipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paipinbianhao` varchar(200) DEFAULT NULL COMMENT '拍品编号',
  `paipinmingcheng` varchar(200) DEFAULT NULL COMMENT '拍品名称',
  `qipaijia` varchar(200) DEFAULT NULL COMMENT '起拍价',
  `paimaihao` varchar(200) DEFAULT NULL COMMENT '拍卖号',
  `paimairen` varchar(200) DEFAULT NULL COMMENT '拍卖人',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chujia` varchar(200) DEFAULT NULL COMMENT '出价',
  `jingpaishijian` datetime DEFAULT NULL COMMENT '竞拍时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616808038954 DEFAULT CHARSET=utf8 COMMENT='竞拍拍品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingpaipaipin`
--

LOCK TABLES `jingpaipaipin` WRITE;
/*!40000 ALTER TABLE `jingpaipaipin` DISABLE KEYS */;
INSERT INTO `jingpaipaipin` VALUES (61,'2021-03-27 01:09:43','拍品编号1','拍品名称1','起拍价1','拍卖号1','拍卖人1','账号1','姓名1','出价1','2021-03-27 09:09:43','是','','未支付'),(62,'2021-03-27 01:09:43','拍品编号2','拍品名称2','起拍价2','拍卖号2','拍卖人2','账号2','姓名2','出价2','2021-03-27 09:09:43','是','','未支付'),(63,'2021-03-27 01:09:43','拍品编号3','拍品名称3','起拍价3','拍卖号3','拍卖人3','账号3','姓名3','出价3','2021-03-27 09:09:43','是','','未支付'),(64,'2021-03-27 01:09:43','拍品编号4','拍品名称4','起拍价4','拍卖号4','拍卖人4','账号4','姓名4','出价4','2021-03-27 09:09:43','是','','未支付'),(65,'2021-03-27 01:09:43','拍品编号5','拍品名称5','起拍价5','拍卖号5','拍卖人5','账号5','姓名5','出价5','2021-03-27 09:09:43','是','','未支付'),(66,'2021-03-27 01:09:43','拍品编号6','拍品名称6','起拍价6','拍卖号6','拍卖人6','账号6','姓名6','出价6','2021-03-27 09:09:43','是','','未支付'),(1616807934208,'2021-03-27 01:18:53','1616807799','黄金项链','100','13','13','12','12','1000','2021-03-27 09:18:53','是','','已支付'),(1616808038953,'2021-03-27 01:20:38','1616807799','黄金项链','100','13','13','114','14','2000',NULL,'是','','已支付');
/*!40000 ALTER TABLE `jingpaipaipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paimaijia`
--

DROP TABLE IF EXISTS `paimaijia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paimaijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paimaihao` varchar(200) NOT NULL COMMENT '拍卖号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `paimairen` varchar(200) NOT NULL COMMENT '拍卖人',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `paimaihao` (`paimaihao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616807738982 DEFAULT CHARSET=utf8 COMMENT='拍卖家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paimaijia`
--

LOCK TABLES `paimaijia` WRITE;
/*!40000 ALTER TABLE `paimaijia` DISABLE KEYS */;
INSERT INTO `paimaijia` VALUES (21,'2021-03-27 01:09:43','拍卖家1','123456','拍卖人1','男','773890001@qq.com','13823888881','http://localhost:8080/jspmtmmo0/upload/paimaijia_zhaopian1.jpg'),(22,'2021-03-27 01:09:43','拍卖家2','123456','拍卖人2','男','773890002@qq.com','13823888882','http://localhost:8080/jspmtmmo0/upload/paimaijia_zhaopian2.jpg'),(23,'2021-03-27 01:09:43','拍卖家3','123456','拍卖人3','男','773890003@qq.com','13823888883','http://localhost:8080/jspmtmmo0/upload/paimaijia_zhaopian3.jpg'),(24,'2021-03-27 01:09:43','拍卖家4','123456','拍卖人4','男','773890004@qq.com','13823888884','http://localhost:8080/jspmtmmo0/upload/paimaijia_zhaopian4.jpg'),(25,'2021-03-27 01:09:43','拍卖家5','123456','拍卖人5','男','773890005@qq.com','13823888885','http://localhost:8080/jspmtmmo0/upload/paimaijia_zhaopian5.jpg'),(26,'2021-03-27 01:09:43','拍卖家6','123456','拍卖人6','男','773890006@qq.com','13823888886','http://localhost:8080/jspmtmmo0/upload/paimaijia_zhaopian6.jpg'),(1616807738981,'2021-03-27 01:15:38','13','13','13','男','12@163.com','12345678912','http://localhost:8080/jspmtmmo0/upload/1616807779874.jpg');
/*!40000 ALTER TABLE `paimaijia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paipinfenlei`
--

DROP TABLE IF EXISTS `paipinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616807547792 DEFAULT CHARSET=utf8 COMMENT='拍品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paipinfenlei`
--

LOCK TABLES `paipinfenlei` WRITE;
/*!40000 ALTER TABLE `paipinfenlei` DISABLE KEYS */;
INSERT INTO `paipinfenlei` VALUES (51,'2021-03-27 01:09:43','分类1'),(52,'2021-03-27 01:09:43','分类2'),(53,'2021-03-27 01:09:43','分类3'),(54,'2021-03-27 01:09:43','分类4'),(55,'2021-03-27 01:09:43','分类5'),(56,'2021-03-27 01:09:43','分类6'),(1616807537125,'2021-03-27 01:12:16','珠宝'),(1616807547791,'2021-03-27 01:12:27','名表');
/*!40000 ALTER TABLE `paipinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paipinxinxi`
--

DROP TABLE IF EXISTS `paipinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paipinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paipinfenlei` varchar(200) DEFAULT NULL COMMENT '拍品分类',
  `paipinbianhao` varchar(200) DEFAULT NULL COMMENT '拍品编号',
  `paipinmingcheng` varchar(200) DEFAULT NULL COMMENT '拍品名称',
  `baobeijianjie` longtext COMMENT '宝贝简介',
  `kaipaishijian` datetime DEFAULT NULL COMMENT '开拍时间',
  `jieshushijian` datetime DEFAULT NULL COMMENT '结束时间',
  `qipaijia` int(11) DEFAULT NULL COMMENT '起拍价',
  `paipinzhuangtai` varchar(200) DEFAULT NULL COMMENT '拍品状态',
  `paipinzhaopian` varchar(200) DEFAULT NULL COMMENT '拍品照片',
  `paimaihao` varchar(200) DEFAULT NULL COMMENT '拍卖号',
  `paimairen` varchar(200) DEFAULT NULL COMMENT '拍卖人',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `paipinbianhao` (`paipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616807834130 DEFAULT CHARSET=utf8 COMMENT='拍品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paipinxinxi`
--

LOCK TABLES `paipinxinxi` WRITE;
/*!40000 ALTER TABLE `paipinxinxi` DISABLE KEYS */;
INSERT INTO `paipinxinxi` VALUES (41,'2021-03-27 01:09:43','拍品分类1','拍品编号1','拍品名称1','宝贝简介1','2021-03-27 09:09:43','2021-03-27 09:09:43',1,'待开始','http://localhost:8080/jspmtmmo0/upload/paipinxinxi_paipinzhaopian1.jpg','拍卖号1','拍卖人1','是','',1,1,'2021-03-27 09:09:43',1),(42,'2021-03-27 01:09:43','拍品分类2','拍品编号2','拍品名称2','宝贝简介2','2021-03-27 09:09:43','2021-03-27 09:09:43',2,'待开始','http://localhost:8080/jspmtmmo0/upload/paipinxinxi_paipinzhaopian2.jpg','拍卖号2','拍卖人2','是','',2,2,'2021-03-27 09:09:43',2),(43,'2021-03-27 01:09:43','拍品分类3','拍品编号3','拍品名称3','宝贝简介3','2021-03-27 09:09:43','2021-03-27 09:09:43',3,'待开始','http://localhost:8080/jspmtmmo0/upload/paipinxinxi_paipinzhaopian3.jpg','拍卖号3','拍卖人3','是','',4,4,'2021-03-27 09:15:07',6),(44,'2021-03-27 01:09:43','拍品分类4','拍品编号4','拍品名称4','宝贝简介4','2021-03-27 09:09:43','2021-03-27 09:09:43',4,'待开始','http://localhost:8080/jspmtmmo0/upload/paipinxinxi_paipinzhaopian4.jpg','拍卖号4','拍卖人4','是','',4,4,'2021-03-27 09:09:43',4),(45,'2021-03-27 01:09:43','拍品分类5','拍品编号5','拍品名称5','宝贝简介5','2021-03-27 09:09:43','2021-03-27 09:09:43',5,'待开始','http://localhost:8080/jspmtmmo0/upload/paipinxinxi_paipinzhaopian5.jpg','拍卖号5','拍卖人5','是','',5,5,'2021-03-27 09:13:49',6),(46,'2021-03-27 01:09:43','拍品分类6','拍品编号6','拍品名称6','宝贝简介6','2021-03-27 09:09:43','2021-03-27 09:09:43',6,'待开始','http://localhost:8080/jspmtmmo0/upload/paipinxinxi_paipinzhaopian6.jpg','拍卖号6','拍卖人6','是','',6,6,'2021-03-27 09:15:23',8),(1616807834129,'2021-03-27 01:17:13','珠宝','1616807799','黄金项链','gWRYB W4TBTRARQQR    WVXVBTDHSAEFAWWRGERewbs\r\n','2021-03-31 18:18:39','2021-03-24 14:18:39',100,'待开始','','13','13','是','',0,0,'2021-03-27 09:20:41',6);
/*!40000 ALTER TABLE `paipinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616807688991 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1616807688990,'2021-03-27 01:14:48',1616807613421,43,'paipinxinxi','拍品名称3','http://localhost:8080/jspmtmmo0/upload/paipinxinxi_paipinzhaopian3.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','9opm72p79s19oihe9umkzoy2h8kiy0dd','2021-03-27 01:10:40','2021-03-27 02:27:01'),(2,1616807613421,'12','yonghu','用户','yx9r4km2onm33mcxjsyqr8zcbv4vjbce','2021-03-27 01:13:41','2021-03-27 02:23:15'),(3,1616807738981,'13','paimaijia','拍卖家','d7db0c64m61qrictqbmzz082u5j01uz8','2021-03-27 01:15:45','2021-03-27 02:26:40'),(4,1616808002964,'114','yonghu','用户','s6zi4jeij90ta0bds8giusvxf755fm5i','2021-03-27 01:20:11','2021-03-27 02:25:47');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-27 01:09:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616808002965 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-27 01:09:43','用户1','123456','姓名1','男','773890001@qq.com','13823888881','http://localhost:8080/jspmtmmo0/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-27 01:09:43','用户2','123456','姓名2','男','773890002@qq.com','13823888882','http://localhost:8080/jspmtmmo0/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-27 01:09:43','用户3','123456','姓名3','男','773890003@qq.com','13823888883','http://localhost:8080/jspmtmmo0/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-27 01:09:43','用户4','123456','姓名4','男','773890004@qq.com','13823888884','http://localhost:8080/jspmtmmo0/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-27 01:09:43','用户5','123456','姓名5','男','773890005@qq.com','13823888885','http://localhost:8080/jspmtmmo0/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-27 01:09:43','用户6','123456','姓名6','男','773890006@qq.com','13823888886','http://localhost:8080/jspmtmmo0/upload/yonghu_zhaopian6.jpg'),(1616807613421,'2021-03-27 01:13:33','12','12','12','男','12@163.com','12345678912','http://localhost:8080/jspmtmmo0/upload/1616807676433.jpg'),(1616808002964,'2021-03-27 01:20:02','114','14','14','男','','','');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-29 11:41:56
