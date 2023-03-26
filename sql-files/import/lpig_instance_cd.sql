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

 Date: 22/11/2021 00:38:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lpig_instance_cd
-- ----------------------------
DROP TABLE IF EXISTS `lpig_instance_cd`;
CREATE TABLE `lpig_instance_cd`  (
  `instance_cd` char(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `instance_id` int(10) NULL DEFAULT 0,
  `instance_record` int(32) NULL DEFAULT 0,
  PRIMARY KEY (`instance_cd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
