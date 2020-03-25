/*
 Navicat Premium Data Transfer

 Source Server         : php21
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3307
 Source Schema         : laravel_lanhdd

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 25/03/2020 11:34:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (59, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (60, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (61, '2020_03_09_090826_create_tasks_table', 1);
INSERT INTO `migrations` VALUES (62, '2020_03_09_094505_create_users_info', 1);
INSERT INTO `migrations` VALUES (63, '2020_03_10_032459_create_products_table', 1);
INSERT INTO `migrations` VALUES (64, '2014_10_12_100000_create_password_resets_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` int(11) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `deadline` datetime(0) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mail_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `role` int(11) NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_mail_address_unique`(`mail_address`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'doan51@example.com', '$2y$10$scmSFsINLIfOIWqb2gNk8edtsQKrV11ssx4GKfRGsF1UW1MIhWDnC', 'Chu Xuyến Vũ', '6243 Phố Hoàng, Phường Vân, Quận Diệu\nCần Thơ', '84-94-309-5450', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (2, 'vu.han@example.org', '$2y$10$/n/ngTybShaY.qQoqybwOev.43p16zlW/var525MXb8Y4nKlvXScq', 'Tăng Khoa Siêu', '369 Phố Nghiệp, Thôn Nhữ Thời, Quận Chương Bửu\nHồ Chí Minh', '(0240) 043 5299', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (3, 'nham.hp@example.com', '$2y$10$gsKl1QS2PK0aLQbQitaH5OmcMMX3ZmJDaurBVodH4iYGWE7vaKtdq', 'Ông. Xa Sơn Thắng', '6953 Phố Phan, Ấp Chế Điệp, Huyện Mỹ Nhạn\nThanh Hóa', '063-668-5821', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (4, 'nhan.ngo@example.net', '$2y$10$xkCDQnx/DwP60QWKpzUkj.imL1yxAr5ixw4VKJb4FykuqiM25U2vu', 'Lương Thạch Bảo', '5033 Phố Ong Nhiên Phong, Xã Nhiên Hải, Quận Đường Mi\nHà Nội', '84-320-083-8227', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (5, 'doan.tho@example.com', '$2y$10$C35JVuuct8otNQFYi9o9le9Cp89knJv34b7JGhV4J8WZ/8xh6BQBK', 'Chị. Sơn Hoa', '758 Phố Nghị, Xã Duy, Quận Từ Hoàng Ty\nHà Nam', '(04) 5050 3191', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (6, 'tphung@example.com', '$2y$10$ZYV1bfAPNyUvXoSOGN01vezbY6KcsZE5tvG46DVC0Ed6FVf5MQuDW', 'Đường Ngôn', '927, Ấp Ninh Chưởng, Ấp Trang Ngân, Quận Dụng Phi\nBà Rịa - Vũng Tàu', '052-964-3294', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (7, 'hoang.duy@example.net', '$2y$10$y5Y22AbhvulPaP/hjySUUODr5A3yQ/OKxvMzhe1rnVUF1/SU6mcv2', 'Anh. Đường Hiểu Lĩnh', '2541 Phố Trang, Xã Dương, Quận Du Trà\nHồ Chí Minh', '+84-60-953-5348', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (8, 'mien.truong@example.com', '$2y$10$8O8X8z.ces81FwV7CJgh2e/cJnXbA0NtxkpWl5.cEIThJpQSuVOLW', 'Lỳ Hoàn Thêu', '2 Phố Trân, Phường Lục, Huyện Phan Chính\nBắc Kạn', '08-9698-0435', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (9, 'khieu88@example.org', '$2y$10$GZ6XVglXzTtSyo37i6EZ4eMvvE1tPUpEFodFkeWFRGiqgjGCad3W2', 'Mạch Khuyên', '8036, Ấp Ấu Đan Trầm, Ấp Ấu Lân, Huyện Huy Lâm\nVĩnh Phúc', '(84)(55)881-3591', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (10, 'xuyen26@example.net', '$2y$10$lN0D9lhAvgfSYgMZ89Z0Ue5rvxEzGqt7FqZ40zql9tkqSEu8CY8Xu', 'Em. Viên Lâm Thuần', '234 Phố Hoàng Đình Hòa, Xã 90, Huyện 07\nHải Phòng', '(097)430-2768', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (11, 'pdinh@example.com', '$2y$10$MHg3IDUNj9hC5nCYhheFSux2hyi4U93mXJ826sVFQqv934l9ZWNS2', 'Anh. Từ Bảo Vĩnh', '51, Ấp Sương Hiếu, Ấp Sương Hân, Quận Nhân\nHà Tĩnh', '(84)(122)925-9728', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (12, 'hong.phuc@example.net', '$2y$10$VwKFSB8D.J0hUBvuodtKSuwRl4I6DSJDGAQeEyxN.2mYxFJdtxCYi', 'Mâu Ninh', '64 Phố Bùi Thoại Liễu, Ấp Lý Nguyệt, Huyện Mẫn\nĐồng Nai', '(0168)332-1669', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (13, 'tkhuong@example.net', '$2y$10$FN1Od6dsT7jdineNr6kYV.U3N.llLTAaAgECNuVqp4urfBgNb9iQ6', 'Vũ Tuyến', '85, Thôn 5, Ấp Bồ Nhã, Huyện Ung Giao\nTiền Giang', '(0219) 226 7065', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (14, 'nhan.an@example.org', '$2y$10$htZ6yaLSau6tUfgDcQ4CLOrzIU9XPt9pDz717xZuW/g7myrHUSDPS', 'Liễu Mạnh Phước', '636, Thôn Huynh, Phường Tiền, Huyện Chiêu\nLạng Sơn', '(84)(97)016-1841', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (15, 'tng.hoan@example.org', '$2y$10$N21zPU45cyAmIGoi8NZ2muO6E/ueXBadZsoLDVec1diCprYM1LrPO', 'Mang Kim', '85 Phố Mộc, Phường Tôn, Quận 0\nHồ Chí Minh', '091-144-0743', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (16, 'khanh96@example.com', '$2y$10$nFQJioE4014SmZgC31W6.unR/MyJ9s9hnnrR4bqZtnmjPXsnaDMpG', 'Vừ Phước Tuyến', '792 Phố Khổng Uy Mai, Phường Cam Hường Khiếu, Quận Uy Đức\nHà Giang', '0651-775-0697', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (17, 'qunh82@example.org', '$2y$10$1wTtEe3bZ/6xnAyox5SYVenRXD3Bor6i.bk2Xg8EIav0iowjj8Up2', 'Từ Vành Trầm', '76 Phố Khuất, Phường 04, Huyện 7\nHà Giang', '(0350)641-8085', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (18, 'nham.vo@example.com', '$2y$10$09sw.hG1d4mM9Sj2PZcSFOcGAfdY2Xf57OgZkSQ3Vn6ZtxqmGBk4G', 'Em. Phạm Triều Như', '0710, Ấp Doãn Trang Thy, Ấp Trinh Hồng, Quận Cấn\nNinh Bình', '(84)(169)494-1042', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (19, 'han.dai@example.net', '$2y$10$ocZxUqsqflz7PaYe532URut54mDQ6UriOsgBIAz0Hw73aV/xK0bzC', 'Thiều Nhân Hưng', '06, Ấp Dân Trầm, Phường Cương, Quận Cát Lai\nQuảng Bình', '(84)(8)7516-2175', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (20, 'dan.duong@example.net', '$2y$10$zP.i3NSkyjQhqVlAumEwYuo77roqDMh6XCCJAIDNuxsfnlZr08k1a', 'Chú. Đường Kim Kỷ', '4 Phố Chế, Thôn Sinh Cương, Quận Tiển Hậu\nQuảng Ngãi', '060-912-0890', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (21, 'hlai@example.org', '$2y$10$13VRsb52PV7cdg4WZ0woT..O04ZqDSHHNL9irqgf3m4xp3ehJACKi', 'Bác. Đan Trầm', '7305 Phố Ngọc, Ấp Đài Thy, Quận Vân Linh\nHải Phòng', '+84-126-657-2793', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (22, 'h.ngo@example.com', '$2y$10$ng4qz6qK3f.0e6JrdON3D.qF.SKxfANlYvJrchQuHdljEg0.UoRpe', 'Liễu Thạch', '7022 Phố Mộc Diệu Bảo, Phường Đinh, Quận Tâm Liễu\nHà Nội', '+84-52-742-0611', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (23, 'han.hung@example.net', '$2y$10$p8nc7Ah2PLrnoYvYAEM.2O7DP.zxZ91bMVO/Xpu8tDkdQoTtZbQIe', 'Cô. Lều Khả Minh', '7116 Phố Lữ Kiều Lam, Xã Thạc Lệ, Huyện Bình Nhượng\nBắc Kạn', '(0120) 302 0272', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (24, 'thinh.quyen@example.org', '$2y$10$dc9wR1iU9KinPqqEHMhGq.Nc.C4vuZWzp5WblWVAH5U4fymMlfeve', 'Bác. Lương Anh', '89 Phố Kim, Phường Ngô Diệp Phương, Huyện Thôi Chính Cúc\nThừa Thiên Huế', '(84)(76)996-4296', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (25, 'ythach@example.net', '$2y$10$.AOPFpsYG2LLwnKZwP7rju561YBi2aDClUM6LoeWot2CIlGAgwlbC', 'Chú. Liễu Minh Khải', '051 Phố Chế Chiêu Diệu, Xã Phùng Tuệ Trúc, Huyện Bảo\nHà Nội', '0186 652 4472', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:56', '2020-03-10 08:07:56', NULL);
INSERT INTO `users` VALUES (26, 'tra.k@example.com', '$2y$10$KD4ARtesyDnqpzC8X1AdT.cLbsRzMy/h0PTNSeoau4qFciBUN.euS', 'Cô. Đồng Uyên Thy', '8, Thôn Khương Chấn, Xã Diệp Điền Tuấn, Huyện Siêu Thương\nBà Rịa - Vũng Tàu', '0124 378 3608', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (27, 'lam.yen@example.org', '$2y$10$05XbO2pKumXBDhL.nCHupOQ4O0ScNmTQCSvDRM9vyIk0yknGBvPyS', 'Nguyễn Kim Quảng', '024 Phố Kha, Xã Trương, Quận 50\nCần Thơ', '098-029-4021', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (28, 'k.u@example.com', '$2y$10$4rbDFvXuRqtCE7C.OmIifeoSQ62SqA/JB1NlTP3RWWdbeEjBHvmyO', 'Chú. Ngân Quân Phúc', '299 Phố Mai Hậu Phước, Xã Duy, Huyện Giáp Sỹ\nCần Thơ', '(84)(58)158-7795', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (29, 'dung.thoa@example.com', '$2y$10$xOqPKjnxThpXEYlxGNk3E.3kKciNLiOK4.EsrvY0DKHJBy6hRHPEC', 'Anh. Lục Chiểu', '4411, Thôn Sỹ Chu, Xã Lưu Lai Nhiên, Huyện Chu Hào Thiên\nBạc Liêu', '(84)(4)3334-4452', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (30, 'thi.le@example.net', '$2y$10$9tEqtR7DDTIi09nuxp8ILuC7QkDHbkZ/zWAX4G3h1tLyJeRKuFeKG', 'Đậu Hành', '4138, Ấp Châu, Thôn Trạch Thêu, Quận Dư Luật Vũ\nĐắk Lắk', '070 472 4629', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (31, 'ndinh@example.com', '$2y$10$6M905qqiWJoeAUOMl5ucWOty/4bW8p1i.Vv6n9yVJ.nk9SC8niIYG', 'Cô. Tông Hợp', '309 Phố Ma Quỳnh Xuân, Phường Tạ, Quận Ngân Đài\nThanh Hóa', '067-738-4694', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (32, 'diem.ly@example.org', '$2y$10$g5F/UHAhsVfZpOi3xOnJYO.Sa8wNTdbV9iZyvBONXbseMnXkDO5Ay', 'Hán Sơn Huỳnh', '81, Ấp Kính Bổng, Phường Khai Ẩn, Quận Khương\nHà Giang', '0321 231 7750', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (33, 'uyen.dng@example.org', '$2y$10$1s2bSEyVE3e5/UWOkTxhV.9TKLn59o/X9vv7XagJjtlCT5IU4NCKe', 'Trà Thuận', '1142 Phố Hồ Hằng Trầm, Xã Hứa Long Sỹ, Quận Khánh\nĐiện Biên', '(072) 763 3294', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (34, 'thng79@example.com', '$2y$10$sd6qLY0tFrbh46y8cNSHGe3VjFFh9488zv1jLhqV.HyabbTfz5.xm', 'Cụ. Viên Đường', '1960, Ấp Tiếp Cần Diệu, Xã Vi, Huyện Khiếu Vỹ\nThanh Hóa', '0651-099-9129', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (35, 'vd@example.net', '$2y$10$kaPHnLoUY1AUcv6Kk0XElO7/osPu0vmuODm8j1s61Y4Zp8.bRBMtO', 'Bà. Cam Diễm', '022 Phố Dã Dân Hoa, Ấp Phan Quyên, Quận Đăng\nThái Nguyên', '067-906-8590', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (36, 'wnhiem@example.org', '$2y$10$/1Y7vrKdgRDjD7vPfo.aP.vItZOTPG3AXbuODKMBP06Fx.Z.ZWoUa', 'Văn Thu', '32, Thôn Lam Khôi, Xã 7, Quận 7\nLào Cai', '+84-168-151-6101', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (37, 'tu21@example.org', '$2y$10$72zZIEUdoFyw5sly7o2i1eYW0aprekePc5A5co8PlKGVnNECv31Te', 'Bà. Thôi Xuyến Sương', '896 Phố Khâu Hiệp Trí, Xã 70, Huyện Thoại Huyền\nHải Phòng', '+84-4-9176-8284', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (38, 'banh.luat@example.com', '$2y$10$SRGX.Y5QbwfFt4yBlFR2wO6aMwPDwUlzXCpjybDUaWW5sZ8mu3YNy', 'Em. Âu Quân Nhượng', '006 Phố Bùi Sa Hiếu, Thôn Mạc Di, Quận Cương\nVĩnh Long', '0219-091-7023', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (39, 'ngo.cn@example.net', '$2y$10$3OpboNmejmA/1SUuX6bWOuaYYMSDPRtHLkfv5k7aOdWIVZ/eX8Jiu', 'Anh. Thịnh Vỹ', '13 Phố Tông Hiên Tụ, Xã Thân Kính Nghi, Huyện 3\nCần Thơ', '(84)(72)241-2411', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (40, 'qdon@example.net', '$2y$10$vV9wPi9UV/jWzmTY.qmVx.u5RH7sApHQ.I/Y67kQsD9VnZBW6dwYO', 'Đỗ Huệ', '63 Phố Lều Lân Phát, Ấp Diệp Cảnh, Huyện 5\nPhú Yên', '(037)169-4021', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (41, 'th.lai@example.com', '$2y$10$/Zt9vACuYHK54yyAUk2pw.BdjCPRtRhZBrzzXmccOWUhI.3Fy.xZ6', 'Đinh Hải', '52 Phố Mâu Hoa Nga, Phường Triệu, Quận Hà Việt Nghi\nCần Thơ', '072-042-5937', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (42, 'onh@example.com', '$2y$10$3spfMGn7oAVlN9OGpW6vZONFB2oUR74FMJmj/JkzYeMqdJYDLbIQS', 'Anh. La Sơn', '983, Thôn Đức Thêu, Xã Bảo, Quận Nhàn Sinh\nSóc Trăng', '0120 711 7850', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (43, 'khoa.hiep@example.net', '$2y$10$HZFZf7ljhJU3dE0khgbeweCwGMOky/A62q3GtDdUZzlwnJJQywRLG', 'Cụ. Tô Hội', '37 Phố Thiều, Ấp Trưng Hiên, Huyện Ung\nThái Bình', '+84-120-275-4784', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (44, 'dung.hinh@example.org', '$2y$10$tpEN8LkALV.0fgis3CxVF.b99owYMclrvsKacZhpv59Elk4KSbQoG', 'Cụ. Nhữ Giác', '6262 Phố Nhượng, Xã Lan Mẫn, Huyện 8\nHưng Yên', '(054)134-1645', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (45, 'liu66@example.net', '$2y$10$pZl7mgv7qIFyt1a8BGCKzONo4B//Lltsyf.MC2ZI4f2HKkiLvWxlO', 'Bác. Mạc Liêm', '23 Phố Hán Phước Hoa, Xã Ca Trân, Huyện Âu Quảng\nKhánh Hòa', '(84)(79)110-8943', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (46, 'kim.trung@example.org', '$2y$10$fDyy3r8TOfexO1ubVxhpRe4LX5omSHTjdxC2PAve5GnZO2z.lva7i', 'Em. Khương Xuân', '5240 Phố Cung Hoa Trung, Xã Mẫn, Quận Triệu Trang Hoài\nHồ Chí Minh', '031 697 7222', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (47, 'zcung@example.org', '$2y$10$.dJUYQ2WlwZcAdLbSfBEAuINpAAdqYhKMTkIgDGhCcHFecbLpABAm', 'Em. Giao Danh', '20, Ấp Phong Bồ, Phường Đan, Huyện 8\nThái Nguyên', '84-165-257-4875', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (48, 'wba@example.net', '$2y$10$7pBvredRgxrFz/QAM44ZIudjddgj7H8vGjXnaIG4FZa1EzYrzE69e', 'Em. Mã Bữu Triều', '2, Thôn Vy Sương, Xã Đức Phó, Huyện Trà Trình\nSóc Trăng', '84-31-103-2374', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (49, 'duong.chuong@example.org', '$2y$10$y9uDL6JnU9rfGdAwnXv9j.e6YXXd/MgAnsmMeuNCFxXXLWBhzg5pa', 'Trang Dân Thúc', '14 Phố Ngạn, Phường Đới Khanh Chi, Quận Minh Khánh\nLạng Sơn', '+84-167-533-9083', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (50, 'kdng@example.net', '$2y$10$yYLllp6LsBWZfH/mK44SRuJqsw4KWh7a9zSh.X9blJ/qH3UBK5KZO', 'Giáp Nhân Triều', '549 Phố Ca, Phường Tụ Hữu, Huyện Phùng Bửu Đạo\nHồ Chí Minh', '(0127) 507 7988', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (51, 'du89@example.org', '$2y$10$7eWwJRcGnkKdzDrTrfqTUuKsBZObESxfn9G7zzUk9Hz2Q3zkklsJ6', 'Anh. Bế Pháp', '1414, Ấp Đôn, Xã Huyền Thoa, Huyện 1\nSóc Trăng', '(0280)664-8642', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:57', '2020-03-10 08:07:57', NULL);
INSERT INTO `users` VALUES (52, 'che.th@example.org', '$2y$10$jyR/kjc0ySm6k18QZLirSuQSMQ/YjgCHwj7wzy8LqtwnnPa5T0PWa', 'Ma Thư', '1 Phố Thạch Bằng Anh, Phường Nhã Lã, Huyện Đức Nga\nĐà Nẵng', '(84)(31)732-0506', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (53, 'sdu@example.net', '$2y$10$PAoAg7JhLDRvY3E6SuRzneRCFSK2oBCf9S9EUxhn12eMmxU5d5f1K', 'Ca Định Tín', '14 Phố Ấu Vũ An, Phường Vượng Cổ, Quận Ánh Khê Hiên\nHồ Chí Minh', '84-36-048-9926', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (54, 'cdao@example.org', '$2y$10$QDfr/7oMBVKK8mlEUwrw..tI.SXmNaUCnRpVztxeiimvIyOsecvgy', 'Cụ. Phan Phát', '50 Phố Diêm Quang Ý, Xã Đồng Lưu, Huyện 6\nĐà Nẵng', '(0124)541-3438', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (55, 'lo86@example.net', '$2y$10$X4gXk2/xd1tt4Xk4NdDYSOejkPphUg6j3GXJDR5h.b4WOXDJNQh7G', 'Anh. Phạm Khánh', '357 Phố Chung Bào Hiếu, Xã Hiếu Hải, Huyện 4\nĐồng Tháp', '+84-164-747-1741', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (56, 'imau@example.com', '$2y$10$BFJcfBxotbkDK7HuCoW1XeqCzLqMXIzcOZ8C57IqWIbGBpgyArCBm', 'Bà. Lý Oanh Lan', '1530 Phố Tiêu, Phường Khanh Hiền, Quận Hiển\nĐồng Tháp', '(031)126-8611', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (57, 'tao.tuyen@example.net', '$2y$10$yXfbAR0fzdByn2vdfvui7.hrZccrByEg7J0663pq28NF77emclFh6', 'Hàn Quân Lâm', '2 Phố Cúc, Ấp Chiêu Kiệt, Huyện Ngọc Bảo\nKon Tum', '(84)(79)148-6994', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (58, 'trung.l@example.net', '$2y$10$O2TyOSqNzKQxHzdPyvAXD.L.6c778t404L7LYgvk0X.FZu0Lxxbr.', 'Em. Cự Khanh', '95 Phố Chấn, Phường 49, Quận Mạch\nThái Bình', '(096) 534 8093', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (59, 'lan.mach@example.com', '$2y$10$V9EFL8yCwHPLEGMj0L0nKeVpQZcrBqrvDBneLfcvy8.jsX6D55CUW', 'Bà. Liễu Kiết Mi', '3292, Ấp Nguyễn Trà, Xã Sử Trọng Bạch, Huyện Thọ Hạ\nSơn La', '(84)(650)928-2270', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (60, 'bcam@example.com', '$2y$10$IdI1eO8lrh1ybinx92/71esiz6RQha6rqMOfOeywt0wMrCCVWjX7O', 'Mạch Ngôn', '3 Phố Cổ Xuyến Nguyệt, Phường Hưng Hưng, Huyện Dinh Đan\nNinh Bình', '+84-94-396-4418', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (61, 'quyet17@example.net', '$2y$10$hSwQ.zBeqkqQTWS.GjKbWekV1qjA.2qevbW/eiPzRRvrL17h1aikS', 'Em. Trần Đức Nhượng', '015 Phố Đan Cương Hải, Xã Nhung Hải, Huyện Hồng Đăng\nĐồng Tháp', '0169-277-7764', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (62, 'dien04@example.net', '$2y$10$.TSichz8Nry06u2BtJ.b7eZoFMKTZqzBb53MLdSSPQD6dpGVXeuJC', 'Hình Đài Quỳnh', '9 Phố Bảo Phước Lý, Ấp Hậu Ẩn, Huyện 5\nCần Thơ', '(84)(320)469-6490', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (63, 'duyen.thap@example.com', '$2y$10$CQxmu88eEu/lNm8KSMk03uFiaJUFN/NFJlAl/tPchr2Ozw1X89.t6', 'Uông Oanh', '72 Phố Từ Thạc Minh, Xã Hy, Quận Mỹ\nCần Thơ', '+84-37-315-1565', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (64, 'ung.le@example.org', '$2y$10$0fiLwUxEAAWxZG224op1MeMkKChSvBysvdwag0q.GWPphi.s4xdwO', 'Em. Chu Vy', '05, Ấp 6, Phường 8, Quận Nhạn Chu\nVĩnh Long', '+84-230-221-9664', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (65, 'phung.khoi@example.net', '$2y$10$n7x3gXfrVuZz2s0hC/igWesOlzpDdVt85Hqqeq0eWijd0TkwmGSRW', 'Kiều Chấn', '183 Phố Cổ, Phường Linh Cấn, Huyện An Chiến\nBạc Liêu', '(0510)049-4845', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (66, 'mach.tung@example.org', '$2y$10$TVZgTurZoDUVcKrOM5OxFObgHkc8KrGg0mgTnzyVxblKAC0fEM6cG', 'Chú. Trác Phú Bình', '5541 Phố Tôn Dũng Huyền, Xã 31, Huyện Chiêu Khúc\nĐiện Biên', '84-128-007-3592', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (67, 'yngy@example.org', '$2y$10$zwFZFzWkuiewFAztU9.XrelagbAh1BFa3O28nMfxVwBqTkU/L8WUS', 'Khuất Phong Trung', '00 Phố Lập, Xã Kim Thùy Hội, Quận Hiền Nghĩa\nHồ Chí Minh', '84-30-559-5765', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (68, 'che.giang@example.net', '$2y$10$mNC5OpeBqF3YdV1OgM6lGecuIJNmhv9cwzakXHB96LrLJtGoq1EJm', 'Lê Mai Miên', '209 Phố Quốc, Phường Toản Thân, Huyện Dung Huấn\nBình Phước', '84-219-362-7227', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (69, 'dam.sinh@example.org', '$2y$10$ROW/DQe2hZsmY0T8Iz6s7ebTT39x57PRohvzf40d7RENrP4mi/bs.', 'Cô. Nghiêm Tú', '2232 Phố Khương Ca Tú, Phường 30, Quận Tuyến Lý\nHà Tĩnh', '84-25-504-7081', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (70, 'bao.vinh@example.com', '$2y$10$aIkioqqDREUbKiJ53gIdMu3rL3gzY9ZtdW5NcHC.GZJUyQzzv6i62', 'Lạc Bảo', '0, Thôn Hàn Siêu Thành, Phường Phương, Huyện Chương\nLai Châu', '037 397 3706', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (71, 'hta@example.com', '$2y$10$LHX4/SkPFpZGeRdwe2pUUOAvWZtVIiAPNp.JLWQZ8ku9JNGldEqB2', 'Lạc Du', '598, Thôn Bích, Xã Trang Hồ, Huyện 42\nNinh Thuận', '(84)(53)067-1136', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (72, 'loc.dien@example.net', '$2y$10$NWJbnP2DsHLhKTSAUhhPJ.JqRf/UP4N.3NZ4I.GXLIWHcCtZnHup2', 'Nhiệm Hiểu Thi', '6 Phố Ca Bảo Huy, Phường Nhậm, Huyện Thạch Toản Di\nĐắk Lắk', '(84)(186)132-0921', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (73, 'trinh08@example.com', '$2y$10$z62tOqBajnuxLcbNX6Vu/u11zP4l3cMspDWsPUB4FVqhmwCTd2koS', 'Bửu Cảnh Tuyền', '1932 Phố Ong Mỹ Chương, Phường Tín Diệp, Huyện 5\nĐà Nẵng', '(84)(63)980-4878', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (74, 'nga25@example.net', '$2y$10$uFEh5d.KPWH5IxTxJJ4LOuui48hV37nonqaM.OSgkrycJREZAYnoW', 'Thân Lân', '1452 Phố Nghiêm, Ấp Du Vũ, Huyện 64\nHải Phòng', '+84-165-300-8469', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (75, 'khuyen80@example.com', '$2y$10$WakXsSH24WYWN8TZAVB5u.ksucTg2hMRTfDc8JL2R9ivhJ7Vl2ZVa', 'Cụ. Nhiệm Phước San', '9 Phố Doãn Bảo Quỳnh, Phường Vũ, Quận Duyên\nBắc Kạn', '(0199)925-5699', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:58', '2020-03-10 08:07:58', NULL);
INSERT INTO `users` VALUES (76, 'bcao@example.net', '$2y$10$QVQT2Y4YeBWQA1I/cZJUD.yj0sYSE1nIOlq0rJLp0AIaq62Ebjwka', 'Tiếp Xuân', '03 Phố Tiếp Tín Hoàn, Phường 48, Quận Phạm\nTrà Vinh', '(074) 135 5215', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (77, 'trac47@example.net', '$2y$10$z14H6cHwRxyDT7NDBvtPDOt4ft3/JwhWkSFH/ykS5M1tfGjQJriPO', 'Bà. Bá Hạ', '202, Thôn 66, Phường 4, Quận Huỳnh\nBắc Ninh', '(0129)757-1066', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (78, 'chu.linh@example.org', '$2y$10$V.2Sfqg42waoqHdHK8sulO9KJ9HHliz6Bp/PrvzSgHDFIAHvqTuZm', 'Cụ. Bành Thiện', '51, Ấp Chiêm, Thôn Bằng Như, Huyện Diệp\nThái Bình', '(063)794-6569', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (79, 'quang75@example.com', '$2y$10$5hwN92/3tekTpolsvKZvzuapZLmkhc/TpjztiyC0VviVZEmCsxo9G', 'Cô. Cổ Hàm Lâm', '9, Ấp Thiên, Xã Vương, Huyện Lã\nĐồng Nai', '(84)(76)482-3221', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (80, 'xty@example.org', '$2y$10$2BrS2.6ZqBfndFZdNfGpVuTbOp4dFMen4GiVJofhIpqjAg1HeUf42', 'Tống Kiều', '6 Phố Bảo Dương Phước, Phường Thạc Uông, Huyện Lỡ\nHồ Chí Minh', '84-54-370-7519', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (81, 'tu.tong@example.net', '$2y$10$z9MRGpO/B0QkkTKye7PHEuzhbBiTajMR9cCqSkE04CN1im31mnbHm', 'Ông. Dã Đinh Quý', '8223 Phố Tô Linh Kiên, Thôn Thôi Yến, Quận Khu Chinh Phú\nCần Thơ', '(84)(120)401-5989', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (82, 'tri.tu@example.org', '$2y$10$6GvfHpVf93if7GFga16iQOVpE4VR/qkJ1GvVPYjhgD5RSW5LWOZP2', 'Bác. Điền Bảo Trung', '87 Phố Phụng, Phường Bửu Quân Hảo, Quận Kha Phụng Dũng\nĐà Nẵng', '(096) 619 7475', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (83, 'nhu34@example.net', '$2y$10$/OS1BKwjqyEceTzcL4PxyOpvYx/aIqP6r8YK2QVga1qWBC5RauHmG', 'Văn Trà', '8918, Ấp Ngân, Phường Bình, Quận 3\nSơn La', '(093) 543 7885', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (84, 'to.luat@example.org', '$2y$10$9q1BgbZMlyaXcYMl4ynf8O5nbu1jWhiOb7rJxIpeGz..2o300OE6y', 'Cô. Ngân Anh Yên', '01, Thôn Ngô Ngân Ngôn, Thôn Nghi Nhã, Quận Tiếp\nQuảng Ngãi', '+84-64-638-9029', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (85, 'wbinh@example.net', '$2y$10$XEuZ0S8nyL2zkj/NScOAZ.lfgtJ6OhGwdIsNrHH1bPlZSTtMucKyW', 'Liễu Tụ', '4 Phố Trần Hương Vu, Phường Hà Tấn, Huyện Thời Dương\nHà Nội', '0281 300 3751', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (86, 'bach.phuong@example.com', '$2y$10$Yq4mDTdEA0/xo4P0Uo5ZLeYy9Xi7dDnIttiYflMTKK7UYM.NuK1GW', 'Ông. Bàng Quang Dân', '0, Ấp 69, Phường Hiền, Huyện Bích Đan\nKon Tum', '(84)(62)138-9150', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (87, 'thy81@example.org', '$2y$10$26bw0SfMQskZN.zaq8k3oelyZzbi0f1gSZRJLtdNl7ZcsYMcwsmcS', 'Liễu Nhã', '6033 Phố Khôi, Xã Mỹ, Huyện Trung\nGia Lai', '(84)(75)994-9449', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (88, 'hao.vu@example.com', '$2y$10$BBU1KELwg0Vs75uBrt9h1ugL3VSlM230ywcZPn9KBc2PH7f4dNWz6', 'Vương Triệu Đan', '1 Phố Khôi, Xã Trưởng Bì, Huyện Hy\nHòa Bình', '(074) 179 0083', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (89, 'bao18@example.com', '$2y$10$PAw.Bj/TdCEXx2SLDCWzSe6r7DwJVCnxhfrdbyg/X0Y8oDlvA9PgG', 'Cô. Đinh Triều Dung', '08, Ấp Quản, Phường Dung Vọng, Quận Ánh Lý\nBạc Liêu', '+84-240-532-8988', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (90, 'di.khoa@example.net', '$2y$10$xsVOUasPQAJfJye3PBRuDe79Og7MUE.egfTsLcAvgqXMMOW2cyO5q', 'Bà. Khổng Hà Ngà', '042 Phố Thiều, Xã Đài An, Huyện 4\nĐà Nẵng', '08 2349 4341', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (91, 'flai@example.org', '$2y$10$LZ9NyZsSJB95s70.lmKSIe4OUuOG5Fun8WkHANMWN4Sz396rLjHrq', 'Chú. Ngụy Phong Đức', '3 Phố Bửu Thoại Dương, Xã Lục, Quận Ánh Quân Kim\nĐà Nẵng', '0240 734 2818', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (92, 'gu@example.com', '$2y$10$wgVh/gr8IPuCkaIZ8kDXae4MWsJr5fZ2qpPDNFv0eJM4zN2Ais7gW', 'Lô Trường', '96, Thôn Nhậm, Xã Quế Khưu, Quận Vi\nPhú Yên', '(064) 897 3582', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (93, 'odau@example.org', '$2y$10$wdLKrQf.R5YR4/7bUTgio.PhvohVDAWeP6gTRMHmUPAK4LmD707tG', 'Lò Trinh', '3 Phố Thiên, Phường Đức Công, Huyện Tuấn\nĐà Nẵng', '+84-126-796-0848', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (94, 'snham@example.net', '$2y$10$slZ17vQ4Mjaolk6xlTJp5O8aGxPggr.Qs3wP.FFsiu7uM8I7z98WG', 'Bà. Đổng Phong Trung', '17 Phố Đỗ Đan Đường, Xã Trí, Quận Cù Ngạn\nHà Nội', '(0500)471-5837', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (95, 'tao.y@example.com', '$2y$10$2qSjV5uAufKwXtiRExOTg.aUYpGko7P8xERZMIg/fiL5l8SFNvILW', 'Bạch Bửu Sỹ', '5, Ấp Lộc Khang, Ấp Ngô Học, Quận Di Huỳnh\nQuảng Ngãi', '0651-977-8191', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (96, 'lam.ly@example.org', '$2y$10$e3mmr4QeDG7Z7KDOU58OVOFpjpWRthTb2coq9l5ILRw5R7Oiq7MBq', 'Em. Lỳ Khánh', '448, Ấp 0, Xã Hồng, Quận Đới Triết Trân\nThừa Thiên Huế', '(84)(165)274-6359', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (97, 'exa@example.net', '$2y$10$f/IncNycVrZOFuq6hzb.W.GJZYxZeB2pu2aTLDGqedG/fhakiIDQa', 'Bà. Huỳnh Thùy Thoại', '0225 Phố Nhi, Phường Quản, Huyện Kiện Tấn\nKiên Giang', '(84)(63)188-5846', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (98, 'lluong@example.org', '$2y$10$nH7goKf9G4W1ObDVGhzTm.dVgcwgimssyTVp1HGHMRi5H0zK7BXlS', 'Lô Lộc Lý', '21 Phố Phương Ngọc Cát, Thôn Thiên Trà, Huyện Đỗ Liêm\nCần Thơ', '(092) 985 9475', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (99, 'hong.lam@example.net', '$2y$10$.f/vh2uqxHNHXLgo3cB28.bnuMW3OJhE7o.VVK9kOumHUQl3PXiMm', 'Yên Vân Di', '9101 Phố Diệp Ninh Đình, Phường Xuyến Trọng, Huyện Lư Thuần\nCần Thơ', '0166-347-5612', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (100, 'nbang@example.com', '$2y$10$U/thZ4XGSZSQofnPhf2vDenP6jo7T1IKOiuzdfaR3gOULO5wecVRu', 'Dã Diệu Đào', '1979 Phố Thục, Phường Phước, Huyện Oanh\nHồ Chí Minh', '(0210)989-8386', NULL, NULL, NULL, NULL, NULL, '2020-03-10 08:07:59', '2020-03-10 08:07:59', NULL);
INSERT INTO `users` VALUES (105, 'dinhlanh1999@gmail.com', '$2y$10$jpkM9E2mPK1Njlb9gpYNsuvyjESSWA6iCvlHFuwQyqz0tCFUXXdtW', 'Đình Lanh', 'Cụm 6 - Vân Phúc - Phúc Thọ - Hà Nội', '0329970968', 'DinhLanh_LTT.jpg', '<p>* Tôi là Lanh</p><p>* Họ tên đầy đủ: Đặng Đình Lanh</p><p>* Quê quán: Cụm 6 - Vân Phúc - Phúc Thọ - Hà Nội</p><p>* Internship tại Monstar Lab LifeTime</p><p>* Cuộc sống: Độc thân .. ..</p>', 1, NULL, NULL, '2020-03-11 03:58:45', '2020-03-25 02:50:36', NULL);
INSERT INTO `users` VALUES (106, 'tavata9988@gmail.com', '$2y$10$BiomAVrq.3mhQoVIGikFE.7P4iwn4CLwz41sjpa3ehzaUYRB03gge', 'Hoàng Nam', 'Đồ Sơn - Hải Phòng', '0821119696', 'icon-34567892e8278648736476767ry78ryu3r7878r7237r267r67273r826r2855.jpg', '<p>	                                Trên con đường thành công không có dấu chân của kẻ lười biếng</p><p>Tôi là Nam</p><p>\r\n\r\n	                            </p>', 0, NULL, NULL, '2020-03-17 09:39:32', '2020-03-20 02:57:57', NULL);
INSERT INTO `users` VALUES (107, 'lehuutho0406_ltt@gmail.com', '$2y$10$ADi/OrY4zsIx9dyhy/p4DurRExASc7qAOq1VRrBhElI7B44N01O5q', 'Lê Hữu Thọ', 'Hương Sơn - Hà Tĩnh', '0989060425', 'anhtho_LTT95.jpg', '<p>* Họ và tên: Lê Hữu Thọ</p><p>* Quê Quán: Hương Sơn - Hà Tĩnh</p><p>* Cuộc sống: đã có gia đình</p><p>* Làm việc tại: Monstar Lab Lifetime .. .. </p>', 1, NULL, NULL, '2020-03-19 03:07:16', '2020-03-23 06:49:29', NULL);
INSERT INTO `users` VALUES (108, 'trantuananh_LTT@gmail.com', '$2y$10$ut.CXW8iGJai/3ExQj4BUu0rgH.rXT7LDN8UOWj4EIz/btvjsHyOm', 'Trần Tuấn Anh', 'Nam Trực - Nam Định', '0967193281', 'anhTuanAnh_LTT58.jpg', '<p>* Họ và tên: Trần Tuấn Anh</p><p><span style=\"font-size: 1rem;\">* Quê quán: NamTrực - Nam Định</span></p><p><span style=\"font-size: 1rem;\">* Cuộc sống: Đã có \"GẤU\"</span></p><p><span style=\"font-size: 1rem;\">* Làm việc tạ:&nbsp;</span><span style=\"font-size: 1rem; color: rgb(33, 37, 41);\">Monstar Lab Lifetime .. ..</span></p>', 1, NULL, NULL, '2020-03-19 03:33:33', '2020-03-19 10:32:27', NULL);
INSERT INTO `users` VALUES (109, 'dinhlanh9999@gmail.com', '$2y$10$JomTd4Y8pYgWPX6QyyRFS.ACmxgXnXlyYrXqPSq5EL285Mc13urH.', 'Đặng Đình Lanh', 'Cụm 6 - Vân Phúc - Phúc Thọ - Hà Nội', '0329970968', '20181125_081335_Lanh4.jpg', '<p>Đặng Đình Lanh</p>', 0, NULL, NULL, '2020-03-20 04:18:57', '2020-03-20 08:06:13', NULL);
INSERT INTO `users` VALUES (111, 'quangbom1998@gmail.com', '$2y$10$dcNiXebitL1Vf/uK9PY9Ne852gNE5vKHkCvZiI075Vg6Q/mCDc.ZK', 'Nguyễn Minh Quang', 'Tây Hồ - Hà Nội', '0329951234', '31950334_2146443962257999_6232007343316402176_n27.jpg', '<p>Quang Quang</p>', 0, NULL, NULL, '2020-03-23 08:18:37', '2020-03-23 08:18:37', NULL);

SET FOREIGN_KEY_CHECKS = 1;
