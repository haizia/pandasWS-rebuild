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

 Date: 22/11/2021 00:38:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lpig_instance_db
-- ----------------------------
DROP TABLE IF EXISTS `lpig_instance_db`;
CREATE TABLE `lpig_instance_db`  (
  `instance_id` int(10) NOT NULL,
  `instance_name` char(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `instance_release` int(10) NULL DEFAULT NULL,
  `instance_type` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`instance_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
