-- MySQL dump 10.14  Distrib 5.5.65-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: doantotnghiep_webthucpham
-- ------------------------------------------------------
-- Server version	5.5.65-MariaDB

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
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_log_log_name_index` (`log_name`),
  KEY `subject` (`subject_id`,`subject_type`),
  KEY `causer` (`causer_id`,`causer_type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'Product','Cập nhật product',1,'App\\Models\\Product',1,'App\\Models\\Admin','{\"old\":{\"id\":1,\"pro_name\":\"CoCa CoLa\",\"pro_slug\":\"coca-cola\",\"pro_price\":\"150000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:35:09\"},\"new\":{\"id\":1,\"pro_name\":\"CoCa CoLa\",\"pro_slug\":\"coca-cola\",\"pro_price\":\"150000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:35:09\"}}','2020-10-08 07:35:10','2020-10-08 07:35:10'),(2,'Product','Cập nhật product',1,'App\\Models\\Product',1,'App\\Models\\Admin','{\"old\":{\"id\":1,\"pro_name\":\"CoCa CoLa\",\"pro_slug\":\"coca-cola\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:35:21\"},\"new\":{\"id\":1,\"pro_name\":\"CoCa CoLa\",\"pro_slug\":\"coca-cola\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:35:21\"}}','2020-10-08 07:35:21','2020-10-08 07:35:21'),(3,'Product','Cập nhật product',2,'App\\Models\\Product',1,'App\\Models\\Admin','{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:37\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:37\"}}','2020-10-08 07:45:37','2020-10-08 07:45:37'),(4,'Product','Cập nhật product',2,'App\\Models\\Product',1,'App\\Models\\Admin','{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:46\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:46\"}}','2020-10-08 07:45:46','2020-10-08 07:45:46'),(5,'Product','Cập nhật product',2,'App\\Models\\Product',1,'App\\Models\\Admin','{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:56\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:56\"}}','2020-10-08 07:45:56','2020-10-08 07:45:56'),(6,'Product','Cập nhật product',2,'App\\Models\\Product',1,'App\\Models\\Admin','{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:46:05\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:46:05\"}}','2020-10-08 07:46:05','2020-10-08 07:46:05'),(7,'Product','Cập nhật product',2,'App\\Models\\Product',1,'App\\Models\\Admin','{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:46:16\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:46:16\"}}','2020-10-08 07:46:16','2020-10-08 07:46:16');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','doantotnghiep@gmail.com','$2y$10$cDKKEu7D77Wc3wkd2Dw.puEAaFCF/DaPztdhPzqdrVz6TuAH0WqmC','0988999999',NULL,NULL,NULL,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT '0',
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_menu_id` int(11) NOT NULL DEFAULT '0',
  `a_view` int(11) NOT NULL DEFAULT '0',
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `a_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_a_slug_index` (`a_slug`),
  KEY `articles_a_hot_index` (`a_hot`),
  KEY `articles_a_active_index` (`a_active`),
  KEY `articles_a_menu_id_index` (`a_menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT '0',
  `atb_category_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  KEY `attributes_atb_category_id_index` (`atb_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT '0',
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  KEY `categories_c_parent_id_index` (`c_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Thực Phẩm Đông Lạnh','thuc-pham-dong-lanh','2020-10-08__thuc-pham-dong-lanh.jpg',NULL,NULL,0,1,0,'2020-10-08 03:41:08','2020-11-12 10:59:32'),(3,'Rau Củ','rau-cu','2020-10-08__rau-cu.jpg',NULL,NULL,0,1,0,'2020-10-08 03:41:29','2020-11-12 10:59:33'),(4,'Đồ Uống','do-uong','2020-10-08__do-uong.jpg',NULL,NULL,0,1,0,'2020-10-08 03:41:41','2020-11-12 10:59:35'),(5,'Bơ Sữa','bo-sua','2020-10-08__bo-sua.jpg',NULL,NULL,0,1,1,'2020-10-08 03:42:00','2020-10-08 08:25:09'),(6,'Thực Phẩm Khô','thuc-pham-kho','2020-10-08__thuc-pham-kho.jpg',NULL,NULL,0,1,1,'2020-10-08 03:42:16','2020-10-08 08:25:34'),(7,'Thực Phẩm Tươi Sống','thuc-pham-tuoi-song','2020-10-08__thuc-pham-tuoi-song.jpg',NULL,NULL,0,1,1,'2020-10-08 03:42:38','2020-10-08 08:25:32'),(8,'Hải Sản','hai-san','2020-10-08__hai-san.jpg',NULL,NULL,0,1,1,'2020-10-08 07:23:29','2020-10-08 08:25:26'),(9,'Bánh Kẹo - Đồ Ăn Vặt','banh-keo-do-an-vat','2020-10-08__banh-keo-do-an-vat.jpg',NULL,NULL,0,1,1,'2020-10-08 07:25:48','2020-10-08 08:25:30');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci,
  `cmt_images` text COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int(11) NOT NULL DEFAULT '0',
  `cmt_product_id` int(11) NOT NULL DEFAULT '0',
  `cmt_admin_id` int(11) NOT NULL DEFAULT '0',
  `cmt_user_id` int(11) NOT NULL DEFAULT '0',
  `cmt_like` int(11) NOT NULL DEFAULT '0',
  `cmt_disk_like` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  KEY `comments_cmt_user_id_index` (`cmt_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_4` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_entered`
--

DROP TABLE IF EXISTS `invoice_entered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_entered` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ie_suppliere` int(11) NOT NULL DEFAULT '0',
  `ie_name_product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT '0',
  `ie_number` int(11) NOT NULL DEFAULT '0',
  `ie_number_sold` int(11) NOT NULL DEFAULT '0',
  `ie_product_id` int(11) NOT NULL DEFAULT '0',
  `ie_money` int(11) NOT NULL DEFAULT '0',
  `ie_status` tinyint(4) NOT NULL DEFAULT '0',
  `ie_meta` text COLLATE utf8mb4_unicode_ci,
  `ie_the_advance` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_entered`
--

LOCK TABLES `invoice_entered` WRITE;
/*!40000 ALTER TABLE `invoice_entered` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_entered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keywords_k_slug_unique` (`k_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT '0',
  `mn_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'123','123',NULL,NULL,NULL,1,1,'2020-10-08 08:06:30','2020-10-08 08:06:49');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2020_02_02_041429_create_categories_table',1),(4,'2020_02_02_155318_create_keywords_table',1),(5,'2020_02_03_145303_create_products_table',1),(6,'2020_02_06_165057_create_attributes_table',1),(7,'2020_02_06_184708_create_products_attributes_table',1),(8,'2020_02_08_005029_add_multiple_column_attribute_in_table_products',1),(9,'2020_02_09_073958_create_transactions_table',1),(10,'2020_02_09_074025_create_orders_table',1),(11,'2020_02_09_133309_create_products_keywords_table',1),(12,'2020_02_09_155308_create_admins_table',1),(13,'2020_02_09_180519_create_menus_table',1),(14,'2020_02_09_180620_create_articles_table',1),(15,'2020_02_12_100000_create_password_resets_table',1),(16,'2020_02_13_154148_alter_column_pro_number_in_table_product',1),(17,'2020_02_13_171036_create_slides_table',1),(18,'2020_02_14_121248_alter_column_a_position_in_table_articles',1),(19,'2020_02_15_053225_create_user_favourite_table',1),(20,'2020_02_15_191555_create_ratings_table',1),(21,'2020_02_17_162605_create_events_table',1),(22,'2020_02_18_152103_create_product_images_table',1),(23,'2020_02_24_222836_create_social_accounts_table',1),(24,'2020_03_08_104810_create_statics_table',1),(25,'2020_03_08_213403_alter_column_pro_age_review_in_table_product',1),(26,'2020_03_12_205704_create_contacts_table',1),(27,'2020_03_17_183239_create_comments_table',1),(28,'2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users',1),(29,'2020_03_23_223714_alter_column_admin_in_table_admin',1),(30,'2020_03_24_201555_alter_column_c_parent_id_in_table_categories',1),(31,'2020_03_25_214331_create_list_table_system_pay_table',1),(32,'2020_03_27_181534_alter_column_type_pay_in_table_transaction',1),(33,'2020_04_14_164245_create_supplieres_table',1),(34,'2020_04_15_003305_alter_column_pro_supplier_id_in_table_products',1),(35,'2020_04_16_234410_after_column_tst_admin_id_in_table_transaction',1),(36,'2020_04_29_104806_alter_column_pro_expiration_date_in_table_products',1),(37,'2020_04_29_112931_create_invoice_entered_in_tables',1),(38,'2020_06_17_192357_create_product_invoice_entered_table',1),(39,'2020_06_21_112319_create_permission_tables',1),(40,'2020_06_21_205241_create_activity_log_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `od_transaction_id` int(11) NOT NULL DEFAULT '0',
  `od_product_id` int(11) NOT NULL DEFAULT '0',
  `od_sale` int(11) NOT NULL DEFAULT '0',
  `od_qty` tinyint(4) NOT NULL DEFAULT '0',
  `od_price` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_histories`
--

DROP TABLE IF EXISTS `pay_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_histories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) unsigned NOT NULL,
  `ph_credit` int(10) unsigned NOT NULL DEFAULT '0',
  `ph_debit` int(10) unsigned NOT NULL DEFAULT '0',
  `ph_balance` int(10) unsigned NOT NULL DEFAULT '0',
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `ph_status` tinyint(4) NOT NULL DEFAULT '0',
  `ph_month` tinyint(3) unsigned DEFAULT NULL,
  `ph_year` smallint(5) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  KEY `pay_histories_ph_user_id_index` (`ph_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_histories`
--

LOCK TABLES `pay_histories` WRITE;
/*!40000 ALTER TABLE `pay_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_ins`
--

DROP TABLE IF EXISTS `pay_ins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_ins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pi_user_id` int(10) unsigned NOT NULL,
  `pi_admin_id` int(10) unsigned NOT NULL,
  `pi_provider` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_money` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_fee` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `pi_status` tinyint(4) NOT NULL DEFAULT '0',
  `pi_month` tinyint(3) unsigned DEFAULT NULL,
  `pi_year` smallint(5) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_ins`
--

LOCK TABLES `pay_ins` WRITE;
/*!40000 ALTER TABLE `pay_ins` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_ins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay_outs`
--

DROP TABLE IF EXISTS `pay_outs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay_outs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `po_user_id` int(10) unsigned NOT NULL,
  `po_transaction_id` int(10) unsigned NOT NULL,
  `po_money` int(10) unsigned NOT NULL DEFAULT '0',
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT '0',
  `po_month` tinyint(3) unsigned DEFAULT NULL,
  `po_year` smallint(5) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_outs_po_user_id_index` (`po_user_id`),
  KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_outs`
--

LOCK TABLES `pay_outs` WRITE;
/*!40000 ALTER TABLE `pay_outs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_outs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_permission` tinyint(4) NOT NULL DEFAULT '0',
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_invoice_entered`
--

DROP TABLE IF EXISTS `product_invoice_entered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_invoice_entered` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pie_product_id` int(11) NOT NULL DEFAULT '0',
  `pie_invoice_entered_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_invoice_entered_pie_product_id_index` (`pie_product_id`),
  KEY `product_invoice_entered_pie_invoice_entered_id_index` (`pie_invoice_entered_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_invoice_entered`
--

LOCK TABLES `product_invoice_entered` WRITE;
/*!40000 ALTER TABLE `product_invoice_entered` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_invoice_entered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT '0',
  `pro_price_entry` int(11) NOT NULL DEFAULT '0' COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT '0',
  `pro_supplier_id` int(11) NOT NULL DEFAULT '0',
  `pro_admin_id` int(11) NOT NULL DEFAULT '0',
  `pro_sale` tinyint(4) NOT NULL DEFAULT '0',
  `pro_expiration_date` tinyint(4) NOT NULL DEFAULT '10',
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT '0',
  `pro_hot` tinyint(4) NOT NULL DEFAULT '0',
  `pro_active` tinyint(4) NOT NULL DEFAULT '1',
  `pro_pay` int(11) NOT NULL DEFAULT '0',
  `pro_number_import` int(11) NOT NULL DEFAULT '0',
  `pro_import_goods` int(11) NOT NULL DEFAULT '0',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `pro_content` text COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int(11) NOT NULL DEFAULT '0',
  `pro_review_star` int(11) NOT NULL DEFAULT '0',
  `pro_age_review` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT '0',
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  KEY `products_pro_hot_index` (`pro_hot`),
  KEY `products_pro_active_index` (`pro_active`),
  KEY `products_pro_supplier_id_index` (`pro_supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'CoCa CoLa','coca-cola',15000,0,4,0,0,0,10,NULL,2,0,1,0,100,0,'coca','asasdsa',0,0,0,'2020-10-08 07:34:39',100,NULL,NULL,0,'2020-10-08 07:47:12'),(2,'pepsi','pepsi',15000,0,4,0,0,15,10,NULL,0,0,1,0,100,0,'ascd','123',0,0,0,'2020-10-08 07:41:43',100,NULL,NULL,0,'2020-10-08 07:47:10'),(3,'Cải Canh','cai-canh',32000,0,3,0,0,0,10,'2020-11-12__cai-canh.png',1,1,1,0,8,0,NULL,'Cải Canh hữu cơ',0,0,0,'2020-11-12 11:19:43',8,NULL,NULL,0,'2020-11-12 11:20:42');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pa_product_id` int(11) NOT NULL DEFAULT '0',
  `pa_attribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attributes`
--

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;
INSERT INTO `products_attributes` VALUES (3,1,4);
/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_keywords`
--

DROP TABLE IF EXISTS `products_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pk_product_id` int(11) NOT NULL DEFAULT '0',
  `pk_keyword_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_keywords`
--

LOCK TABLES `products_keywords` WRITE;
/*!40000 ALTER TABLE `products_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `r_user_id` int(11) NOT NULL DEFAULT '0',
  `r_product_id` int(11) NOT NULL DEFAULT '0',
  `r_number` tinyint(4) NOT NULL DEFAULT '0',
  `r_status` tinyint(4) NOT NULL DEFAULT '0',
  `r_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_slug_unique` (`name_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT '1',
  `sd_active` tinyint(4) NOT NULL DEFAULT '1',
  `sd_sort` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'Trái Cây','http://thucpham.phupt.net/','2020-10-08__traicay-1006.jpg',1,1,2,'2020-10-08 07:51:46','2020-10-08 15:58:50'),(2,'củ quả','http://thucpham.phupt.net/','2020-10-08__kiem-nghiem-rau-cu-qua-2.png',1,1,1,'2020-10-08 07:52:33','2020-10-08 15:58:52');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statics`
--

DROP TABLE IF EXISTS `statics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT '0',
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statics`
--

LOCK TABLES `statics` WRITE;
/*!40000 ALTER TABLE `statics` DISABLE KEYS */;
/*!40000 ALTER TABLE `statics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplieres`
--

DROP TABLE IF EXISTS `supplieres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplieres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplieres`
--

LOCK TABLES `supplieres` WRITE;
/*!40000 ALTER TABLE `supplieres` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplieres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tst_user_id` int(11) NOT NULL DEFAULT '0',
  `tst_admin_id` int(11) NOT NULL DEFAULT '0',
  `tst_total_money` int(11) NOT NULL DEFAULT '0',
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT '1',
  `tst_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_tst_user_id_index` (`tst_user_id`),
  KEY `transactions_tst_admin_id_index` (`tst_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favourite`
--

DROP TABLE IF EXISTS `user_favourite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_favourite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uf_product_id` int(11) NOT NULL DEFAULT '0',
  `uf_user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favourite`
--

LOCK TABLES `user_favourite` WRITE;
/*!40000 ALTER TABLE `user_favourite` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_favourite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `count_comment` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  KEY `users_balance_index` (`balance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 21:48:16
