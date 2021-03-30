/*
 Navicat Premium Data Transfer

 Source Server         : dingcan
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : nverhong

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 30/03/2021 19:51:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for nverhong_picture
-- ----------------------------
DROP TABLE IF EXISTS `nverhong_picture`;
CREATE TABLE `nverhong_picture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '照片编号',
  `savePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '文件保存目录路径',
  `saveUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '文件保存目录url',
  `fileUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '文件最终的url包括文件名',
  `type` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 405 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nverhong_picture
-- ----------------------------
INSERT INTO `nverhong_picture` VALUES (40, 'E:/GitUp/nverhong/WebRoot//images/20210319/', '/nverhong/images/20210319/', '/nverhong/images/20210319/20210319210237_551.png', 3);
INSERT INTO `nverhong_picture` VALUES (41, 'E:/GitUp/nverhong/WebRoot//images/20210319/', '/nverhong/images/20210319/', '/nverhong/images/20210319/20210319211020_365.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (42, 'E:/GitUp/nverhong/WebRoot//images/20210319/', '/nverhong/images/20210319/', '/nverhong/images/20210319/20210319211020_215.png', 1);
INSERT INTO `nverhong_picture` VALUES (43, 'E:/GitUp/nverhong/WebRoot//images/20210319/', '/nverhong/images/20210319/', '/nverhong/images/20210319/20210319211250_214.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (44, 'E:/GitUp/nverhong/WebRoot//images/20210319/', '/nverhong/images/20210319/', '/nverhong/images/20210319/20210319211250_739.png', 1);
INSERT INTO `nverhong_picture` VALUES (45, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320110947_601.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (46, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320111000_862.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (47, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320111114_468.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (48, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320111118_651.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (49, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130240_317.png', 2);
INSERT INTO `nverhong_picture` VALUES (50, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130240_534.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (51, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130241_878.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (52, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130241_867.png', 1);
INSERT INTO `nverhong_picture` VALUES (53, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130405_931.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (54, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130415_931.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (55, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130421_792.png', 2);
INSERT INTO `nverhong_picture` VALUES (56, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130421_794.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (57, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130446_180.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (58, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130446_976.png', 1);
INSERT INTO `nverhong_picture` VALUES (59, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130447_488.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (60, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320130447_228.png', 2);
INSERT INTO `nverhong_picture` VALUES (61, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131158_328.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (62, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131158_558.png', 2);
INSERT INTO `nverhong_picture` VALUES (63, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131200_640.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (64, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131200_540.png', 1);
INSERT INTO `nverhong_picture` VALUES (65, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131244_275.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (66, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131244_102.png', 2);
INSERT INTO `nverhong_picture` VALUES (67, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131244_598.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (68, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131244_227.png', 1);
INSERT INTO `nverhong_picture` VALUES (69, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131334_366.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (70, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131334_750.png', 1);
INSERT INTO `nverhong_picture` VALUES (71, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131335_599.png', 2);
INSERT INTO `nverhong_picture` VALUES (72, 'E:/GitUp/nverhong/WebRoot//images/20210320/', '/nverhong/images/20210320/', '/nverhong/images/20210320/20210320131335_237.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (73, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (74, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (75, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (76, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (77, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (78, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (79, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (80, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (81, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (82, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (83, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (84, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (85, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (86, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (87, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (88, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (89, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (90, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (91, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (92, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (93, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (94, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (95, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (96, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (97, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (98, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (99, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (100, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (101, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (102, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (103, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (104, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (105, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (106, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (107, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (108, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (109, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (110, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (111, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (112, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (113, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (114, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (115, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (116, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (117, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (118, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (119, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (120, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (121, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (122, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (123, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (124, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (125, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (126, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (127, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (128, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (129, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (130, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (131, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (132, NULL, NULL, NULL, 3);
INSERT INTO `nverhong_picture` VALUES (133, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325200202_397.png', 2);
INSERT INTO `nverhong_picture` VALUES (134, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325200257_109.png', 1);
INSERT INTO `nverhong_picture` VALUES (135, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325200257_807.png', 1);
INSERT INTO `nverhong_picture` VALUES (136, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325200257_908.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (137, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325200258_382.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (138, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325200329_570.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (139, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325200329_80.png', 1);
INSERT INTO `nverhong_picture` VALUES (140, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325200329_166.png', 1);
INSERT INTO `nverhong_picture` VALUES (141, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325225519_475.png', 1);
INSERT INTO `nverhong_picture` VALUES (142, 'E:/GitUp/nverhong/WebRoot//images/20210325/', '/nverhong/images/20210325/', '/nverhong/images/20210325/20210325225522_509.png', 2);
INSERT INTO `nverhong_picture` VALUES (143, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151337_533.png', 2);
INSERT INTO `nverhong_picture` VALUES (144, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151337_556.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (145, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151337_678.png', 2);
INSERT INTO `nverhong_picture` VALUES (146, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151338_600.png', 1);
INSERT INTO `nverhong_picture` VALUES (147, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151338_589.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (148, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151338_8.png', 1);
INSERT INTO `nverhong_picture` VALUES (149, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151526_987.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (150, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151527_310.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (151, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151556_175.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (152, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326151600_572.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (153, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326193236_947.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (154, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326193237_105.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (155, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326193841_16.png', 2);
INSERT INTO `nverhong_picture` VALUES (156, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326193841_492.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (157, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326193841_453.png', 2);
INSERT INTO `nverhong_picture` VALUES (158, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326193844_464.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (159, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326193844_557.png', 1);
INSERT INTO `nverhong_picture` VALUES (160, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326193844_580.png', 1);
INSERT INTO `nverhong_picture` VALUES (161, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326194410_837.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (162, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326194411_997.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (163, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326194428_995.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (164, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326194429_454.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (165, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326194555_303.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (166, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326194556_558.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (167, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326194917_596.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (168, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326194921_430.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (169, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326195023_136.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (170, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326195026_201.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (171, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326195227_462.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (172, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326195228_532.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (173, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326195629_154.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (174, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326195648_30.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (175, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326195856_855.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (176, 'E:/GitUp/nverhong/WebRoot//images/20210326/', '/nverhong/images/20210326/', '/nverhong/images/20210326/20210326200103_828.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (177, NULL, NULL, NULL, 1);
INSERT INTO `nverhong_picture` VALUES (178, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327085905_623.png', 2);
INSERT INTO `nverhong_picture` VALUES (179, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327085905_76.png', 2);
INSERT INTO `nverhong_picture` VALUES (180, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327085906_316.png', 1);
INSERT INTO `nverhong_picture` VALUES (181, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327085906_854.png', 1);
INSERT INTO `nverhong_picture` VALUES (182, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327090302_497.png', 1);
INSERT INTO `nverhong_picture` VALUES (183, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327090305_289.png', 2);
INSERT INTO `nverhong_picture` VALUES (184, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327090352_138.png', 1);
INSERT INTO `nverhong_picture` VALUES (185, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327091729_604.png', 1);
INSERT INTO `nverhong_picture` VALUES (186, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327091822_197.png', 1);
INSERT INTO `nverhong_picture` VALUES (187, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327092057_497.png', 1);
INSERT INTO `nverhong_picture` VALUES (188, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327092535_933.png', 1);
INSERT INTO `nverhong_picture` VALUES (189, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327093018_488.png', 1);
INSERT INTO `nverhong_picture` VALUES (190, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327093130_591.png', 2);
INSERT INTO `nverhong_picture` VALUES (191, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327093130_85.png', 2);
INSERT INTO `nverhong_picture` VALUES (192, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327093132_532.png', 1);
INSERT INTO `nverhong_picture` VALUES (193, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327093132_510.png', 1);
INSERT INTO `nverhong_picture` VALUES (194, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327093457_924.png', 1);
INSERT INTO `nverhong_picture` VALUES (195, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327093903_206.png', 1);
INSERT INTO `nverhong_picture` VALUES (196, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327093903_69.png', 1);
INSERT INTO `nverhong_picture` VALUES (197, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094124_987.png', 1);
INSERT INTO `nverhong_picture` VALUES (198, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094230_57.png', 1);
INSERT INTO `nverhong_picture` VALUES (199, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094424_633.png', 1);
INSERT INTO `nverhong_picture` VALUES (200, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094524_626.png', 1);
INSERT INTO `nverhong_picture` VALUES (201, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094633_826.png', 1);
INSERT INTO `nverhong_picture` VALUES (202, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094633_247.png', 1);
INSERT INTO `nverhong_picture` VALUES (203, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094741_796.png', 1);
INSERT INTO `nverhong_picture` VALUES (204, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094741_761.png', 1);
INSERT INTO `nverhong_picture` VALUES (205, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094800_392.png', 1);
INSERT INTO `nverhong_picture` VALUES (206, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094800_698.png', 1);
INSERT INTO `nverhong_picture` VALUES (207, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094819_595.png', 1);
INSERT INTO `nverhong_picture` VALUES (208, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094819_401.png', 1);
INSERT INTO `nverhong_picture` VALUES (209, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094823_217.png', 2);
INSERT INTO `nverhong_picture` VALUES (210, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327094823_495.png', 2);
INSERT INTO `nverhong_picture` VALUES (211, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327102634_531.png', 2);
INSERT INTO `nverhong_picture` VALUES (212, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327102634_933.png', 2);
INSERT INTO `nverhong_picture` VALUES (213, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327102635_447.png', 1);
INSERT INTO `nverhong_picture` VALUES (214, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327102635_339.png', 1);
INSERT INTO `nverhong_picture` VALUES (215, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104211_758.png', 2);
INSERT INTO `nverhong_picture` VALUES (216, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104211_754.png', 2);
INSERT INTO `nverhong_picture` VALUES (217, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104212_335.png', 1);
INSERT INTO `nverhong_picture` VALUES (218, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104212_482.png', 1);
INSERT INTO `nverhong_picture` VALUES (219, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104317_320.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (220, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104318_78.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (221, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104449_273.png', 1);
INSERT INTO `nverhong_picture` VALUES (222, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104449_911.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (223, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104449_960.png', 1);
INSERT INTO `nverhong_picture` VALUES (224, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104752_926.png', 1);
INSERT INTO `nverhong_picture` VALUES (225, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104752_920.png', 1);
INSERT INTO `nverhong_picture` VALUES (226, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104753_58.png', 2);
INSERT INTO `nverhong_picture` VALUES (227, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104753_413.png', 2);
INSERT INTO `nverhong_picture` VALUES (228, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104846_996.png', 2);
INSERT INTO `nverhong_picture` VALUES (229, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104846_108.png', 2);
INSERT INTO `nverhong_picture` VALUES (230, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104847_950.png', 1);
INSERT INTO `nverhong_picture` VALUES (231, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104847_404.png', 1);
INSERT INTO `nverhong_picture` VALUES (232, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104910_200.png', 2);
INSERT INTO `nverhong_picture` VALUES (233, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104910_763.png', 2);
INSERT INTO `nverhong_picture` VALUES (234, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104911_245.png', 1);
INSERT INTO `nverhong_picture` VALUES (235, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327104911_750.png', 1);
INSERT INTO `nverhong_picture` VALUES (236, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105049_795.png', 2);
INSERT INTO `nverhong_picture` VALUES (237, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105049_804.png', 2);
INSERT INTO `nverhong_picture` VALUES (238, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105050_613.png', 1);
INSERT INTO `nverhong_picture` VALUES (239, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105050_880.png', 1);
INSERT INTO `nverhong_picture` VALUES (240, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105116_960.png', 2);
INSERT INTO `nverhong_picture` VALUES (241, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105116_167.png', 2);
INSERT INTO `nverhong_picture` VALUES (242, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105117_24.png', 1);
INSERT INTO `nverhong_picture` VALUES (243, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105117_55.png', 1);
INSERT INTO `nverhong_picture` VALUES (244, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105309_993.png', 2);
INSERT INTO `nverhong_picture` VALUES (245, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105309_232.png', 2);
INSERT INTO `nverhong_picture` VALUES (246, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105309_221.png', 1);
INSERT INTO `nverhong_picture` VALUES (247, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105309_285.png', 1);
INSERT INTO `nverhong_picture` VALUES (248, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105405_698.png', 2);
INSERT INTO `nverhong_picture` VALUES (249, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105405_51.png', 2);
INSERT INTO `nverhong_picture` VALUES (250, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105405_233.png', 1);
INSERT INTO `nverhong_picture` VALUES (251, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105405_717.png', 1);
INSERT INTO `nverhong_picture` VALUES (252, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105507_746.png', 2);
INSERT INTO `nverhong_picture` VALUES (253, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105507_989.png', 2);
INSERT INTO `nverhong_picture` VALUES (254, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105508_770.png', 1);
INSERT INTO `nverhong_picture` VALUES (255, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105508_122.png', 1);
INSERT INTO `nverhong_picture` VALUES (256, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105539_825.png', 2);
INSERT INTO `nverhong_picture` VALUES (257, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105539_343.png', 2);
INSERT INTO `nverhong_picture` VALUES (258, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105540_38.png', 1);
INSERT INTO `nverhong_picture` VALUES (259, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105540_848.png', 1);
INSERT INTO `nverhong_picture` VALUES (260, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105623_872.png', 2);
INSERT INTO `nverhong_picture` VALUES (261, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105623_819.png', 2);
INSERT INTO `nverhong_picture` VALUES (262, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105624_985.png', 1);
INSERT INTO `nverhong_picture` VALUES (263, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105624_758.png', 1);
INSERT INTO `nverhong_picture` VALUES (264, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105744_939.png', 1);
INSERT INTO `nverhong_picture` VALUES (265, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105744_162.png', 1);
INSERT INTO `nverhong_picture` VALUES (266, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105800_98.png', 1);
INSERT INTO `nverhong_picture` VALUES (267, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105800_816.png', 1);
INSERT INTO `nverhong_picture` VALUES (268, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105831_145.png', 1);
INSERT INTO `nverhong_picture` VALUES (269, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105831_811.png', 1);
INSERT INTO `nverhong_picture` VALUES (270, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105834_67.png', 2);
INSERT INTO `nverhong_picture` VALUES (271, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327105834_812.png', 2);
INSERT INTO `nverhong_picture` VALUES (272, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327112141_737.png', 1);
INSERT INTO `nverhong_picture` VALUES (273, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327112141_511.png', 1);
INSERT INTO `nverhong_picture` VALUES (274, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327112147_382.png', 2);
INSERT INTO `nverhong_picture` VALUES (275, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327112147_139.png', 2);
INSERT INTO `nverhong_picture` VALUES (276, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327112206_104.png', 2);
INSERT INTO `nverhong_picture` VALUES (277, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327112206_795.png', 2);
INSERT INTO `nverhong_picture` VALUES (278, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327112207_694.png', 1);
INSERT INTO `nverhong_picture` VALUES (279, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327112207_900.png', 1);
INSERT INTO `nverhong_picture` VALUES (280, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327141613_786.png', 1);
INSERT INTO `nverhong_picture` VALUES (281, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327141613_131.png', 1);
INSERT INTO `nverhong_picture` VALUES (282, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327141614_54.png', 2);
INSERT INTO `nverhong_picture` VALUES (283, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327141614_839.png', 2);
INSERT INTO `nverhong_picture` VALUES (284, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143546_543.png', 1);
INSERT INTO `nverhong_picture` VALUES (285, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143546_642.png', 1);
INSERT INTO `nverhong_picture` VALUES (286, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143549_183.png', 2);
INSERT INTO `nverhong_picture` VALUES (287, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143549_214.png', 2);
INSERT INTO `nverhong_picture` VALUES (288, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143630_190.png', 2);
INSERT INTO `nverhong_picture` VALUES (289, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143630_157.png', 2);
INSERT INTO `nverhong_picture` VALUES (290, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143631_892.png', 1);
INSERT INTO `nverhong_picture` VALUES (291, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143631_988.png', 1);
INSERT INTO `nverhong_picture` VALUES (292, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143812_272.png', 2);
INSERT INTO `nverhong_picture` VALUES (293, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143812_352.png', 2);
INSERT INTO `nverhong_picture` VALUES (294, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143813_760.png', 1);
INSERT INTO `nverhong_picture` VALUES (295, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143813_955.png', 1);
INSERT INTO `nverhong_picture` VALUES (296, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143935_833.png', 2);
INSERT INTO `nverhong_picture` VALUES (297, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143935_701.png', 2);
INSERT INTO `nverhong_picture` VALUES (298, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143936_792.png', 1);
INSERT INTO `nverhong_picture` VALUES (299, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327143936_910.png', 1);
INSERT INTO `nverhong_picture` VALUES (300, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327144052_557.png', 1);
INSERT INTO `nverhong_picture` VALUES (301, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327144052_126.png', 1);
INSERT INTO `nverhong_picture` VALUES (302, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327144053_468.png', 2);
INSERT INTO `nverhong_picture` VALUES (303, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327144053_749.png', 2);
INSERT INTO `nverhong_picture` VALUES (304, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327144605_259.png', 2);
INSERT INTO `nverhong_picture` VALUES (305, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327144605_743.png', 2);
INSERT INTO `nverhong_picture` VALUES (306, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327144606_208.png', 1);
INSERT INTO `nverhong_picture` VALUES (307, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327144606_351.png', 1);
INSERT INTO `nverhong_picture` VALUES (308, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327150552_340.png', 1);
INSERT INTO `nverhong_picture` VALUES (309, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327150552_384.png', 1);
INSERT INTO `nverhong_picture` VALUES (310, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327150553_735.png', 2);
INSERT INTO `nverhong_picture` VALUES (311, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327150553_83.png', 2);
INSERT INTO `nverhong_picture` VALUES (312, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327150605_322.png', 2);
INSERT INTO `nverhong_picture` VALUES (313, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327150605_306.png', 2);
INSERT INTO `nverhong_picture` VALUES (314, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327151056_149.png', 2);
INSERT INTO `nverhong_picture` VALUES (315, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327151056_223.png', 2);
INSERT INTO `nverhong_picture` VALUES (316, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327151059_476.png', 1);
INSERT INTO `nverhong_picture` VALUES (317, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327151059_204.png', 1);
INSERT INTO `nverhong_picture` VALUES (318, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327151111_222.png', 2);
INSERT INTO `nverhong_picture` VALUES (319, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327151111_519.png', 2);
INSERT INTO `nverhong_picture` VALUES (320, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327151113_661.png', 1);
INSERT INTO `nverhong_picture` VALUES (321, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327151113_453.png', 1);
INSERT INTO `nverhong_picture` VALUES (322, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152057_425.png', 1);
INSERT INTO `nverhong_picture` VALUES (323, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152057_388.png', 1);
INSERT INTO `nverhong_picture` VALUES (324, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152103_503.png', 2);
INSERT INTO `nverhong_picture` VALUES (325, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152103_411.png', 2);
INSERT INTO `nverhong_picture` VALUES (326, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152334_966.png', 2);
INSERT INTO `nverhong_picture` VALUES (327, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152334_537.png', 2);
INSERT INTO `nverhong_picture` VALUES (328, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152334_16.png', 1);
INSERT INTO `nverhong_picture` VALUES (329, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152334_944.png', 1);
INSERT INTO `nverhong_picture` VALUES (330, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152626_452.png', 1);
INSERT INTO `nverhong_picture` VALUES (331, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152626_222.png', 1);
INSERT INTO `nverhong_picture` VALUES (332, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152630_490.png', 2);
INSERT INTO `nverhong_picture` VALUES (333, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152630_614.png', 2);
INSERT INTO `nverhong_picture` VALUES (334, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152733_611.png', 1);
INSERT INTO `nverhong_picture` VALUES (335, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152733_153.png', 1);
INSERT INTO `nverhong_picture` VALUES (336, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152736_598.png', 2);
INSERT INTO `nverhong_picture` VALUES (337, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152736_715.png', 2);
INSERT INTO `nverhong_picture` VALUES (338, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152926_234.png', 1);
INSERT INTO `nverhong_picture` VALUES (339, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152926_905.png', 1);
INSERT INTO `nverhong_picture` VALUES (340, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152929_149.png', 2);
INSERT INTO `nverhong_picture` VALUES (341, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152929_684.png', 2);
INSERT INTO `nverhong_picture` VALUES (342, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152950_236.png', 1);
INSERT INTO `nverhong_picture` VALUES (343, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152950_182.png', 1);
INSERT INTO `nverhong_picture` VALUES (344, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152953_476.png', 2);
INSERT INTO `nverhong_picture` VALUES (345, 'E:/GitUp/nverhong/WebRoot//images/20210327/', '/nverhong/images/20210327/', '/nverhong/images/20210327/20210327152953_90.png', 2);
INSERT INTO `nverhong_picture` VALUES (346, 'E:/GitUp/nverhong/WebRoot//images/20210329/', '/nverhong/images/20210329/', '/nverhong/images/20210329/20210329203714_19.png', 1);
INSERT INTO `nverhong_picture` VALUES (347, 'E:/GitUp/nverhong/WebRoot//images/20210329/', '/nverhong/images/20210329/', '/nverhong/images/20210329/20210329203714_653.png', 1);
INSERT INTO `nverhong_picture` VALUES (348, 'E:/GitUp/nverhong/WebRoot//images/20210329/', '/nverhong/images/20210329/', '/nverhong/images/20210329/20210329203715_699.png', 2);
INSERT INTO `nverhong_picture` VALUES (349, 'E:/GitUp/nverhong/WebRoot//images/20210329/', '/nverhong/images/20210329/', '/nverhong/images/20210329/20210329203715_618.png', 2);
INSERT INTO `nverhong_picture` VALUES (350, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163052_541.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (351, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163052_419.png', 1);
INSERT INTO `nverhong_picture` VALUES (352, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163052_644.png', 1);
INSERT INTO `nverhong_picture` VALUES (353, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163052_261.png', 1);
INSERT INTO `nverhong_picture` VALUES (354, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163055_255.jpg', 2);
INSERT INTO `nverhong_picture` VALUES (355, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163121_401.png', 2);
INSERT INTO `nverhong_picture` VALUES (356, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163121_221.png', 2);
INSERT INTO `nverhong_picture` VALUES (357, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163121_305.png', 2);
INSERT INTO `nverhong_picture` VALUES (358, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163122_309.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (359, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163122_995.png', 1);
INSERT INTO `nverhong_picture` VALUES (360, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163122_222.png', 1);
INSERT INTO `nverhong_picture` VALUES (361, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163122_186.png', 1);
INSERT INTO `nverhong_picture` VALUES (362, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163219_372.png', 1);
INSERT INTO `nverhong_picture` VALUES (363, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163219_253.png', 1);
INSERT INTO `nverhong_picture` VALUES (364, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163219_263.png', 1);
INSERT INTO `nverhong_picture` VALUES (365, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163224_557.png', 2);
INSERT INTO `nverhong_picture` VALUES (366, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163224_954.png', 2);
INSERT INTO `nverhong_picture` VALUES (367, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163224_598.png', 2);
INSERT INTO `nverhong_picture` VALUES (368, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163332_744.png', 2);
INSERT INTO `nverhong_picture` VALUES (369, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163332_144.png', 2);
INSERT INTO `nverhong_picture` VALUES (370, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163332_919.png', 2);
INSERT INTO `nverhong_picture` VALUES (371, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163333_542.png', 1);
INSERT INTO `nverhong_picture` VALUES (372, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163333_188.jpg', 1);
INSERT INTO `nverhong_picture` VALUES (373, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163333_729.png', 1);
INSERT INTO `nverhong_picture` VALUES (374, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330163333_960.png', 1);
INSERT INTO `nverhong_picture` VALUES (375, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173204_307.png', 2);
INSERT INTO `nverhong_picture` VALUES (376, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173204_793.png', 2);
INSERT INTO `nverhong_picture` VALUES (377, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173204_622.png', 2);
INSERT INTO `nverhong_picture` VALUES (378, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173205_895.png', 1);
INSERT INTO `nverhong_picture` VALUES (379, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173205_818.png', 1);
INSERT INTO `nverhong_picture` VALUES (380, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173205_174.png', 1);
INSERT INTO `nverhong_picture` VALUES (381, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173240_656.png', 1);
INSERT INTO `nverhong_picture` VALUES (382, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173240_410.png', 1);
INSERT INTO `nverhong_picture` VALUES (383, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173240_636.png', 1);
INSERT INTO `nverhong_picture` VALUES (384, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173244_841.png', 2);
INSERT INTO `nverhong_picture` VALUES (385, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173244_429.png', 2);
INSERT INTO `nverhong_picture` VALUES (386, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173244_463.png', 2);
INSERT INTO `nverhong_picture` VALUES (387, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173524_418.png', 1);
INSERT INTO `nverhong_picture` VALUES (388, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173524_723.png', 1);
INSERT INTO `nverhong_picture` VALUES (389, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173524_324.png', 1);
INSERT INTO `nverhong_picture` VALUES (390, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173529_492.png', 2);
INSERT INTO `nverhong_picture` VALUES (391, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173529_946.png', 2);
INSERT INTO `nverhong_picture` VALUES (392, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330173529_946.png', 2);
INSERT INTO `nverhong_picture` VALUES (393, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174103_956.png', 2);
INSERT INTO `nverhong_picture` VALUES (394, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174103_203.png', 2);
INSERT INTO `nverhong_picture` VALUES (395, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174103_641.png', 2);
INSERT INTO `nverhong_picture` VALUES (396, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174104_67.png', 1);
INSERT INTO `nverhong_picture` VALUES (397, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174104_335.png', 1);
INSERT INTO `nverhong_picture` VALUES (398, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174104_699.png', 1);
INSERT INTO `nverhong_picture` VALUES (399, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174127_927.png', 2);
INSERT INTO `nverhong_picture` VALUES (400, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174127_291.png', 2);
INSERT INTO `nverhong_picture` VALUES (401, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174127_977.png', 2);
INSERT INTO `nverhong_picture` VALUES (402, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174128_853.png', 1);
INSERT INTO `nverhong_picture` VALUES (403, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174128_450.png', 1);
INSERT INTO `nverhong_picture` VALUES (404, 'E:/GitUp/nverhong/WebRoot//images/20210330/', '/nverhong/images/20210330/', '/nverhong/images/20210330/20210330174128_369.png', 1);

-- ----------------------------
-- Table structure for nverhong_product
-- ----------------------------
DROP TABLE IF EXISTS `nverhong_product`;
CREATE TABLE `nverhong_product`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '产品名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '产品描述',
  `price` float(10, 2) NOT NULL COMMENT '产品价格',
  `stock` int(255) NOT NULL COMMENT '库存',
  `sell` int(255) NULL DEFAULT NULL COMMENT '销量',
  `categoryLevel1Id` int(11) NULL DEFAULT NULL COMMENT '分类1',
  `categoryLevel2Id` int(11) NULL DEFAULT NULL COMMENT '分类2',
  `categoryLevel3Id` int(11) NULL DEFAULT NULL COMMENT '分类3',
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '图片名称',
  `pid2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '0' COMMENT '图片名称',
  `isDelete` int(2) NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 168 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nverhong_product
-- ----------------------------
INSERT INTO `nverhong_product` VALUES (119, 'hello', NULL, 435344.00, 123, 99, 102, 204, 303, '346,347', '348,349', 0);
INSERT INTO `nverhong_product` VALUES (120, 'qweqw', NULL, 12323.00, 12312, 199, 102, 202, 303, '397,396,398', '393,395,394', 0);
INSERT INTO `nverhong_product` VALUES (121, 'qwe', '', 123.00, 123, 99, 101, 203, 302, '58,57', '60,59', 0);
INSERT INTO `nverhong_product` VALUES (122, 'qwe', NULL, 1213.00, 12312, 99, 101, 201, 301, '222,221,223', '57', 0);
INSERT INTO `nverhong_product` VALUES (123, 'qwe', NULL, 21312.00, 23123, 99, 101, 201, 301, '134,135,136', '137', 1);
INSERT INTO `nverhong_product` VALUES (124, 'qwe', NULL, 2.00, 2, 99, 101, 201, 301, '138,139,140', '47', 1);
INSERT INTO `nverhong_product` VALUES (125, 'q', NULL, 1.00, 1, 99, 101, 201, 301, '141', '142', 1);
INSERT INTO `nverhong_product` VALUES (158, '2123', NULL, 2323.00, 232, 9999, 101, 201, 301, '291,290', '288,289', 1);
INSERT INTO `nverhong_product` VALUES (126, '879', NULL, 546.00, 34534, 99, 101, 201, 301, '47', '47', 1);
INSERT INTO `nverhong_product` VALUES (145, '阿斯顿', NULL, 1231.00, 1231, 99, 101, 201, 301, '238,239', '236,237', 1);
INSERT INTO `nverhong_product` VALUES (144, '121', NULL, 12312.00, 2112, 99, 101, 201, 301, '234,235', '233,232', 1);
INSERT INTO `nverhong_product` VALUES (143, '请问', NULL, 12312.00, 12312, 99, 101, 201, 301, '231,230', '228,229', 1);
INSERT INTO `nverhong_product` VALUES (142, '阿萨德', NULL, 123.00, 123, 99, 101, 201, 301, '224,225', '226,227', 1);
INSERT INTO `nverhong_product` VALUES (141, '123', NULL, 123123.00, 1231231, 99, 102, 201, 301, '208,207', '210,209', 1);
INSERT INTO `nverhong_product` VALUES (146, 'qweqw', NULL, 12312.00, 21121, 99, 101, 201, 301, '242,243', '241,240', 1);
INSERT INTO `nverhong_product` VALUES (147, 'dfgd', NULL, 123.00, 12321, 99, 101, 201, 301, '246,247', '244,245', 1);
INSERT INTO `nverhong_product` VALUES (150, '123', NULL, 12312.00, 2112, 99, 101, 201, 301, '254,255', '253,252', 1);
INSERT INTO `nverhong_product` VALUES (149, 'erewew', NULL, 1122.00, 222, 99, 101, 201, 301, '251,250', '248,249', 0);
INSERT INTO `nverhong_product` VALUES (151, '21312', NULL, 12312.00, 2121, 99, 101, 201, 301, '258,259', '257,256', 0);
INSERT INTO `nverhong_product` VALUES (152, '213', NULL, 12312.00, 12312, 99, 101, 201, 301, '262,263', '260,261', 0);
INSERT INTO `nverhong_product` VALUES (153, '1231', NULL, 2121.00, 22, 99, 101, 201, 301, '264,265', '57', 0);
INSERT INTO `nverhong_product` VALUES (154, '1212', NULL, 2121.00, 21, 99, 101, 201, 301, '267,266', '57', 0);
INSERT INTO `nverhong_product` VALUES (155, '123', NULL, 12312.00, 2121, 99, 101, 201, 301, '269,268', '270,271', 0);
INSERT INTO `nverhong_product` VALUES (157, '1231', NULL, 31231.00, 213, 99, 101, 201, 301, '284,285', '286,287', 0);
INSERT INTO `nverhong_product` VALUES (159, '232', NULL, 232.00, 1231, 99, 101, 201, 301, '294,295', '292,293', 0);
INSERT INTO `nverhong_product` VALUES (160, 'qwe', NULL, 123.00, 123, 99, 101, 201, 301, '298,299', '296,297', 0);
INSERT INTO `nverhong_product` VALUES (161, '123', NULL, 123.00, 123, 99, 101, 201, 301, '308,309', '310,311', 0);
INSERT INTO `nverhong_product` VALUES (162, '123', NULL, 123.00, 123, 99, 101, 201, 301, '321,320', '319,318', 1);
INSERT INTO `nverhong_product` VALUES (165, '', NULL, 123.00, 123, 99, 101, 201, 301, '331,330', '333,332', 1);
INSERT INTO `nverhong_product` VALUES (166, '2131232', NULL, 23122.00, 231232, 99, 102, 201, 301, '372,371,374,373', '368,369,370', 1);
INSERT INTO `nverhong_product` VALUES (167, '232', NULL, 12312.00, 12231, 999, 101, 201, 301, '402,404,403', '399,401,400', 1);

-- ----------------------------
-- Table structure for nverhong_product_category
-- ----------------------------
DROP TABLE IF EXISTS `nverhong_product_category`;
CREATE TABLE `nverhong_product_category`  (
  `id` int(10) NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `parentId` int(10) NOT NULL COMMENT '父级ID',
  `type` int(255) NULL DEFAULT NULL COMMENT '级别(1:一级 2：二级 3：三级)',
  `iconClass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `sales` int(10) NULL DEFAULT NULL COMMENT '销量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nverhong_product_category
-- ----------------------------
INSERT INTO `nverhong_product_category` VALUES (101, '电子商品', 0, 1, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (201, '手机', 101, 2, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (301, '华为手机', 201, 3, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (302, '苹果手机', 201, 3, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (202, '电脑', 101, 2, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (203, '电视', 101, 2, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (303, '联想电脑', 202, 3, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (304, '戴尔电脑', 202, 3, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (102, '服装', 0, 1, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (204, '衣服', 102, 2, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (305, '美特斯邦威', 204, 3, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (205, '裤子', 102, 2, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (306, '美特斯邦威', 205, 3, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (307, '森马', 204, 3, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (308, '森马', 205, 3, NULL, NULL);
INSERT INTO `nverhong_product_category` VALUES (309, '小米电视', 203, 3, NULL, NULL);

-- ----------------------------
-- Table structure for nverhong_product_offshelf
-- ----------------------------
DROP TABLE IF EXISTS `nverhong_product_offshelf`;
CREATE TABLE `nverhong_product_offshelf`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '产品名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '产品描述',
  `price` float(10, 2) NOT NULL COMMENT '产品价格',
  `stock` int(255) NOT NULL COMMENT '库存',
  `sell` int(255) NULL DEFAULT NULL COMMENT '销量',
  `categoryLevel1Id` int(11) NULL DEFAULT NULL COMMENT '分类1',
  `categoryLevel2Id` int(11) NULL DEFAULT NULL COMMENT '分类2',
  `categoryLevel3Id` int(11) NULL DEFAULT NULL COMMENT '分类3',
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '图片名称',
  `pid2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '图片名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 162 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nverhong_product_offshelf
-- ----------------------------
INSERT INTO `nverhong_product_offshelf` VALUES (123, 'qwe', NULL, 21312.00, 23123, 99, 101, 201, 301, '134,135,136', '137');

-- ----------------------------
-- Table structure for nverhong_supplier
-- ----------------------------
DROP TABLE IF EXISTS `nverhong_supplier`;
CREATE TABLE `nverhong_supplier`  (
  `supplierId` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '供应商编号',
  `supplierName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `supplierClassification` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商分类',
  `supplierAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '供应商地址',
  PRIMARY KEY (`supplierId`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for nverhong_test
-- ----------------------------
DROP TABLE IF EXISTS `nverhong_test`;
CREATE TABLE `nverhong_test`  (
  `id` int(255) NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nverhong_test
-- ----------------------------
INSERT INTO `nverhong_test` VALUES (1, '2,1,3,4,5');

-- ----------------------------
-- Table structure for nverhong_user
-- ----------------------------
DROP TABLE IF EXISTS `nverhong_user`;
CREATE TABLE `nverhong_user`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loginName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `sex` int(2) NOT NULL DEFAULT 1 COMMENT '性别(1:男 0：女)',
  `identityCode` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `type` int(2) NULL DEFAULT 0 COMMENT '类型（1：后台 0:前台）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `PK__EASYBUY___C96109CC3A81B327`(`loginName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nverhong_user
-- ----------------------------
INSERT INTO `nverhong_user` VALUES (2, 'admin', '系统管理员', 'e10adc3949ba59abbe56e057f20f883e', 1, '130406198302141869', 'hello11@bdqn.com', '1583233515', 1);
INSERT INTO `nverhong_user` VALUES (10, 'cgn', '程广宁', 'e10adc3949ba59abbe56e057f20f883e', 1, '140225189987854589', '1044732267@qq.com', '13366055011', 0);
INSERT INTO `nverhong_user` VALUES (11, 'hyl', '韩语良', 'e10adc3949ba59abbe56e057f20f883e', 1, '140225198874584539', '1044732267@qq.com', '13366055010', 0);
INSERT INTO `nverhong_user` VALUES (12, 'ck', '陈康', 'e10adc3949ba59abbe56e057f20f883e', 1, '140225189987854589', '1044732267@qq.com', '13366055010', 0);
INSERT INTO `nverhong_user` VALUES (13, 'kys', '康有沈', 'e10adc3949ba59abbe56e057f20f883e', 1, '1402251985512541525', '1044732267@qq.com', '13366055010', 0);
INSERT INTO `nverhong_user` VALUES (14, 'sb', '沈白', 'e10adc3949ba59abbe56e057f20f883e', 1, '140225158987854589', '1044732267@qq.com', '13366055010', 0);
INSERT INTO `nverhong_user` VALUES (15, 'lb', '李白', 'e10adc3949ba59abbe56e057f20f883e', 1, '140225189987854589', '10447322658@qq.com', '1336998554', 0);
INSERT INTO `nverhong_user` VALUES (16, 'lgw', '李高伟', 'e10adc3949ba59abbe56e057f20f883e', 1, '140225189987854589', '1011322658@qq.com', '1336998554', 0);
INSERT INTO `nverhong_user` VALUES (18, 'shangzezhong', '尚泽忠', '4297f44b13955235245b2497399d7a93', 1, '140225198810013745', '1044888844@qq.com', '13366528458', 0);
INSERT INTO `nverhong_user` VALUES (19, 'liguangliang', '李光亮', '25f9e794323b453885f5181f1b624d0b', 1, '140225198841547785', '1047777@qq.com', '13366055048', 0);
INSERT INTO `nverhong_user` VALUES (20, 'szz', '李光亮', 'e10adc3949ba59abbe56e057f20f883e', 1, '140225198810013748', '1044732267@qq.com', '13366555010', 1);
INSERT INTO `nverhong_user` VALUES (21, 'monyi ', 'lirunjiang ', '12345', 1, NULL, NULL, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
