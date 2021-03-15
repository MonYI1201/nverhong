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

 Date: 15/03/2021 21:40:50
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
) ENGINE = MyISAM AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nverhong_product
-- ----------------------------
INSERT INTO `nverhong_product` VALUES (1, '联想Air15', NULL, 5999.00, 999, 101, 203, 303, 'huaweimate40pro.jpg', 0);
INSERT INTO `nverhong_product` VALUES (2, 'iphone12', NULL, 6999.00, 999, 101, 201, 302, 'huaweimate40pro.jpg', 0);
INSERT INTO `nverhong_product` VALUES (3, '华为matepro40', NULL, 6999.00, 999, 101, 201, 301, 'huaweimate40pro.jpg', 0);
INSERT INTO `nverhong_product` VALUES (5, '戴尔7759', NULL, 5500.00, 888, 101, 202, 304, 'huaweimate40pro.jpg', 0);
INSERT INTO `nverhong_product` VALUES (6, '戴尔G3', '', 5999.00, 222, 101, 202, 304, 'huaweimate40pro.jpg', 0);
INSERT INTO `nverhong_product` VALUES (7, '美特斯邦威春秋长袖', NULL, 200.00, 453, 102, 204, 305, 'huaweimate40pro.jpg', 0);
INSERT INTO `nverhong_product` VALUES (8, '联想Y7000', NULL, 5999.00, 1231, 101, 203, 303, 'huaweimate40pro.jpg', 0);
INSERT INTO `nverhong_product` VALUES (9, '联想Y7000', '', 5999.00, 123, 101, 203, 303, 'huaweimate40pro.jpg', 0);

SET FOREIGN_KEY_CHECKS = 1;
