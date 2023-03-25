/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : pandasws_main

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 04/06/2022 14:58:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acc_reg_num
-- ----------------------------
DROP TABLE IF EXISTS `acc_reg_num`;
CREATE TABLE `acc_reg_num`  (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`, `key`, `index`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for acc_reg_str
-- ----------------------------
DROP TABLE IF EXISTS `acc_reg_str`;
CREATE TABLE `acc_reg_str`  (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(254) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`, `key`, `index`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for achievement
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement`  (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id` bigint(11) UNSIGNED NOT NULL,
  `count1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `count10` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `completed` datetime(0) NULL DEFAULT NULL,
  `rewarded` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`char_id`, `id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of achievement
-- ----------------------------
INSERT INTO `achievement` VALUES (150000, 240000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-04-14 00:32:49', NULL);

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction`  (
  `auction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `seller_name` varchar(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `buyer_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `buyer_name` varchar(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `price` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `buynow` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hours` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `item_name` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`auction_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for barter
-- ----------------------------
DROP TABLE IF EXISTS `barter`;
CREATE TABLE `barter`  (
  `name` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `index` smallint(5) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`name`, `index`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bonus_script
-- ----------------------------
DROP TABLE IF EXISTS `bonus_script`;
CREATE TABLE `bonus_script`  (
  `id` bigint(20) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `script` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `tick` bigint(20) NOT NULL DEFAULT 0,
  `flag` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `icon` smallint(3) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for buyingstore_items
-- ----------------------------
DROP TABLE IF EXISTS `buyingstore_items`;
CREATE TABLE `buyingstore_items`  (
  `buyingstore_id` int(10) UNSIGNED NOT NULL,
  `index` smallint(5) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`buyingstore_id`, `index`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for buyingstores
-- ----------------------------
DROP TABLE IF EXISTS `buyingstores`;
CREATE TABLE `buyingstores`  (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(10) UNSIGNED NOT NULL,
  `sex` enum('F','M') CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT 'M',
  `map` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `x` smallint(5) UNSIGNED NOT NULL,
  `y` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `limit` int(10) UNSIGNED NOT NULL,
  `body_direction` char(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '4',
  `head_direction` char(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '0',
  `sit` char(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cart_inventory
-- ----------------------------
DROP TABLE IF EXISTS `cart_inventory`;
CREATE TABLE `cart_inventory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `equip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for char
-- ----------------------------
DROP TABLE IF EXISTS `char`;
CREATE TABLE `char`  (
  `char_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_num` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `class` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `base_level` smallint(6) UNSIGNED NOT NULL DEFAULT 1,
  `job_level` smallint(6) UNSIGNED NOT NULL DEFAULT 1,
  `base_exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `job_exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `zeny` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `str` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `agi` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `int` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `dex` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `luk` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pow` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sta` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `wis` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `spl` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `con` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `crt` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_ap` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `ap` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status_point` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `skill_point` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `trait_point` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `option` int(11) NOT NULL DEFAULT 0,
  `karma` tinyint(3) NOT NULL DEFAULT 0,
  `manner` smallint(6) NOT NULL DEFAULT 0,
  `party_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pet_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `homun_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `elemental_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hair` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `hair_color` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `clothes_color` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `body` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `weapon` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `shield` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `head_top` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `head_mid` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `head_bottom` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `robe` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `last_map` varchar(11) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `last_x` smallint(4) UNSIGNED NOT NULL DEFAULT 53,
  `last_y` smallint(4) UNSIGNED NOT NULL DEFAULT 111,
  `save_map` varchar(11) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `save_x` smallint(4) UNSIGNED NOT NULL DEFAULT 53,
  `save_y` smallint(4) UNSIGNED NOT NULL DEFAULT 111,
  `partner_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `online` tinyint(2) NOT NULL DEFAULT 0,
  `father` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mother` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `child` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `fame` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rename` smallint(3) UNSIGNED NOT NULL DEFAULT 0,
  `delete_date` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `moves` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `unban_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `font` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `uniqueitem_counter` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sex` enum('M','F') CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `hotkey_rowshift` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `hotkey_rowshift2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `clan_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `title_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `show_equip` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `inventory_slots` smallint(6) NOT NULL DEFAULT 100,
  PRIMARY KEY (`char_id`) USING BTREE,
  UNIQUE INDEX `name_key`(`name`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE,
  INDEX `party_id`(`party_id`) USING BTREE,
  INDEX `guild_id`(`guild_id`) USING BTREE,
  INDEX `online`(`online`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 150001 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of char
-- ----------------------------
INSERT INTO `char` VALUES (150000, 2000000, 0, '℃andy小懒猪', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 40, 40, 11, 11, 0, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'gl_cas01', 192, 230, 'prontera', 156, 191, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'F', 0, 0, 0, '2022-06-03 17:17:20', 0, 0, 100);

-- ----------------------------
-- Table structure for char_configs
-- ----------------------------
DROP TABLE IF EXISTS `char_configs`;
CREATE TABLE `char_configs`  (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `world_name` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `data` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`account_id`, `char_id`, `world_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for char_reg_num
-- ----------------------------
DROP TABLE IF EXISTS `char_reg_num`;
CREATE TABLE `char_reg_num`  (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `key`, `index`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for char_reg_str
-- ----------------------------
DROP TABLE IF EXISTS `char_reg_str`;
CREATE TABLE `char_reg_str`  (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(254) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`, `key`, `index`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for charlog
-- ----------------------------
DROP TABLE IF EXISTS `charlog`;
CREATE TABLE `charlog`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `time` datetime(0) NOT NULL,
  `char_msg` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT 'char select',
  `account_id` int(11) NOT NULL DEFAULT 0,
  `char_num` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(23) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `str` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `agi` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `int` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `dex` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `luk` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hair` tinyint(4) NOT NULL DEFAULT 0,
  `hair_color` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 58 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of charlog
-- ----------------------------
INSERT INTO `charlog` VALUES (1, '2022-04-14 00:32:47', 'make new char', 2000000, 0, '℃andy小懒猪', 1, 1, 1, 1, 1, 1, 3, 6);
INSERT INTO `charlog` VALUES (2, '2022-04-14 00:32:49', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (3, '2022-05-28 14:27:17', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (4, '2022-05-28 14:30:05', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (5, '2022-05-28 15:07:49', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (6, '2022-05-28 15:08:21', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (7, '2022-05-28 15:14:25', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (8, '2022-05-28 15:21:28', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (9, '2022-05-28 15:26:33', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (10, '2022-05-28 15:27:41', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (11, '2022-05-28 15:28:21', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (12, '2022-05-28 15:29:00', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (13, '2022-05-28 15:30:45', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (14, '2022-05-31 14:50:31', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (15, '2022-05-31 15:46:43', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (16, '2022-05-31 15:56:40', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (17, '2022-05-31 16:01:31', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (18, '2022-05-31 16:06:31', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (19, '2022-05-31 18:30:07', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (20, '2022-05-31 18:31:19', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (21, '2022-05-31 18:32:25', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (22, '2022-05-31 18:34:07', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (23, '2022-05-31 19:02:27', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (24, '2022-06-01 17:26:13', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (25, '2022-06-01 17:27:40', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (26, '2022-06-01 17:30:50', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (27, '2022-06-01 17:32:24', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (28, '2022-06-01 17:38:26', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (29, '2022-06-01 17:40:04', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (30, '2022-06-01 17:40:54', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (31, '2022-06-01 23:39:05', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (32, '2022-06-01 23:39:31', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (33, '2022-06-01 23:40:10', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (34, '2022-06-01 23:48:04', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (35, '2022-06-01 23:50:55', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (36, '2022-06-01 23:59:36', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (37, '2022-06-02 00:00:36', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (38, '2022-06-02 00:06:53', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (39, '2022-06-02 00:10:59', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (40, '2022-06-02 16:11:54', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (41, '2022-06-02 16:26:46', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (42, '2022-06-02 16:32:48', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (43, '2022-06-02 16:34:23', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (44, '2022-06-02 16:35:47', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (45, '2022-06-02 16:37:53', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (46, '2022-06-02 16:38:55', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (47, '2022-06-02 16:48:16', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (48, '2022-06-02 16:52:31', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (49, '2022-06-02 16:55:52', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (50, '2022-06-02 16:57:00', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (51, '2022-06-02 16:58:43', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (52, '2022-06-02 17:00:38', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (53, '2022-06-02 17:03:57', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (54, '2022-06-02 17:06:15', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (55, '2022-06-02 17:08:42', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (56, '2022-06-02 17:22:23', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `charlog` VALUES (57, '2022-06-03 17:17:20', 'char select', 2000000, 0, '℃andy小懒猪', 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for clan
-- ----------------------------
DROP TABLE IF EXISTS `clan`;
CREATE TABLE `clan`  (
  `clan_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `master` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `mapname` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `max_member` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`clan_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clan
-- ----------------------------
INSERT INTO `clan` VALUES (1, 'Swordman Clan', 'Raffam Oranpere', 'prontera', 500);
INSERT INTO `clan` VALUES (2, 'Arcwand Clan', 'Devon Aire', 'geffen', 500);
INSERT INTO `clan` VALUES (3, 'Golden Mace Clan', 'Berman Aire', 'prontera', 500);
INSERT INTO `clan` VALUES (4, 'Crossbow Clan', 'Shaam Rumi', 'payon', 500);

-- ----------------------------
-- Table structure for clan_alliance
-- ----------------------------
DROP TABLE IF EXISTS `clan_alliance`;
CREATE TABLE `clan_alliance`  (
  `clan_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `opposition` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `alliance_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`clan_id`, `alliance_id`) USING BTREE,
  INDEX `alliance_id`(`alliance_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clan_alliance
-- ----------------------------
INSERT INTO `clan_alliance` VALUES (1, 0, 3, 'Golden Mace Clan');
INSERT INTO `clan_alliance` VALUES (2, 0, 3, 'Golden Mace Clan');
INSERT INTO `clan_alliance` VALUES (2, 1, 4, 'Crossbow Clan');
INSERT INTO `clan_alliance` VALUES (3, 0, 1, 'Swordman Clan');
INSERT INTO `clan_alliance` VALUES (3, 0, 2, 'Arcwand Clan');
INSERT INTO `clan_alliance` VALUES (3, 0, 4, 'Crossbow Clan');
INSERT INTO `clan_alliance` VALUES (4, 0, 3, 'Golden Mace Clan');
INSERT INTO `clan_alliance` VALUES (4, 1, 2, 'Arcwand Clan');

-- ----------------------------
-- Table structure for db_roulette
-- ----------------------------
DROP TABLE IF EXISTS `db_roulette`;
CREATE TABLE `db_roulette`  (
  `index` int(11) NOT NULL DEFAULT 0,
  `level` smallint(5) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `flag` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`index`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for elemental
-- ----------------------------
DROP TABLE IF EXISTS `elemental`;
CREATE TABLE `elemental`  (
  `ele_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `mode` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `atk1` mediumint(6) UNSIGNED NOT NULL DEFAULT 0,
  `atk2` mediumint(6) UNSIGNED NOT NULL DEFAULT 0,
  `matk` mediumint(6) UNSIGNED NOT NULL DEFAULT 0,
  `aspd` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `def` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mdef` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `flee` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `life_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ele_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends`  (
  `char_id` int(11) NOT NULL DEFAULT 0,
  `friend_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `friend_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for global_acc_reg_num
-- ----------------------------
DROP TABLE IF EXISTS `global_acc_reg_num`;
CREATE TABLE `global_acc_reg_num`  (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` bigint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`, `key`, `index`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for global_acc_reg_str
-- ----------------------------
DROP TABLE IF EXISTS `global_acc_reg_str`;
CREATE TABLE `global_acc_reg_str`  (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(254) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`, `key`, `index`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild`  (
  `guild_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `master` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `connect_member` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `max_member` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `average_lv` smallint(6) UNSIGNED NOT NULL DEFAULT 1,
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `next_exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_point` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  `mes1` varchar(60) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `mes2` varchar(120) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `emblem_len` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `emblem_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `emblem_data` blob NULL,
  `last_master_change` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`guild_id`, `char_id`) USING BTREE,
  UNIQUE INDEX `guild_id`(`guild_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_alliance
-- ----------------------------
DROP TABLE IF EXISTS `guild_alliance`;
CREATE TABLE `guild_alliance`  (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `opposition` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `alliance_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`, `alliance_id`) USING BTREE,
  INDEX `alliance_id`(`alliance_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_castle
-- ----------------------------
DROP TABLE IF EXISTS `guild_castle`;
CREATE TABLE `guild_castle`  (
  `castle_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `economy` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `defense` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `triggerE` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `triggerD` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nextTime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `payTime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `createTime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleC` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG0` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG4` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG5` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG6` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `visibleG7` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`castle_id`) USING BTREE,
  INDEX `guild_id`(`guild_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for guild_emblems
-- ----------------------------
DROP TABLE IF EXISTS `guild_emblems`;
CREATE TABLE `guild_emblems`  (
  `guild_id` int(11) UNSIGNED NOT NULL,
  `world_name` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `file_type` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `file_data` blob NULL,
  `version` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`, `world_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_expulsion
-- ----------------------------
DROP TABLE IF EXISTS `guild_expulsion`;
CREATE TABLE `guild_expulsion`  (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `mes` varchar(40) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`, `name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_member
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member`  (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `position` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`, `char_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for guild_position
-- ----------------------------
DROP TABLE IF EXISTS `guild_position`;
CREATE TABLE `guild_position`  (
  `guild_id` int(9) UNSIGNED NOT NULL DEFAULT 0,
  `position` tinyint(6) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `mode` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_mode` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`, `position`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_skill
-- ----------------------------
DROP TABLE IF EXISTS `guild_skill`;
CREATE TABLE `guild_skill`  (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`guild_id`, `id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for guild_storage
-- ----------------------------
DROP TABLE IF EXISTS `guild_storage`;
CREATE TABLE `guild_storage`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `equip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `guild_id`(`guild_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for guild_storage_log
-- ----------------------------
DROP TABLE IF EXISTS `guild_storage_log`;
CREATE TABLE `guild_storage_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `time` datetime(0) NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 1,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `guild_id`(`guild_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for homunculus
-- ----------------------------
DROP TABLE IF EXISTS `homunculus`;
CREATE TABLE `homunculus`  (
  `homun_id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `prev_class` mediumint(9) NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `level` smallint(4) NOT NULL DEFAULT 0,
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `intimacy` int(12) NOT NULL DEFAULT 0,
  `hunger` smallint(4) NOT NULL DEFAULT 0,
  `str` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `agi` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `int` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `dex` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `luk` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `max_hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sp` int(11) NOT NULL DEFAULT 0,
  `max_sp` int(11) NOT NULL DEFAULT 0,
  `skill_point` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `alive` tinyint(2) NOT NULL DEFAULT 1,
  `rename_flag` tinyint(2) NOT NULL DEFAULT 0,
  `vaporize` tinyint(2) NOT NULL DEFAULT 0,
  `autofeed` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`homun_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hotkey
-- ----------------------------
DROP TABLE IF EXISTS `hotkey`;
CREATE TABLE `hotkey`  (
  `char_id` int(11) NOT NULL,
  `hotkey` tinyint(2) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `itemskill_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `skill_lvl` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `hotkey`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hotkey
-- ----------------------------
INSERT INTO `hotkey` VALUES (150000, 0, 0, 501, 0);

-- ----------------------------
-- Table structure for interlog
-- ----------------------------
DROP TABLE IF EXISTS `interlog`;
CREATE TABLE `interlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(0) NOT NULL,
  `log` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `time`(`time`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `equip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `favorite` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `equip_switch` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (3, 150000, 501, 732, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for ipbanlist
-- ----------------------------
DROP TABLE IF EXISTS `ipbanlist`;
CREATE TABLE `ipbanlist`  (
  `list` varchar(15) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `btime` datetime(0) NOT NULL,
  `rtime` datetime(0) NOT NULL,
  `reason` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`list`, `btime`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_cash_db
-- ----------------------------
DROP TABLE IF EXISTS `item_cash_db`;
CREATE TABLE `item_cash_db`  (
  `tab` smallint(6) NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `price` mediumint(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`tab`, `item_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_cash_db2
-- ----------------------------
DROP TABLE IF EXISTS `item_cash_db2`;
CREATE TABLE `item_cash_db2`  (
  `tab` smallint(6) NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `price` mediumint(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`tab`, `item_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_db
-- ----------------------------
DROP TABLE IF EXISTS `item_db`;
CREATE TABLE `item_db`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name_aegis` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `name_english` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `type` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `subtype` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `price_buy` int(10) UNSIGNED NULL DEFAULT NULL,
  `price_sell` int(10) UNSIGNED NULL DEFAULT NULL,
  `weight` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `attack` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `defense` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `range` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `slots` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `job_all` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_acolyte` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_alchemist` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_archer` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_assassin` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_barddancer` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_blacksmith` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_crusader` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_gunslinger` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_hunter` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_knight` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_mage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_merchant` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_monk` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_ninja` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_novice` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_priest` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_rogue` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_sage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_soullinker` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_stargladiator` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_supernovice` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_swordman` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_taekwon` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_thief` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_wizard` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `class_all` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `class_normal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `class_upper` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `class_baby` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `location_head_top` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_head_mid` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_head_low` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_armor` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_right_hand` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_left_hand` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_garment` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shoes` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_right_accessory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_left_accessory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_costume_head_top` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_costume_head_mid` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_costume_head_low` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_costume_garment` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_ammo` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_armor` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_weapon` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_shield` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_shoes` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_right_accessory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_left_accessory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `weapon_level` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `armor_level` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `equip_level_min` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `equip_level_max` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `refineable` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `view` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `alias_name` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `flag_buyingstore` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_deadbranch` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_container` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_uniqueid` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_bindonequip` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_dropannounce` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_noconsume` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_dropeffect` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `delay_duration` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `delay_status` varchar(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `stack_amount` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `stack_inventory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `stack_cart` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `stack_storage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `stack_guildstorage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `nouse_override` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `nouse_sitting` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_override` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `trade_nodrop` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_notrade` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_tradepartner` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_nosell` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_nocart` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_nostorage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_noguildstorage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_nomail` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_noauction` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `script` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `equip_script` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `unequip_script` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UniqueAegisName`(`name_aegis`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_db
-- ----------------------------
INSERT INTO `item_db` VALUES (501, 'test', 'test', 'Usable', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'callfunc \"test\";', NULL, NULL);

-- ----------------------------
-- Table structure for item_db2
-- ----------------------------
DROP TABLE IF EXISTS `item_db2`;
CREATE TABLE `item_db2`  (
  `id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name_aegis` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `name_english` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `subtype` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `price_buy` int(10) UNSIGNED NULL DEFAULT NULL,
  `price_sell` int(10) UNSIGNED NULL DEFAULT NULL,
  `weight` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `attack` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `defense` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `range` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `slots` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `job_all` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_acolyte` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_alchemist` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_archer` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_assassin` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_barddancer` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_blacksmith` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_crusader` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_gunslinger` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_hunter` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_knight` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_mage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_merchant` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_monk` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_ninja` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_novice` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_priest` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_rogue` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_sage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_soullinker` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_stargladiator` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_supernovice` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_swordman` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_taekwon` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_thief` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `job_wizard` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `class_all` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `class_normal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `class_upper` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `class_baby` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `location_head_top` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_head_mid` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_head_low` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_armor` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_right_hand` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_left_hand` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_garment` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shoes` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_right_accessory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_left_accessory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_costume_head_top` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_costume_head_mid` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_costume_head_low` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_costume_garment` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_ammo` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_armor` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_weapon` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_shield` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_shoes` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_right_accessory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `location_shadow_left_accessory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `weapon_level` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `armor_level` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `equip_level_min` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `equip_level_max` tinyint(3) UNSIGNED NULL DEFAULT NULL,
  `refineable` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `view` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `alias_name` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `flag_buyingstore` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_deadbranch` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_container` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_uniqueid` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_bindonequip` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_dropannounce` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_noconsume` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `flag_dropeffect` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `delay_duration` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `delay_status` varchar(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `stack_amount` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `stack_inventory` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `stack_cart` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `stack_storage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `stack_guildstorage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `nouse_override` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `nouse_sitting` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_override` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `trade_nodrop` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_notrade` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_tradepartner` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_nosell` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_nocart` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_nostorage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_noguildstorage` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_nomail` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `trade_noauction` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `script` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `equip_script` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `unequip_script` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UniqueAegisName`(`name_aegis`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` varchar(23) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `user_pass` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `sex` enum('M','F','S') CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT 'M',
  `email` varchar(39) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT 0,
  `state` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `unban_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `expiration_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `logincount` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `lastlogin` datetime(0) NULL DEFAULT NULL,
  `last_ip` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `birthdate` date NULL DEFAULT NULL,
  `character_slots` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `pincode` varchar(4) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `pincode_change` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vip_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `old_group` tinyint(3) NOT NULL DEFAULT 0,
  `web_auth_token` varchar(17) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `web_auth_token_enabled` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`) USING BTREE,
  UNIQUE INDEX `web_auth_token_key`(`web_auth_token`) USING BTREE,
  INDEX `name`(`userid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2000001 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 's1', 'p1', 'S', 'athena@athena.com', 0, 0, 0, 0, 13, '2022-06-03 17:16:33', '192.168.31.159', NULL, 0, '', 0, 0, 0, NULL, 0);
INSERT INTO `login` VALUES (2000000, 'hhhh', 'hhhhhh', 'F', 'a@a.com', 99, 0, 0, 0, 59, '2022-06-03 17:17:15', '127.0.0.1', NULL, 15, '', 0, 0, 0, 'c79bd8816cc3f911', 1);

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_name` varchar(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `send_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `dest_name` varchar(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `dest_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(45) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `message` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `zeny` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` smallint(5) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mail_attachments
-- ----------------------------
DROP TABLE IF EXISTS `mail_attachments`;
CREATE TABLE `mail_attachments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `index` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`, `index`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for mapreg
-- ----------------------------
DROP TABLE IF EXISTS `mapreg`;
CREATE TABLE `mapreg`  (
  `varname` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `index` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `value` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`varname`, `index`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mapreg
-- ----------------------------
INSERT INTO `mapreg` VALUES ('$arn_pritop60', 0, '480');
INSERT INTO `mapreg` VALUES ('$arn_pritop70', 0, '480');
INSERT INTO `mapreg` VALUES ('$arn_pritop80', 0, '480');
INSERT INTO `mapreg` VALUES ('$arn_pritop90', 0, '480');
INSERT INTO `mapreg` VALUES ('$arn_acotop', 0, '480');
INSERT INTO `mapreg` VALUES ('$arn_pritopn60$', 0, 'Default');
INSERT INTO `mapreg` VALUES ('$arn_pritopn70$', 0, 'Default');
INSERT INTO `mapreg` VALUES ('$arn_pritopn80$', 0, 'Default');
INSERT INTO `mapreg` VALUES ('$arn_pritopn90$', 0, 'Default');
INSERT INTO `mapreg` VALUES ('$arn_acotopn$', 0, 'Default');
INSERT INTO `mapreg` VALUES ('$timezonestring$', 0, '^FF0000GMT^000000');
INSERT INTO `mapreg` VALUES ('$ttnames$', 0, 'Breezy Havana');
INSERT INTO `mapreg` VALUES ('$ttnames$', 1, 'RS125');
INSERT INTO `mapreg` VALUES ('$ttnames$', 2, 'Hollgrehenn');
INSERT INTO `mapreg` VALUES ('$ttnames$', 3, 'Antonio');
INSERT INTO `mapreg` VALUES ('$ttnames$', 4, 'Aragham');
INSERT INTO `mapreg` VALUES ('$ttnames$', 5, 'Kafra Jasmine');
INSERT INTO `mapreg` VALUES ('$ttnames$', 6, 'Chris');
INSERT INTO `mapreg` VALUES ('$ttnames$', 7, 'Breezy Havana');
INSERT INTO `mapreg` VALUES ('$ttnames$', 8, 'RS125');
INSERT INTO `mapreg` VALUES ('$ttnames$', 9, 'Breezy Havana');
INSERT INTO `mapreg` VALUES ('$ttnames$', 10, 'Nari');
INSERT INTO `mapreg` VALUES ('$ttnames$', 11, 'Senorita Sylvia');
INSERT INTO `mapreg` VALUES ('$ttnames$', 12, 'Joo Jahk');
INSERT INTO `mapreg` VALUES ('$ttnames$', 13, 'RS125');
INSERT INTO `mapreg` VALUES ('$ttranks', 0, '999999');
INSERT INTO `mapreg` VALUES ('$top_60min', 0, '6');
INSERT INTO `mapreg` VALUES ('$top_80min', 0, '8');
INSERT INTO `mapreg` VALUES ('$120719_num_face', 0, '3600');
INSERT INTO `mapreg` VALUES ('$malayaNames$', 0, 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', 1, 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', 2, 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', 3, 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', 4, 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', 5, 'unknown');
INSERT INTO `mapreg` VALUES ('$2011_agit_invest', 0, '1');
INSERT INTO `mapreg` VALUES ('$top_50min', 0, '5');
INSERT INTO `mapreg` VALUES ('$top_ptmin', 0, '10');
INSERT INTO `mapreg` VALUES ('$top_70min', 0, '7');
INSERT INTO `mapreg` VALUES ('$DTS_Time', 0, '34');
INSERT INTO `mapreg` VALUES ('$event_paramk', 0, '1');
INSERT INTO `mapreg` VALUES ('$prt_invest_result', 0, '1');
INSERT INTO `mapreg` VALUES ('$pay_invest_result', 0, '1');
INSERT INTO `mapreg` VALUES ('$gef_invest_result', 0, '1');
INSERT INTO `mapreg` VALUES ('$alde_invest_result', 0, '1');

-- ----------------------------
-- Table structure for market
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market`  (
  `name` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `nameid` int(10) UNSIGNED NOT NULL,
  `price` int(11) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `flag` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`, `nameid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for memo
-- ----------------------------
DROP TABLE IF EXISTS `memo`;
CREATE TABLE `memo`  (
  `memo_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `map` varchar(11) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `x` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `y` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`memo_id`) USING BTREE,
  INDEX `char_id`(`char_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mercenary
-- ----------------------------
DROP TABLE IF EXISTS `mercenary`;
CREATE TABLE `mercenary`  (
  `mer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `hp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `kill_counter` int(11) NOT NULL,
  `life_time` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mer_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for mercenary_owner
-- ----------------------------
DROP TABLE IF EXISTS `mercenary_owner`;
CREATE TABLE `mercenary_owner`  (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL DEFAULT 0,
  `arch_calls` int(11) NOT NULL DEFAULT 0,
  `arch_faith` int(11) NOT NULL DEFAULT 0,
  `spear_calls` int(11) NOT NULL DEFAULT 0,
  `spear_faith` int(11) NOT NULL DEFAULT 0,
  `sword_calls` int(11) NOT NULL DEFAULT 0,
  `sword_faith` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for merchant_configs
-- ----------------------------
DROP TABLE IF EXISTS `merchant_configs`;
CREATE TABLE `merchant_configs`  (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `world_name` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `store_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`account_id`, `char_id`, `world_name`, `store_type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mob_db
-- ----------------------------
DROP TABLE IF EXISTS `mob_db`;
CREATE TABLE `mob_db`  (
  `id` int(11) UNSIGNED NOT NULL,
  `name_aegis` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `name_english` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `name_japanese` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `level` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `hp` int(11) UNSIGNED NULL DEFAULT NULL,
  `sp` mediumint(9) UNSIGNED NULL DEFAULT NULL,
  `base_exp` int(11) UNSIGNED NULL DEFAULT NULL,
  `job_exp` int(11) UNSIGNED NULL DEFAULT NULL,
  `mvp_exp` int(11) UNSIGNED NULL DEFAULT NULL,
  `attack` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `attack2` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `defense` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `magic_defense` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `str` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `agi` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `vit` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `int` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `dex` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `luk` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `attack_range` tinyint(4) UNSIGNED NULL DEFAULT NULL,
  `skill_range` tinyint(4) UNSIGNED NULL DEFAULT NULL,
  `chase_range` tinyint(4) UNSIGNED NULL DEFAULT NULL,
  `size` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `race` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `racegroup_goblin` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_kobold` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_orc` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_golem` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_guardian` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_ninja` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_gvg` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_battlefield` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_treasure` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_biolab` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_manuk` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_splendide` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_scaraba` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_ogh_atk_def` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_ogh_hidden` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_bio5_swordman_thief` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_bio5_acolyte_merchant` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_bio5_mage_archer` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_bio5_mvp` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_clocktower` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_thanatos` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_faceworm` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_hearthunter` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_rockridge` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_werner_lab` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_temple_demon` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_illusion_vampire` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_malangdo` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `element` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `element_level` tinyint(4) UNSIGNED NULL DEFAULT NULL,
  `walk_speed` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `attack_delay` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `attack_motion` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `damage_motion` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `damage_taken` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `ai` varchar(2) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `class` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mode_canmove` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_looter` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_aggressive` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_assist` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_castsensoridle` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_norandomwalk` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_nocast` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_canattack` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_castsensorchase` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_changechase` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_angry` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_changetargetmelee` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_changetargetchase` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_targetweak` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_randomtarget` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_ignoremelee` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_ignoremagic` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_ignoreranged` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_mvp` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_ignoremisc` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_knockbackimmune` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_teleportblock` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_fixeditemdrop` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_detector` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_statusimmune` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_skillimmune` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop1_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop1_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop1_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop1_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop2_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop2_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop2_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop2_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop3_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop3_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop3_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop3_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop1_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop1_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop1_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop1_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop1_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop2_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop2_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop2_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop2_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop2_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop3_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop3_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop3_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop3_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop3_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop4_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop4_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop4_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop4_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop4_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop5_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop5_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop5_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop5_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop5_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop6_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop6_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop6_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop6_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop6_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop7_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop7_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop7_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop7_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop7_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop8_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop8_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop8_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop8_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop8_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop9_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop9_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop9_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop9_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop9_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop10_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop10_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop10_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop10_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop10_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_aegis`(`name_aegis`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mob_db2
-- ----------------------------
DROP TABLE IF EXISTS `mob_db2`;
CREATE TABLE `mob_db2`  (
  `id` int(11) UNSIGNED NOT NULL,
  `name_aegis` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `name_english` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `name_japanese` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `level` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `hp` int(11) UNSIGNED NULL DEFAULT NULL,
  `sp` mediumint(9) UNSIGNED NULL DEFAULT NULL,
  `base_exp` int(11) UNSIGNED NULL DEFAULT NULL,
  `job_exp` int(11) UNSIGNED NULL DEFAULT NULL,
  `mvp_exp` int(11) UNSIGNED NULL DEFAULT NULL,
  `attack` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `attack2` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `defense` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `magic_defense` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `str` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `agi` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `vit` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `int` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `dex` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `luk` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `attack_range` tinyint(4) UNSIGNED NULL DEFAULT NULL,
  `skill_range` tinyint(4) UNSIGNED NULL DEFAULT NULL,
  `chase_range` tinyint(4) UNSIGNED NULL DEFAULT NULL,
  `size` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `race` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `racegroup_goblin` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_kobold` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_orc` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_golem` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_guardian` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_ninja` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_gvg` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_battlefield` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_treasure` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_biolab` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_manuk` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_splendide` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_scaraba` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_ogh_atk_def` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_ogh_hidden` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_bio5_swordman_thief` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_bio5_acolyte_merchant` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_bio5_mage_archer` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_bio5_mvp` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_clocktower` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_thanatos` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_faceworm` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_hearthunter` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_rockridge` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_werner_lab` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_temple_demon` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_illusion_vampire` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `racegroup_malangdo` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `element` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `element_level` tinyint(4) UNSIGNED NULL DEFAULT NULL,
  `walk_speed` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `attack_delay` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `attack_motion` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `damage_motion` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `damage_taken` smallint(6) UNSIGNED NULL DEFAULT NULL,
  `ai` varchar(2) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `class` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mode_canmove` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_looter` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_aggressive` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_assist` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_castsensoridle` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_norandomwalk` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_nocast` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_canattack` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_castsensorchase` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_changechase` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_angry` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_changetargetmelee` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_changetargetchase` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_targetweak` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_randomtarget` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_ignoremelee` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_ignoremagic` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_ignoreranged` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_mvp` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_ignoremisc` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_knockbackimmune` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_teleportblock` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_fixeditemdrop` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_detector` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_statusimmune` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mode_skillimmune` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop1_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop1_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop1_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop1_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop2_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop2_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop2_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop2_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop3_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop3_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `mvpdrop3_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `mvpdrop3_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop1_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop1_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop1_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop1_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop1_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop2_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop2_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop2_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop2_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop2_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop3_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop3_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop3_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop3_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop3_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop4_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop4_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop4_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop4_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop4_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop5_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop5_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop5_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop5_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop5_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop6_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop6_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop6_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop6_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop6_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop7_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop7_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop7_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop7_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop7_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop8_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop8_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop8_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop8_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop8_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop9_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop9_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop9_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop9_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop9_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  `drop10_item` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop10_rate` smallint(9) UNSIGNED NULL DEFAULT NULL,
  `drop10_nosteal` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `drop10_option` varchar(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `drop10_index` tinyint(2) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name_aegis`(`name_aegis`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mob_skill_db
-- ----------------------------
DROP TABLE IF EXISTS `mob_skill_db`;
CREATE TABLE `mob_skill_db`  (
  `MOB_ID` smallint(6) NOT NULL,
  `INFO` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `STATE` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SKILL_ID` smallint(6) NOT NULL,
  `SKILL_LV` tinyint(4) NOT NULL,
  `RATE` smallint(4) NOT NULL,
  `CASTTIME` mediumint(9) NOT NULL,
  `DELAY` int(9) NOT NULL,
  `CANCELABLE` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `TARGET` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CONDITION` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CONDITION_VALUE` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `VAL1` mediumint(9) NULL DEFAULT NULL,
  `VAL2` mediumint(9) NULL DEFAULT NULL,
  `VAL3` mediumint(9) NULL DEFAULT NULL,
  `VAL4` mediumint(9) NULL DEFAULT NULL,
  `VAL5` mediumint(9) NULL DEFAULT NULL,
  `EMOTION` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `CHAT` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mob_skill_db2
-- ----------------------------
DROP TABLE IF EXISTS `mob_skill_db2`;
CREATE TABLE `mob_skill_db2`  (
  `MOB_ID` smallint(6) NOT NULL,
  `INFO` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `STATE` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SKILL_ID` smallint(6) NOT NULL,
  `SKILL_LV` tinyint(4) NOT NULL,
  `RATE` smallint(4) NOT NULL,
  `CASTTIME` mediumint(9) NOT NULL,
  `DELAY` int(9) NOT NULL,
  `CANCELABLE` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `TARGET` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CONDITION` text CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CONDITION_VALUE` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `VAL1` mediumint(9) NULL DEFAULT NULL,
  `VAL2` mediumint(9) NULL DEFAULT NULL,
  `VAL3` mediumint(9) NULL DEFAULT NULL,
  `VAL4` mediumint(9) NULL DEFAULT NULL,
  `VAL5` mediumint(9) NULL DEFAULT NULL,
  `EMOTION` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL,
  `CHAT` text CHARACTER SET gbk COLLATE gbk_chinese_ci NULL
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for party
-- ----------------------------
DROP TABLE IF EXISTS `party`;
CREATE TABLE `party`  (
  `party_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `exp` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  `item` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  `leader_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `leader_char` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`party_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet`  (
  `pet_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(24) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `level` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `egg_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `equip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `intimate` smallint(9) UNSIGNED NOT NULL DEFAULT 0,
  `hungry` smallint(9) UNSIGNED NOT NULL DEFAULT 0,
  `rename_flag` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `incubate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `autofeed` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pet_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest`  (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `quest_id` int(10) UNSIGNED NOT NULL,
  `state` enum('0','1','2') CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '0',
  `time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `count1` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `count2` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `count3` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `quest_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for recruitment
-- ----------------------------
DROP TABLE IF EXISTS `recruitment`;
CREATE TABLE `recruitment`  (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `char_name` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  `world_name` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `adventure_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `tanker` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `dealer` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `healer` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `assist` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `min_level` int(11) UNSIGNED NOT NULL,
  `max_level` int(11) UNSIGNED NOT NULL,
  `memo` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`account_id`, `char_id`, `world_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales`  (
  `nameid` int(10) UNSIGNED NOT NULL,
  `start` datetime(0) NOT NULL,
  `end` datetime(0) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`nameid`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sc_data
-- ----------------------------
DROP TABLE IF EXISTS `sc_data`;
CREATE TABLE `sc_data`  (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `type` smallint(11) UNSIGNED NOT NULL,
  `tick` bigint(20) NOT NULL,
  `val1` int(11) NOT NULL DEFAULT 0,
  `val2` int(11) NOT NULL DEFAULT 0,
  `val3` int(11) NOT NULL DEFAULT 0,
  `val4` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `type`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill`  (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `lv` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `flag` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`, `id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for skill_homunculus
-- ----------------------------
DROP TABLE IF EXISTS `skill_homunculus`;
CREATE TABLE `skill_homunculus`  (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL,
  PRIMARY KEY (`homun_id`, `id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for skillcooldown
-- ----------------------------
DROP TABLE IF EXISTS `skillcooldown`;
CREATE TABLE `skillcooldown`  (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `skill` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `tick` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`, `skill`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for storage
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nameid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` smallint(11) UNSIGNED NOT NULL DEFAULT 0,
  `equip` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `identify` smallint(6) UNSIGNED NOT NULL DEFAULT 0,
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `card0` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `option_id0` smallint(5) NOT NULL DEFAULT 0,
  `option_val0` smallint(5) NOT NULL DEFAULT 0,
  `option_parm0` tinyint(3) NOT NULL DEFAULT 0,
  `option_id1` smallint(5) NOT NULL DEFAULT 0,
  `option_val1` smallint(5) NOT NULL DEFAULT 0,
  `option_parm1` tinyint(3) NOT NULL DEFAULT 0,
  `option_id2` smallint(5) NOT NULL DEFAULT 0,
  `option_val2` smallint(5) NOT NULL DEFAULT 0,
  `option_parm2` tinyint(3) NOT NULL DEFAULT 0,
  `option_id3` smallint(5) NOT NULL DEFAULT 0,
  `option_val3` smallint(5) NOT NULL DEFAULT 0,
  `option_parm3` tinyint(3) NOT NULL DEFAULT 0,
  `option_id4` smallint(5) NOT NULL DEFAULT 0,
  `option_val4` smallint(5) NOT NULL DEFAULT 0,
  `option_parm4` tinyint(3) NOT NULL DEFAULT 0,
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `bound` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `enchantgrade` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `account_id`(`account_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for suspend
-- ----------------------------
DROP TABLE IF EXISTS `suspend`;
CREATE TABLE `suspend`  (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(10) UNSIGNED NOT NULL,
  `sex` enum('F','M') CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT 'M',
  `map` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `x` smallint(5) UNSIGNED NOT NULL,
  `y` smallint(5) UNSIGNED NOT NULL,
  `body_direction` char(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '4',
  `head_direction` char(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '0',
  `sit` char(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '1',
  `mode` tinyint(4) NOT NULL,
  `tick` bigint(20) NOT NULL DEFAULT 0,
  `val1` int(11) NOT NULL DEFAULT 0,
  `val2` int(11) NOT NULL DEFAULT 0,
  `val3` int(11) NOT NULL DEFAULT 0,
  `val4` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_configs
-- ----------------------------
DROP TABLE IF EXISTS `user_configs`;
CREATE TABLE `user_configs`  (
  `account_id` int(11) UNSIGNED NOT NULL,
  `world_name` varchar(32) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `data` longtext CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`account_id`, `world_name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_configs
-- ----------------------------
INSERT INTO `user_configs` VALUES (2000000, 'Pandas Server', '{\n   \"data\" : {\n      \"EmotionHotkey\" : [\n         \"@reloadscript\",\n         \"/?\",\n         \"/高兴\",\n         \"/爱心\",\n         \"/流冷汗\",\n         \"/灵感\",\n         \"/生气\",\n         \"/郁闷\",\n         \"/金钱\",\n         \"/无言\"\n      ]\n   }\n}\n');

-- ----------------------------
-- Table structure for vending_items
-- ----------------------------
DROP TABLE IF EXISTS `vending_items`;
CREATE TABLE `vending_items`  (
  `vending_id` int(10) UNSIGNED NOT NULL,
  `index` smallint(5) UNSIGNED NOT NULL,
  `cartinventory_id` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`vending_id`, `index`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for vendings
-- ----------------------------
DROP TABLE IF EXISTS `vendings`;
CREATE TABLE `vendings`  (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(10) UNSIGNED NOT NULL,
  `sex` enum('F','M') CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT 'M',
  `map` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `x` smallint(5) UNSIGNED NOT NULL,
  `y` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `body_direction` char(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '4',
  `head_direction` char(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '0',
  `sit` char(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
