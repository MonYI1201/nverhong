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

 Date: 10/03/2021 20:12:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for nverhong_product_category
-- ----------------------------
DROP TABLE IF EXISTS `nverhong_product_category`;
CREATE TABLE `nverhong_product_category`  (
  `id` int(10) NOT NULL COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `parenId` int(10) NOT NULL COMMENT '父级ID',
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

SET FOREIGN_KEY_CHECKS = 1;
