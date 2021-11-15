CREATE DATABASE  IF NOT EXISTS `sy_rums` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `sy_rums`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 172.31.103.161    Database: sy_rums
-- ------------------------------------------------------
-- Server version	5.6.48

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `rums_application`
--

DROP TABLE IF EXISTS `rums_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_application` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `desc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `create_by` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'c',
  `create_time` bigint(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='application mangement';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_application`
--

LOCK TABLES `rums_application` WRITE;
/*!40000 ALTER TABLE `rums_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rums_dictionary`
--

DROP TABLE IF EXISTS `rums_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_dictionary` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `parent` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL,
  `desc` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `sort` int(5) DEFAULT NULL,
  `value` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `create_by` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'c',
  `create_time` bigint(13) DEFAULT NULL,
  `enable` tinyint(1) unsigned DEFAULT '1' COMMENT '0不可用，1可用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_dictionary`
--

LOCK TABLES `rums_dictionary` WRITE;
/*!40000 ALTER TABLE `rums_dictionary` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rums_menu`
--

DROP TABLE IF EXISTS `rums_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_menu` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `pid` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'parent menu''s id',
  `type` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '菜单类型',
  `title` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '菜单标题',
  `component` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '组件',
  `sort` int(5) DEFAULT NULL COMMENT '排序',
  `icon` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '图标',
  `path` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '链接地址',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `cache` bit(1) DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) DEFAULT b'0' COMMENT '隐藏',
  `permission` varchar(80) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '权限',
  `create_by` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `create_time` bigint(13) DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='menu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_menu`
--

LOCK TABLES `rums_menu` WRITE;
/*!40000 ALTER TABLE `rums_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rums_organizational`
--

DROP TABLE IF EXISTS `rums_organizational`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_organizational` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `pid` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '上级部门',
  `sub_count` int(5) DEFAULT '0' COMMENT '子部门数目',
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL COMMENT '名称',
  `sort` int(5) DEFAULT '999' COMMENT '排序',
  `enabled` bit(1) NOT NULL DEFAULT b'1' COMMENT '状态0 不可用,1正常',
  `create_by` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `create_time` bigint(13) DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='organizational mangement';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_organizational`
--

LOCK TABLES `rums_organizational` WRITE;
/*!40000 ALTER TABLE `rums_organizational` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_organizational` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rums_role`
--

DROP TABLE IF EXISTS `rums_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_role` (
  `id` varchar(36) COLLATE utf8mb4_bin NOT NULL COMMENT 'ID',
  `name` varchar(80) COLLATE utf8mb4_bin NOT NULL COMMENT '名称',
  `level` int(5) DEFAULT NULL COMMENT '角色级别',
  `desc` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '描述',
  `data_scope` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '数据权限',
  `create_by` varchar(36) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `create_time` bigint(13) DEFAULT NULL COMMENT '创建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='role mangement';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_role`
--

LOCK TABLES `rums_role` WRITE;
/*!40000 ALTER TABLE `rums_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rums_role_applications`
--

DROP TABLE IF EXISTS `rums_role_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_role_applications` (
  `role_id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `application_id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`role_id`,`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_role_applications`
--

LOCK TABLES `rums_role_applications` WRITE;
/*!40000 ALTER TABLE `rums_role_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_role_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rums_role_menus`
--

DROP TABLE IF EXISTS `rums_role_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_role_menus` (
  `role_id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `menu_id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Role menus';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_role_menus`
--

LOCK TABLES `rums_role_menus` WRITE;
/*!40000 ALTER TABLE `rums_role_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_role_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rums_role_organizationals`
--

DROP TABLE IF EXISTS `rums_role_organizationals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_role_organizationals` (
  `role_id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `organizational_id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`role_id`,`organizational_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_role_organizationals`
--

LOCK TABLES `rums_role_organizationals` WRITE;
/*!40000 ALTER TABLE `rums_role_organizationals` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_role_organizationals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rums_user`
--

DROP TABLE IF EXISTS `rums_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(40) NOT NULL,
  `pwd` varchar(40) NOT NULL,
  `nick_name` varchar(45) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL COMMENT '性别，0 未知，1男，2女',
  `is_admin` smallint(1) unsigned DEFAULT '0' COMMENT '是否管理员 0否，1是',
  `enable` tinyint(1) unsigned DEFAULT '1' COMMENT '0不可用，1可用',
  `email` varchar(50) DEFAULT NULL COMMENT 'email',
  `create_by` varchar(36) DEFAULT NULL COMMENT 'c',
  `create_time` bigint(13) DEFAULT NULL,
  `avatar` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_user`
--

LOCK TABLES `rums_user` WRITE;
/*!40000 ALTER TABLE `rums_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rums_user_roles`
--

DROP TABLE IF EXISTS `rums_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rums_user_roles` (
  `user_id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  `role_id` varchar(36) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='User roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rums_user_roles`
--

LOCK TABLES `rums_user_roles` WRITE;
/*!40000 ALTER TABLE `rums_user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rums_user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 19:58:06
