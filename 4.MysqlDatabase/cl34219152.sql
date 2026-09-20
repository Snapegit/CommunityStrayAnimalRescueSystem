-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl34219152
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
-- Current Database: `cl34219152`
--

/*!40000 DROP DATABASE IF EXISTS `cl34219152`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl34219152` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl34219152`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiuzhuliulangdongwu`
--

DROP TABLE IF EXISTS `discussjiuzhuliulangdongwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiuzhuliulangdongwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='救助流浪动物评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiuzhuliulangdongwu`
--

LOCK TABLES `discussjiuzhuliulangdongwu` WRITE;
/*!40000 ALTER TABLE `discussjiuzhuliulangdongwu` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussjiuzhuliulangdongwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxunzhaoliulangdongwu`
--

DROP TABLE IF EXISTS `discussxunzhaoliulangdongwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxunzhaoliulangdongwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='寻找流浪动物评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxunzhaoliulangdongwu`
--

LOCK TABLES `discussxunzhaoliulangdongwu` WRITE;
/*!40000 ALTER TABLE `discussxunzhaoliulangdongwu` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxunzhaoliulangdongwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dongwulingyang`
--

DROP TABLE IF EXISTS `dongwulingyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dongwulingyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dongwumingcheng` varchar(200) DEFAULT NULL COMMENT '动物名称',
  `dongwutupian` longtext COMMENT '动物图片',
  `dongwupinzhong` varchar(200) DEFAULT NULL COMMENT '动物品种',
  `dongwuxingbie` varchar(200) DEFAULT NULL COMMENT '动物性别',
  `dongwunianling` varchar(200) DEFAULT NULL COMMENT '动物年龄',
  `dongwuxiangqing` longtext COMMENT '动物详情',
  `jiuzhuzhanmingcheng` varchar(200) DEFAULT NULL COMMENT '救助站名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `lingyangzhuangtai` varchar(200) DEFAULT NULL COMMENT '领养状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='动物领养';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dongwulingyang`
--

LOCK TABLES `dongwulingyang` WRITE;
/*!40000 ALTER TABLE `dongwulingyang` DISABLE KEYS */;
INSERT INTO `dongwulingyang` VALUES (81,'2024-03-22 05:09:32','动物名称1','file/dongwulingyangDongwutupian1.jpg,file/dongwulingyangDongwutupian2.jpg,file/dongwulingyangDongwutupian3.jpg','动物品种1','公','动物年龄1','动物详情1','救助站名称1','负责人1','联系方式1','2024-03-22 13:09:32','已领养'),(82,'2024-03-22 05:09:32','动物名称2','file/dongwulingyangDongwutupian2.jpg,file/dongwulingyangDongwutupian3.jpg,file/dongwulingyangDongwutupian4.jpg','动物品种2','公','动物年龄2','动物详情2','救助站名称2','负责人2','联系方式2','2024-03-22 13:09:32','已领养'),(83,'2024-03-22 05:09:32','动物名称3','file/dongwulingyangDongwutupian3.jpg,file/dongwulingyangDongwutupian4.jpg,file/dongwulingyangDongwutupian5.jpg','动物品种3','公','动物年龄3','动物详情3','救助站名称3','负责人3','联系方式3','2024-03-22 13:09:32','已领养'),(84,'2024-03-22 05:09:32','动物名称4','file/dongwulingyangDongwutupian4.jpg,file/dongwulingyangDongwutupian5.jpg,file/dongwulingyangDongwutupian6.jpg','动物品种4','公','动物年龄4','动物详情4','救助站名称4','负责人4','联系方式4','2024-03-22 13:09:32','已领养'),(85,'2024-03-22 05:09:32','动物名称5','file/dongwulingyangDongwutupian5.jpg,file/dongwulingyangDongwutupian6.jpg,file/dongwulingyangDongwutupian7.jpg','动物品种5','公','动物年龄5','动物详情5','救助站名称5','负责人5','联系方式5','2024-03-22 13:09:32','已领养'),(86,'2024-03-22 05:09:32','动物名称6','file/dongwulingyangDongwutupian6.jpg,file/dongwulingyangDongwutupian7.jpg,file/dongwulingyangDongwutupian8.jpg','动物品种6','公','动物年龄6','动物详情6','救助站名称6','负责人6','联系方式6','2024-03-22 13:09:32','已领养');
/*!40000 ALTER TABLE `dongwulingyang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dongwupinzhong`
--

DROP TABLE IF EXISTS `dongwupinzhong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dongwupinzhong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dongwupinzhong` varchar(200) DEFAULT NULL COMMENT '动物品种',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='动物品种';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dongwupinzhong`
--

LOCK TABLES `dongwupinzhong` WRITE;
/*!40000 ALTER TABLE `dongwupinzhong` DISABLE KEYS */;
INSERT INTO `dongwupinzhong` VALUES (61,'2024-03-22 05:09:32','动物品种1'),(62,'2024-03-22 05:09:32','动物品种2'),(63,'2024-03-22 05:09:32','动物品种3'),(64,'2024-03-22 05:09:32','动物品种4'),(65,'2024-03-22 05:09:32','动物品种5'),(66,'2024-03-22 05:09:32','动物品种6');
/*!40000 ALTER TABLE `dongwupinzhong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuzhuliulangdongwu`
--

DROP TABLE IF EXISTS `jiuzhuliulangdongwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuzhuliulangdongwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `dongwupinzhong` varchar(200) DEFAULT NULL COMMENT '动物品种',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `tupian` longtext COMMENT '图片',
  `xiangqingmiaoshu` longtext COMMENT '详情描述',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='救助流浪动物';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuzhuliulangdongwu`
--

LOCK TABLES `jiuzhuliulangdongwu` WRITE;
/*!40000 ALTER TABLE `jiuzhuliulangdongwu` DISABLE KEYS */;
INSERT INTO `jiuzhuliulangdongwu` VALUES (71,'2024-03-22 05:09:32','标题1','动物品种1','地点1','file/jiuzhuliulangdongwuTupian1.jpg,file/jiuzhuliulangdongwuTupian2.jpg,file/jiuzhuliulangdongwuTupian3.jpg','详情描述1','2024-03-22 13:09:32','用户账号1','用户姓名1','电话号码1','是',''),(72,'2024-03-22 05:09:32','标题2','动物品种2','地点2','file/jiuzhuliulangdongwuTupian2.jpg,file/jiuzhuliulangdongwuTupian3.jpg,file/jiuzhuliulangdongwuTupian4.jpg','详情描述2','2024-03-22 13:09:32','用户账号2','用户姓名2','电话号码2','是',''),(73,'2024-03-22 05:09:32','标题3','动物品种3','地点3','file/jiuzhuliulangdongwuTupian3.jpg,file/jiuzhuliulangdongwuTupian4.jpg,file/jiuzhuliulangdongwuTupian5.jpg','详情描述3','2024-03-22 13:09:32','用户账号3','用户姓名3','电话号码3','是',''),(74,'2024-03-22 05:09:32','标题4','动物品种4','地点4','file/jiuzhuliulangdongwuTupian4.jpg,file/jiuzhuliulangdongwuTupian5.jpg,file/jiuzhuliulangdongwuTupian6.jpg','详情描述4','2024-03-22 13:09:32','用户账号4','用户姓名4','电话号码4','是',''),(75,'2024-03-22 05:09:32','标题5','动物品种5','地点5','file/jiuzhuliulangdongwuTupian5.jpg,file/jiuzhuliulangdongwuTupian6.jpg,file/jiuzhuliulangdongwuTupian7.jpg','详情描述5','2024-03-22 13:09:32','用户账号5','用户姓名5','电话号码5','是',''),(76,'2024-03-22 05:09:32','标题6','动物品种6','地点6','file/jiuzhuliulangdongwuTupian6.jpg,file/jiuzhuliulangdongwuTupian7.jpg,file/jiuzhuliulangdongwuTupian8.jpg','详情描述6','2024-03-22 13:09:32','用户账号6','用户姓名6','电话号码6','是','');
/*!40000 ALTER TABLE `jiuzhuliulangdongwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuzhuzhan`
--

DROP TABLE IF EXISTS `jiuzhuzhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuzhuzhan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuzhuzhanmingcheng` varchar(200) DEFAULT NULL COMMENT '救助站名称',
  `tupian` longtext COMMENT '图片',
  `guimo` varchar(200) DEFAULT NULL COMMENT '规模',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='救助站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuzhuzhan`
--

LOCK TABLES `jiuzhuzhan` WRITE;
/*!40000 ALTER TABLE `jiuzhuzhan` DISABLE KEYS */;
INSERT INTO `jiuzhuzhan` VALUES (51,'2024-03-22 05:09:32','救助站名称1','file/jiuzhuzhanTupian1.jpg,file/jiuzhuzhanTupian2.jpg,file/jiuzhuzhanTupian3.jpg','规模1','地址1','负责人1','19819881111'),(52,'2024-03-22 05:09:32','救助站名称2','file/jiuzhuzhanTupian2.jpg,file/jiuzhuzhanTupian3.jpg,file/jiuzhuzhanTupian4.jpg','规模2','地址2','负责人2','19819881112'),(53,'2024-03-22 05:09:32','救助站名称3','file/jiuzhuzhanTupian3.jpg,file/jiuzhuzhanTupian4.jpg,file/jiuzhuzhanTupian5.jpg','规模3','地址3','负责人3','19819881113'),(54,'2024-03-22 05:09:32','救助站名称4','file/jiuzhuzhanTupian4.jpg,file/jiuzhuzhanTupian5.jpg,file/jiuzhuzhanTupian6.jpg','规模4','地址4','负责人4','19819881114'),(55,'2024-03-22 05:09:32','救助站名称5','file/jiuzhuzhanTupian5.jpg,file/jiuzhuzhanTupian6.jpg,file/jiuzhuzhanTupian7.jpg','规模5','地址5','负责人5','19819881115'),(56,'2024-03-22 05:09:32','救助站名称6','file/jiuzhuzhanTupian6.jpg,file/jiuzhuzhanTupian7.jpg,file/jiuzhuzhanTupian8.jpg','规模6','地址6','负责人6','19819881116');
/*!40000 ALTER TABLE `jiuzhuzhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lingyangxinxi`
--

DROP TABLE IF EXISTS `lingyangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lingyangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dongwumingcheng` varchar(200) DEFAULT NULL COMMENT '动物名称',
  `dongwupinzhong` varchar(200) DEFAULT NULL COMMENT '动物品种',
  `dongwuxingbie` varchar(200) DEFAULT NULL COMMENT '动物性别',
  `dongwunianling` varchar(200) DEFAULT NULL COMMENT '动物年龄',
  `jiuzhuzhanmingcheng` varchar(200) DEFAULT NULL COMMENT '救助站名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='领养信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lingyangxinxi`
--

LOCK TABLES `lingyangxinxi` WRITE;
/*!40000 ALTER TABLE `lingyangxinxi` DISABLE KEYS */;
INSERT INTO `lingyangxinxi` VALUES (91,'2024-03-22 05:09:32','动物名称1','动物品种1','动物性别1','动物年龄1','救助站名称1','负责人1','联系方式1','用户账号1','用户姓名1','电话号码1','是',''),(92,'2024-03-22 05:09:32','动物名称2','动物品种2','动物性别2','动物年龄2','救助站名称2','负责人2','联系方式2','用户账号2','用户姓名2','电话号码2','是',''),(93,'2024-03-22 05:09:32','动物名称3','动物品种3','动物性别3','动物年龄3','救助站名称3','负责人3','联系方式3','用户账号3','用户姓名3','电话号码3','是',''),(94,'2024-03-22 05:09:32','动物名称4','动物品种4','动物性别4','动物年龄4','救助站名称4','负责人4','联系方式4','用户账号4','用户姓名4','电话号码4','是',''),(95,'2024-03-22 05:09:32','动物名称5','动物品种5','动物性别5','动物年龄5','救助站名称5','负责人5','联系方式5','用户账号5','用户姓名5','电话号码5','是',''),(96,'2024-03-22 05:09:32','动物名称6','动物品种6','动物性别6','动物年龄6','救助站名称6','负责人6','联系方式6','用户账号6','用户姓名6','电话号码6','是','');
/*!40000 ALTER TABLE `lingyangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-22 05:09:32','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-common39\",\"menu\":\"用户管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"救助站\",\"menuJump\":\"列表\",\"tableName\":\"jiuzhuzhan\"}],\"fontClass\":\"icon-common48\",\"menu\":\"救助站管理\",\"unicode\":\"&#xef65;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"动物品种\",\"menuJump\":\"列表\",\"tableName\":\"dongwupinzhong\"}],\"fontClass\":\"icon-common20\",\"menu\":\"动物品种管理\",\"unicode\":\"&#xee02;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"查看评论\"],\"menu\":\"救助流浪动物\",\"menuJump\":\"列表\",\"tableName\":\"jiuzhuliulangdongwu\"}],\"fontClass\":\"icon-common8\",\"menu\":\"救助流浪动物管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\",\"查看评论\"],\"menu\":\"寻找流浪动物\",\"menuJump\":\"列表\",\"tableName\":\"xunzhaoliulangdongwu\"}],\"fontClass\":\"icon-common39\",\"menu\":\"寻找流动动物管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-clothes\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"新增\"],\"menu\":\"动物领养\",\"menuJump\":\"列表\",\"tableName\":\"dongwulingyang\"},{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\",\"删除\",\"审核\"],\"menu\":\"领养信息\",\"menuJump\":\"列表\",\"tableName\":\"lingyangxinxi\"}],\"fontClass\":\"icon-common26\",\"menu\":\"动物领养管理\",\"unicode\":\"&#xee2b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"通知公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common50\",\"menu\":\"系统管理\",\"unicode\":\"&#xef96;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\"],\"menu\":\"救助站\",\"menuJump\":\"列表\",\"tableName\":\"jiuzhuzhan\"}],\"menu\":\"救助站\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"查看评论\",\"新增\"],\"menu\":\"救助流浪动物\",\"menuJump\":\"列表\",\"tableName\":\"jiuzhuliulangdongwu\"}],\"menu\":\"救助流浪动物\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"查看评论\",\"新增\"],\"menu\":\"寻找流浪动物\",\"menuJump\":\"列表\",\"tableName\":\"xunzhaoliulangdongwu\"}],\"menu\":\"寻找流动动物\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"领养\"],\"menu\":\"动物领养\",\"menuJump\":\"列表\",\"tableName\":\"dongwulingyang\"}],\"menu\":\"动物领养\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"menu\":\"通知公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"通知公告\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-copy\",\"buttons\":[\"修改\",\"删除\",\"查看\"],\"menu\":\"救助流浪动物\",\"menuJump\":\"列表\",\"tableName\":\"jiuzhuliulangdongwu\"}],\"fontClass\":\"icon-common8\",\"menu\":\"救助流浪动物管理\",\"unicode\":\"&#xedb6;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-medal\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"寻找流浪动物\",\"menuJump\":\"列表\",\"tableName\":\"xunzhaoliulangdongwu\"}],\"fontClass\":\"icon-common39\",\"menu\":\"寻找流动动物管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-qrcode\",\"buttons\":[\"查看\"],\"menu\":\"领养信息\",\"menuJump\":\"列表\",\"tableName\":\"lingyangxinxi\"}],\"fontClass\":\"icon-common26\",\"menu\":\"动物领养管理\",\"unicode\":\"&#xee2b;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\"],\"menu\":\"救助站\",\"menuJump\":\"列表\",\"tableName\":\"jiuzhuzhan\"}],\"menu\":\"救助站\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"查看评论\",\"新增\"],\"menu\":\"救助流浪动物\",\"menuJump\":\"列表\",\"tableName\":\"jiuzhuliulangdongwu\"}],\"menu\":\"救助流浪动物\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"查看评论\",\"新增\"],\"menu\":\"寻找流浪动物\",\"menuJump\":\"列表\",\"tableName\":\"xunzhaoliulangdongwu\"}],\"menu\":\"寻找流动动物\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"领养\"],\"menu\":\"动物领养\",\"menuJump\":\"列表\",\"tableName\":\"dongwulingyang\"}],\"menu\":\"动物领养\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"menu\":\"通知公告\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"通知公告\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2024-03-22 05:09:32','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(32,'2024-03-22 05:09:32','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(33,'2024-03-22 05:09:32','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(34,'2024-03-22 05:09:32','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(35,'2024-03-22 05:09:32','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(36,'2024-03-22 05:09:32','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-22 05:09:32','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xunzhaoliulangdongwu`
--

DROP TABLE IF EXISTS `xunzhaoliulangdongwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xunzhaoliulangdongwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `dongwupinzhong` varchar(200) DEFAULT NULL COMMENT '动物品种',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `tupian` longtext COMMENT '图片',
  `xiangqingmiaoshu` longtext COMMENT '详情描述',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='寻找流浪动物';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xunzhaoliulangdongwu`
--

LOCK TABLES `xunzhaoliulangdongwu` WRITE;
/*!40000 ALTER TABLE `xunzhaoliulangdongwu` DISABLE KEYS */;
INSERT INTO `xunzhaoliulangdongwu` VALUES (101,'2024-03-22 05:09:32','标题1','动物品种1','地点1','file/xunzhaoliulangdongwuTupian1.jpg,file/xunzhaoliulangdongwuTupian2.jpg,file/xunzhaoliulangdongwuTupian3.jpg','详情描述1','2024-03-22 13:09:32','用户账号1','用户姓名1','电话号码1','是',''),(102,'2024-03-22 05:09:32','标题2','动物品种2','地点2','file/xunzhaoliulangdongwuTupian2.jpg,file/xunzhaoliulangdongwuTupian3.jpg,file/xunzhaoliulangdongwuTupian4.jpg','详情描述2','2024-03-22 13:09:32','用户账号2','用户姓名2','电话号码2','是',''),(103,'2024-03-22 05:09:32','标题3','动物品种3','地点3','file/xunzhaoliulangdongwuTupian3.jpg,file/xunzhaoliulangdongwuTupian4.jpg,file/xunzhaoliulangdongwuTupian5.jpg','详情描述3','2024-03-22 13:09:32','用户账号3','用户姓名3','电话号码3','是',''),(104,'2024-03-22 05:09:32','标题4','动物品种4','地点4','file/xunzhaoliulangdongwuTupian4.jpg,file/xunzhaoliulangdongwuTupian5.jpg,file/xunzhaoliulangdongwuTupian6.jpg','详情描述4','2024-03-22 13:09:32','用户账号4','用户姓名4','电话号码4','是',''),(105,'2024-03-22 05:09:32','标题5','动物品种5','地点5','file/xunzhaoliulangdongwuTupian5.jpg,file/xunzhaoliulangdongwuTupian6.jpg,file/xunzhaoliulangdongwuTupian7.jpg','详情描述5','2024-03-22 13:09:32','用户账号5','用户姓名5','电话号码5','是',''),(106,'2024-03-22 05:09:32','标题6','动物品种6','地点6','file/xunzhaoliulangdongwuTupian6.jpg,file/xunzhaoliulangdongwuTupian7.jpg,file/xunzhaoliulangdongwuTupian8.jpg','详情描述6','2024-03-22 13:09:32','用户账号6','用户姓名6','电话号码6','是','');
/*!40000 ALTER TABLE `xunzhaoliulangdongwu` ENABLE KEYS */;
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
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2024-03-22 05:09:32','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111','441622200101010001'),(42,'2024-03-22 05:09:32','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112','441622200202020002'),(43,'2024-03-22 05:09:32','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113','441622200303030003'),(44,'2024-03-22 05:09:32','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114','441622200404040004'),(45,'2024-03-22 05:09:32','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115','441622200505050005'),(46,'2024-03-22 05:09:32','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116','441622200606060006');
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

-- Dump completed on 2024-03-22 15:09:29
