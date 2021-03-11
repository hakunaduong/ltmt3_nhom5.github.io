/*
 Navicat Premium Data Transfer

 Source Server         : MampPro
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 127.0.0.1:3306
 Source Schema         : doantotnghiep_webmypham

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 24/09/2020 12:54:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_log
-- ----------------------------
DROP TABLE IF EXISTS `activity_log`;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activity_log
-- ----------------------------
BEGIN;
INSERT INTO `activity_log` VALUES (1, 'Product', 'Cập nhật product', 74, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":74,\"pro_name\":\"SP C\",\"pro_slug\":\"sp-c\",\"pro_price\":\"200000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":10,\"pro_expiration\":\"2020-06-27 00:00:00\",\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"A\",\"pro_content\":\"A\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-06-21 22:08:46\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"10\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-06-21 22:20:58\"},\"new\":{\"id\":74,\"pro_name\":\"SP C\",\"pro_slug\":\"sp-c\",\"pro_price\":\"200000\",\"pro_price_entry\":0,\"pro_category_id\":\"5\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"1\",\"pro_expiration_date\":10,\"pro_expiration\":\"2020-06-27 00:00:00\",\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_description\":\"A\",\"pro_content\":\"A\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-06-21 22:08:46\",\"pro_number\":5,\"pro_import_goods\":0,\"pro_number_import\":\"10\",\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-06-21 22:20:58\"}}', '2020-06-21 22:20:58', '2020-06-21 22:20:58');
COMMIT;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------
BEGIN;
INSERT INTO `admins` VALUES (1, 'Admin', 'doantotnghiep_en@gmail.com', '$2y$10$g08I50TMatd/AAuIgQXR1u14Wch.7oXZjA2jzME7FWVSbjppsBQSu', '0988999999', NULL, 'Tin kinh tế-K60', 'bắc từ liêm hn', 1, 1, NULL, NULL, '2020-06-13 20:58:07');
INSERT INTO `admins` VALUES (2, 'Nhân viên 1', 'xu@gmail.com', '$2y$10$06h926raoQnGID.Ix6XawOGlo4GlqPbrCzBh5sfpWAMaSYuzBP05K', '0981135997', NULL, NULL, NULL, 2, 1, NULL, '2020-06-09 13:43:41', '2020-06-13 15:22:48');
INSERT INTO `admins` VALUES (3, 'Nhân Viên', 'nhanvien@gmail.com', '$2y$10$1sNeZI6dlMX2S05r7rAwvuPcRP1bMxb5JrWc17GbmzhCabRmYxPpO', '0988777222', NULL, NULL, NULL, 2, 1, NULL, '2020-06-13 15:36:27', NULL);
INSERT INTO `admins` VALUES (4, 'Admin Preview', 'phu.preview@gmail.com', '$2y$10$OfdDQcqC9i/C7zbSsWbjnu2CiFI7yX3dDYnvUebwtcOQ3I74o2OLO', '0988111222', NULL, NULL, NULL, 2, 1, NULL, '2020-06-21 18:54:35', '2020-06-22 15:38:45');
COMMIT;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
BEGIN;
INSERT INTO `articles` VALUES (1, '3 famous Dior products were suddenly recalled in Vietnam', '3-famous-dior-products-were-suddenly-recalled-in-vietnam', 1, 1, 4, 0, 'The Drug Administration of Vietnam (the Ministry of Health) has just issued 2 Officials to the Health Services of provinces and cities across the country announcing the suspension of circulation, recall of 3 cosmetic products produced by Dior (France), by', '2020-04-24__anh-1.jpg', '<p>This product was recalled because it contained Propylparaben with content exceeding the permitted limit in accordance with Asean regulations. The other two products are two famous perfumes: Dior Homme Sport very cool spray fresh eau de toilette (fragrance for men, announced receipt number of product announcement on January 3, 2018) and Dior J &#39; Adore L&#39;or Essence de Parfum (women&#39;s perfume, announcing the product proclamation receipt number on June 21, 2017) was withdrawn due to the incorrect ingredients on the label and the incorrect production formula. published records.</p>\r\n\r\n<p>According to the Drug Administration of Vietnam, these decisions are based on the results of post-check at L-Beauty Vietnam. The Department requires this company to recall all of the above cosmetic products, and at the same time send a recall notice to all distribution and use places of the product. The results of recall are sent to the Drug Administration of Vietnam before April 25.</p>', '2020-04-24 10:35:28', 0, 1, '2020-09-11 04:42:23');
INSERT INTO `articles` VALUES (2, 'Top 5 ways to both beautify and prevent epidemic \"Miss Whistles\"', 'top-5-ways-to-both-beautify-and-prevent-epidemic-miss-whistles', 1, 1, 4, 0, 'Bí quyết vừa giúp làm đẹp da lại phòng ngừa dịch bệnh Corona hữu hiệu, cùng nhau tìm hiểu và khám phá trong bài viết ngay sau đây!', '2020-04-25__51.jpg', '<h2><strong>1. Thường xuy&ecirc;n đeo khẩu trang khi ra ngo&agrave;i</strong></h2>\r\n\r\n<p>Khẩu trang từng được xem l&agrave; vật dụng kh&ocirc;ng thể thiếu trong t&uacute;i x&aacute;ch của chị em phụ nữ mỗi khi ra đường. Nhằm che chắn l&agrave;n da tr&aacute;nh khỏi t&aacute;c động xấu của kh&oacute;i bụi, m&ocirc;i trường &ocirc; nhiễm v&agrave; &aacute;nh nắng mặt trời. Tia UV v&agrave; kh&oacute;i bụi c&oacute; thể l&agrave; nguy&ecirc;n d&acirc;n khiến l&agrave;n da l&atilde;o h&oacute;a. Xuất hiện th&acirc;m n&aacute;m, t&agrave;n nhang, lỗ ch&acirc;n l&ocirc;ng bị b&iacute;t tắc, sản sinh mụn,&hellip; G&acirc;y hại nghi&ecirc;m trọng đến sức khỏe của l&agrave;n da v&agrave; cơ thể.</p>\r\n\r\n<p>Hiện nay, trong thời điểm dịch bệnh b&ugrave;ng ph&aacute;t mạnh th&igrave; khẩu trang lại l&agrave; vật bất ly th&acirc;n của mỗi người khi ra đường v&agrave; tiếp x&uacute;c với người kh&aacute;c. Bởi virus Corona c&oacute; khả năng l&acirc;y lan rất nhanh qua đường h&ocirc; hấp. V&agrave; c&oacute; thể g&acirc;y nguy hiểm đến t&iacute;nh mạng. Việc đeo khẩu trang hiện nay kh&ocirc;ng những gi&uacute;p bảo vệ l&agrave;n da mỏng manh tr&aacute;nh khỏi những t&aacute;c hại từ b&ecirc;n ngo&agrave;i. M&agrave; c&ograve;n ph&ograve;ng ngừa dịch bệnh v&ocirc; c&ugrave;ng hữu hiệu.</p>\r\n\r\n<p><a href=\"https://beautygarden.vn/Upload/tinymce/2020/3/30/top-5-cach-vua-lam-dep-da-vua-phong-ngua-dich-benh-co-vyt-hinh-anh-1.jpg\" target=\"_blank\" title=\"Top 5 cách vừa làm đẹp da, vừa phòng ngừa dịch bệnh “Cô Výt” hình ảnh 1\"><img alt=\"top 5 cach vua lam dep da vua phong ngua dich benh co vyt hinh anh 1\" src=\"https://beautygarden.vn/Upload/tinymce/2020/3/30/top-5-cach-vua-lam-dep-da-vua-phong-ngua-dich-benh-co-vyt-hinh-anh-1.jpg\" style=\"height:1080px; width:1080px\" /></a></p>\r\n\r\n<h2><strong>2. Kh&ocirc;ng trực tiếp sờ tay l&ecirc;n mặt</strong></h2>\r\n\r\n<p>Từ trước đến nay, trong việc l&agrave;m đẹp da. Chắc hẳn nhiều chị em phụ nữ đ&atilde; từng nghe n&oacute;i đến nguy&ecirc;n tắc kh&ocirc;ng được sờ tay trực tiếp l&ecirc;n da nếu chưa được vệ sinh đ&uacute;ng c&aacute;ch. B&agrave;n tay mỗi ng&agrave;y đ&atilde; tiếp x&uacute;c với rất nhiều đồ vật. Nếu bạn sở l&ecirc;n da th&igrave; sẽ tạo cơ hội cho vi khuẩn x&acirc;m nhập v&agrave; g&acirc;y hại l&agrave;n da. H&agrave;nh động tưởng chừng v&ocirc; thức n&agrave;y lại khiến qu&aacute; tr&igrave;nh chăm s&oacute;c da của bạn trở n&ecirc;n v&ocirc; &iacute;ch. Đặc biệt, trong thời điểm dịch bệnh Corona b&ugrave;ng ph&aacute;t th&igrave; việc sờ tay l&ecirc;n mặt c&oacute; thể dễ d&agrave;ng l&agrave;m l&acirc;y lan virus truyền bệnh g&acirc;y hại cho bản th&acirc;n v&agrave; những người xung quanh. Tuyệt đối kh&ocirc;ng v&ocirc; thức sờ tay l&ecirc;n da mặt nếu b&agrave;n tay chưa đảm bảo vệ sinh trong suốt cả ng&agrave;y.</p>\r\n\r\n<p><a href=\"https://beautygarden.vn/Upload/tinymce/2020/3/30/top-5-cach-vua-lam-dep-da-vua-phong-ngua-dich-benh-co-vyt-hinh-anh-2.jpg\" target=\"_blank\" title=\"Top 5 cách vừa làm đẹp da, vừa phòng ngừa dịch bệnh “Cô Výt” hình ảnh 2\"><img alt=\"top 5 cach vua lam dep da vua phong ngua dich benh co vyt hinh anh 2\" src=\"https://beautygarden.vn/Upload/tinymce/2020/3/30/top-5-cach-vua-lam-dep-da-vua-phong-ngua-dich-benh-co-vyt-hinh-anh-2.jpg\" style=\"height:1049px; width:1079px\" /></a></p>\r\n\r\n<p><strong>Tham khảo một số sản phẩm chăm s&oacute;c da mặt tại đ&acirc;y:&nbsp;<a href=\"https://bit.ly/2wLIHx5\">https://bit.ly/2wLIHx5</a></strong></p>\r\n\r\n<h2><strong>3. Kh&ocirc;ng b&oacute;c da m&ocirc;i, kh&ocirc;ng dụi mắt</strong></h2>\r\n\r\n<p>H&agrave;nh động b&oacute;c da m&ocirc;i khiến cho l&agrave;n da m&ocirc;i vốn kh&ocirc;, mỏng manh, thiếu ẩm. Dễ bong tr&oacute;c nay lại c&agrave;ng bị tổn thương nghi&ecirc;m trọng hơn. Việc dụi mắt cũng l&agrave; h&agrave;nh động kh&ocirc;ng n&ecirc;n bởi g&acirc;y hại cho v&ugrave;ng da quanh mắt. Khiến xuất hiện quầng th&acirc;m, bọng mắt, rụng mi v&agrave; l&agrave;n da cũng trở n&ecirc;n k&eacute;m sức sống. Trong thời điểm nhạy cảm n&agrave;y, việc b&oacute;c da m&ocirc;i hay dụi mắt cũng l&agrave; h&agrave;nh động tạo cơ hội cho virus g&acirc;y bệnh dễ d&agrave;ng x&acirc;m nhập v&agrave;o cơ thể. Tr&aacute;nh xa những h&agrave;nh động n&agrave;y nhằm l&agrave;m đẹp da v&agrave; bảo vệ sức khỏe bản th&acirc;n.</p>\r\n\r\n<p><strong>Sản phẩm dưỡng da mắt, bạn c&oacute; thể tham khảo:&nbsp;<a href=\"http://bit.ly/2SKMstj\">http://bit.ly/2SKMstj</a></strong></p>\r\n\r\n<h2><strong>4. Rửa tay cẩn thận với nước rửa tay</strong></h2>\r\n\r\n<p>Ngo&agrave;i khẩu trang th&igrave; hiện nay, trong m&ugrave;a dịch bệnh, nước rửa tay đang trở th&agrave;nh m&oacute;n đồ v&ocirc; c&ugrave;ng &ldquo;hot trend&rdquo;, ch&aacute;y h&agrave;ng v&agrave; rất kh&oacute; để t&igrave;m mua. Nước rửa tay kh&ocirc; kh&ocirc;ng những gi&uacute;p l&agrave;m sạch tay ngay tại chỗ, chăm s&oacute;c l&agrave;n da tay mềm mịn m&agrave; c&ograve;n ngăn ngừa vi khuẩn, virus g&acirc;y bệnh hữu hiệu. H&atilde;y sử dụng nước rửa tay trước v&agrave; sau khi d&ugrave;ng bữa, sau khi đi vệ sinh, sau khi từ b&ecirc;n ngo&agrave;i v&agrave;o,&hellip;để đảm bảo nu&ocirc;i dưỡng da tay v&agrave; ph&ograve;ng ngừa dịch bệnh hiệu quả.</p>\r\n\r\n<p><a href=\"https://beautygarden.vn/Upload/images/top-5-cach-vua-lam-dep-da-vua-phong-ngua-dich-benh-co-vyt-hinh-anh-3.png\" target=\"_blank\" title=\"Top 5 cách vừa làm đẹp da, vừa phòng ngừa dịch bệnh “Cô Výt” hình ảnh 3\"><img alt=\"top 5 cach vua lam dep da vua phong ngua dich benh co vyt hinh anh 3\" src=\"https://beautygarden.vn/Upload/images/top-5-cach-vua-lam-dep-da-vua-phong-ngua-dich-benh-co-vyt-hinh-anh-3.png\" /></a></p>\r\n\r\n<p><strong>Đặt h&agrave;ng nước rửa tay ngay bạn nh&eacute;:&nbsp;<a href=\"https://bit.ly/2UO2SCm\">https://bit.ly/2UO2SCm</a></strong></p>\r\n\r\n<h2><strong>5. Vệ sinh m&agrave;n h&igrave;nh điện thoại thường xuy&ecirc;n</strong></h2>\r\n\r\n<p style=\"text-align:justify\">Điện thoại đường như l&agrave; vật bất ly th&acirc;n đối với chị em phụ nữ hiện đại ng&agrave;y nay. Bởi n&oacute; mang đến rất nhiều t&iacute;nh năng ưu việt. Tuy nhi&ecirc;n, m&agrave;n h&igrave;nh điện thoại cũng ẩn chứa v&ocirc; v&agrave;ng bụi bẩn, vi khuẩn m&agrave; mắt thường kh&ocirc;ng thể nhận biết. H&atilde;y chủ động vệ sinh m&agrave;n h&igrave;nh điện thoại thường xuy&ecirc;n nhằm ngăn ngừa vi khuẩn, virus tr&ecirc;n m&agrave;n h&igrave;nh c&oacute; thể tiếp x&uacute;c trực tiếp với da tay v&agrave; x&acirc;m nhập g&acirc;y hại cho cơ thể. Đ&acirc;y kh&ocirc;ng những l&agrave; th&oacute;i quen chăm s&oacute;c da hiệu quả m&agrave; c&ograve;n gi&uacute;p ph&ograve;ng ngừa dịch bệnh tối đa.</p>', '2020-04-25 22:22:03', 0, 1, '2020-09-11 04:44:03');
INSERT INTO `articles` VALUES (3, 'Mineral Cosmetics- Be A Man', 'mineral-cosmetics-be-a-man', 1, 1, 4, 0, 'Lựa chọn mỹ phẩm phù hợp', '2020-04-25__52.jpg', '<p><strong>1. Th&iacute;ch hợp cho mọi loại da, đặc biệt l&agrave; da dầu:</strong></p>\r\n\r\n<p>Sản phẩm mỹ phẩm kho&aacute;ng uy t&iacute;n, được sản xuất từ 100%&nbsp; kho&aacute;ng chất ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n, kh&ocirc;ng chứa chất bảo quản, chứa dầu, chất tạo m&agrave;u hay m&ugrave;i hương nước hoa&hellip;đẩm bảo an to&agrave;n hết mức cho da, kể cả l&agrave; da nhạy cảm. Mỹ phẩm kho&aacute;ng trở th&agrave;nh một sản phẩm đ&aacute;nh dấu sự vượt trội về sự tiến bộ của ng&agrave;nh c&ocirc;ng nghiệp mỹ phẩm. Mỹ phẩm kho&aacute;ng chủ yếu l&agrave; ở dạng bột mịn, n&ecirc;n da đ&acirc;u v&agrave; dễ bị mụn l&agrave; loại da th&iacute;ch hợp nhất để sử dụng ch&uacute;ng. Với c&aacute;c ưu điểm tuyệt vời tr&ecirc;n, mỹ phẩm kho&aacute;ng tạo một lớp trang điểm ho&agrave;n hảo cho da dầu: lớp trang điểm mịn tự nhi&ecirc;n tr&ecirc;n da v&agrave; kh&ocirc;ng thấm v&agrave;o lỗ ch&acirc;n l&ocirc;ng, kh&ocirc;ng cho c&aacute;c t&aacute;c nh&acirc;n g&acirc;y mụn c&oacute; cơ hội ph&aacute;t triển. Đối với trang điểm mỹ phẩm kho&aacute;ng cho da kh&ocirc;, bạn c&oacute; thể sử dụng một loại xịt phun sương tạo độ ẩm để sử dụng sau khi&nbsp; ho&agrave;n th&agrave;nh việc trang điểm với mỹ phẩm kho&aacute;ng.</p>\r\n\r\n<p><img alt=\"Lựa chọn những loại mỹ phẩm có thể phù hợp cho mọi loại da\" src=\"https://beautygarden.vn/Files/Uploads/news/lua-chon-my-pham-phu-hop-voi-moi-loai-da(1).jpg\" title=\"Lựa chọn những loại mỹ phẩm có thể phù hợp cho mọi loại da\" /></p>\r\n\r\n<h4>Lựa chọn những loại mỹ phẩm c&oacute; thể ph&ugrave; hợp cho mọi loại da</h4>\r\n\r\n<p><strong>2. Đề ph&ograve;ng m</strong><strong>ột số kho&aacute;ng chất c&oacute; hại cho da:</strong></p>\r\n\r\n<p>Hiện nay sự lan tr&agrave;n của mỹ phẩm tr&ecirc;n thị trường l&agrave; kh&oacute; kiểm so&aacute;t, người ti&ecirc;u d&ugrave;ng cũng l&ecirc;n thật th&ocirc;ng minh trong lựa chọn. để tr&aacute;nh mua phải những loại mỹ phẩm kh&ocirc;ng tốt. Mỹ phẩm kho&aacute;ng cũng vậy c&oacute; một v&agrave;i c&ocirc;ng ty sử dụng th&ecirc;m những kho&aacute;ng chất c&oacute; hại cho da như: Bismuth oxychloride v&agrave;o sane phẩm của m&igrave;nh. H&atilde;y t&igrave;m hiểu v&agrave; để &yacute; tới th&agrave;nh phần của mỹ phẩm kho&aacute;ng để tr&aacute;nh cho l&agrave;n da của m&igrave;nh bị x&acirc;m hại.</p>\r\n\r\n<p><img alt=\"Xem kỹ những thành phần của loại mỹ phẩm tránh gây tổn hại cho da\" src=\"https://beautygarden.vn/Files/Uploads/news/xem-ky-nhung-thanh-phan-cua-my-pham(1).jpg\" title=\"Xem kỹ những thành phần của loại mỹ phẩm tránh gây tổn hại cho da\" /></p>\r\n\r\n<h4>Xem kỹ những th&agrave;nh phần của loại mỹ phẩm tr&aacute;nh g&acirc;y tổn hại cho da</h4>\r\n\r\n<p><strong>3. Khả năng chống nắng:</strong></p>\r\n\r\n<p>Mỹ phẩm kho&aacute;ng c&ograve;n c&oacute; một đặc t&iacute;nh cực k&igrave; tuyệt với đối với l&agrave;n da l&agrave; khả năng chống nắng cho da. Khả năng đ&oacute; l&agrave; nhờ v&agrave;o những chất titanium dioxide v&agrave; &ocirc; x&iacute;t kẽm c&oacute; trong đa số c&aacute;c sản phẩm mỹ phẩm kho&aacute;ng c&oacute; khả năng chống lại c&aacute;c tia cực t&iacute;m, tia UV c&oacute; hại cho da.</p>\r\n\r\n<p><strong>4. Khả năng h&ograve;a trộn với nhau:</strong></p>\r\n\r\n<p>Bởi kh&ocirc;ng chứa những h&oacute;a chất độc hại giống như mỹ phẩm th&ocirc;ng thường n&ecirc;n mỹ phẩm kho&aacute;ng ho&agrave;n to&agrave;n c&oacute; thể tự pha trộn lại với nhau m&agrave; kh&ocirc;ng sợ bất cứ phản ứng h&oacute;a học n&agrave;o xảy ra. Thật tuyệt vời phải kh&ocirc;ng? Đ&acirc;y l&agrave; một th&ocirc;ng tin rất vui mừng cho tất cả những ai y&ecirc;u th&iacute;ch sự s&aacute;ng tạo v&agrave; l&agrave;m đẹp trong trang điểm. Bạn c&oacute; thể h&ograve;a trộn mỹ phẩm theo m&agrave;u sắc ri&ecirc;ng, theo &yacute; th&iacute;ch để tạo ra sự độc đ&aacute;o ri&ecirc;ng của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"Phối trộn các loại mỹ phẩm tạo ra sự độc đáo riêng\" src=\"https://beautygarden.vn/Files/Uploads/news/Phoi-tron-my-pham-tao-ra-su-doc-dao-rieng(1).jpg\" title=\"Phối trộn các loại mỹ phẩm tạo ra sự độc đáo riêng\" /></p>\r\n\r\n<h4>Phối trộn c&aacute;c loại mỹ phẩm tạo ra sự độc đ&aacute;o ri&ecirc;ng</h4>\r\n\r\n<p><strong>5. Sử dụng trang điểm mỹ phẩm kho&aacute;ng đ&uacute;ng c&aacute;ch:</strong></p>\r\n\r\n<p>Mỹ phẩm kho&aacute;ng chủ yếu l&agrave; dạng bột, c&oacute; nhiều bạn sẽ bối rối trong những lần đầu sử dụng thoa n&oacute; l&ecirc;n da của m&igrave;nh. Chỉ cần c&oacute; một chiếc cọ l&ocirc;ng mềm mại, bạn những cọ v&agrave;o lọ, lắc nhẹ hoặc dốc lọ mỹ phẩm cho phấn phủ đều l&ecirc;n cọ l&agrave; được.&nbsp; D&ugrave;ng cọ đ&atilde; thấm bột kho&aacute;ng nhẹ nh&agrave;ng đưa l&ecirc;n mặt v&agrave; di chuyển nhẹ theo hướng của l&ocirc;ng tơ tr&ecirc;n mặt để tạo n&ecirc;n một lớp trang điểm tự nhi&ecirc;n nhất cho da.</p>\r\n\r\n<p><strong>6. Đa t&iacute;nh năng trong sử dụng:</strong></p>\r\n\r\n<p style=\"text-align:justify\">T&iacute;nh đa năng trong sử dụng l&agrave; v&ocirc; tận. ch&uacute;ng c&oacute; thể được sử dụng với rất nhiều c&ocirc;ng dụng kh&aacute;c nhau m&agrave; kh&ocirc;ng dừng lại ở một hoặc hai c&ocirc;ng dụng như mỹ phẩm th&ocirc;ng thường. Bởi mỹ phẩm kho&aacute;ng ở dạng bột, bạn c&oacute; thể tạo ra bất cứ sản phẩm trang điểm n&agrave;o, c&ocirc;ng dụng n&agrave;o m&agrave; bạn muốn. Chỉ cần khi đ&atilde; th&ocirc;ng thạo kiến thức sử dụng mỹ phẩm kho&aacute;ng, bạn sẽ dễ d&agrave;ng trở th&agrave;nh một người s&agrave;nh sỏi v&agrave; s&agrave;nh điệu trong trang điểm đ&oacute;. M&aacute;ch nhỏ cho bạn, mỹ phẩm kho&aacute;ng c&oacute; thể trộn với nước để tạo th&agrave;nh những sản phẩm kem dưỡng da, hay kem che khuyết điểm cực hiệu quả.</p>\r\n\r\n<p>Ch&uacute;c bạn lu&ocirc;n khỏe mạnh v&agrave; xinh đẹp!</p>', '2020-04-25 22:23:23', 0, 0, '2020-09-11 04:44:20');
INSERT INTO `articles` VALUES (4, '5 Bước Trang Điểm Cho Da Dầu Hiệu Quả', '5-buoc-trang-diem-cho-da-dau-hieu-qua', 0, 1, 3, 0, 'Trang điểm cho da dầu luôn trở nên khó khăn. Nếu không chú ý và trang điểm không đúng cách, bạn sẽ làm hại làn da của bạn.', '2020-04-25__53.jpg', '<p style=\"text-align:justify\"><strong>Bước 1: Loại bỏ chất dầu</strong></p>\r\n\r\n<p style=\"text-align:justify\">&ndash; Tr&aacute;nh sử dụng tuỳ &yacute; c&aacute;c loại sữa rửa mặt th&ocirc;ng thường. Bạn h&atilde;y d&ugrave;ng loại x&agrave; b&ocirc;ng d&agrave;nh ri&ecirc;ng cho da dầu để rửa mặt. Rửa thật kỹ v&ugrave;ng chữ T để l&agrave;m giảm bớt lượng dầu tr&ecirc;n da, gi&uacute;p da kh&ocirc; tho&aacute;ng v&agrave; sạch hơn.</p>\r\n\r\n<p style=\"text-align:justify\">&ndash; D&ugrave;ng b&ocirc;ng g&ograve;n thấm dung dịch se lỗ ch&acirc;n l&ocirc;ng thoa đều l&ecirc;n to&agrave;n bộ bề mặt của khu&ocirc;n mặt.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Sử dụng sữa rửa mặt loại bỏ dầu\" src=\"https://beautygarden.vn/Files/Uploads/news/su-dung-sua-rua-mat-loai-bo-dau.jpg\" title=\"Sử dụng sữa rửa mặt loại bỏ dầu\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Sử dụng sữa rửa mặt loại bỏ dầu</h4>\r\n\r\n<p style=\"text-align:justify\">Sữa rửa mặt kiềm dầu v&agrave; trị mụn tốt nhất bạn n&ecirc;n sử dụng để hạn chế dầu tr&ecirc;n da mặt hằng ng&agrave;y. Chi tiết sản phẩm tại đ&acirc;y</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Bước 2: Trang điểm phấn nền:</strong></p>\r\n\r\n<p style=\"text-align:justify\">&ndash; Chọn lựa phấn nền cho da nhờn lu&ocirc;n l&agrave; sự kh&oacute; khăn nhất trong trang điểm. Nhiều chuy&ecirc;n gia trang điểm khuy&ecirc;n rằng khi chọn phấn nền, bạn n&ecirc;n chọn loại phấn nền dạng nước. V&igrave; phấn nền dạng nước sẽ kh&ocirc;ng g&acirc;y ra mụn trứng c&aacute; cho da nhờn.</p>\r\n\r\n<p style=\"text-align:justify\">&ndash; Bạn cũng c&oacute; thể sử dụng kem che khuyết điểm để che đi lớp mụn trứng c&aacute;, lưu &yacute; khi sử dụng n&ecirc;n thoa đều v&agrave; nhẹ nh&agrave;ng tr&ecirc;n bề mặt da nh&eacute;.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Bước 3: Chọn phấn phủ dạng bột:</strong></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Sử dụng phấn phủ dạng bột\" src=\"https://beautygarden.vn/Files/Uploads/news/Su-dung-phan-phu-dang-bot.jpg\" title=\"Sử dụng phấn phủ dạng bột\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Sử dụng phấn phủ dạng bột</h4>\r\n\r\n<p style=\"text-align:justify\">&ndash; Phấn phủ dạng bột c&oacute; t&aacute;c dụng h&uacute;t dầu tốt v&agrave; gi&uacute;p da mịn. Bạn n&ecirc;n chọn cho m&igrave;nh loại phấn phủ c&oacute; tinh chất kho&aacute;ng dạng bột. N&oacute; gi&uacute;p da bạn s&aacute;ng mịn hơn v&agrave; kiểm so&aacute;t được lượng dầu tr&ecirc;n da bạn.</p>\r\n\r\n<p style=\"text-align:justify\">&ndash; Ngo&agrave;i ra, sử dụng phấn phủ dạng bột c&oacute; chứa tinh kho&aacute;ng sẽ kh&ocirc;ng g&acirc;y ra hiện tượng tr&ocirc;i phấn, gi&uacute;p bạn giữ lớp trang điểm l&acirc;u hơn.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Bước 4: ch&acirc;n m&agrave;y v&agrave; mắt</strong></p>\r\n\r\n<p style=\"text-align:justify\">&ndash; D&ugrave;ng ch&igrave; tạo d&aacute;ng ch&acirc;n m&agrave;y rồi d&ugrave;ng bột dặm l&ecirc;n để tạo sự mềm mại. Đặc biệt với da dầu, bạn đừng ngại phải t&ocirc; ch&acirc;n m&agrave;y đậm v&agrave; sắc sảo một ch&uacute;t nh&eacute;.</p>\r\n\r\n<p style=\"text-align:justify\">&ndash; Da dầu rất th&iacute;ch hợp với những gam m&agrave;u trung t&iacute;nh, ch&uacute;ng l&agrave;m cho gương mặt kh&ocirc;ng c&oacute; cảm gi&aacute;c n&oacute;ng bức khi bề mặt da tiết chất dầu. V&igrave; vậy, n&ecirc;n d&ugrave;ng m&agrave;u mắt n&acirc;u đồng v&agrave; khi t&ocirc; nhấn ở ph&iacute;a đu&ocirc;i mắt nhằm gi&uacute;p mắt s&acirc;u hơn, giữ vẻ đẹp tự nhi&ecirc;n cho mắt.</p>\r\n\r\n<p style=\"text-align:justify\">&ndash; Kẻ m&iacute; mắt thật mảnh v&agrave; chuốt mi bằng mascara thật cong, đ&ocirc;i mắt của bạn sẽ trở n&ecirc;n thật quyến rũ nhưng kh&ocirc;ng qu&aacute; sắc sảo.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Bước 5: Phấn m&aacute; hồng</strong></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Sử dụng phấn má hồng màu da\" src=\"https://beautygarden.vn/Files/Uploads/news/su-dung-phan-ma-hong-mau-da.png\" title=\"Sử dụng phấn má hồng màu da\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Sử dụng phấn m&aacute; hồng m&agrave;u da</h4>\r\n\r\n<p style=\"text-align:justify\">Phấn m&aacute; hồng si&ecirc;u mịn v&agrave; tiện dụng, chi tiết sản phẩm tại đ&acirc;y</p>\r\n\r\n<p style=\"text-align:justify\">&ndash; Lời khuy&ecirc;n d&agrave;nh cho da dầu l&agrave; kh&ocirc;ng n&ecirc;n sử dụng phấn m&aacute; với những m&agrave;u qu&aacute; rực rợ hay qu&aacute; tối như m&agrave;u hồng cẩm chướng, m&agrave;u đất sẫm hay m&agrave;u n&acirc;u đỏ. Chọn phấn m&agrave;u hồng da v&agrave; t&aacute;n từ đỉnh g&ograve; m&aacute; t&aacute;n đều ra ph&iacute;a ngo&agrave;i.</p>\r\n\r\n<p style=\"text-align:justify\">&ndash; Son m&agrave;u hồng đất nhạt sẽ gi&uacute;p đ&ocirc;i m&ocirc;i trở n&ecirc;n sắc n&eacute;t hơn rất nhiều. Thoa th&ecirc;m ch&uacute;t son b&oacute;ng v&agrave;o giữa m&ocirc;i để tạo sự gợi cảm cho nụ cười.</p>\r\n\r\n<p style=\"text-align:justify\">&ndash; Cuối c&ugrave;ng, bạn phải nhớ l&uacute;c n&agrave;o cũng mang theo b&ecirc;n m&igrave;nh một tập giấy thấm dầu để ph&ograve;ng những l&uacute;c trời qu&aacute; n&oacute;ng nực đấy.</p>', '2020-04-25 22:24:23', 0, 0, '2020-04-25 22:29:42');
INSERT INTO `articles` VALUES (5, '5 Thỏi Son \"Dáng Bút\" Thấy Là Ghiền', '5-thoi-son-dang-but-thay-la-ghien', 0, 1, 3, 0, 'Nếu nói chọn một thỏi son ngoài những tiêu chí về màu sắc và chất son thì còn có hình dáng thiết kế bên ngoài cũng góp phần định hướng cho bạn, ngoài thỏi son thiết kế truyền thống những mẫu son có thiế kế \"dáng bút\" cũng gây không ít thiện cảm cho chị em.', '2020-04-25__54.jpg', '<p style=\"text-align:justify\"><strong>1. Rimmel London Provocalips ( Gi&aacute; b&aacute;n: 150.000 đồng)</strong></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Rimmel London Provocalips là dòng son đẹp giá rẻ của hãng Rimmel\" src=\"https://beautygarden.vn/Files/Uploads/Rimmel-London-Provocalips-la-dong-son-dep-gia-re-cua-hang-Rimmel.jpg\" title=\"Rimmel London Provocalips là dòng son đẹp giá rẻ của hãng Rimmel\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Rimmel London Provocalips l&agrave; d&ograve;ng son đẹp gi&aacute; rẻ của h&atilde;ng Rimmel</h4>\r\n\r\n<p style=\"text-align:justify\">Đ&acirc;y l&agrave; d&ograve;ng son đẹp gi&aacute; rẻ của h&atilde;ng Rimmel, được tung ra thị trường v&agrave;o cuối năm 2014 v&agrave; thực sự g&acirc;y được ch&uacute; &yacute;. Loại son n&agrave;y gồm c&oacute; 2 đầu, một b&ecirc;n l&agrave; son kem mịn, b&ecirc;n c&ograve;n lại l&agrave; son b&oacute;ng kh&ocirc;ng m&agrave;u. Nhờ thiết kế độc đ&aacute;o n&agrave;y, m&agrave; bạn c&oacute; thể biến tấu với nhiều c&aacute;ch đ&aacute;nh son kh&aacute;c nhau.</p>\r\n\r\n<p style=\"text-align:justify\">Chất son của Rimmel London Provocalips nhận được nhiều review khen ngợi của c&aacute;c t&iacute;n đồ l&agrave;m đẹp, nhờ khả năng b&aacute;m l&acirc;u, ăn l&ograve;ng m&ocirc;i m&agrave; kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&ocirc;. Đặc biệt loại son gi&aacute; rẻ n&agrave;y kh&ocirc;ng bị tr&ocirc;i hay lem khi ăn uống.</p>\r\n\r\n<p style=\"text-align:justify\">Với chất lượng được đ&aacute;nh gi&aacute; cao nhưng gi&aacute; b&aacute;n của Rimmel London Provocalips lại ở mức thấp. V&igrave; thế m&agrave; chẳng c&oacute; l&yacute; do g&igrave; ngăn cản bạn sở hữu một thỏi son rất &ldquo;đ&aacute;ng đồng tiền b&aacute;t gạo&rdquo; n&agrave;y cả.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>2. Dermacol Long Lasting Lip Colour ( Gi&aacute; b&aacute;n: 240.000 đồng)</strong></p>\r\n\r\n<p style=\"text-align:justify\">Thỏi son 2 đầu đ&igrave;nh đ&aacute;m Son l&igrave; Dermacol Long Lasting 16h Lip Colour được giới l&agrave;m đẹp săn l&ugrave;ng trong thời gian gần đ&acirc;y. Đ&acirc;y l&agrave; d&ograve;ng son cao cấp nhất của Dermacol v&agrave; một điều thật th&uacute; vị 16h Lip Color đến 50 quốc gia khắp c&aacute;c Ch&acirc;u lục đều giữ được vẻ cuốn h&uacute;t của m&igrave;nh.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Dermacol Long Lasting Lip Colour siêu bền màu và siêu lì\" src=\"https://beautygarden.vn/Files/Uploads/news/Dermacol-Long-Lasting-Lip-Colour-sieu-ben-mau-va-sieu-li.jpg\" title=\"Dermacol Long Lasting Lip Colour siêu bền màu và siêu lì\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Dermacol Long Lasting Lip Colour si&ecirc;u bền m&agrave;u v&agrave; si&ecirc;u l&igrave;</h4>\r\n\r\n<p style=\"text-align:justify\"><br />\r\nVới nhiều ưu điểm như: Son b&oacute;ng kh&ocirc;ng kh&ocirc; m&ocirc;i, v&ocirc; c&ugrave;ng mềm mịn m&ocirc;i l&agrave; điều cam kết. S&oacute;n b&oacute;ng với hai đầu h&agrave;m lượng dưỡng cao, kh&ocirc;ng ch&igrave; theo chuẩn nhập khẩu Ch&acirc;u &Acirc;u, đặc biệt, si&ecirc;u bền m&agrave;u v&agrave; si&ecirc;u l&igrave; . Mệnh danh ăn kh&ocirc;ng tr&ocirc;i, mưa kh&ocirc;ng thấm nước, giữ m&agrave;u suốt 24h.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>3. Son Color Blur By Lip Studio Cream Matte Pencil &amp; Smudger (Gi&aacute; b&aacute;n: 140.000 đồng)</strong></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Son Color Blur By Lip Studio Cream Matte Pencil &amp; Smudger là dạng son lì dạng kem\" src=\"https://beautygarden.vn/Files/Uploads/Son-Color-Blur-By-Lip-Studio-Cream-Matte-Pencil-&amp;-Smudger-la-dang-son-li-dang-kem.jpg\" title=\"Son Color Blur By Lip Studio Cream Matte Pencil &amp; Smudger là dạng son lì dạng kem\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Son Color Blur By Lip Studio Cream Matte Pencil &amp; Smudger l&agrave; dạng son l&igrave; dạng kem</h4>\r\n\r\n<p style=\"text-align:justify\">L&agrave; dạng son l&igrave; dạng kem c&ugrave;ng đầu t&aacute;n son cho hiệu ứng l&ograve;ng m&ocirc;i xuất sắc. Đầu son mượt, mịn v&agrave; dễ chịu với m&ocirc;i. Trong khi đ&oacute;, đầu t&aacute;n son d&ugrave;ng thoa đều son từ l&ograve;ng m&ocirc;i hoặc cả m&ocirc;i để bạn dễ d&agrave;ng thay đổi từ vẻ đẹp dịu d&agrave;ng sang vẻ đẹp c&aacute; t&iacute;nh.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>4. L&#39;Oreal Colour Riche La Lacque Lip Pen ( Gi&aacute; b&aacute;n: 130.000 đồng)</strong></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; loại son được c&aacute;c chuy&ecirc;n gia makeup sử dụng trong c&aacute;c show diễn thời trang. Chất son l&igrave; nhưng lại rất mướt v&agrave; mềm m&ocirc;i, dạng b&uacute;t vặn dễ theo t&aacute;c.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"L\'Oreal Colour Riche La Lacque Lip Pen giúp căng mịn, không bị khô và nhăn môi\" src=\"https://beautygarden.vn/Files/Uploads/news/L\'Oreal-Colour-Riche-La-Lacque-Lip-Pen-giup-cang-min-khong-bi-kho-va-nhan-moi.jpg\" title=\"L\'Oreal Colour Riche La Lacque Lip Pen giúp căng mịn, không bị khô và nhăn môi\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">L&#39;Oreal Colour Riche La Lacque Lip Pen gi&uacute;p căng mịn, kh&ocirc;ng bị kh&ocirc; v&agrave; nhăn m&ocirc;i</h4>\r\n\r\n<p style=\"text-align:justify\">Hợp chất dưỡng ẩm gi&uacute;p h&igrave;nh th&agrave;nh lớp bảo vệ m&ocirc;i, cải thiện m&agrave;u m&ocirc;i, từ đ&oacute; đ&ocirc;i m&ocirc;i của bạn sẽ lu&ocirc;n căng mịn, kh&ocirc;ng bị kh&ocirc; v&agrave; nhăn m&ocirc;i, duy tr&igrave; cho bạn l&agrave;n m&ocirc;i hồng h&agrave;o, tươi trẻ. Son c&oacute; nhiều m&agrave;u sắc kh&aacute;c nhau v&agrave; được nhiều minh tinh nổi tiếng sử dụng. Với Color Riche Le Lacque Lip Pen, đ&ocirc;i m&ocirc;i của bạn sẽ lu&ocirc;n được nu&ocirc;i dưỡng mềm mại, bền m&agrave;u v&agrave; mượt m&agrave; đầy x&uacute;c cảm.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>5. Son Colourpop Lippie Stix ( Gi&aacute; b&aacute;n: 140.000 đồng)</strong></p>\r\n\r\n<p style=\"text-align:justify\">Mặc d&ugrave; được xếp v&agrave;o mỹ phẩm b&igrave;nh d&acirc;n nhưng bao b&igrave; rất s&aacute;ng sủa v&agrave; đ&aacute;ng y&ecirc;u. Son c&oacute; vỏ hộp giấy, k&egrave;m theo giấy th&ocirc;ng tin th&agrave;nh phần son. Thiết kế c&acirc;y son như c&acirc;y b&uacute;t, hệt như t&ecirc;n vậy đ&oacute;, gọn nhẹ, vỏ nhựa b&oacute;ng m&agrave;u trắng, kh&ocirc;ng b&aacute;m tay, dưới đ&iacute;t son l&agrave; m&agrave;u son v&agrave; t&ecirc;n m&agrave;u, chất son.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Son Colourpop Lippie Stix có bao bì rất sáng sủa và đáng yêu\" src=\"https://beautygarden.vn/Files/Uploads/Son-Colourpop-Lippie-Stix-co-bao-bi-rat-sang-sua-va-dang-yeu.jpg\" title=\"Son Colourpop Lippie Stix có bao bì rất sáng sủa và đáng yêu\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Son Colourpop Lippie Stix c&oacute; bao b&igrave; rất s&aacute;ng sủa v&agrave; đ&aacute;ng y&ecirc;u</h4>\r\n\r\n<p style=\"text-align:justify\">Nắp son rất chắc, đầu son vắt ch&eacute;o tiện đẻ đ&aacute;nh viền m&ocirc;i v&ocirc; c&ugrave;ng, tuy nhi&ecirc;n v&igrave; đầu son kh&aacute; nhỏ n&ecirc;n đ&aacute;nh sẽ kh&aacute; mất thời gian. Ruột son mảnh, c&aacute;c bạn lưu &yacute; kh&ocirc;ng văn son l&ecirc;n qu&aacute; cao rồi đẩy xuống nha v&igrave; son sẽ bị b&agrave;o m&ograve;n khi vặn xuống lại.</p>', '2020-04-25 22:25:14', 0, 1, '2020-04-25 22:30:14');
INSERT INTO `articles` VALUES (6, 'Bạn Đã Biết Sử Dụng Nước Hoa Hồng Đúng Cách Chưa?', 'ban-da-biet-su-dung-nuoc-hoa-hong-dung-cach-chua', 0, 1, 3, 0, 'Nước hoa hồng hay toner là một sản phẩm làm đẹp có nguồn gốc thiên nhiên được sử dụng rộng rãi ở các chị em phụ nữ trong vấn đề chăm sóc da mặt, thế nhưng vẫn còn nhiều người băn khoăn về cách chọn cũng như sử dụng toner đúng cách.', '2020-04-25__55.jpg', '<p style=\"text-align:justify\"><strong>C&ocirc;ng dụng tuyệt vời của nước hoa hồng</strong></p>\r\n\r\n<p style=\"text-align:justify\">Trước hết, trong nước hoa hồng c&oacute; chứa một lượng lớn vitamin A v&agrave; C c&ugrave;ng c&aacute;c chất chống l&atilde;o h&oacute;a gi&uacute;p ngăn ngừa, giảm thiểu c&aacute;c nếp nhăn, chống l&atilde;o h&oacute;a, giảm th&acirc;m quầng v&ugrave;ng mắt v&agrave; gi&uacute;p da lu&ocirc;n tươi trẻ mỗi ng&agrave;y đấy bạn nh&eacute;! Nước hoa hồng nếu được sử dụng đều đặn mỗi ng&agrave;y sẽ l&agrave; tiền đề gi&uacute;p cho l&agrave;n da của bạn th&ecirc;m phần khỏe mạnh.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Nước hoa hồng là tiền đề giúp da khỏe mạnh\" src=\"https://beautygarden.vn/Files/Uploads/news/nuoc-hoa-hong-la-tien-de-giup-da-khoe-manh.jpg\" title=\"Nước hoa hồng là tiền đề giúp da khỏe mạnh\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Nước hoa hồng l&agrave; tiền đề gi&uacute;p da khỏe mạnh</h4>\r\n\r\n<p style=\"text-align:justify\">Nước hoa hồng cũng c&oacute; thể sử dụng cho m&aacute;i t&oacute;c v&agrave; cơ thể trong vai tr&ograve; &rdquo;essence&rdquo; với c&aacute;c th&agrave;nh phần dinh dưỡng tinh khiết gi&uacute;p nu&ocirc;i dưỡng l&agrave;n da, gi&uacute;p da săn chắc v&agrave; tr&igrave; ho&atilde;n tiến tr&igrave;nh l&atilde;o h&oacute;a. Nếu sử dụng nước hoa hồng thường xuy&ecirc;n, bạn sẽ sở hữu một l&agrave;n da mềm mại v&agrave; khỏe mạnh. Ngo&agrave;i ra, n&oacute; cũng l&agrave; liều thuốc tốt nhất chữa trị tận gốc mụn trứng c&aacute;, mụn bọc v&agrave; k&iacute;ch ứng da với t&iacute;nh chất kh&aacute;ng khuẩn. Nước hoa hồng cũng được sử dụng cho t&oacute;c để điều trị g&agrave;u v&agrave; nhiễm tr&ugrave;ng da đầu c&ugrave;ng những loại bệnh li&ecirc;n quan kh&aacute;c&hellip;</p>\r\n\r\n<p style=\"text-align:justify\">B&ecirc;n cạnh đ&oacute;, c&aacute;c tinh chất trong nước hoa hồng c&ograve;n c&oacute; t&aacute;c dụng s&aacute;t tr&ugrave;ng v&agrave; kh&aacute;ng khuẩn rất tốt cho da Nhờ vậy, m&agrave; da bạn lu&ocirc;n được bảo vệ trước những vi khuẩn c&oacute; hại. H&agrave;ng ng&agrave;y, bạn h&atilde;y chăm s&oacute;c da bằng nước hoa hồng sẽ gi&uacute;p da giảm mụn, giảm sưng tấy, l&agrave;m dịu nhẹ cho da, dưỡng ẩm , l&agrave;m m&aacute;t. Đồng thời thu nhỏ v&agrave; l&agrave;m se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng, gi&uacute;p da trở n&ecirc;n l&aacute;ng mịn v&agrave; mềm mại hơn.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>L&agrave;m sao để chọn nước hoa hồng ph&ugrave; hợp?</strong></p>\r\n\r\n<p style=\"text-align:justify\">Được biết th&igrave; đa số c&aacute;c loại nước hoa hồng đều chứa cồn. Cồn c&oacute; trong nước hoa hồng gi&uacute;p tăng t&iacute;nh s&aacute;t khuẩn, kh&aacute;ng vi&ecirc;m, giảm sưng v&agrave; l&agrave;m sạch da hiệu quả. Tuy nhi&ecirc;n, t&aacute;c dụng phụ của n&oacute; l&agrave; rất dễ g&acirc;y k&iacute;ch ứng da, đối với da nhạy cảm n&oacute; rất dễ l&agrave;m da bị tổn thương như: l&agrave;m mỏng da, giảm độ ẩm v&agrave; kh&ocirc; da.</p>\r\n\r\n<p style=\"text-align:justify\">Để chăm s&oacute;c l&agrave;n da của m&igrave;nh tốt nhất, bạn cần chọn nước hoa hồng c&oacute; nồng độ cồn ph&ugrave; hợp với da nh&eacute;. Đối với da kh&ocirc;, bạn n&ecirc;n chọn mua những sản phẩm c&oacute; nồng độ cồn thấp hoặc kh&ocirc;ng cồn để tr&aacute;nh l&agrave;m cho da bị kh&ocirc;.</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Chọn nước hoa hồng phù hợp với từng loại da\" src=\"https://beautygarden.vn/Files/Uploads/news/chon-nuoc-hoa-hong-phu-hop-voi-tung-loai-da.jpg\" title=\"Chọn nước hoa hồng phù hợp với từng loại da\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Chọn nước hoa hồng ph&ugrave; hợp với từng loại da</h4>\r\n\r\n<p style=\"text-align:justify\"><strong>C&aacute;ch sử dụng nước hoa hồng ra sao?</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Đối với tẩy trang</strong></p>\r\n\r\n<p style=\"text-align:justify\">Trước khi rửa mặt, bạn n&ecirc;n tẩy sạch lớp trang điểm tr&ecirc;n da bằng nước hoa hồng nh&eacute;. C&aacute;ch l&agrave;m v&ocirc; c&ugrave;ng đơn giản th&ocirc;i nha, bạn h&atilde;y d&ugrave;ng b&ocirc;ng g&ograve;n thấm nước hoa hồng v&agrave; tẩy sạch v&ugrave;ng mắt trước, sau đ&oacute; tẩy sạch c&aacute;c v&ugrave;ng da c&ograve;n lại.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Đối với dưỡng da</strong></p>\r\n\r\n<p style=\"text-align:justify\">Trước khi d&ugrave;ng nước hoa hồng cho dưỡng da, bạn n&ecirc;n đọc kỹ th&agrave;nh phần để ph&aacute;t huy hết t&aacute;c dụng của n&oacute; nha! Trước hết bạn cần rửa sạch v&agrave; lau kh&ocirc; da mặt. D&ugrave;ng b&ocirc;ng g&ograve;n thấm nước hoa hồng, thấm đều tr&ecirc;n da. Đối với những v&ugrave;ng da nhiều dầu v&agrave; mụn bạn n&ecirc;n thấm nhiều hơn một ch&uacute;t. Massage da mặt. D&ugrave;ng tay vỗ nhẹ v&agrave; đều l&ecirc;n da mặt. Ch&uacute; &yacute;, bạn n&ecirc;n sử dụng lực vừa phải kh&ocirc;ng n&ecirc;n qu&aacute; mạnh tay dễ l&agrave;m tổn thương c&aacute;c v&ugrave;ng da nhạy cảm. Massage đều đặn theo v&ograve;ng xoắn ốc theo hướng kim đồng hồ. Bạn cũng c&oacute; thể d&ugrave;ng 2 tay thoa mạnh để tạo hơi n&oacute;ng rồi &aacute;p 2 tay l&ecirc;n da mặt, động t&aacute;c n&agrave;y gi&uacute;p da hấp thụ tốt c&aacute;c tinh chất của nước hoa hồng v&agrave; giữ ẩm cho da.<br />\r\nLưu &yacute;: Đối với nước hoa hồng bạn cần đậy nắp k&iacute;n sau mỗi lần sử dụng v&agrave; kh&ocirc;ng d&ugrave;ng qu&aacute; 8 th&aacute;ng sau khi mở nh&eacute;!. Bạn cũng c&oacute; thể bỏ v&agrave;o ngăn m&aacute;t tủ lạnh 5 ph&uacute;t trước khi sử dụng để ph&aacute;t huy hết t&aacute;c dụng.</p>\r\n\r\n<p style=\"text-align:justify\">Hiện nay c&oacute; rất nhiều loại nước hoa hồng nhưng chủ yếu c&oacute; 2 loại l&agrave; c&oacute; cồn v&agrave; kh&ocirc;ng cồn, t&ugrave;y thuộc v&agrave;o từng loại da v&agrave; mong muốn sử dụng c&aacute;c bạn c&oacute; thể lựa chọn cho m&igrave;nh một sản phẩm ph&ugrave; hợp. Bạn c&oacute; thể tham khảo th&ocirc;ng tin về một số loại nước hoa hồng m&agrave; Beauty Garden đang cung cấp sau đ&acirc;y:</p>\r\n\r\n<p style=\"text-align:justify\">D&ograve;ng toner kh&ocirc;ng cồn c&oacute; một đại diện rất được ưa chuộng l&agrave;&nbsp;<strong>Nước hoa hồng kh&ocirc;ng cồn Thayers.</strong><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Nước hoa hồng không cồn Thayers\" src=\"https://beautygarden.vn/Files/Uploads/news/nuoc-hoa-hong-khong-con-thayers.png\" title=\"Nước hoa hồng không cồn Thayers\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Nước hoa hồng kh&ocirc;ng cồn Thayers</h4>\r\n\r\n<p style=\"text-align:justify\">Th&ocirc;ng tin chi tiết sản phẩm xin mời bấm v&ocirc; đ&acirc;y!</p>\r\n\r\n<p style=\"text-align:justify\">Một đại diện nước hoa hồng c&oacute; cồn được tin d&ugrave;ng l&agrave;&nbsp;<strong>Nước hoa hồng kiềm dầu, trị mụn đầu đen v&agrave; se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng Jeju Volcanic Lava Pore Toner</strong></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Nước hoa hồng Jeju Volcanic Lava Pore Toner\" src=\"https://beautygarden.vn/Files/Uploads/news/nuoc-hoa-hong-Jeju-Volcanic-Lava-Pore-Toner.png\" title=\"Nước hoa hồng Jeju Volcanic Lava Pore Toner\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Nước hoa hồng Jeju Volcanic Lava Pore Toner</h4>', '2020-04-25 22:26:00', 1, 0, '2020-04-25 22:32:06');
INSERT INTO `articles` VALUES (7, '\"Hô Biến\" Mắt 1 Mí Thành 2 Mí Cực Đơn Giản', 'ho-bien-mat-1-mi-thanh-2-mi-cuc-don-gian', 0, 1, 2, 0, 'Những thủ nhuật nhỏ khi trang điểm có thể giúp đôi mắt của bạn to tròn hơn.', '2020-04-25__56.jpg', '<p style=\"text-align:justify\"><strong>Kẻ viền mắt</strong></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Hãy tạo đường viền mí mắt bằng chì màu sẫm, kẻ đậm dần về phía đuôi mắt\" src=\"https://beautygarden.vn/Files/Uploads/news/hay-tao-duong-vien-mi-mat-bang-chi-mau-sam-ke-dam-dan-ve-phia-duoi-mat.jpg\" title=\"Hãy tạo đường viền mí mắt bằng chì màu sẫm, kẻ đậm dần về phía đuôi mắt\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">H&atilde;y tạo đường viền m&iacute; mắt bằng ch&igrave; m&agrave;u sẫm, kẻ đậm dần về ph&iacute;a đu&ocirc;i mắt</h4>\r\n\r\n<p style=\"text-align:justify\">H&atilde;y tạo đường viền m&iacute; mắt bằng ch&igrave; m&agrave;u sẫm, kẻ đậm dần về ph&iacute;a đu&ocirc;i mắt. Sử dụng m&agrave;u ch&igrave; đen v&agrave; n&acirc;u sẫm kết hợp l&agrave; phổ biến d&ugrave;ng chung cho c&aacute;c m&agrave;u da.<br />\r\nNếu đi tham dự tiệc, bạn h&atilde;y kẻ ch&igrave; đen n&acirc;u v&agrave;o đường viền trong của m&iacute; mắt.Khi ấy dưới &aacute;nh đ&egrave;n đ&ocirc;i mắt sẽ tr&ocirc;ng to v&agrave; sắc n&eacute;t hơn.<br />\r\nNếu bạn c&oacute; khu&ocirc;n mặt ngắn, h&atilde;y k&eacute;o d&agrave;i đường kẻ viền m&iacute; mắt. Th&ocirc;ng thường muốn nổi bật v&agrave; c&aacute; t&iacute;nh, bạn c&oacute; thể kết hợp kẻ đường m&iacute; mắt m&agrave;u đậm đi với t&ocirc;ng m&ocirc;i m&agrave;u đỏ cổ điển. Khu&ocirc;n mặt bạn sẽ rất thu h&uacute;t trước người kh&aacute;c.<br />\r\nNgo&agrave;i ra đối với người đẹp mắt l&aacute; răm th&igrave; kẻ viền mắt m&egrave;o l&agrave; rất th&iacute;ch hợp.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Viền mắt dưới bằng ch&igrave; trắng</strong></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Tạo đường viền dưới bằng chì trắng\" src=\"https://beautygarden.vn/Files/Uploads/news/tao-duong-vien-mi-duoi-bang-chi-trang.jpg\" title=\"Tạo đường viền dưới bằng chì trắng\" /></p>\r\n\r\n<p style=\"text-align:justify\">Tạo đường viền dưới bằng ch&igrave; trắng</p>\r\n\r\n<p style=\"text-align:justify\">Ch&igrave; đen kh&ocirc;ng được c&aacute;c chuy&ecirc;n gia trang điểm khuy&ecirc;n d&ugrave;ng nếu bạn sở hữu đ&ocirc;i mắt nhỏ. Tương tự như việc kh&ocirc;ng n&ecirc;n sử dụng m&agrave;u mắt qu&aacute; đậm cho phần bầu mắt, chỉ kẻ mắt đen cũng kh&ocirc;ng được khuy&ecirc;n d&ugrave;ng. Thay v&agrave;o đ&oacute;, bạn h&atilde;y sử dụng chỉ mắt m&agrave;u trắng. Bạn sẽ thực sự bất ngờ với quyền năng của ch&igrave; kẻ trắng khi nh&igrave;n thấy đ&ocirc;i mắt long lanh như b&uacute;p b&ecirc; của m&igrave;nh sau khi sử dụng.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Chuốt mascara</strong></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"Sau khi kẻ mắt, bạn dùng mascara chuốt thêm vào bộ lông mi\" src=\"https://beautygarden.vn/Files/Uploads/news/sau-khi-ke-mat-ban-dung-mascara-chuot-them-vao-bo-long-mi.jpg\" title=\"Sau khi kẻ mắt, bạn dùng mascara chuốt thêm vào bộ lông mi\" /></p>\r\n\r\n<h4 style=\"text-align:justify\">Sau khi kẻ mắt, bạn d&ugrave;ng mascara chuốt th&ecirc;m v&agrave;o bộ l&ocirc;ng mi</h4>\r\n\r\n<p style=\"text-align:justify\">Sau khi kẻ mắt, bạn d&ugrave;ng mascara chuốt th&ecirc;m v&agrave;o bộ l&ocirc;ng mi. Nếu mi của bạn qu&aacute; mỏng, khi trang điểm theo kiểu n&agrave;y bạn c&oacute; thể gắn th&ecirc;m l&ocirc;ng mi giả để to&agrave;n bộ đ&ocirc;i mặt tạo điểm nhấn tại đ&ocirc;i mắt nh&eacute;. Nếu đ&atilde; nhấn tại mắt th&igrave; khi trang điểm m&ocirc;i chỉ nhẹ nh&agrave;ng th&ocirc;i.</p>', '2020-04-25 22:27:03', 1, 0, NULL);
INSERT INTO `articles` VALUES (8, 'How to choose a good sunscreen that is safe for each skin type', 'how-to-choose-a-good-sunscreen-that-is-safe-for-each-skin-type', 1, 1, 4, 0, 'What is sunscreen? Sunscreen is a cosmetic in the form of a milk, spray or lotion that can absorb or reflect ultraviolet rays to', '2020-04-25__15805425160532.jpg', '<p>Content is updating</p>', '2020-04-25 22:37:01', 1, 0, '2020-09-11 04:43:25');
INSERT INTO `articles` VALUES (9, 'zxzxz', 'zxzxz', 0, 1, 2, 0, 'zxzXzXzXz', NULL, '<p>cuong&nbsp;</p>', '2020-06-21 22:16:14', 1, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for attributes
-- ----------------------------
DROP TABLE IF EXISTS `attributes`;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attributes
-- ----------------------------
BEGIN;
INSERT INTO `attributes` VALUES (1, 'Prada', 'prada', 2, 1, '2020-04-25 18:04:25', '2020-07-30 10:49:42');
INSERT INTO `attributes` VALUES (2, 'Chanel', 'chanel', 1, 1, '2020-04-25 18:04:31', '2020-06-19 11:15:45');
INSERT INTO `attributes` VALUES (3, '300ml', '300ml', 2, 1, '2020-04-25 18:04:39', NULL);
INSERT INTO `attributes` VALUES (4, '500ml', '500ml', 2, 1, '2020-04-25 18:04:44', NULL);
INSERT INTO `attributes` VALUES (5, 'Suitable for all skin types', 'suitable-for-all-skin-types', 3, 1, '2020-05-02 22:14:31', '2020-09-11 04:35:22');
INSERT INTO `attributes` VALUES (7, 'Donna Karan', 'donna-karan', 1, 1, '2020-05-02 22:41:07', '2020-06-19 11:17:42');
COMMIT;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
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

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` VALUES (1, 'Men\'s Perfume', 'mens-perfume', '2020-06-08__charme-gio-80ml-1574246023.jpg', NULL, NULL, 0, 1, 0, '2020-04-25 18:03:42', '2020-09-11 04:35:46');
INSERT INTO `categories` VALUES (7, 'Perfume', 'perfume', NULL, NULL, NULL, 0, 0, 1, '2020-06-29 08:30:06', '2020-09-11 04:36:04');
INSERT INTO `categories` VALUES (8, 'Women\'s perfumes', 'womens-perfumes', NULL, NULL, NULL, 7, 0, 1, '2020-06-29 08:30:28', '2020-09-11 04:36:21');
INSERT INTO `categories` VALUES (9, 'Children\'s perfume', 'childrens-perfume', NULL, NULL, NULL, 0, 0, 1, '2020-06-30 17:16:38', '2020-09-11 04:36:37');
COMMIT;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int(11) NOT NULL DEFAULT '0',
  `cmt_images` text COLLATE utf8mb4_unicode_ci,
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
BEGIN;
INSERT INTO `comments` VALUES (1, NULL, NULL, 'abc', 0, NULL, 52, 0, 1, 0, 0, '2020-04-28 04:06:02', NULL);
INSERT INTO `comments` VALUES (2, NULL, NULL, 'sp rất tốt', 0, NULL, 3, 0, 3, 0, 0, '2020-05-01 20:57:04', NULL);
INSERT INTO `comments` VALUES (3, NULL, NULL, 'sài rất thích', 0, NULL, 50, 0, 4, 0, 0, '2020-06-04 22:18:48', NULL);
INSERT INTO `comments` VALUES (4, NULL, NULL, 'wwwwwwwwwwwwwwwwww', 0, NULL, 47, 0, 7, 0, 0, '2020-06-07 18:03:14', NULL);
INSERT INTO `comments` VALUES (5, NULL, NULL, 'wwwwwwwwwwwwwwwwwwwwwww', 0, NULL, 47, 0, 7, 0, 0, '2020-06-07 18:03:17', NULL);
INSERT INTO `comments` VALUES (6, NULL, NULL, 'wwwwwwwwwwwwwwwwww', 0, NULL, 47, 0, 7, 0, 0, '2020-06-07 18:03:19', NULL);
INSERT INTO `comments` VALUES (7, NULL, NULL, 'Hay quá', 0, NULL, 47, 0, 7, 0, 0, '2020-06-07 18:03:24', NULL);
INSERT INTO `comments` VALUES (8, NULL, NULL, '@DevNguyen: qqqqqqqqqq', 7, NULL, 47, 0, 9, 0, 0, '2020-06-08 20:46:47', NULL);
INSERT INTO `comments` VALUES (9, NULL, NULL, 'hay quá', 0, NULL, 50, 0, 2, 0, 0, '2020-06-08 23:58:30', NULL);
INSERT INTO `comments` VALUES (10, NULL, NULL, 'Sản phẩm tuyệt vời', 0, NULL, 50, 0, 2, 0, 0, '2020-06-08 23:58:44', NULL);
INSERT INTO `comments` VALUES (11, NULL, NULL, '@Trần Văn Vàng: ww', 7, NULL, 47, 0, 9, 0, 0, '2020-06-09 00:26:00', NULL);
INSERT INTO `comments` VALUES (12, NULL, NULL, '@Trần Văn Vàng: sssssssssss', 7, NULL, 47, 0, 9, 0, 0, '2020-06-09 00:26:06', NULL);
INSERT INTO `comments` VALUES (13, NULL, NULL, 'wwwwwwwwww', 0, NULL, 47, 0, 11, 0, 0, '2020-06-09 22:34:42', NULL);
INSERT INTO `comments` VALUES (14, NULL, NULL, 'Sản phẩm tốt', 0, NULL, 37, 0, 11, 0, 0, '2020-06-10 00:28:25', NULL);
INSERT INTO `comments` VALUES (15, NULL, NULL, 'Sản phẩm đẹp', 0, NULL, 37, 0, 11, 0, 0, '2020-06-10 00:28:32', NULL);
INSERT INTO `comments` VALUES (16, NULL, NULL, '@Admin: aaaaaaaaaaa', 15, NULL, 37, 0, 11, 0, 0, '2020-06-10 00:28:42', NULL);
INSERT INTO `comments` VALUES (17, NULL, NULL, '@Admin: aaaaaaaaaaaaaaaaa', 15, NULL, 37, 0, 11, 0, 0, '2020-06-10 00:28:46', NULL);
INSERT INTO `comments` VALUES (18, NULL, NULL, 'aaaaaaaaaaaaaaaaaaaa', 0, NULL, 37, 0, 11, 0, 0, '2020-06-10 00:29:05', NULL);
INSERT INTO `comments` VALUES (19, NULL, NULL, '@TrungPhuNa: aaaaaaaaaaaaaaaaaaa', 10, NULL, 50, 0, 13, 0, 0, '2020-06-11 14:17:09', NULL);
INSERT INTO `comments` VALUES (20, NULL, NULL, 'vvvvvvvvvvvvvvvvvvvvv', 0, NULL, 50, 0, 13, 0, 0, '2020-06-11 14:21:32', NULL);
INSERT INTO `comments` VALUES (21, NULL, NULL, '@TrungPhuNa: ddddddddddddddddddd', 10, NULL, 50, 0, 13, 0, 0, '2020-06-11 14:21:37', NULL);
INSERT INTO `comments` VALUES (22, NULL, NULL, 'tym tym', 0, NULL, 53, 0, 3, 0, 0, '2020-06-12 17:50:04', NULL);
INSERT INTO `comments` VALUES (23, NULL, NULL, 'â', 0, NULL, 50, 0, 13, 0, 0, '2020-06-15 23:46:28', NULL);
INSERT INTO `comments` VALUES (24, NULL, NULL, 'âaaaaaaaaaaaaaaaaaaaaaaaaa', 0, NULL, 50, 0, 13, 0, 0, '2020-06-15 23:46:31', NULL);
INSERT INTO `comments` VALUES (25, NULL, NULL, 'âaaaaaaaaaaaaaaaaaaaaaaaaa', 0, NULL, 50, 0, 13, 0, 0, '2020-06-15 23:46:32', NULL);
INSERT INTO `comments` VALUES (26, NULL, NULL, 'âaaaaaaaaaaaaaaaaaaaaaaaaa', 0, NULL, 50, 0, 13, 0, 0, '2020-06-15 23:46:32', NULL);
INSERT INTO `comments` VALUES (27, NULL, NULL, 'âaaaaaaaaaaaaaaaaaaaaaaaaa', 0, NULL, 50, 0, 13, 0, 0, '2020-06-15 23:46:32', NULL);
INSERT INTO `comments` VALUES (28, NULL, NULL, 'âaaaaaaaaaaaaaaaaaaaaaaaaa', 0, NULL, 50, 0, 13, 0, 0, '2020-06-15 23:46:33', NULL);
INSERT INTO `comments` VALUES (29, NULL, NULL, 'âaaaaaaaaaaaaaaaaaaaaaaaaa', 0, NULL, 50, 0, 13, 0, 0, '2020-06-15 23:46:33', NULL);
INSERT INTO `comments` VALUES (30, NULL, NULL, 'âaaaaaaaaaaaaaaaaaaaaaaaaa', 0, NULL, 50, 0, 13, 0, 0, '2020-06-15 23:46:33', NULL);
INSERT INTO `comments` VALUES (31, NULL, NULL, 'âaaaaaaaaaaaaaaaaaaaaaaaaa', 0, NULL, 50, 0, 13, 0, 0, '2020-06-15 23:46:33', NULL);
INSERT INTO `comments` VALUES (32, NULL, NULL, 'alo', 0, NULL, 37, 0, 19, 0, 0, '2020-06-19 10:14:34', NULL);
INSERT INTO `comments` VALUES (33, NULL, NULL, 'sagagg', 0, '[]', 54, 0, 15, 0, 0, '2020-07-01 13:36:48', NULL);
INSERT INTO `comments` VALUES (34, NULL, NULL, '@Lưu Tiến: âfa', 33, '[]', 54, 0, 15, 0, 0, '2020-07-01 13:36:53', NULL);
INSERT INTO `comments` VALUES (35, NULL, NULL, '@Lưu Tiến: fFf', 33, '[]', 54, 0, 15, 0, 0, '2020-07-01 13:36:58', NULL);
INSERT INTO `comments` VALUES (36, NULL, NULL, '@Lưu Tiến: ẢAR', 33, '[]', 54, 0, 15, 0, 0, '2020-07-01 13:37:06', NULL);
INSERT INTO `comments` VALUES (37, NULL, NULL, 'dasdasd', 0, '[]', 37, 0, 21, 0, 0, '2020-07-01 23:36:29', NULL);
INSERT INTO `comments` VALUES (38, NULL, NULL, 'sdasdasd', 0, '[]', 37, 0, 21, 0, 0, '2020-07-01 23:36:31', NULL);
INSERT INTO `comments` VALUES (39, NULL, NULL, 'asdasdasd', 0, '[]', 37, 0, 21, 0, 0, '2020-07-01 23:36:33', NULL);
INSERT INTO `comments` VALUES (40, NULL, NULL, 'asdasd', 0, '[]', 37, 0, 21, 0, 0, '2020-07-01 23:36:34', NULL);
INSERT INTO `comments` VALUES (41, NULL, NULL, 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', 0, '[]', 50, 0, 29, 0, 0, '2020-09-11 10:37:37', NULL);
INSERT INTO `comments` VALUES (42, NULL, NULL, 'tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', 0, '[]', 50, 0, 29, 0, 0, '2020-09-11 10:40:32', NULL);
COMMIT;

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
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

-- ----------------------------
-- Records of contacts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for episode
-- ----------------------------
DROP TABLE IF EXISTS `episode`;
CREATE TABLE `episode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) NOT NULL DEFAULT '0',
  `server` varchar(100) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `video_id` (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of episode
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of events
-- ----------------------------
BEGIN;
INSERT INTO `events` VALUES (1, 'Sự kiện ra mắt nước hoa CHARME', '2020-06-08__event-nuoc-hoa-charme.jpg', 'https://theperfumes.vn/blog/uu-dai-su-kien-1/post/su-kien-ra-mat-nuoc-hoa-nam-versace-eros-flame-13', 0, 1, 0, 0, '2020-06-08 21:59:36', '2020-06-08 21:59:36');
INSERT INTO `events` VALUES (2, 'Event 1', '2020-06-08__event1.jpg', 'https://www.facebook.com/TrungPhuNA', 1, 0, 0, 0, '2020-06-08 23:45:19', '2020-06-08 23:45:19');
INSERT INTO `events` VALUES (3, 'Event2', '2020-06-08__event2.jpg', 'https://www.facebook.com/TrungPhuNA', 0, 0, 1, 0, '2020-06-08 23:46:58', '2020-06-08 23:46:58');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for invoice_entered
-- ----------------------------
DROP TABLE IF EXISTS `invoice_entered`;
CREATE TABLE `invoice_entered` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ie_suppliere` int(11) NOT NULL DEFAULT '0',
  `ie_name_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT '0',
  `ie_category` int(11) NOT NULL DEFAULT '0',
  `ie_product_id` int(11) NOT NULL DEFAULT '0',
  `ie_number` int(11) NOT NULL DEFAULT '0',
  `ie_number_sold` int(11) NOT NULL DEFAULT '0',
  `ie_money` int(11) NOT NULL DEFAULT '0',
  `ie_meta` text COLLATE utf8mb4_unicode_ci,
  `ie_status` tinyint(4) NOT NULL DEFAULT '0',
  `ie_the_advance` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of invoice_entered
-- ----------------------------
BEGIN;
INSERT INTO `invoice_entered` VALUES (1, 1, NULL, 120000000, 1, 0, 200, 0, 0, NULL, 0, 6000000, '2020-06-09 17:25:23', '2020-06-09 17:25:23');
INSERT INTO `invoice_entered` VALUES (2, 1, NULL, 50000000, 5, 0, 29, 0, 0, NULL, 0, 50000000, '2020-06-12 17:33:59', NULL);
INSERT INTO `invoice_entered` VALUES (3, 2, NULL, 20000, 5, 0, 5, 0, 0, NULL, 0, 20000, '2020-06-14 10:55:30', '2020-06-14 10:55:30');
INSERT INTO `invoice_entered` VALUES (5, 2, 'nước hoa 1', 40000000, 5, 0, 10, 3, 4000000, NULL, 0, 4000000, '2020-06-14 22:41:05', '2020-06-15 21:43:34');
INSERT INTO `invoice_entered` VALUES (6, 1, 'nước hoa xx', 2500000, 5, 0, 5, 0, 500000, NULL, 0, 250000, '2020-06-15 21:34:37', NULL);
INSERT INTO `invoice_entered` VALUES (7, 1, 'Nước hoa X', 930000000, 1, 0, 30, 0, 31000000, NULL, 0, 0, '2020-06-15 21:46:17', NULL);
INSERT INTO `invoice_entered` VALUES (8, 1, 'Mỹ phẩm', 130000000, 1, 0, 5, 2, 26000000, NULL, 0, 0, '2020-06-15 22:26:16', '2020-06-15 22:29:35');
INSERT INTO `invoice_entered` VALUES (9, 1, 'Nước hoa phái nữ', 7200000, 1, 0, 6, 10, 1200000, NULL, 0, 0, '2020-06-15 22:45:38', '2020-06-15 22:50:24');
INSERT INTO `invoice_entered` VALUES (10, 1, 'Demo 1', 20000000, 1, 0, 10, 2, 2000000, NULL, 0, 200, '2020-06-15 22:55:11', '2020-06-15 22:56:12');
INSERT INTO `invoice_entered` VALUES (14, 1, 'Nước hoa A', 50000000, 1, 0, 10, 0, 5000000, NULL, 0, 0, '2020-06-16 16:06:44', NULL);
INSERT INTO `invoice_entered` VALUES (15, 2, 'sản phẩm test', 40000000, 5, 0, 20, 0, 2000000, NULL, 0, 2000000, '2020-06-17 17:40:27', NULL);
INSERT INTO `invoice_entered` VALUES (16, 1, NULL, 25000000, 0, 71, 5, 0, 5000000, NULL, 0, 500000, '2020-06-19 17:48:24', NULL);
INSERT INTO `invoice_entered` VALUES (17, 1, NULL, 250000, 0, 55, 5, 8, 50000, NULL, 0, 0, '2020-06-19 17:50:06', '2020-07-30 10:49:09');
INSERT INTO `invoice_entered` VALUES (18, 1, NULL, 100000, 0, 72, 5, 0, 20000, NULL, 0, 0, '2020-06-19 17:54:02', NULL);
INSERT INTO `invoice_entered` VALUES (19, 1, NULL, 400000, 0, 72, 20, 0, 20000, NULL, 0, 1200000, '2020-06-19 18:17:13', NULL);
INSERT INTO `invoice_entered` VALUES (20, 1, NULL, 400000, 0, 72, 20, 0, 20000, NULL, 0, 1200000, '2020-06-19 18:17:20', NULL);
INSERT INTO `invoice_entered` VALUES (21, 1, NULL, 400000, 0, 72, 20, 0, 20000, NULL, 0, 1200000, '2020-06-19 18:18:12', NULL);
INSERT INTO `invoice_entered` VALUES (22, 1, NULL, 200, 0, 74, 10, 2, 20, '[{\"price\":\"10000\",\"time\":\"2020-06-21T16:34:08.925584Z\"}]', 0, 10000, '2020-06-21 22:11:07', '2020-06-21 23:34:08');
INSERT INTO `invoice_entered` VALUES (23, 1, NULL, 840000, 0, 76, 6, 0, 140000, '[{\"price\":\"840000\",\"time\":\"2020-06-22T09:17:41.159377Z\"}]', 0, 840000, '2020-06-22 16:17:41', NULL);
INSERT INTO `invoice_entered` VALUES (24, 1, NULL, 1300000, 0, 77, 9, 0, 150000, '[{\"price\":\"1050000\",\"time\":\"2020-06-22T09:19:54.161205Z\"},{\"price\":\"260000\",\"time\":\"2020-06-22T09:21:49.364431Z\"}]', 0, 1050000, '2020-06-22 16:19:54', '2020-06-22 16:21:49');
INSERT INTO `invoice_entered` VALUES (25, 2, NULL, 900000, 0, 78, 5, 2, 150000, '[{\"price\":\"600000\",\"time\":\"2020-06-22T10:05:05.168396Z\"}]', 0, 600000, '2020-06-22 17:05:05', '2020-08-20 15:26:07');
INSERT INTO `invoice_entered` VALUES (26, 3, NULL, 90000, 0, 79, 10, 0, 9000, '[{\"price\":\"90000\",\"time\":\"2020-06-22T10:16:27.494723Z\"},{\"price\":\"99000\",\"time\":\"2020-06-22T10:22:12.000037Z\"},{\"price\":\"90000\",\"time\":\"2020-06-22T10:22:32.780376Z\"}]', 0, 90000, '2020-06-22 17:16:27', '2020-06-22 17:22:32');
INSERT INTO `invoice_entered` VALUES (27, 1, NULL, 10000, 0, 80, 10, 0, 1000, '[{\"price\":\"10000\",\"time\":\"2020-06-22T10:25:38.440228Z\"},{\"price\":\"12000\",\"time\":\"2020-06-22T10:55:38.342004Z\"}]', 0, 12000, '2020-06-22 17:25:38', '2020-06-22 17:55:38');
INSERT INTO `invoice_entered` VALUES (28, 1, NULL, 100000, 0, 81, 5, 2, 20000, '[{\"price\":\"50000\",\"time\":\"2020-06-22T15:00:47.731751Z\"},{\"price\":\"150000\",\"time\":\"2020-06-23T08:25:17.754416Z\"}]', 0, 150000, '2020-06-22 22:00:47', '2020-06-23 15:25:17');
INSERT INTO `invoice_entered` VALUES (29, 1, NULL, 24000, 0, 82, 2, 0, 12000, '[{\"price\":\"6000\",\"time\":\"2020-06-24T14:19:39.306911Z\"},{\"price\":\"6000\",\"time\":\"2020-06-24T14:20:43.003545Z\"}]', 0, 6000, '2020-06-24 21:19:39', '2020-06-24 21:20:43');
INSERT INTO `invoice_entered` VALUES (30, 2, NULL, 120000, 0, 84, 1, 0, 120000, '[{\"price\":\"20000\",\"time\":\"2020-06-25T14:58:59.503306Z\"},{\"price\":\"20000\",\"time\":\"2020-07-01T12:55:22.667532Z\"},{\"price\":\"20000\",\"time\":\"2020-07-01T12:56:00.739921Z\"},{\"price\":\"20000\",\"time\":\"2020-07-01T12:58:07.034531Z\"},{\"price\":\"20000\",\"time\":\"2020-07-01T13:01:02.575023Z\"},{\"price\":\"20000\",\"time\":\"2020-07-01T13:01:05.506404Z\"},{\"price\":\"20000\",\"time\":\"2020-07-01T13:01:09.165771Z\"},{\"price\":\"20000\",\"time\":\"2020-07-01T13:01:11.019501Z\"},{\"price\":\"20000\",\"time\":\"2020-07-01T13:01:12.847876Z\"},{\"price\":\"50000\",\"time\":\"2020-07-01T13:05:47.453936Z\"},{\"price\":\"500000\",\"time\":\"2020-07-01T13:05:55.667064Z\"}]', 0, 500000, '2020-06-25 21:58:59', '2020-07-01 20:05:55');
COMMIT;

-- ----------------------------
-- Table structure for keywords
-- ----------------------------
DROP TABLE IF EXISTS `keywords`;
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

-- ----------------------------
-- Records of keywords
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
BEGIN;
INSERT INTO `menus` VALUES (1, 'Experience buying cosmetics', 'experience-buying-cosmetics', NULL, NULL, NULL, 1, 0, '2020-04-24 10:33:34', '2020-09-11 04:40:46');
INSERT INTO `menus` VALUES (2, 'Notification', 'notification', NULL, NULL, NULL, 1, 0, '2020-04-24 10:33:38', '2020-09-11 04:40:56');
INSERT INTO `menus` VALUES (3, 'Recruitment', 'recruitment', NULL, NULL, NULL, 0, 0, '2020-04-24 10:33:42', '2020-09-11 04:41:13');
INSERT INTO `menus` VALUES (4, 'Facial skin care', 'facial-skin-care', NULL, NULL, NULL, 0, 1, '2020-05-01 21:18:28', '2020-09-11 04:41:28');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (3, '2020_02_02_041429_create_categories_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_02_02_155318_create_keywords_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_02_03_145303_create_products_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_02_06_165057_create_attributes_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_02_06_184708_create_products_attributes_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1);
INSERT INTO `migrations` VALUES (9, '2020_02_09_073958_create_transactions_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_02_09_074025_create_orders_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_02_09_133309_create_products_keywords_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_02_09_155308_create_admins_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_02_09_180519_create_menus_table', 1);
INSERT INTO `migrations` VALUES (14, '2020_02_09_180620_create_articles_table', 1);
INSERT INTO `migrations` VALUES (15, '2020_02_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1);
INSERT INTO `migrations` VALUES (17, '2020_02_13_171036_create_slides_table', 1);
INSERT INTO `migrations` VALUES (18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1);
INSERT INTO `migrations` VALUES (19, '2020_02_15_053225_create_user_favourite_table', 1);
INSERT INTO `migrations` VALUES (20, '2020_02_15_191555_create_ratings_table', 1);
INSERT INTO `migrations` VALUES (21, '2020_02_17_162605_create_events_table', 1);
INSERT INTO `migrations` VALUES (22, '2020_02_18_152103_create_product_images_table', 1);
INSERT INTO `migrations` VALUES (23, '2020_02_24_222836_create_social_accounts_table', 1);
INSERT INTO `migrations` VALUES (24, '2020_03_08_104810_create_statics_table', 1);
INSERT INTO `migrations` VALUES (25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1);
INSERT INTO `migrations` VALUES (26, '2020_03_12_205704_create_contacts_table', 1);
INSERT INTO `migrations` VALUES (27, '2020_03_17_183239_create_comments_table', 1);
INSERT INTO `migrations` VALUES (28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1);
INSERT INTO `migrations` VALUES (29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1);
INSERT INTO `migrations` VALUES (30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1);
INSERT INTO `migrations` VALUES (31, '2020_03_25_214331_create_list_table_system_pay_table', 1);
INSERT INTO `migrations` VALUES (32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1);
INSERT INTO `migrations` VALUES (33, '2020_04_14_164245_create_supplieres_table', 1);
INSERT INTO `migrations` VALUES (34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1);
INSERT INTO `migrations` VALUES (35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1);
INSERT INTO `migrations` VALUES (36, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 2);
INSERT INTO `migrations` VALUES (37, '2020_04_29_112931_create_invoice_entered_in_tables', 2);
INSERT INTO `migrations` VALUES (38, '2020_06_17_192357_create_product_invoice_entered_table', 3);
INSERT INTO `migrations` VALUES (39, '2020_06_21_112319_create_permission_tables', 4);
INSERT INTO `migrations` VALUES (40, '2020_06_21_205241_create_activity_log_table', 5);
COMMIT;

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `model_has_permissions` VALUES (1, 'App\\Models\\Admin', 1);
INSERT INTO `model_has_permissions` VALUES (5, 'App\\Models\\Admin', 1);
INSERT INTO `model_has_permissions` VALUES (8, 'App\\Models\\Admin', 1);
INSERT INTO `model_has_permissions` VALUES (16, 'App\\Models\\Admin', 1);
INSERT INTO `model_has_permissions` VALUES (25, 'App\\Models\\Admin', 1);
INSERT INTO `model_has_permissions` VALUES (26, 'App\\Models\\Admin', 1);
COMMIT;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
BEGIN;
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\Admin', 1);
INSERT INTO `model_has_roles` VALUES (2, 'App\\Models\\Admin', 4);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES (1, 1, 50, 2, 1, 11760, '2020-04-28 09:06:31', NULL);
INSERT INTO `orders` VALUES (2, 1, 52, 12, 1, 220000, '2020-04-28 09:06:31', NULL);
INSERT INTO `orders` VALUES (3, 2, 3, 5, 1, 199500, '2020-05-01 20:57:50', NULL);
INSERT INTO `orders` VALUES (4, 3, 14, 1, 1, 148500, '2020-05-01 21:02:34', NULL);
INSERT INTO `orders` VALUES (5, 4, 3, 5, 2, 199500, '2020-06-02 23:05:39', NULL);
INSERT INTO `orders` VALUES (6, 5, 50, 2, 1, 11760, '2020-06-04 22:10:42', NULL);
INSERT INTO `orders` VALUES (7, 6, 50, 2, 1, 11760, '2020-06-04 22:19:20', NULL);
INSERT INTO `orders` VALUES (8, 7, 53, 2, 1, 2940000, '2020-06-08 16:14:26', NULL);
INSERT INTO `orders` VALUES (9, 8, 47, 1, 3, 237600, '2020-06-08 23:43:21', NULL);
INSERT INTO `orders` VALUES (10, 9, 56, 2, 1, 441000, '2020-06-08 23:43:44', NULL);
INSERT INTO `orders` VALUES (11, 10, 50, 2, 2, 11760, '2020-06-08 23:59:43', NULL);
INSERT INTO `orders` VALUES (12, 11, 50, 2, 2, 11760, '2020-06-09 13:56:20', NULL);
INSERT INTO `orders` VALUES (13, 12, 54, 3, 3, 824500, '2020-06-10 22:28:39', NULL);
INSERT INTO `orders` VALUES (14, 13, 54, 3, 1, 824500, '2020-06-12 17:51:44', NULL);
INSERT INTO `orders` VALUES (15, 13, 53, 2, 1, 2940000, '2020-06-12 17:51:44', NULL);
INSERT INTO `orders` VALUES (16, 14, 54, 3, 1, 824500, '2020-06-13 04:24:00', NULL);
INSERT INTO `orders` VALUES (17, 14, 56, 2, 1, 441000, '2020-06-13 04:24:00', NULL);
INSERT INTO `orders` VALUES (18, 15, 56, 2, 1, 441000, '2020-06-13 18:03:13', NULL);
INSERT INTO `orders` VALUES (19, 16, 53, 2, 1, 2940000, '2020-06-13 18:04:38', NULL);
INSERT INTO `orders` VALUES (20, 16, 56, 2, 1, 441000, '2020-06-13 18:04:38', NULL);
INSERT INTO `orders` VALUES (21, 17, 56, 2, 1, 441000, '2020-06-13 18:13:23', NULL);
INSERT INTO `orders` VALUES (22, 18, 50, 2, 2, 11760, '2020-06-14 10:42:29', NULL);
INSERT INTO `orders` VALUES (23, 19, 50, 2, 1, 11760, '2020-06-14 10:43:35', NULL);
INSERT INTO `orders` VALUES (24, 20, 50, 2, 1, 11760, '2020-06-14 19:07:13', NULL);
INSERT INTO `orders` VALUES (25, 21, 55, 5, 1, 665000, '2020-06-14 19:45:33', NULL);
INSERT INTO `orders` VALUES (26, 22, 49, 1, 2, 940500, '2020-06-14 19:51:51', NULL);
INSERT INTO `orders` VALUES (27, 23, 49, 1, 1, 940500, '2020-06-14 19:52:59', NULL);
INSERT INTO `orders` VALUES (28, 24, 54, 3, 1, 824500, '2020-06-14 19:54:41', NULL);
INSERT INTO `orders` VALUES (29, 25, 50, 2, 5, 11760, '2020-06-14 19:58:38', NULL);
INSERT INTO `orders` VALUES (30, 26, 41, 2, 2, 401800, '2020-06-14 20:00:15', NULL);
INSERT INTO `orders` VALUES (31, 26, 55, 5, 2, 665000, '2020-06-14 20:00:15', NULL);
INSERT INTO `orders` VALUES (33, 28, 54, 3, 1, 824500, '2020-06-14 21:08:53', NULL);
INSERT INTO `orders` VALUES (34, 29, 55, 5, 1, 665000, '2020-06-14 21:10:34', NULL);
INSERT INTO `orders` VALUES (35, 30, 50, 2, 2, 11760, '2020-06-14 21:11:54', NULL);
INSERT INTO `orders` VALUES (36, 31, 60, 2, 1, 1960000, '2020-06-15 21:39:13', NULL);
INSERT INTO `orders` VALUES (37, 32, 59, 2, 2, 11760000, '2020-06-15 21:43:14', NULL);
INSERT INTO `orders` VALUES (38, 33, 61, 5, 2, 285000, '2020-06-15 22:29:18', NULL);
INSERT INTO `orders` VALUES (39, 34, 62, 2, 10, 294000, '2020-06-15 22:49:58', NULL);
INSERT INTO `orders` VALUES (40, 35, 50, 2, 1, 11760, '2020-06-15 22:56:02', NULL);
INSERT INTO `orders` VALUES (41, 35, 63, 2, 2, 11760, '2020-06-15 22:56:02', NULL);
INSERT INTO `orders` VALUES (42, 36, 64, 0, 2, 20000, '2020-06-15 22:58:22', NULL);
INSERT INTO `orders` VALUES (43, 37, 65, 1, 2, 1188000, '2020-06-15 23:29:20', NULL);
INSERT INTO `orders` VALUES (44, 38, 37, 2, 1, 156800, '2020-06-19 10:14:45', NULL);
INSERT INTO `orders` VALUES (45, 39, 73, 3, 1, 119633, '2020-06-21 22:28:30', NULL);
INSERT INTO `orders` VALUES (46, 40, 50, 2, 2, 11760, '2020-06-21 22:31:14', NULL);
INSERT INTO `orders` VALUES (47, 41, 74, 1, 2, 198000, '2020-06-21 22:35:28', NULL);
INSERT INTO `orders` VALUES (48, 42, 81, 1, 2, 9900, '2020-06-22 22:02:37', NULL);
INSERT INTO `orders` VALUES (49, 43, 84, 1, 2, 1287000, '2020-07-12 09:43:03', NULL);
INSERT INTO `orders` VALUES (50, 44, 38, 1, 1, 445500, '2020-07-13 02:24:25', NULL);
INSERT INTO `orders` VALUES (51, 45, 85, 1, 1, 12, '2020-07-13 16:17:04', NULL);
INSERT INTO `orders` VALUES (52, 46, 79, 0, 1, 10000, '2020-07-13 23:31:10', NULL);
INSERT INTO `orders` VALUES (53, 46, 78, 1, 1, 297000, '2020-07-13 23:31:10', NULL);
INSERT INTO `orders` VALUES (54, 47, 82, 1, 1, 16830, '2020-07-13 23:34:48', NULL);
INSERT INTO `orders` VALUES (55, 48, 84, 1, 1, 1287000, '2020-07-13 23:34:57', NULL);
INSERT INTO `orders` VALUES (56, 49, 55, 5, 2, 665000, '2020-07-20 00:07:41', NULL);
INSERT INTO `orders` VALUES (57, 50, 84, 1, 1, 1287000, '2020-08-08 12:29:33', NULL);
INSERT INTO `orders` VALUES (58, 50, 75, 0, 1, 16000000, '2020-08-08 12:29:33', NULL);
INSERT INTO `orders` VALUES (59, 51, 78, 1, 2, 297000, '2020-08-11 22:55:01', NULL);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pay_histories
-- ----------------------------
DROP TABLE IF EXISTS `pay_histories`;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pay_histories
-- ----------------------------
BEGIN;
INSERT INTO `pay_histories` VALUES (1, 'IN1', 2, 10000, 0, 10000, 'Nạp tiền Online', 1, 6, 2020, '2020-06-09 00:03:39', NULL);
COMMIT;

-- ----------------------------
-- Table structure for pay_ins
-- ----------------------------
DROP TABLE IF EXISTS `pay_ins`;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pay_ins
-- ----------------------------
BEGIN;
INSERT INTO `pay_ins` VALUES (1, 2, 0, 3, 10000, 0, 0, NULL, 1, 6, 2020, '2020-06-09 00:03:39', NULL);
COMMIT;

-- ----------------------------
-- Table structure for pay_outs
-- ----------------------------
DROP TABLE IF EXISTS `pay_outs`;
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

-- ----------------------------
-- Records of pay_outs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_permission` tinyint(4) NOT NULL DEFAULT '0',
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES (1, 'full', 'Toàn quyền hệ thống', 1, 'admins', '2020-06-21 17:49:41', '2020-06-21 17:49:41');
INSERT INTO `permissions` VALUES (2, 'category_index', 'Danh sách danh mục ( category)', 7, 'admins', '2020-06-21 18:14:25', '2020-06-21 18:14:25');
INSERT INTO `permissions` VALUES (3, 'category_create', 'Thêm mới danh mục ( category)', 7, 'admins', '2020-06-21 18:14:38', '2020-06-21 18:14:38');
INSERT INTO `permissions` VALUES (4, 'category_update', 'Cập nhật danh mục (category)', 7, 'admins', '2020-06-21 18:14:52', '2020-06-21 18:14:52');
INSERT INTO `permissions` VALUES (5, 'category_active', 'Active danh mục ( category)', 7, 'admins', '2020-06-21 18:15:05', '2020-06-21 18:15:05');
INSERT INTO `permissions` VALUES (6, 'category_hot', 'Active hot danh mục ( category)', 7, 'admins', '2020-06-21 18:15:18', '2020-06-21 18:15:18');
INSERT INTO `permissions` VALUES (7, 'category_delete', 'Delete danh mục (category)', 7, 'admins', '2020-06-21 18:15:35', '2020-06-21 18:15:35');
INSERT INTO `permissions` VALUES (8, 'attribute_index', 'Danh sách thông tin, thuộc tính ( Attribute)', 12, 'admins', '2020-06-21 18:24:30', '2020-06-21 18:24:30');
INSERT INTO `permissions` VALUES (9, 'attribute_create', 'Thêm mới thông tin, thuộc tính (attribute)', 12, 'admins', '2020-06-21 18:24:46', '2020-06-21 18:24:46');
INSERT INTO `permissions` VALUES (10, 'attribute_update', 'Cập nhật thông tin, thuộc tính ( attribute)', 12, 'admins', '2020-06-21 18:25:03', '2020-06-21 18:25:03');
INSERT INTO `permissions` VALUES (11, 'attribute_hot', 'Active hot thông tin, thuộc tính ( attribute)', 12, 'admins', '2020-06-21 18:25:31', '2020-06-21 18:25:31');
INSERT INTO `permissions` VALUES (12, 'attribute_delete', 'Xoá thông tin, thuộc tính ( attribute)', 12, 'admins', '2020-06-21 18:25:49', '2020-06-21 18:25:49');
INSERT INTO `permissions` VALUES (13, 'product_index', 'Danh sách sản phẩm ( product)', 10, 'admins', '2020-06-21 18:30:55', '2020-06-21 18:30:55');
INSERT INTO `permissions` VALUES (14, 'product_create', 'Thêm mới sản phẩm ( product)', 10, 'admins', '2020-06-21 18:31:08', '2020-06-21 18:31:08');
INSERT INTO `permissions` VALUES (15, 'product_hot', 'Active hot sản phẩm ( product)', 10, 'admins', '2020-06-21 18:31:20', '2020-06-21 18:31:20');
INSERT INTO `permissions` VALUES (16, 'product_active', 'Active sản phẩm ( product)', 10, 'admins', '2020-06-21 18:31:33', '2020-06-21 18:31:33');
INSERT INTO `permissions` VALUES (17, 'product_update', 'Update sản phẩm (  product)', 10, 'admins', '2020-06-21 18:31:47', '2020-06-21 18:31:47');
INSERT INTO `permissions` VALUES (18, 'product_delete', 'Delete sản phẩm ( product)', 10, 'admins', '2020-06-21 18:32:02', '2020-06-21 18:32:02');
INSERT INTO `permissions` VALUES (19, 'product_delete_image', 'Delete image sản phẩm ( product)', 10, 'admins', '2020-06-21 18:32:17', '2020-06-21 18:32:17');
INSERT INTO `permissions` VALUES (20, 'rating_index', 'Danh sách đánh giá sản phẩm ( rating)', 14, 'admins', '2020-06-21 18:34:09', '2020-06-21 18:34:09');
INSERT INTO `permissions` VALUES (21, 'rating_delete', 'Delete dánh giá sản phẩm ( rating)', 14, 'admins', '2020-06-21 18:34:25', '2020-06-21 18:34:25');
INSERT INTO `permissions` VALUES (22, 'comment_index', 'Danh sách comment ( comment )', 13, 'admins', '2020-06-21 18:35:48', '2020-06-21 18:35:48');
INSERT INTO `permissions` VALUES (23, 'comment_delete', 'Xoá bình luận ( comment )', 13, 'admins', '2020-06-21 18:36:09', '2020-06-21 18:36:09');
INSERT INTO `permissions` VALUES (24, 'menu_index', 'Danh sách menu', 5, 'admins', '2020-06-21 18:41:00', '2020-06-21 18:41:00');
INSERT INTO `permissions` VALUES (25, 'menu_create', 'Thêm mới menu', 6, 'admins', '2020-06-21 18:41:10', '2020-06-21 18:41:10');
INSERT INTO `permissions` VALUES (26, 'menu_update', 'Cập nhật menu', 5, 'admins', '2020-06-21 18:41:20', '2020-06-21 18:41:20');
INSERT INTO `permissions` VALUES (27, 'menu_active', 'Active menu', 5, 'admins', '2020-06-21 18:41:29', '2020-06-21 18:41:29');
INSERT INTO `permissions` VALUES (28, 'menu_hot', 'Active hot menu', 5, 'admins', '2020-06-21 18:41:39', '2020-06-21 18:41:39');
INSERT INTO `permissions` VALUES (29, 'menu_delete', 'xoá menu', 5, 'admins', '2020-06-21 18:41:50', '2020-06-21 18:41:50');
INSERT INTO `permissions` VALUES (30, 'article_index', 'Danh sách bài viết', 6, 'admins', '2020-06-21 18:42:01', '2020-06-21 18:42:01');
INSERT INTO `permissions` VALUES (31, 'article_create', 'Thêm mới bài viết', 6, 'admins', '2020-06-21 18:42:11', '2020-06-21 18:42:11');
INSERT INTO `permissions` VALUES (32, 'article_update', 'Cập nhật bài viết ( article)', 6, 'admins', '2020-06-21 18:42:22', '2020-06-21 18:42:22');
INSERT INTO `permissions` VALUES (33, 'article_active', 'Active bài viết', 6, 'admins', '2020-06-21 18:42:33', '2020-06-21 18:42:33');
INSERT INTO `permissions` VALUES (34, 'article_hot', 'Active hot bài viết', 6, 'admins', '2020-06-21 18:42:44', '2020-06-21 18:42:44');
INSERT INTO `permissions` VALUES (35, 'article_delete', 'Xoá bài viết', 6, 'admins', '2020-06-21 18:42:59', '2020-06-21 18:42:59');
INSERT INTO `permissions` VALUES (36, 'statistical', 'Thống kê', 0, 'admins', '2020-06-21 19:08:14', '2020-06-21 19:08:14');
INSERT INTO `permissions` VALUES (37, 'logs', 'Show logs system', 0, 'admins', '2020-06-21 19:34:09', '2020-06-21 19:34:09');
COMMIT;

-- ----------------------------
-- Table structure for product_images
-- ----------------------------
DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_images
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_invoice_entered
-- ----------------------------
DROP TABLE IF EXISTS `product_invoice_entered`;
CREATE TABLE `product_invoice_entered` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pie_product_id` int(11) NOT NULL DEFAULT '0',
  `pie_invoice_entered_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_invoice_entered_pie_product_id_index` (`pie_product_id`),
  KEY `product_invoice_entered_pie_invoice_entered_id_index` (`pie_invoice_entered_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_invoice_entered
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
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
  `pro_expiration` datetime DEFAULT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT '0',
  `pro_hot` tinyint(4) NOT NULL DEFAULT '0',
  `pro_active` tinyint(4) NOT NULL DEFAULT '1',
  `pro_pay` int(11) NOT NULL DEFAULT '0',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `pro_content` text COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int(11) NOT NULL DEFAULT '0',
  `pro_review_star` int(11) NOT NULL DEFAULT '0',
  `pro_age_review` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT '0',
  `pro_import_goods` int(11) NOT NULL DEFAULT '0',
  `pro_number_import` int(11) NOT NULL DEFAULT '0',
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  KEY `products_pro_hot_index` (`pro_hot`),
  KEY `products_pro_active_index` (`pro_active`),
  KEY `products_pro_supplier_id_index` (`pro_supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES (37, 'Xịt Thơm Khử Mùi Quần Áo Fabric Perfume Spray', 'xit-thom-khu-mui-quan-ao-fabric-perfume-spray', 160000, 0, 1, 1, 0, 2, 10, NULL, '2020-04-25__37.jpg', 14, 0, 1, 1, 'Xịt Thơm Khử Mùi Quần Áo Fabric Perfume Spray', 'Xịt Thơm Khử Mùi Quần Áo Fabric Perfume Spray', 1, 5, 5, '2020-04-25 22:03:10', 3, 0, 3, NULL, NULL, 0, '2020-07-01 23:37:03');
INSERT INTO `products` VALUES (38, 'Xịt Thơm Nước Hoa 1902 Melle Fleurs L\'Eau Eau', 'xit-thom-nuoc-hoa-1902-melle-fleurs-leau-eau', 450000, 0, 1, 1, 0, 1, 10, NULL, '2020-04-25__38.jpg', 9, 0, 1, 1, 'Xịt Thơm Nước Hoa 1902 Melle Fleurs L\'Eau Eau', 'Xịt Thơm Nước Hoa 1902 Melle Fleurs L\'Eau Eau', 0, 0, 0, '2020-04-25 22:03:41', 6, 0, 6, NULL, NULL, 0, NULL);
INSERT INTO `products` VALUES (39, 'Xịt Thơm Body Victoria\'s Secret Fragrance Body', 'xit-thom-body-victorias-secret-fragrance-body', 270000, 0, 1, 1, 0, 0, 10, NULL, '2020-04-25__39.jpg', 5, 0, 1, 0, 'Xịt Thơm Body Victoria\'s Secret Fragrance Body', 'Xịt Thơm Body Victoria\'s Secret Fragrance Body', 0, 0, 0, '2020-04-25 22:04:12', 5, 0, 5, NULL, NULL, 0, NULL);
INSERT INTO `products` VALUES (40, 'Bộ Victoria\'s Secret Fragrance Mist & Lotion', 'bo-victorias-secret-fragrance-mist-lotion', 350000, 0, 1, 1, 0, 2, 10, NULL, '2020-04-25__40.jpg', 3, 0, 1, 0, 'Bộ Victoria\'s Secret Fragrance Mist & Lotion', 'Bộ Victoria\'s Secret Fragrance Mist & Lotion', 0, 0, 0, '2020-04-25 22:04:48', 3, 0, 3, NULL, NULL, 0, NULL);
INSERT INTO `products` VALUES (41, 'Nước Hoa Nữ Venus Global Beauty Laura Anné', 'nuoc-hoa-nu-venus-global-beauty-laura-anne', 410000, 0, 1, 1, 0, 2, 10, NULL, '2020-04-25__41.jpg', 7, 0, 1, 1, 'Nước Hoa Nữ Venus Global Beauty Laura Anné', 'Nước Hoa Nữ Venus Global Beauty Laura Anné', 0, 0, 0, '2020-04-25 22:05:33', 3, 0, 3, NULL, NULL, 0, NULL);
INSERT INTO `products` VALUES (42, 'Nước Hoa Nữ Venus Global Beauty Laura Anné 1', 'nuoc-hoa-nu-venus-global-beauty-laura-anne-1', 420000, 0, 5, 1, 0, 3, 10, NULL, '2020-04-25__42.jpg', 2, 0, 1, 0, 'Nước Hoa Nữ Venus Global Beauty Laura Anné', 'Nước Hoa Lancôme Miracle L\'Eau de Parfum', 0, 0, 0, '2020-04-25 22:06:43', 2, 0, 2, NULL, NULL, 0, '2020-06-08 16:26:40');
INSERT INTO `products` VALUES (43, 'Nước Hoa Lancôme Miracle L\'Eau de Parfum', 'nuoc-hoa-lancome-miracle-leau-de-parfum', 250000, 0, 5, 1, 0, 3, 10, NULL, '2020-04-25__43.jpg', 1, 0, 1, 0, 'Nước Hoa Lancôme Miracle L\'Eau de Parfum', 'Nước Hoa Lancôme Miracle L\'Eau de Parfum', 0, 0, 0, '2020-04-25 22:07:12', 3, 0, 3, NULL, NULL, 0, '2020-06-08 16:26:57');
INSERT INTO `products` VALUES (44, 'Nước Hoa Gucci Bloom Eau de Parfum 2017', 'nuoc-hoa-gucci-bloom-eau-de-parfum-2017', 380000, 0, 5, 1, 0, 2, 10, NULL, '2020-04-25__44.jpg', 2, 1, 1, 0, 'Nước Hoa Gucci Bloom Eau de Parfum 2017', 'Nước Hoa Gucci Bloom Eau de Parfum 2017', 0, 0, 0, '2020-04-25 22:07:45', 5, 0, 5, NULL, NULL, 0, '2020-06-08 16:26:04');
INSERT INTO `products` VALUES (45, 'Nước Hoa Berdoues 1902 Eau de Toilette', 'nuoc-hoa-berdoues-1902-eau-de-toilette', 520000, 0, 5, 1, 0, 3, 10, NULL, '2020-04-25__45.jpg', 4, 1, 1, 0, 'Nước Hoa Berdoues 1902 Eau de Toilette', 'Nước Hoa Berdoues 1902 Eau de Toilette', 0, 0, 0, '2020-04-25 22:08:22', 6, 0, 6, NULL, NULL, 0, '2020-06-08 16:26:25');
INSERT INTO `products` VALUES (46, 'Nước Hoa Nam Venus Global Beauty Gota Perfume', 'nuoc-hoa-nam-venus-global-beauty-gota-perfume', 290000, 0, 5, 1, 0, 2, 10, NULL, '2020-04-25__46.jpg', 0, 0, 1, 0, 'Nước Hoa Nam Venus Global Beauty Gota Perfume', 'Nước Hoa Nam Venus Global Beauty Gota Perfume', 0, 0, 0, '2020-04-25 22:09:12', 3, 0, 3, NULL, NULL, 0, '2020-06-08 16:25:46');
INSERT INTO `products` VALUES (47, 'Nước Hoa Versace Pour Homme Dylan Blue 5ml', 'nuoc-hoa-versace-pour-homme-dylan-blue-5ml', 240000, 0, 5, 1, 0, 1, 10, NULL, '2020-04-25__47.jpg', 27, 1, 1, 1, 'Nước Hoa Versace Pour Homme Dylan Blue 5ml', 'Nước Hoa Versace Pour Homme Dylan Blue 5ml', 3, 15, 5, '2020-04-25 22:10:05', 3, 0, 3, NULL, NULL, 0, '2020-06-21 21:06:03');
INSERT INTO `products` VALUES (48, 'Lăn Khử Mùi Cho Nam Old Spice Timber', 'lan-khu-mui-cho-nam-old-spice-timber', 650000, 0, 5, 1, 0, 1, 10, NULL, '2020-04-25__48.jpg', 1, 0, 1, 0, 'Lăn Khử Mùi Cho Nam Old Spice Timber', 'Lăn Khử Mùi Cho Nam Old Spice Timber', 0, 0, 0, '2020-04-25 22:10:36', 3, 0, 3, NULL, NULL, 0, '2020-06-08 16:25:20');
INSERT INTO `products` VALUES (49, 'Nước Hoa Nam Victoria’s Secret', 'nuoc-hoa-nam-victorias-secret', 950000, 0, 5, 1, 0, 1, 10, NULL, '2020-04-25__49.jpg', 18, 1, 1, 2, 'Nước Hoa Nam Victoria’s Secret', 'Nước Hoa Nam Victoria’s Secret', 0, 0, 0, '2020-04-25 22:11:10', 1, 0, 4, NULL, NULL, 0, '2020-06-08 16:25:02');
INSERT INTO `products` VALUES (50, 'Nước hoa mini Versace Pour Homme - Eau De Toilette', 'nuoc-hoa-mini-versace-pour-homme-eau-de-toilette', 12000, 0, 5, 1, 0, 2, 10, '1909-11-18 00:00:00', '2020-04-25__50.jpg', 102, 0, 1, 12, 'Nước hoa mini Versace Pour Homme - Eau De Toilette', 'Nước hoa mini Versace Pour Homme - Eau De Toilette', 3, 10, 3, '2020-04-25 22:11:49', -4, 0, 3, NULL, NULL, 0, '2020-06-12 16:22:39');
INSERT INTO `products` VALUES (53, 'Nước Hoa Nữ Charme By Charme 50ml', 'nuoc-hoa-nu-charme-by-charme-50ml', 3000000, 0, 5, 1, 0, 2, 2, NULL, '2020-06-04__nuoc-hoa-nu-charme-by-charme-25ml-1.jpg', 24, 0, 1, 3, 'Phong cách: Nữ tính, sang trọng, quyến rũ\r\n- Nhóm nước hoa: Hoa cỏ – Trái cây – Thực phẩm\r\n- Phân Loại: Nước hoa nữ\r\n- Độ tuổi khuyên dùng: Trên 25\r\n- Nồng độ: Eau De Parfum (EDP)\r\n- Độ lưu hương: Lâu – 7 giờ đến 12 giờ\r\n- Độ toả hương: Xa – Toả hương trong vòng bán kính 2m\r\n- Thời điểm khuyên dùng: Ngày, Đêm, Thu, Đông\r\n- Mùi hương đặc trưng với 3 tầng hương:\r\n+ Hương đầu: Cam Bergamot\r\n+ Hương giữa: Hoa ngọc lan tây, hoa huệ Casablanca, hoa cam\r\n+ Hương cuối: Hổ phách, gỗ đàn hương, hương Vani Tahiti', 'abc', 1, 4, 4, '2020-06-04 22:51:11', 0, 0, 0, NULL, NULL, 0, '2020-06-09 17:54:28');
INSERT INTO `products` VALUES (54, 'Charme Luxury 80ml', 'charme-luxury-80ml', 850000, 0, 1, 2, 0, 3, 10, '2020-06-30 00:00:00', '2020-06-08__charme-212-sexy-50ml-1574253652.jpg', 55, 0, 1, 6, 'Thương hiệu: Nước hoa Charme Loại: Nước hoa nam Dung tích: 300ml Nồng độ: Eau De Parfum (EDP) Độ lưu hương: Lâu - 7 giờ đến 12 giờ Độ toả hương: Xa - Toả hương trong vòng bán kính 2 mét Thời điểm khuyên dùng: Ngày, Đêm, Thu, Đông, Xuân, Hạ Mùi hương đặc trưng: + Hương đầu: Hạt tiêu hồng, cam Bergamot,…', 'Charme Luxury 80ml', 1, 5, 5, '2020-06-08 16:29:29', -2, 0, 1, NULL, NULL, 0, '2020-07-12 09:39:20');
INSERT INTO `products` VALUES (55, 'Set Nước Hoa Nam', 'set-nuoc-hoa-nam', 700000, 0, 1, 1, 0, 5, 10, '2020-07-02 00:00:00', '2020-06-08__charme-ruby-sport-50ml-1574235373.jpg', 27, 1, 1, 4, 'Thương hiệu: Nước hoa Charme Loại: Nước hoa nam Dung tích: 300ml Nồng độ: Eau De Parfum (EDP) Độ lưu hương: Lâu - 7 giờ đến 12 giờ Độ toả hương: Xa - Toả hương trong vòng bán kính 2 mét Thời điểm khuyên dùng: Ngày, Đêm, Thu, Đông, xuân, hạ Mùi hương đặc trưng: Iris - Cool Water - Guility\r\n1', 'Thương hiệu: Nước hoa Charme Loại: Nước hoa nam Dung tích: 3 x 10ml Nồng độ: Eau De Parfum (EDP) Độ lưu hương: Lâu - 7 giờ đến 12 giờ Độ toả hương: Xa - Toả hương trong vòng bán kính 2 mét Thời điểm khuyên dùng: Ngày, Đêm, Thu, Đông, xuân, hạ Mùi hương đặc trưng: Iris - Cool Water - Guility\r\n1', 0, 0, 0, '2020-06-08 16:41:33', -3, 0, 5, NULL, NULL, 0, '2020-06-13 18:20:40');
INSERT INTO `products` VALUES (56, 'Charme Enternity', 'charme-enternity', 450000, 0, 1, 1, 0, 2, 10, '2020-06-14 00:00:00', '2020-06-08__charme-enternity-60ml-1574252704.jpg', 41, 1, 1, 5, 'Thương hiệu: Nước hoa : Nước hoa nam Dung tích: 3 x 100ml Nồng độ: Eau De Parfum (EDP) Độ lưu hương: Lâu - 7 giờ đến 12 giờ Độ toả hương: Xa - Toả hương trong vòng bán kính 2 mét Thời điểm khuyên dùng: Ngày, Đêm, Thu, Đông, xuân, hạ Mùi hương đặc trưng: Iris - Cool Water - Guility', '1', 2, 10, 5, '2020-06-08 17:32:56', 0, 0, 0, NULL, NULL, 0, '2020-06-14 11:02:28');
INSERT INTO `products` VALUES (71, 'SPA', 'spa', 500000, 0, 5, 0, 0, 1, 10, '2020-06-27 00:00:00', NULL, 0, 0, 0, 0, 'A', 'A', 0, 0, 0, '2020-06-19 17:46:12', 0, 0, 5, NULL, NULL, 0, '2020-06-21 19:52:30');
INSERT INTO `products` VALUES (72, 'SPB', 'spb', 40000, 0, 5, 0, 0, 1, 10, '2020-06-30 00:00:00', NULL, 0, 0, 0, 0, 'A', 'A', 0, 0, 0, '2020-06-19 17:51:29', 5, 0, 5, NULL, NULL, 0, '2020-06-21 19:52:33');
INSERT INTO `products` VALUES (73, 'nuoc hoa', 'nuoc-hoa', 123333, 0, 1, 0, 0, 3, 10, NULL, '2020-06-21__sapcmnr.png', 2, 0, 1, 1, 'a', 'aaa', 0, 0, 0, '2020-06-21 21:21:45', 20, 0, 22, NULL, NULL, 0, NULL);
INSERT INTO `products` VALUES (74, 'SP C', 'sp-c', 200000, 0, 5, 0, 0, 1, 10, '2020-06-27 00:00:00', NULL, 1, 0, 0, 1, 'A', 'A', 0, 0, 0, '2020-06-21 22:08:46', 13, 0, 10, NULL, NULL, 0, '2020-06-21 23:34:08');
INSERT INTO `products` VALUES (75, 'Iphone 6S', 'iphone-6s', 16000000, 0, 1, 0, 0, 0, 10, NULL, '2020-06-22__103543302-1369080356619882-4351742374478556571-n.png', 7, 1, 1, 1, 'OK', 'OK', 0, 0, 0, '2020-06-22 10:03:24', 10, 0, 10, NULL, NULL, 0, '2020-06-22 10:03:37');
INSERT INTO `products` VALUES (76, 'sản phẩm test', 'san-pham-test', 156000, 0, 5, 0, 0, 0, 10, '0000-00-00 00:00:00', NULL, 1, 0, 1, 0, 'mô tả hay và chi tiết', 'nội dung hay', 0, 0, 0, '2020-06-22 15:21:33', 6, 0, 6, NULL, NULL, 0, '2020-06-22 16:17:41');
INSERT INTO `products` VALUES (77, 'nước hoa hương tự nhiên', 'nuoc-hoa-huong-tu-nhien', 180000, 0, 1, 0, 0, 0, 10, '2020-06-30 00:00:00', NULL, 0, 0, 1, 0, 'mô tả', 'nội dung hay và hấp dẫn', 0, 0, 0, '2020-06-22 16:19:06', 10, 0, 10, NULL, NULL, 0, '2020-06-22 16:21:49');
INSERT INTO `products` VALUES (78, 'Nước hoa phap', 'nuoc-hoa-phap', 300000, 0, 1, 0, 0, 1, 10, '2020-06-27 00:00:00', NULL, 10, 0, 1, 2, 'a', 'a', 0, 0, 0, '2020-06-22 17:01:33', 4, 0, 6, NULL, NULL, 0, '2020-06-22 17:05:05');
INSERT INTO `products` VALUES (79, 'test1', 'test1', 10000, 0, 5, 0, 0, 0, 10, '2020-06-30 00:00:00', NULL, 3, 0, 1, 1, 'mnb', 'vnk', 0, 0, 0, '2020-06-22 17:14:47', 31, 0, 10, NULL, NULL, 0, '2020-06-22 17:22:32');
INSERT INTO `products` VALUES (80, 'sp1', 'sp1', 1000, 0, 5, 0, 0, 0, 10, '2020-06-27 00:00:00', NULL, 3, 0, 1, 0, 'a', 'a', 0, 0, 0, '2020-06-22 17:24:44', 21, 0, 10, NULL, NULL, 0, '2020-06-22 17:55:38');
INSERT INTO `products` VALUES (81, 'SP CHANEL', 'sp-chanel', 10000, 0, 1, 0, 0, 1, 10, '2020-06-27 00:00:00', NULL, 7, 1, 1, 1, 'A', 'A', 0, 0, 0, '2020-06-22 22:00:02', 13, 0, 5, NULL, NULL, 0, '2020-06-23 15:25:17');
INSERT INTO `products` VALUES (82, 'SP test', 'sp-test', 17000, 0, 5, 0, 0, 1, 10, '2020-06-27 00:00:00', NULL, 4, 0, 1, 1, 'a', 'a', 0, 0, 0, '2020-06-24 21:18:51', 4, 0, 2, NULL, NULL, 0, '2020-06-24 21:20:42');
INSERT INTO `products` VALUES (83, 'sp A', 'sp-a', 120000, 0, 1, 0, 0, 1, 10, '2020-06-27 00:00:00', NULL, 5, 0, 1, 0, 'A', 'A', 0, 0, 0, '2020-06-25 21:30:41', 1, 0, 1, NULL, NULL, 0, NULL);
INSERT INTO `products` VALUES (84, 'sp 1', 'sp-1', 1300000, 0, 1, 0, 0, 1, 10, '2020-06-27 00:00:00', NULL, 18, 0, 1, 3, 'a', 'a', 0, 0, 0, '2020-06-25 21:58:12', 12, 0, 1, NULL, NULL, 0, '2020-07-01 20:05:55');
INSERT INTO `products` VALUES (85, 'sptesst', 'sptesst', 12, 0, 5, 0, 0, 1, 10, '2020-06-27 00:00:00', NULL, 6, 0, 0, 1, 'a', 'a', 0, 0, 0, '2020-06-26 15:11:04', 0, 0, 1, NULL, NULL, 0, '2020-07-30 10:50:11');
COMMIT;

-- ----------------------------
-- Table structure for products_attributes
-- ----------------------------
DROP TABLE IF EXISTS `products_attributes`;
CREATE TABLE `products_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pa_product_id` int(11) NOT NULL DEFAULT '0',
  `pa_attribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products_attributes
-- ----------------------------
BEGIN;
INSERT INTO `products_attributes` VALUES (1, 1, 1);
INSERT INTO `products_attributes` VALUES (2, 1, 3);
INSERT INTO `products_attributes` VALUES (3, 2, 1);
INSERT INTO `products_attributes` VALUES (4, 2, 3);
INSERT INTO `products_attributes` VALUES (5, 3, 1);
INSERT INTO `products_attributes` VALUES (8, 4, 1);
INSERT INTO `products_attributes` VALUES (9, 4, 4);
INSERT INTO `products_attributes` VALUES (10, 5, 1);
INSERT INTO `products_attributes` VALUES (11, 5, 4);
INSERT INTO `products_attributes` VALUES (12, 6, 1);
INSERT INTO `products_attributes` VALUES (13, 6, 4);
INSERT INTO `products_attributes` VALUES (14, 7, 2);
INSERT INTO `products_attributes` VALUES (15, 7, 3);
INSERT INTO `products_attributes` VALUES (16, 8, 1);
INSERT INTO `products_attributes` VALUES (17, 8, 4);
INSERT INTO `products_attributes` VALUES (18, 9, 1);
INSERT INTO `products_attributes` VALUES (19, 9, 3);
INSERT INTO `products_attributes` VALUES (20, 10, 1);
INSERT INTO `products_attributes` VALUES (21, 10, 4);
INSERT INTO `products_attributes` VALUES (22, 11, 1);
INSERT INTO `products_attributes` VALUES (23, 11, 3);
INSERT INTO `products_attributes` VALUES (24, 12, 1);
INSERT INTO `products_attributes` VALUES (25, 12, 4);
INSERT INTO `products_attributes` VALUES (26, 13, 1);
INSERT INTO `products_attributes` VALUES (27, 13, 4);
INSERT INTO `products_attributes` VALUES (28, 14, 1);
INSERT INTO `products_attributes` VALUES (29, 14, 4);
INSERT INTO `products_attributes` VALUES (30, 15, 1);
INSERT INTO `products_attributes` VALUES (31, 15, 4);
INSERT INTO `products_attributes` VALUES (32, 16, 1);
INSERT INTO `products_attributes` VALUES (33, 16, 4);
INSERT INTO `products_attributes` VALUES (34, 17, 1);
INSERT INTO `products_attributes` VALUES (35, 17, 3);
INSERT INTO `products_attributes` VALUES (36, 18, 1);
INSERT INTO `products_attributes` VALUES (37, 18, 4);
INSERT INTO `products_attributes` VALUES (38, 19, 1);
INSERT INTO `products_attributes` VALUES (39, 19, 4);
INSERT INTO `products_attributes` VALUES (40, 20, 2);
INSERT INTO `products_attributes` VALUES (41, 20, 3);
INSERT INTO `products_attributes` VALUES (42, 21, 1);
INSERT INTO `products_attributes` VALUES (43, 21, 4);
INSERT INTO `products_attributes` VALUES (44, 22, 1);
INSERT INTO `products_attributes` VALUES (45, 22, 3);
INSERT INTO `products_attributes` VALUES (46, 23, 1);
INSERT INTO `products_attributes` VALUES (47, 23, 4);
INSERT INTO `products_attributes` VALUES (48, 24, 2);
INSERT INTO `products_attributes` VALUES (49, 24, 3);
INSERT INTO `products_attributes` VALUES (50, 25, 1);
INSERT INTO `products_attributes` VALUES (51, 25, 3);
INSERT INTO `products_attributes` VALUES (52, 26, 1);
INSERT INTO `products_attributes` VALUES (53, 26, 4);
INSERT INTO `products_attributes` VALUES (54, 27, 2);
INSERT INTO `products_attributes` VALUES (55, 27, 3);
INSERT INTO `products_attributes` VALUES (56, 28, 1);
INSERT INTO `products_attributes` VALUES (57, 28, 3);
INSERT INTO `products_attributes` VALUES (58, 29, 2);
INSERT INTO `products_attributes` VALUES (59, 29, 3);
INSERT INTO `products_attributes` VALUES (60, 30, 1);
INSERT INTO `products_attributes` VALUES (61, 30, 4);
INSERT INTO `products_attributes` VALUES (62, 31, 1);
INSERT INTO `products_attributes` VALUES (63, 31, 3);
INSERT INTO `products_attributes` VALUES (64, 32, 1);
INSERT INTO `products_attributes` VALUES (65, 32, 4);
INSERT INTO `products_attributes` VALUES (66, 33, 1);
INSERT INTO `products_attributes` VALUES (67, 33, 3);
INSERT INTO `products_attributes` VALUES (68, 34, 2);
INSERT INTO `products_attributes` VALUES (69, 34, 3);
INSERT INTO `products_attributes` VALUES (70, 34, 4);
INSERT INTO `products_attributes` VALUES (71, 35, 2);
INSERT INTO `products_attributes` VALUES (72, 35, 3);
INSERT INTO `products_attributes` VALUES (73, 36, 1);
INSERT INTO `products_attributes` VALUES (74, 36, 4);
INSERT INTO `products_attributes` VALUES (75, 37, 1);
INSERT INTO `products_attributes` VALUES (76, 37, 3);
INSERT INTO `products_attributes` VALUES (77, 38, 2);
INSERT INTO `products_attributes` VALUES (78, 38, 3);
INSERT INTO `products_attributes` VALUES (79, 39, 1);
INSERT INTO `products_attributes` VALUES (80, 39, 4);
INSERT INTO `products_attributes` VALUES (81, 40, 2);
INSERT INTO `products_attributes` VALUES (82, 40, 3);
INSERT INTO `products_attributes` VALUES (83, 41, 1);
INSERT INTO `products_attributes` VALUES (84, 41, 3);
INSERT INTO `products_attributes` VALUES (103, 51, 1);
INSERT INTO `products_attributes` VALUES (104, 51, 4);
INSERT INTO `products_attributes` VALUES (109, 52, 1);
INSERT INTO `products_attributes` VALUES (110, 52, 3);
INSERT INTO `products_attributes` VALUES (113, 53, 4);
INSERT INTO `products_attributes` VALUES (114, 53, 5);
INSERT INTO `products_attributes` VALUES (117, 49, 1);
INSERT INTO `products_attributes` VALUES (118, 49, 3);
INSERT INTO `products_attributes` VALUES (119, 48, 1);
INSERT INTO `products_attributes` VALUES (120, 48, 4);
INSERT INTO `products_attributes` VALUES (121, 48, 5);
INSERT INTO `products_attributes` VALUES (122, 47, 1);
INSERT INTO `products_attributes` VALUES (123, 47, 3);
INSERT INTO `products_attributes` VALUES (124, 46, 1);
INSERT INTO `products_attributes` VALUES (125, 46, 3);
INSERT INTO `products_attributes` VALUES (126, 44, 1);
INSERT INTO `products_attributes` VALUES (127, 44, 3);
INSERT INTO `products_attributes` VALUES (128, 45, 1);
INSERT INTO `products_attributes` VALUES (129, 45, 3);
INSERT INTO `products_attributes` VALUES (130, 42, 1);
INSERT INTO `products_attributes` VALUES (131, 42, 4);
INSERT INTO `products_attributes` VALUES (132, 43, 1);
INSERT INTO `products_attributes` VALUES (133, 43, 3);
INSERT INTO `products_attributes` VALUES (134, 43, 5);
INSERT INTO `products_attributes` VALUES (135, 54, 3);
INSERT INTO `products_attributes` VALUES (136, 54, 5);
INSERT INTO `products_attributes` VALUES (141, 50, 1);
INSERT INTO `products_attributes` VALUES (142, 50, 3);
INSERT INTO `products_attributes` VALUES (143, 55, 3);
INSERT INTO `products_attributes` VALUES (144, 55, 5);
INSERT INTO `products_attributes` VALUES (157, 57, 3);
INSERT INTO `products_attributes` VALUES (158, 57, 5);
INSERT INTO `products_attributes` VALUES (159, 58, 3);
INSERT INTO `products_attributes` VALUES (160, 58, 5);
INSERT INTO `products_attributes` VALUES (161, 56, 3);
INSERT INTO `products_attributes` VALUES (162, 56, 5);
INSERT INTO `products_attributes` VALUES (163, 59, 3);
INSERT INTO `products_attributes` VALUES (164, 59, 5);
INSERT INTO `products_attributes` VALUES (165, 60, 1);
INSERT INTO `products_attributes` VALUES (166, 60, 3);
INSERT INTO `products_attributes` VALUES (167, 60, 5);
INSERT INTO `products_attributes` VALUES (168, 61, 1);
INSERT INTO `products_attributes` VALUES (169, 61, 4);
INSERT INTO `products_attributes` VALUES (170, 61, 5);
INSERT INTO `products_attributes` VALUES (175, 62, 3);
INSERT INTO `products_attributes` VALUES (176, 62, 5);
INSERT INTO `products_attributes` VALUES (177, 63, 1);
INSERT INTO `products_attributes` VALUES (178, 64, 7);
INSERT INTO `products_attributes` VALUES (179, 65, 1);
INSERT INTO `products_attributes` VALUES (180, 65, 3);
INSERT INTO `products_attributes` VALUES (181, 65, 5);
INSERT INTO `products_attributes` VALUES (182, 66, 1);
INSERT INTO `products_attributes` VALUES (183, 66, 3);
INSERT INTO `products_attributes` VALUES (184, 66, 5);
INSERT INTO `products_attributes` VALUES (185, 67, 1);
INSERT INTO `products_attributes` VALUES (186, 67, 3);
INSERT INTO `products_attributes` VALUES (187, 67, 5);
INSERT INTO `products_attributes` VALUES (188, 68, 2);
INSERT INTO `products_attributes` VALUES (189, 68, 4);
INSERT INTO `products_attributes` VALUES (190, 69, 1);
INSERT INTO `products_attributes` VALUES (191, 69, 3);
INSERT INTO `products_attributes` VALUES (192, 70, 1);
INSERT INTO `products_attributes` VALUES (193, 70, 3);
INSERT INTO `products_attributes` VALUES (194, 70, 5);
INSERT INTO `products_attributes` VALUES (195, 71, 1);
INSERT INTO `products_attributes` VALUES (196, 71, 3);
INSERT INTO `products_attributes` VALUES (197, 71, 5);
INSERT INTO `products_attributes` VALUES (198, 72, 1);
INSERT INTO `products_attributes` VALUES (199, 72, 3);
INSERT INTO `products_attributes` VALUES (200, 72, 5);
INSERT INTO `products_attributes` VALUES (201, 73, 1);
INSERT INTO `products_attributes` VALUES (202, 73, 2);
INSERT INTO `products_attributes` VALUES (203, 73, 4);
INSERT INTO `products_attributes` VALUES (204, 73, 5);
INSERT INTO `products_attributes` VALUES (211, 74, 2);
INSERT INTO `products_attributes` VALUES (212, 74, 3);
INSERT INTO `products_attributes` VALUES (213, 74, 5);
INSERT INTO `products_attributes` VALUES (214, 75, 1);
INSERT INTO `products_attributes` VALUES (215, 75, 3);
INSERT INTO `products_attributes` VALUES (216, 75, 5);
INSERT INTO `products_attributes` VALUES (217, 76, 1);
INSERT INTO `products_attributes` VALUES (218, 76, 3);
INSERT INTO `products_attributes` VALUES (219, 77, 2);
INSERT INTO `products_attributes` VALUES (220, 77, 3);
INSERT INTO `products_attributes` VALUES (221, 77, 5);
INSERT INTO `products_attributes` VALUES (222, 78, 1);
INSERT INTO `products_attributes` VALUES (223, 78, 3);
INSERT INTO `products_attributes` VALUES (224, 78, 5);
INSERT INTO `products_attributes` VALUES (225, 79, 1);
INSERT INTO `products_attributes` VALUES (226, 80, 1);
INSERT INTO `products_attributes` VALUES (227, 80, 3);
INSERT INTO `products_attributes` VALUES (228, 80, 5);
INSERT INTO `products_attributes` VALUES (229, 81, 1);
INSERT INTO `products_attributes` VALUES (230, 81, 3);
INSERT INTO `products_attributes` VALUES (231, 81, 5);
INSERT INTO `products_attributes` VALUES (232, 82, 1);
INSERT INTO `products_attributes` VALUES (233, 82, 3);
INSERT INTO `products_attributes` VALUES (234, 82, 5);
INSERT INTO `products_attributes` VALUES (235, 83, 1);
INSERT INTO `products_attributes` VALUES (236, 83, 3);
INSERT INTO `products_attributes` VALUES (237, 83, 5);
INSERT INTO `products_attributes` VALUES (238, 84, 1);
INSERT INTO `products_attributes` VALUES (239, 84, 3);
INSERT INTO `products_attributes` VALUES (240, 84, 5);
INSERT INTO `products_attributes` VALUES (241, 85, 1);
INSERT INTO `products_attributes` VALUES (242, 85, 3);
INSERT INTO `products_attributes` VALUES (243, 85, 5);
COMMIT;

-- ----------------------------
-- Table structure for products_keywords
-- ----------------------------
DROP TABLE IF EXISTS `products_keywords`;
CREATE TABLE `products_keywords` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pk_product_id` int(11) NOT NULL DEFAULT '0',
  `pk_keyword_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products_keywords
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ratings
-- ----------------------------
DROP TABLE IF EXISTS `ratings`;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ratings
-- ----------------------------
BEGIN;
INSERT INTO `ratings` VALUES (1, 1, 52, 3, 0, 'ew', '2020-04-28 04:06:13', '2020-04-28 04:06:13');
INSERT INTO `ratings` VALUES (2, 2, 50, 5, 0, 'Sản phẩm hay quá', '2020-06-08 23:58:52', '2020-06-08 23:58:52');
INSERT INTO `ratings` VALUES (3, 9, 47, 5, 0, 'sssssssssssssssss', '2020-06-09 01:19:33', '2020-06-09 01:19:33');
INSERT INTO `ratings` VALUES (4, 3, 53, 4, 0, NULL, '2020-06-09 17:54:28', '2020-06-09 17:54:28');
INSERT INTO `ratings` VALUES (5, 11, 47, 5, 0, 'ssssssssssssssssss', '2020-06-09 22:25:14', '2020-06-09 22:25:14');
INSERT INTO `ratings` VALUES (6, 11, 47, 5, 0, NULL, '2020-06-09 23:11:50', '2020-06-09 23:11:50');
INSERT INTO `ratings` VALUES (7, 14, 50, 4, 0, NULL, '2020-06-12 16:22:19', '2020-06-12 16:22:19');
INSERT INTO `ratings` VALUES (8, 14, 50, 1, 0, 'đắt quá', '2020-06-12 16:22:39', '2020-06-12 16:22:39');
INSERT INTO `ratings` VALUES (9, 13, 56, 5, 0, 'ssssssssssssssssssss', '2020-06-13 19:40:56', '2020-06-13 19:40:56');
INSERT INTO `ratings` VALUES (10, 13, 56, 5, 0, 'gggggggggggggg', '2020-06-13 19:41:01', '2020-06-13 19:41:01');
INSERT INTO `ratings` VALUES (11, 21, 37, 5, 0, NULL, '2020-07-01 23:37:03', '2020-07-01 23:37:03');
INSERT INTO `ratings` VALUES (12, 23, 54, 5, 0, 'aaad', '2020-07-12 09:39:20', '2020-07-12 09:39:20');
COMMIT;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (1, 2);
INSERT INTO `role_has_permissions` VALUES (5, 2);
INSERT INTO `role_has_permissions` VALUES (8, 2);
INSERT INTO `role_has_permissions` VALUES (16, 2);
INSERT INTO `role_has_permissions` VALUES (25, 2);
INSERT INTO `role_has_permissions` VALUES (26, 2);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'SupperAdmin', 'supperadmin', 'admins', 'Nhóm full quyền', '2020-06-21 17:50:03', '2020-06-21 17:50:03');
INSERT INTO `roles` VALUES (2, 'Preview', 'preview', 'admins', NULL, '2020-06-21 18:48:28', '2020-06-21 19:08:21');
COMMIT;

-- ----------------------------
-- Table structure for slides
-- ----------------------------
DROP TABLE IF EXISTS `slides`;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of slides
-- ----------------------------
BEGIN;
INSERT INTO `slides` VALUES (1, 'Mua nhiều giảm nhiều nhanh tay số lượng có hạn', 'https://beautygarden.vn/', '2020-04-25__banner-tgnh-thang3.jpg', 3, 1, 0, '2020-04-25 21:27:33', '2020-06-10 22:16:39');
INSERT INTO `slides` VALUES (2, 'Test', 'https://beautygarden.vn/', '2020-04-25__banner-tgnh-thang3.jpg', 1, 1, 1, '2020-04-25 21:30:24', NULL);
INSERT INTO `slides` VALUES (3, 'Test', 'https://beautygarden.vn/', '2020-04-25__banner-web-bgxshopee.png', 2, 1, 0, '2020-04-25 22:10:01', NULL);
INSERT INTO `slides` VALUES (5, 'test', 'https://beautygarden.vn/', '2020-06-11__feae0d0df9bb1ce545aa.jpg', 4, 1, 1, '2020-06-11 21:48:28', NULL);
COMMIT;

-- ----------------------------
-- Table structure for social_accounts
-- ----------------------------
DROP TABLE IF EXISTS `social_accounts`;
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

-- ----------------------------
-- Records of social_accounts
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for statics
-- ----------------------------
DROP TABLE IF EXISTS `statics`;
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

-- ----------------------------
-- Records of statics
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for supplieres
-- ----------------------------
DROP TABLE IF EXISTS `supplieres`;
CREATE TABLE `supplieres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of supplieres
-- ----------------------------
BEGIN;
INSERT INTO `supplieres` VALUES (1, 'Nhà CC A', '0986420994', 'phupt.humg.94@gmail.com', 'Ngách 138, Số nhà 62', '2020-04-24 10:37:05', NULL);
INSERT INTO `supplieres` VALUES (2, 'Công ty TNHH Mỹ Phẩm Chaveny', '00945874865', 'xu@gmail.com', 'hà nội', '2020-06-14 10:46:02', NULL);
INSERT INTO `supplieres` VALUES (3, 'nhà cung cấp a', '0355566998', 'cungcap@gmail.com', 'nb', '2020-06-22 17:15:52', NULL);
COMMIT;

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transactions
-- ----------------------------
BEGIN;
INSERT INTO `transactions` VALUES (1, 2, 1, 231760, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 2, 1, '2020-04-28 09:06:31', '2020-06-04 22:32:16');
INSERT INTO `transactions` VALUES (2, 3, 1, 199500, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'ứng hòa -HN', NULL, -1, 1, '2020-05-01 20:57:50', '2020-05-01 21:05:08');
INSERT INTO `transactions` VALUES (3, 3, 1, 148500, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-05-01 21:02:34', '2020-05-01 21:04:59');
INSERT INTO `transactions` VALUES (4, 2, 1, 399000, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ An', NULL, 3, 1, '2020-06-02 23:05:39', '2020-06-02 23:05:50');
INSERT INTO `transactions` VALUES (5, 1, 1, 11760, 'Khách hàng 1', 'khachhang1@gmail.com', '01255878995885', 'Nghệ AN', NULL, 3, 1, '2020-06-04 22:10:42', '2020-06-04 22:11:44');
INSERT INTO `transactions` VALUES (6, 4, 1, 11760, 'Xuân Nguyễn', 'xuannguyen97@gmail.com', '0981135997', 'ứng hòa-hn', NULL, 3, 1, '2020-06-04 22:19:20', '2020-06-04 22:33:34');
INSERT INTO `transactions` VALUES (7, 3, 1, 2940000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-06-08 16:14:26', '2020-06-08 17:28:17');
INSERT INTO `transactions` VALUES (8, 2, 1, 712800, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 3, 1, '2020-06-08 23:43:21', '2020-06-08 23:43:26');
INSERT INTO `transactions` VALUES (9, 2, 1, 441000, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 3, 1, '2020-06-08 23:43:44', '2020-06-08 23:43:48');
INSERT INTO `transactions` VALUES (10, 2, 0, 23520, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 1, '2020-06-08 23:59:43', NULL);
INSERT INTO `transactions` VALUES (11, 3, 1, 23520, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'ứng hòa-hn', NULL, 3, 1, '2020-06-09 13:56:20', '2020-06-12 17:53:06');
INSERT INTO `transactions` VALUES (12, 3, 1, 2473500, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'Hà nội', NULL, 3, 1, '2020-06-10 22:28:39', '2020-06-12 17:53:08');
INSERT INTO `transactions` VALUES (13, 3, 1, 3764500, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'Hà nội', NULL, 3, 1, '2020-06-12 17:51:44', '2020-06-14 10:44:07');
INSERT INTO `transactions` VALUES (14, 16, 0, 1265500, 'tung', 'buisontung1997@gmail.com', '012345678', '91 nguyen chi thanh', NULL, 1, 1, '2020-06-13 04:24:00', NULL);
INSERT INTO `transactions` VALUES (15, 3, 1, 441000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-06-13 18:03:13', '2020-06-13 18:07:11');
INSERT INTO `transactions` VALUES (16, 3, 1, 3381000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'bn', NULL, 3, 1, '2020-06-13 18:04:38', '2020-06-13 18:07:06');
INSERT INTO `transactions` VALUES (17, 3, 1, 441000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-06-13 18:13:23', '2020-06-13 18:13:35');
INSERT INTO `transactions` VALUES (18, 3, 4, 23520, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'ứng hòa-hn', NULL, 3, 1, '2020-06-14 10:42:29', '2020-07-19 23:55:51');
INSERT INTO `transactions` VALUES (19, 3, 4, 11760, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'ứng hòa-hn', NULL, 3, 1, '2020-06-14 10:43:35', '2020-08-20 15:26:49');
INSERT INTO `transactions` VALUES (20, 3, 4, 11760, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'ứng hòa-hn', NULL, 3, 1, '2020-06-14 19:07:13', '2020-08-20 15:26:45');
INSERT INTO `transactions` VALUES (21, 3, 4, 665000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', 'gghjg', 3, 1, '2020-06-14 19:45:33', '2020-07-30 10:49:09');
INSERT INTO `transactions` VALUES (22, 3, 4, 1881000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'cổ nhuế', NULL, 3, 1, '2020-06-14 19:51:51', '2020-07-30 10:49:08');
INSERT INTO `transactions` VALUES (23, 3, 4, 940500, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'Hà nội', NULL, 3, 1, '2020-06-14 19:52:59', '2020-07-19 23:55:53');
INSERT INTO `transactions` VALUES (24, 3, 4, 824500, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'ứng hòa-hn', NULL, 3, 1, '2020-06-14 19:54:40', '2020-07-19 23:55:54');
INSERT INTO `transactions` VALUES (25, 2, 0, 58800, 'TrungPhuNa', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 1, '2020-06-14 19:58:38', NULL);
INSERT INTO `transactions` VALUES (26, 2, 0, 2133600, 'Trung Phu NA', 'phupt.humg.94@gmail.com', '0986420994', 'Ngách 138, Số nhà 62', NULL, 1, 1, '2020-06-14 20:00:15', NULL);
INSERT INTO `transactions` VALUES (27, 3, 1, 0, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'ứng hòa-hn', NULL, 3, 1, '2020-06-14 21:06:18', '2020-07-21 10:53:12');
INSERT INTO `transactions` VALUES (28, 3, 1, 824500, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-06-14 21:08:53', '2020-06-24 22:01:49');
INSERT INTO `transactions` VALUES (29, 3, 1, 665000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-06-14 21:10:34', '2020-06-24 22:01:47');
INSERT INTO `transactions` VALUES (30, 2, 0, 23520, 'Trung Phu NA', 'phupt.humg.94@gmail.com', '0986420994', 'Ngách 138, Số nhà 62', NULL, 1, 1, '2020-06-14 21:11:54', NULL);
INSERT INTO `transactions` VALUES (31, 3, 1, 1960000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', 'a', 3, 1, '2020-06-15 21:39:13', '2020-06-15 21:39:48');
INSERT INTO `transactions` VALUES (32, 3, 1, 23520000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', 'a', 3, 1, '2020-06-15 21:43:14', '2020-06-15 21:43:34');
INSERT INTO `transactions` VALUES (33, 3, 1, 570000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'Hà nội', NULL, 3, 1, '2020-06-15 22:29:18', '2020-06-15 22:29:35');
INSERT INTO `transactions` VALUES (34, 3, 1, 2940000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-06-15 22:49:58', '2020-06-15 22:50:24');
INSERT INTO `transactions` VALUES (35, 2, 1, 35280, 'Trung Phu NA', 'phupt.humg.94@gmail.com', '0986420994', 'Ngách 138, Số nhà 62', NULL, 3, 1, '2020-06-15 22:56:02', '2020-06-15 22:56:12');
INSERT INTO `transactions` VALUES (36, 2, 1, 40000, 'Trung Phu NA', 'phupt.humg.94@gmail.com', '0986420994', 'Ngách 138, Số nhà 62', NULL, 3, 1, '2020-06-15 22:58:22', '2020-06-15 22:58:55');
INSERT INTO `transactions` VALUES (37, 3, 1, 2376000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-06-15 23:29:20', '2020-06-15 23:29:34');
INSERT INTO `transactions` VALUES (38, 19, 0, 156800, 'levanhuy', 'gg@gmail.com', '123212312', 'sdsdasd', 'dasdas', 1, 1, '2020-06-19 10:14:45', NULL);
INSERT INTO `transactions` VALUES (39, 3, 1, 119633, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-06-21 22:28:30', '2020-06-21 22:28:48');
INSERT INTO `transactions` VALUES (40, 3, 1, 23520, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', NULL, 3, 1, '2020-06-21 22:31:14', '2020-06-21 22:31:59');
INSERT INTO `transactions` VALUES (41, 3, 1, 396000, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'hn', 'a', 3, 1, '2020-06-21 22:35:28', '2020-06-21 22:35:57');
INSERT INTO `transactions` VALUES (42, 3, 1, 19800, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'ứng hòa-hn', NULL, 3, 1, '2020-06-22 22:02:37', '2020-06-22 22:02:52');
INSERT INTO `transactions` VALUES (43, 23, 0, 2574000, 'test', 'tes111t@gmail.com', '111111', 'g', '1', -1, 1, '2020-07-12 09:43:03', '2020-07-12 09:43:28');
INSERT INTO `transactions` VALUES (44, 24, 0, 445500, 'Trần Công Minh', 'minhlam58010@gmail.com', '0337857856', '100 lê hồng phong, p.6, q.10, HCM', NULL, 1, 1, '2020-07-13 02:24:25', NULL);
INSERT INTO `transactions` VALUES (45, 3, 1, 12, 'hoa', 'xuannguyencntt97@gmail.com', '0123878435', 'ứng hòa-hn', NULL, 3, 1, '2020-07-13 16:17:04', '2020-07-13 16:18:28');
INSERT INTO `transactions` VALUES (46, 22, 0, 307000, 'phupt.humg.94@gmail.com', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 1, '2020-07-13 23:31:10', NULL);
INSERT INTO `transactions` VALUES (47, 22, 0, 16830, 'phupt.humg.94@gmail.com', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 1, '2020-07-13 23:34:48', NULL);
INSERT INTO `transactions` VALUES (48, 22, 0, 1287000, 'phupt.humg.94@gmail.com', 'phupt.humg.94@gmail.com', '0986420994', 'Nghệ AN', NULL, 1, 1, '2020-07-13 23:34:57', NULL);
INSERT INTO `transactions` VALUES (49, 12, 1, 1330000, 'Trần Công Minh', 'trancongminh@gmail.com', '002454815', '100 lê hồng phong, p.6, q.10, HCM', 'a', 3, 1, '2020-07-20 00:07:41', '2020-07-21 10:55:21');
INSERT INTO `transactions` VALUES (50, 26, 0, 17287000, 'test', 'minhquan66@gmail.com', '12345678', 'Tp hcm', 'Đơn hàng têst', -1, 1, '2020-08-08 12:29:33', '2020-08-08 12:30:05');
INSERT INTO `transactions` VALUES (51, 27, 4, 594000, 'chung', 'dangdinhchung98@gmail.com', '11111111', 'g', 'fsdf', 3, 1, '2020-08-11 22:55:01', '2020-08-20 15:26:07');
COMMIT;

-- ----------------------------
-- Table structure for user_favourite
-- ----------------------------
DROP TABLE IF EXISTS `user_favourite`;
CREATE TABLE `user_favourite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uf_product_id` int(11) NOT NULL DEFAULT '0',
  `uf_user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_favourite
-- ----------------------------
BEGIN;
INSERT INTO `user_favourite` VALUES (13, 37, 21);
INSERT INTO `user_favourite` VALUES (1, 47, 7);
INSERT INTO `user_favourite` VALUES (4, 47, 9);
INSERT INTO `user_favourite` VALUES (5, 47, 13);
INSERT INTO `user_favourite` VALUES (6, 50, 14);
INSERT INTO `user_favourite` VALUES (11, 50, 19);
INSERT INTO `user_favourite` VALUES (2, 53, 3);
INSERT INTO `user_favourite` VALUES (3, 54, 3);
INSERT INTO `user_favourite` VALUES (9, 55, 2);
INSERT INTO `user_favourite` VALUES (8, 56, 13);
INSERT INTO `user_favourite` VALUES (12, 82, 20);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (3, 'hoa', 'xuannguyencntt97@gmail.com', NULL, '$2y$10$.Mb1Me0o2bPnRpE.zQxhsu6jD2hpkJjFMqWnCMm3cgjn2.Zbz6u2i', '0123878435', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-08T09:11:24.373219Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-09T06:54:47.500044Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-09T10:20:54.053640Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-10T15:10:10.359429Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-12T10:49:53.455729Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-13T11:02:54.836143Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-14T03:42:16.088373Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-14T12:07:00.931752Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-14T12:44:59.099176Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T14:35:46.617825Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-16T03:41:35.588766Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.106\",\"time\":\"2020-06-21T15:27:11.602655Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.106\",\"time\":\"2020-06-22T15:02:26.938393Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-06-29T01:51:34.906678Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-06-30T10:17:50.788218Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-06-30T10:18:25.971733Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-07-13T09:16:44.751646Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"84.0.4147.89\",\"time\":\"2020-07-21T14:20:13.548301Z\"}]', 2, NULL, NULL, NULL, '2020-05-01 20:52:43', NULL);
INSERT INTO `users` VALUES (6, 'Test', 'test@gmail.com', NULL, '$2y$10$64wOOKvL/pN0AEATIqawYuM0w804y1eI2.GAusbC2mzJwkoLNQ7Cq', '12345756765', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-07T10:07:19.402238Z\"}]', 0, NULL, NULL, NULL, '2020-06-07 17:01:15', NULL);
INSERT INTO `users` VALUES (7, 'DevNguyen', 'laptrinhtraitim2020@gmail.com', NULL, '$2y$10$5S/2AmgEVbJUVpFJur3pYOr/ibKJ5JN9MToXGpbdyqJbQIrWiGPCm', '09481434334', 0, NULL, 4, NULL, NULL, NULL, '2020-06-07 18:00:26', NULL);
INSERT INTO `users` VALUES (8, 'binh', 'binhduyson@gmail.com', NULL, '$2y$10$2gXJ1/Ez0BK3PjG2LHSsbuVqzP/XwJBFHjbESua.J/DizplKJO/C2', '0905247771', 0, NULL, 0, NULL, NULL, NULL, '2020-06-07 20:01:54', NULL);
INSERT INTO `users` VALUES (9, 'Trần Văn Vàng', 'laptrinhtraitim20210@gmail.com', NULL, '$2y$10$1VxjCAKEfzBXhRU38XPfYOgxPDg0.nfCckv3q/NoTMiXJEVqemlNm', '09481346554', 0, NULL, 3, NULL, NULL, NULL, '2020-06-08 20:45:59', NULL);
INSERT INTO `users` VALUES (10, 'TIN TỨC KHUYẾN MÃI', 'laptrinhtraitim20q20@gmail.com', NULL, '$2y$10$XFirevBWBIsS2MS5DaM3DOt/0pPSTAW/vSMCpNGntVjaEnX.IuOle', '09483323232', 0, NULL, 0, NULL, NULL, NULL, '2020-06-09 18:36:43', NULL);
INSERT INTO `users` VALUES (11, 'Admin', 'laptrinhtraitim20@gmail.com', NULL, '$2y$10$Vf3n8oixQqv60e4kwTEdcu497awA3Evyk4MrOJOviF/yQjGbu9Ysm', '1234567', 0, NULL, 6, NULL, NULL, NULL, '2020-06-09 21:49:03', NULL);
INSERT INTO `users` VALUES (12, 'Trần Công Minh', 'trancongminh@gmail.com', NULL, '$2y$10$48HbHULFdOjG6HWhYwwUEOniDbjvxVGz438ugumIGDxaWVp8GSSey', '002454815', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-12T21:23:12.443467Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-07-10T15:35:44.542811Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-07-19T17:07:11.112900Z\"}]', 0, NULL, NULL, NULL, '2020-06-11 00:45:31', NULL);
INSERT INTO `users` VALUES (13, 'Admin', 'admin@gmail.com', NULL, '$2y$10$ycpv8hJULe5P/bSyihAQkeiTFPo3BAJVjevUApTl4rUYPEQImjgXW', '123456789', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-11T14:27:49.585797Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-11T18:04:18.358500Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-11T18:04:43.894702Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-11T18:22:38.008622Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-13T12:30:00.493457Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T16:44:49.564950Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T16:44:52.351765Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T16:44:57.589320Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T16:45:01.065447Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T16:45:03.747559Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T16:45:06.612451Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T16:45:14.821995Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.97\",\"time\":\"2020-06-15T16:45:17.363696Z\"}]', 3, NULL, '2020-06-11__hinh-nen-full-hd-cho-laptop-1.jpg', NULL, '2020-06-11 14:16:05', '2020-06-11 15:28:20');
INSERT INTO `users` VALUES (14, 'test', 'test100@gmail.com', NULL, '$2y$10$.jbWlhhpNK6CVmc0uQ1s2u/XrtArs2/cLpbE7/qKhZOm66x23Li3q', '0123456789', 0, NULL, 0, NULL, NULL, NULL, '2020-06-12 16:21:13', NULL);
INSERT INTO `users` VALUES (15, 'Lưu Tiến', 'luutiencnc89@gmail.com', NULL, '$2y$10$0UQ5jlz.TsJNgPMdQn1Qr.qZ49rDQrVayqFZ2pkQi37Wa1b9pOeC.', '0942005988', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.106\",\"time\":\"2020-06-23T07:18:44.507757Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-07-01T06:36:40.858413Z\"}]', 4, NULL, NULL, NULL, '2020-06-12 16:40:11', NULL);
INSERT INTO `users` VALUES (16, 'tung', 'buisontung1997@gmail.com', NULL, '$2y$10$3DKmvLoTXy8bxNOWJGOE.OFuTPIMFNrR/YdClkkgBIndTeUv8k4Ua', '012345678', 0, NULL, 0, NULL, NULL, NULL, '2020-06-13 04:23:36', NULL);
INSERT INTO `users` VALUES (17, 'Nguyễn Văn Tiến', 'crisronaldo348@gmail.com', NULL, '$2y$10$m1/jUconMSSp4YlwP6wKNueSBiub6Ssga3vAbmz0kuC4PltPyaSCu', '333333', 0, NULL, 0, NULL, NULL, NULL, '2020-06-18 21:10:51', NULL);
INSERT INTO `users` VALUES (18, 'Nguyễn Chí Bảo', 'nguyentribao1998@gmail.com', NULL, '$2y$10$UaR6ezRjjACoaHrTxIIIXOx5wxuOfuq7PNJPc5JhaXpdfiJx3qqNa', '036478950', 0, NULL, 0, NULL, NULL, NULL, '2020-06-19 09:27:34', NULL);
INSERT INTO `users` VALUES (19, 'levanhuy', 'gg@gmail.com', NULL, '$2y$10$pBPWXpKiLZyNlj9rWCDgDO79WgUgv6HDXID0iQ7ZRDnjJZt3BHpJG', '123212312', 0, NULL, 1, NULL, NULL, NULL, '2020-06-19 10:06:00', NULL);
INSERT INTO `users` VALUES (20, 'Lê Bá Dương', 'nguyentribao40@gmail.com', NULL, '$2y$10$lxIGUzpXjSpjyz3VtsVmFOaThaMazIuLjYiotrkuvvE/CJ7fCCMui', '09123456789', 0, NULL, 0, NULL, NULL, NULL, '2020-06-24 22:50:18', NULL);
INSERT INTO `users` VALUES (21, 'Lương Bảo Tín', 'user@gmail.com', NULL, '$2y$10$aKjC0r2aVf37aqgcUOUATeH.dpZHhSoUwNDe.a5zSh87C72Trnll2', '1234567890', 0, NULL, 4, NULL, NULL, NULL, '2020-07-01 23:35:25', NULL);
INSERT INTO `users` VALUES (22, 'phupt.humg.94@gmail.com', 'phupt.humg.94@gmail.com', NULL, '$2y$10$59pO9NFQq3F7VPNd/VYIfOB0cAqKg1atrQXtifW8EgUInER8YKCDO', '0986420994', 0, '[{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_16_0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-07-13T11:16:20.199839Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_16_0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-07-13T14:30:05.575915Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_16_0\",\"browser\":\"Chrome\",\"browser_ver\":\"83.0.4103.116\",\"time\":\"2020-07-13T20:18:27.130619Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_16_0\",\"browser\":\"Chrome\",\"browser_ver\":\"84.0.4147.125\",\"time\":\"2020-08-13T14:18:49.556108Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_16_0\",\"browser\":\"Chrome\",\"browser_ver\":\"84.0.4147.125\",\"time\":\"2020-08-13T14:18:50.147786Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_16_0\",\"browser\":\"Chrome\",\"browser_ver\":\"85.0.4183.102\",\"time\":\"2020-09-10T21:56:31.029336Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_16_0\",\"browser\":\"Chrome\",\"browser_ver\":\"85.0.4183.102\",\"time\":\"2020-09-12T12:21:42.824828Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_16_0\",\"browser\":\"Chrome\",\"browser_ver\":\"85.0.4183.102\",\"time\":\"2020-09-16T07:13:39.738273Z\"}]', 0, NULL, NULL, NULL, '2020-07-09 00:30:59', NULL);
INSERT INTO `users` VALUES (23, 'test', 'tes111t@gmail.com', NULL, '$2y$10$OifgBazSemw27JpcfIUHTO3Y3EwxXIKDyG.eHGloMtV5mR1wkVaLO', '111111', 0, NULL, 0, NULL, NULL, NULL, '2020-07-12 09:38:16', NULL);
INSERT INTO `users` VALUES (24, 'Trần Công Minh', 'minhlam58010@gmail.com', NULL, '$2y$10$2G4.6AmYpf1K4FnIQg.rbeafxi9G5pqimLgIFTk7h5uXEiFM4hQiC', '0337857856', 0, NULL, 0, NULL, NULL, NULL, '2020-07-13 02:23:59', NULL);
INSERT INTO `users` VALUES (25, 'nam', 'nam@gmail.com', NULL, '$2y$10$NF050k1naTMnX266WfYf2OIrXaTVsEu6YGHAvCBl/wGLaXyeOFURu', '01234566787', 0, NULL, 0, NULL, NULL, NULL, '2020-07-16 17:41:28', NULL);
INSERT INTO `users` VALUES (26, 'test', 'test123@gmail.com', NULL, '$2y$10$aAhPBfYMZ1ZqL77E/y.AXehYwW3gO27ckCIg4udB.bpMBi1j0ZY7K', '12345678', 0, '[{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_4\",\"browser\":\"Chrome\",\"browser_ver\":\"84.0.4147.105\",\"time\":\"2020-08-08T03:22:54.858626Z\"},{\"device\":\"iPhone\",\"platform\":\"iOS\",\"platform_ver\":\"13_6\",\"browser\":\"Safari\",\"browser_ver\":\"13.1.2\",\"time\":\"2020-08-08T05:28:50.078097Z\"}]', 0, NULL, NULL, NULL, '2020-08-08 10:22:44', NULL);
INSERT INTO `users` VALUES (27, 'chung', 'dangdinhchung98@gmail.com', NULL, '$2y$10$1L3yjBb9TFsba2xJBtxex.ysUWlFyiPwvcrToQrQbBUZWQM75wyTa', '11111111', 0, NULL, 0, NULL, NULL, NULL, '2020-08-11 22:54:43', NULL);
INSERT INTO `users` VALUES (28, 'Nguyen', 'hihihi@gmaill.com', NULL, '$2y$10$bLd1LG0gmMy7oagkN.rhgufJTRVnGp454EDQbnO3zh/y5iPo0qPgK', '0134567289', 0, NULL, 0, NULL, NULL, NULL, '2020-08-20 15:11:57', NULL);
INSERT INTO `users` VALUES (29, 'chau soc kha', 'cskha1997@gmail.com', NULL, '$2y$10$KC1SSEXlg3u9glkqVrFo0.ayhZtjMkJ97SufT.PRl4M8Z2IBqvFEK', '1234556788', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"85.0.4183.102\",\"time\":\"2020-09-11T03:42:51.146101Z\"}]', 2, NULL, NULL, NULL, '2020-09-11 10:34:46', NULL);
INSERT INTO `users` VALUES (30, 'Bệnh viện 121', 'cskha18@gmail.com', NULL, '$2y$10$dGMURP69mhuXrEJJ/voma.XIckXyNOOXQ6dwPBucDfcyTaO/ZV7XW', '1231231212312312123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123123', 0, NULL, 0, NULL, NULL, NULL, '2020-09-11 10:41:12', NULL);
COMMIT;

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videos
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
