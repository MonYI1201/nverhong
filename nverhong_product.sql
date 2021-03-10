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

 Date: 10/03/2021 20:12:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
  `categoryLevel1Id` int(11) NULL DEFAULT NULL COMMENT '分类1',
  `categoryLevel2Id` int(11) NULL DEFAULT NULL COMMENT '分类2',
  `categoryLevel3Id` int(11) NULL DEFAULT NULL COMMENT '分类3',
  `fileName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '图片名称',
  `isDelete` int(10) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nverhong_product
-- ----------------------------
INSERT INTO `nverhong_product` VALUES (1, '华为Mate40Pro', NULL, 6999.00, 1000, 101, 201, 301, NULL, 0);
INSERT INTO `nverhong_product` VALUES (2, 'Iphone12', NULL, 6999.00, 1000, 101, 201, 302, NULL, 0);
INSERT INTO `nverhong_product` VALUES (3, '联想小新Air15', NULL, 5999.00, 999, 101, 202, 303, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
