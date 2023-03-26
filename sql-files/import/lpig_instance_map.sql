/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : ragnarok

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 22/11/2021 00:38:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lpig_instance_map
-- ----------------------------
DROP TABLE IF EXISTS `lpig_instance_map`;
CREATE TABLE `lpig_instance_map`  (
  `instance_id` int(10) NOT NULL,
  `instance_mapname` char(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `instance_entermap` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`instance_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
