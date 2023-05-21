/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50643
Source Host           : localhost:3306
Source Database       : pandasws_main

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2023-05-21 14:35:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `acc_reg_num`
-- ----------------------------
DROP TABLE IF EXISTS `acc_reg_num`;
CREATE TABLE `acc_reg_num` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` bigint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of acc_reg_num
-- ----------------------------

-- ----------------------------
-- Table structure for `acc_reg_str`
-- ----------------------------
DROP TABLE IF EXISTS `acc_reg_str`;
CREATE TABLE `acc_reg_str` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of acc_reg_str
-- ----------------------------

-- ----------------------------
-- Table structure for `achievement`
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id` bigint(11) unsigned NOT NULL,
  `count1` int(10) unsigned NOT NULL DEFAULT '0',
  `count2` int(10) unsigned NOT NULL DEFAULT '0',
  `count3` int(10) unsigned NOT NULL DEFAULT '0',
  `count4` int(10) unsigned NOT NULL DEFAULT '0',
  `count5` int(10) unsigned NOT NULL DEFAULT '0',
  `count6` int(10) unsigned NOT NULL DEFAULT '0',
  `count7` int(10) unsigned NOT NULL DEFAULT '0',
  `count8` int(10) unsigned NOT NULL DEFAULT '0',
  `count9` int(10) unsigned NOT NULL DEFAULT '0',
  `count10` int(10) unsigned NOT NULL DEFAULT '0',
  `completed` datetime DEFAULT NULL,
  `rewarded` datetime DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`) USING BTREE,
  KEY `char_id` (`char_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of achievement
-- ----------------------------
INSERT INTO `achievement` VALUES ('150000', '240000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2022-04-14 00:32:49', null);

-- ----------------------------
-- Table structure for `auction`
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction` (
  `auction_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) unsigned NOT NULL DEFAULT '0',
  `seller_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_id` int(11) unsigned NOT NULL DEFAULT '0',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `price` int(11) unsigned NOT NULL DEFAULT '0',
  `buynow` int(11) unsigned NOT NULL DEFAULT '0',
  `hours` smallint(6) NOT NULL DEFAULT '0',
  `timestamp` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(10) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` int(10) unsigned NOT NULL DEFAULT '0',
  `card1` int(10) unsigned NOT NULL DEFAULT '0',
  `card2` int(10) unsigned NOT NULL DEFAULT '0',
  `card3` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id0` smallint(5) NOT NULL DEFAULT '0',
  `option_val0` smallint(5) NOT NULL DEFAULT '0',
  `option_parm0` tinyint(3) NOT NULL DEFAULT '0',
  `option_id1` smallint(5) NOT NULL DEFAULT '0',
  `option_val1` smallint(5) NOT NULL DEFAULT '0',
  `option_parm1` tinyint(3) NOT NULL DEFAULT '0',
  `option_id2` smallint(5) NOT NULL DEFAULT '0',
  `option_val2` smallint(5) NOT NULL DEFAULT '0',
  `option_parm2` tinyint(3) NOT NULL DEFAULT '0',
  `option_id3` smallint(5) NOT NULL DEFAULT '0',
  `option_val3` smallint(5) NOT NULL DEFAULT '0',
  `option_parm3` tinyint(3) NOT NULL DEFAULT '0',
  `option_id4` smallint(5) NOT NULL DEFAULT '0',
  `option_val4` smallint(5) NOT NULL DEFAULT '0',
  `option_parm4` tinyint(3) NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auction
-- ----------------------------

-- ----------------------------
-- Table structure for `barter`
-- ----------------------------
DROP TABLE IF EXISTS `barter`;
CREATE TABLE `barter` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `index` smallint(5) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`name`,`index`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of barter
-- ----------------------------

-- ----------------------------
-- Table structure for `bonus_script`
-- ----------------------------
DROP TABLE IF EXISTS `bonus_script`;
CREATE TABLE `bonus_script` (
  `id` bigint(20) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `script` text NOT NULL,
  `tick` bigint(20) NOT NULL DEFAULT '0',
  `flag` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `icon` smallint(3) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bonus_script
-- ----------------------------

-- ----------------------------
-- Table structure for `buyingstores`
-- ----------------------------
DROP TABLE IF EXISTS `buyingstores`;
CREATE TABLE `buyingstores` (
  `id` int(10) unsigned NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `sex` enum('F','M') NOT NULL DEFAULT 'M',
  `map` varchar(20) NOT NULL,
  `x` smallint(5) unsigned NOT NULL,
  `y` smallint(5) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `limit` int(10) unsigned NOT NULL,
  `body_direction` char(1) NOT NULL DEFAULT '4',
  `head_direction` char(1) NOT NULL DEFAULT '0',
  `sit` char(1) NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of buyingstores
-- ----------------------------

-- ----------------------------
-- Table structure for `buyingstore_items`
-- ----------------------------
DROP TABLE IF EXISTS `buyingstore_items`;
CREATE TABLE `buyingstore_items` (
  `buyingstore_id` int(10) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`buyingstore_id`,`index`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of buyingstore_items
-- ----------------------------

-- ----------------------------
-- Table structure for `cart_inventory`
-- ----------------------------
DROP TABLE IF EXISTS `cart_inventory`;
CREATE TABLE `cart_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `nameid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `equip` int(11) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) NOT NULL DEFAULT '0',
  `card0` int(10) unsigned NOT NULL DEFAULT '0',
  `card1` int(10) unsigned NOT NULL DEFAULT '0',
  `card2` int(10) unsigned NOT NULL DEFAULT '0',
  `card3` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id0` smallint(5) NOT NULL DEFAULT '0',
  `option_val0` smallint(5) NOT NULL DEFAULT '0',
  `option_parm0` tinyint(3) NOT NULL DEFAULT '0',
  `option_id1` smallint(5) NOT NULL DEFAULT '0',
  `option_val1` smallint(5) NOT NULL DEFAULT '0',
  `option_parm1` tinyint(3) NOT NULL DEFAULT '0',
  `option_id2` smallint(5) NOT NULL DEFAULT '0',
  `option_val2` smallint(5) NOT NULL DEFAULT '0',
  `option_parm2` tinyint(3) NOT NULL DEFAULT '0',
  `option_id3` smallint(5) NOT NULL DEFAULT '0',
  `option_val3` smallint(5) NOT NULL DEFAULT '0',
  `option_parm3` tinyint(3) NOT NULL DEFAULT '0',
  `option_id4` smallint(5) NOT NULL DEFAULT '0',
  `option_val4` smallint(5) NOT NULL DEFAULT '0',
  `option_parm4` tinyint(3) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `char_id` (`char_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of cart_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for `char`
-- ----------------------------
DROP TABLE IF EXISTS `char`;
CREATE TABLE `char` (
  `char_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_num` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `class` smallint(6) unsigned NOT NULL DEFAULT '0',
  `base_level` smallint(6) unsigned NOT NULL DEFAULT '1',
  `job_level` smallint(6) unsigned NOT NULL DEFAULT '1',
  `base_exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `job_exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `zeny` int(11) unsigned NOT NULL DEFAULT '0',
  `str` int(11) unsigned NOT NULL DEFAULT '0',
  `agi` int(11) unsigned NOT NULL DEFAULT '0',
  `vit` int(11) unsigned NOT NULL DEFAULT '0',
  `int` int(11) unsigned NOT NULL DEFAULT '0',
  `dex` int(11) unsigned NOT NULL DEFAULT '0',
  `luk` int(11) unsigned NOT NULL DEFAULT '0',
  `pow` int(11) unsigned NOT NULL DEFAULT '0',
  `sta` int(11) unsigned NOT NULL DEFAULT '0',
  `wis` int(11) unsigned NOT NULL DEFAULT '0',
  `spl` int(11) unsigned NOT NULL DEFAULT '0',
  `con` int(11) unsigned NOT NULL DEFAULT '0',
  `crt` int(11) unsigned NOT NULL DEFAULT '0',
  `max_hp` int(11) unsigned NOT NULL DEFAULT '0',
  `hp` int(11) unsigned NOT NULL DEFAULT '0',
  `max_sp` int(11) unsigned NOT NULL DEFAULT '0',
  `sp` int(11) unsigned NOT NULL DEFAULT '0',
  `max_ap` int(11) unsigned NOT NULL DEFAULT '0',
  `ap` int(11) unsigned NOT NULL DEFAULT '0',
  `status_point` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_point` int(11) unsigned NOT NULL DEFAULT '0',
  `trait_point` int(11) unsigned NOT NULL DEFAULT '0',
  `option` int(11) NOT NULL DEFAULT '0',
  `karma` tinyint(3) NOT NULL DEFAULT '0',
  `manner` smallint(6) NOT NULL DEFAULT '0',
  `party_id` int(11) unsigned NOT NULL DEFAULT '0',
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pet_id` int(11) unsigned NOT NULL DEFAULT '0',
  `homun_id` int(11) unsigned NOT NULL DEFAULT '0',
  `elemental_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hair_color` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clothes_color` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weapon` smallint(6) unsigned NOT NULL DEFAULT '0',
  `shield` smallint(6) unsigned NOT NULL DEFAULT '0',
  `head_top` smallint(6) unsigned NOT NULL DEFAULT '0',
  `head_mid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `head_bottom` smallint(6) unsigned NOT NULL DEFAULT '0',
  `robe` smallint(6) unsigned NOT NULL DEFAULT '0',
  `last_map` varchar(11) NOT NULL DEFAULT '',
  `last_x` smallint(4) unsigned NOT NULL DEFAULT '53',
  `last_y` smallint(4) unsigned NOT NULL DEFAULT '111',
  `save_map` varchar(11) NOT NULL DEFAULT '',
  `save_x` smallint(4) unsigned NOT NULL DEFAULT '53',
  `save_y` smallint(4) unsigned NOT NULL DEFAULT '111',
  `partner_id` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(2) NOT NULL DEFAULT '0',
  `father` int(11) unsigned NOT NULL DEFAULT '0',
  `mother` int(11) unsigned NOT NULL DEFAULT '0',
  `child` int(11) unsigned NOT NULL DEFAULT '0',
  `fame` int(11) unsigned NOT NULL DEFAULT '0',
  `rename` smallint(3) unsigned NOT NULL DEFAULT '0',
  `delete_date` int(11) unsigned NOT NULL DEFAULT '0',
  `moves` int(11) unsigned NOT NULL DEFAULT '0',
  `unban_time` int(11) unsigned NOT NULL DEFAULT '0',
  `font` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uniqueitem_counter` int(11) unsigned NOT NULL DEFAULT '0',
  `sex` enum('M','F') NOT NULL,
  `hotkey_rowshift` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hotkey_rowshift2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `clan_id` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `title_id` int(11) unsigned NOT NULL DEFAULT '0',
  `show_equip` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inventory_slots` smallint(6) NOT NULL DEFAULT '100',
  PRIMARY KEY (`char_id`) USING BTREE,
  UNIQUE KEY `name_key` (`name`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE,
  KEY `party_id` (`party_id`) USING BTREE,
  KEY `guild_id` (`guild_id`) USING BTREE,
  KEY `online` (`online`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=150002 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of char
-- ----------------------------
INSERT INTO `char` VALUES ('150000', '2000000', '0', '℃andy小懒猪', '5', '60', '1', '18', '14', '0', '2', '92', '2', '1', '1', '1', '0', '0', '0', '0', '0', '0', '2930', '1802', '70', '70', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'prt_fild01', '171', '328', 'prt_fild01', '183', '370', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'F', '0', '0', '0', '2023-05-21 14:32:39', '0', '0', '100');
INSERT INTO `char` VALUES ('150001', '2000000', '1', 'aacc', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '40', '40', '12', '12', '0', '0', '48', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'prontera', '152', '154', 'prontera', '150', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'F', '0', '0', '0', '2022-06-11 20:22:26', '0', '0', '100');

-- ----------------------------
-- Table structure for `charlog`
-- ----------------------------
DROP TABLE IF EXISTS `charlog`;
CREATE TABLE `charlog` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `char_msg` varchar(255) NOT NULL DEFAULT 'char select',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_num` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(23) NOT NULL DEFAULT '',
  `str` int(11) unsigned NOT NULL DEFAULT '0',
  `agi` int(11) unsigned NOT NULL DEFAULT '0',
  `vit` int(11) unsigned NOT NULL DEFAULT '0',
  `int` int(11) unsigned NOT NULL DEFAULT '0',
  `dex` int(11) unsigned NOT NULL DEFAULT '0',
  `luk` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(4) NOT NULL DEFAULT '0',
  `hair_color` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of charlog
-- ----------------------------
INSERT INTO `charlog` VALUES ('1', '2022-04-14 00:32:47', 'make new char', '2000000', '0', '℃andy小懒猪', '1', '1', '1', '1', '1', '1', '3', '6');
INSERT INTO `charlog` VALUES ('2', '2022-04-14 00:32:49', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('3', '2022-05-28 14:27:17', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('4', '2022-05-28 14:30:05', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('5', '2022-05-28 15:07:49', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('6', '2022-05-28 15:08:21', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('7', '2022-05-28 15:14:25', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('8', '2022-05-28 15:21:28', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('9', '2022-05-28 15:26:33', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('10', '2022-05-28 15:27:41', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('11', '2022-05-28 15:28:21', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('12', '2022-05-28 15:29:00', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('13', '2022-05-28 15:30:45', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('14', '2022-05-31 14:50:31', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('15', '2022-05-31 15:46:43', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('16', '2022-05-31 15:56:40', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('17', '2022-05-31 16:01:31', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('18', '2022-05-31 16:06:31', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('19', '2022-05-31 18:30:07', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('20', '2022-05-31 18:31:19', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('21', '2022-05-31 18:32:25', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('22', '2022-05-31 18:34:07', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('23', '2022-05-31 19:02:27', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('24', '2022-06-01 17:26:13', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('25', '2022-06-01 17:27:40', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('26', '2022-06-01 17:30:50', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('27', '2022-06-01 17:32:24', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('28', '2022-06-01 17:38:26', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('29', '2022-06-01 17:40:04', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('30', '2022-06-01 17:40:54', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('31', '2022-06-01 23:39:05', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('32', '2022-06-01 23:39:31', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('33', '2022-06-01 23:40:10', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('34', '2022-06-01 23:48:04', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('35', '2022-06-01 23:50:55', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('36', '2022-06-01 23:59:36', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('37', '2022-06-02 00:00:36', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('38', '2022-06-02 00:06:53', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('39', '2022-06-02 00:10:59', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('40', '2022-06-02 16:11:54', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('41', '2022-06-02 16:26:46', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('42', '2022-06-02 16:32:48', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('43', '2022-06-02 16:34:23', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('44', '2022-06-02 16:35:47', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('45', '2022-06-02 16:37:53', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('46', '2022-06-02 16:38:55', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('47', '2022-06-02 16:48:16', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('48', '2022-06-02 16:52:31', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('49', '2022-06-02 16:55:52', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('50', '2022-06-02 16:57:00', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('51', '2022-06-02 16:58:43', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('52', '2022-06-02 17:00:38', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('53', '2022-06-02 17:03:57', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('54', '2022-06-02 17:06:15', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('55', '2022-06-02 17:08:42', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('56', '2022-06-02 17:22:23', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('57', '2022-06-03 17:17:20', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('58', '2022-06-04 15:03:08', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('59', '2022-06-04 16:16:47', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('60', '2022-06-04 16:50:28', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('61', '2022-06-05 17:54:21', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('62', '2022-06-05 17:56:44', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('63', '2022-06-05 20:27:51', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('64', '2022-06-05 20:34:02', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('65', '2022-06-05 20:36:34', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('66', '2022-06-05 20:38:51', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('67', '2022-06-05 20:48:23', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('68', '2022-06-05 20:50:40', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('69', '2022-06-05 21:14:06', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('70', '2022-06-07 22:48:11', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('71', '2022-06-07 22:59:03', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('72', '2022-06-07 23:04:01', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('73', '2022-06-07 23:06:12', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('74', '2022-06-07 23:07:41', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('75', '2022-06-07 23:09:15', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('76', '2022-06-07 23:10:52', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('77', '2022-06-07 23:11:45', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('78', '2022-06-07 23:18:01', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('79', '2022-06-07 23:25:31', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('80', '2022-06-07 23:29:11', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('81', '2022-06-07 23:31:15', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('82', '2022-06-08 00:05:31', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('83', '2022-06-08 20:39:43', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('84', '2022-06-11 15:16:49', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('85', '2022-06-11 18:59:48', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('86', '2022-06-11 20:02:25', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('87', '2022-06-11 20:05:59', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('88', '2022-06-11 20:07:16', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('89', '2022-06-11 20:08:29', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('90', '2022-06-11 20:08:50', 'make new char', '2000000', '1', 'aacc', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `charlog` VALUES ('91', '2022-06-11 20:08:51', 'char select', '2000000', '1', 'aacc', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('92', '2022-06-11 20:11:43', 'char select', '2000000', '1', 'aacc', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('93', '2022-06-11 20:16:06', 'char select', '2000000', '1', 'aacc', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('94', '2022-06-11 20:22:26', 'char select', '2000000', '1', 'aacc', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('95', '2022-06-11 20:22:59', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('96', '2022-06-11 20:24:16', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('97', '2022-06-11 20:32:50', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('98', '2022-06-11 20:33:38', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('99', '2022-06-11 20:33:58', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('100', '2022-06-11 20:34:38', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('101', '2022-06-11 20:35:04', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('102', '2022-06-11 20:35:54', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('103', '2022-06-11 20:36:23', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('104', '2022-06-11 20:41:55', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('105', '2022-06-11 20:43:48', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('106', '2022-06-11 20:44:23', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('107', '2022-06-11 20:52:53', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('108', '2022-06-11 20:54:07', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('109', '2022-06-11 20:56:01', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('110', '2022-06-11 20:56:58', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('111', '2022-06-11 20:57:37', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('112', '2022-06-11 21:02:24', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('113', '2022-06-11 21:28:28', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('114', '2022-06-11 21:31:18', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('115', '2022-06-11 21:31:55', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('116', '2022-06-11 21:34:42', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('117', '2022-06-11 21:37:57', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('118', '2022-06-11 21:41:35', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('119', '2022-06-11 21:54:51', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('120', '2022-06-12 19:54:07', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('121', '2023-03-22 21:20:20', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('122', '2023-03-22 21:42:50', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('123', '2023-03-23 21:57:39', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('124', '2023-03-24 22:13:19', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('125', '2023-03-26 11:30:10', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('126', '2023-03-26 17:02:04', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('127', '2023-03-26 17:46:25', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('128', '2023-03-28 22:37:20', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('129', '2023-03-28 23:30:28', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('130', '2023-03-28 23:35:58', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('131', '2023-03-28 23:39:54', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('132', '2023-03-28 23:40:28', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('133', '2023-03-28 23:44:17', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('134', '2023-05-14 21:32:35', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('135', '2023-05-14 21:36:13', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('136', '2023-05-20 21:44:21', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('137', '2023-05-20 21:44:53', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('138', '2023-05-21 14:02:05', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `charlog` VALUES ('139', '2023-05-21 14:32:38', 'char select', '2000000', '0', '℃andy小懒猪', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `char_configs`
-- ----------------------------
DROP TABLE IF EXISTS `char_configs`;
CREATE TABLE `char_configs` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `world_name` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`account_id`,`char_id`,`world_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of char_configs
-- ----------------------------

-- ----------------------------
-- Table structure for `char_reg_num`
-- ----------------------------
DROP TABLE IF EXISTS `char_reg_num`;
CREATE TABLE `char_reg_num` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` bigint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`) USING BTREE,
  KEY `char_id` (`char_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of char_reg_num
-- ----------------------------
INSERT INTO `char_reg_num` VALUES ('150000', 'PC_DIE_COUNTER', '0', '1');

-- ----------------------------
-- Table structure for `char_reg_str`
-- ----------------------------
DROP TABLE IF EXISTS `char_reg_str`;
CREATE TABLE `char_reg_str` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`) USING BTREE,
  KEY `char_id` (`char_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of char_reg_str
-- ----------------------------

-- ----------------------------
-- Table structure for `clan`
-- ----------------------------
DROP TABLE IF EXISTS `clan`;
CREATE TABLE `clan` (
  `clan_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `master` varchar(24) NOT NULL DEFAULT '',
  `mapname` varchar(24) NOT NULL DEFAULT '',
  `max_member` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`clan_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of clan
-- ----------------------------
INSERT INTO `clan` VALUES ('1', 'Swordman Clan', 'Raffam Oranpere', 'prontera', '500');
INSERT INTO `clan` VALUES ('2', 'Arcwand Clan', 'Devon Aire', 'geffen', '500');
INSERT INTO `clan` VALUES ('3', 'Golden Mace Clan', 'Berman Aire', 'prontera', '500');
INSERT INTO `clan` VALUES ('4', 'Crossbow Clan', 'Shaam Rumi', 'payon', '500');

-- ----------------------------
-- Table structure for `clan_alliance`
-- ----------------------------
DROP TABLE IF EXISTS `clan_alliance`;
CREATE TABLE `clan_alliance` (
  `clan_id` int(11) unsigned NOT NULL DEFAULT '0',
  `opposition` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`clan_id`,`alliance_id`) USING BTREE,
  KEY `alliance_id` (`alliance_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of clan_alliance
-- ----------------------------
INSERT INTO `clan_alliance` VALUES ('1', '0', '3', 'Golden Mace Clan');
INSERT INTO `clan_alliance` VALUES ('2', '0', '3', 'Golden Mace Clan');
INSERT INTO `clan_alliance` VALUES ('2', '1', '4', 'Crossbow Clan');
INSERT INTO `clan_alliance` VALUES ('3', '0', '1', 'Swordman Clan');
INSERT INTO `clan_alliance` VALUES ('3', '0', '2', 'Arcwand Clan');
INSERT INTO `clan_alliance` VALUES ('3', '0', '4', 'Crossbow Clan');
INSERT INTO `clan_alliance` VALUES ('4', '0', '3', 'Golden Mace Clan');
INSERT INTO `clan_alliance` VALUES ('4', '1', '2', 'Arcwand Clan');

-- ----------------------------
-- Table structure for `db_roulette`
-- ----------------------------
DROP TABLE IF EXISTS `db_roulette`;
CREATE TABLE `db_roulette` (
  `index` int(11) NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL DEFAULT '1',
  `flag` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`index`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of db_roulette
-- ----------------------------

-- ----------------------------
-- Table structure for `elemental`
-- ----------------------------
DROP TABLE IF EXISTS `elemental`;
CREATE TABLE `elemental` (
  `ele_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `mode` int(11) unsigned NOT NULL DEFAULT '1',
  `hp` int(11) unsigned NOT NULL DEFAULT '0',
  `sp` int(11) unsigned NOT NULL DEFAULT '0',
  `max_hp` int(11) unsigned NOT NULL DEFAULT '0',
  `max_sp` int(11) unsigned NOT NULL DEFAULT '0',
  `atk1` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `atk2` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `matk` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `aspd` int(11) unsigned NOT NULL DEFAULT '0',
  `def` int(11) unsigned NOT NULL DEFAULT '0',
  `mdef` int(11) unsigned NOT NULL DEFAULT '0',
  `flee` int(11) unsigned NOT NULL DEFAULT '0',
  `hit` int(11) unsigned NOT NULL DEFAULT '0',
  `life_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ele_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of elemental
-- ----------------------------

-- ----------------------------
-- Table structure for `friends`
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `friend_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`friend_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of friends
-- ----------------------------

-- ----------------------------
-- Table structure for `global_acc_reg_num`
-- ----------------------------
DROP TABLE IF EXISTS `global_acc_reg_num`;
CREATE TABLE `global_acc_reg_num` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` bigint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of global_acc_reg_num
-- ----------------------------

-- ----------------------------
-- Table structure for `global_acc_reg_str`
-- ----------------------------
DROP TABLE IF EXISTS `global_acc_reg_str`;
CREATE TABLE `global_acc_reg_str` (
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL DEFAULT '',
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of global_acc_reg_str
-- ----------------------------

-- ----------------------------
-- Table structure for `guild`
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
  `guild_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `master` varchar(24) NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `connect_member` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `max_member` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `average_lv` smallint(6) unsigned NOT NULL DEFAULT '1',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `next_exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skill_point` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `mes1` varchar(60) NOT NULL DEFAULT '',
  `mes2` varchar(120) NOT NULL DEFAULT '',
  `emblem_len` int(11) unsigned NOT NULL DEFAULT '0',
  `emblem_id` int(11) unsigned NOT NULL DEFAULT '0',
  `emblem_data` blob,
  `last_master_change` datetime DEFAULT NULL,
  PRIMARY KEY (`guild_id`,`char_id`) USING BTREE,
  UNIQUE KEY `guild_id` (`guild_id`) USING BTREE,
  KEY `char_id` (`char_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of guild
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_alliance`
-- ----------------------------
DROP TABLE IF EXISTS `guild_alliance`;
CREATE TABLE `guild_alliance` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `opposition` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`alliance_id`) USING BTREE,
  KEY `alliance_id` (`alliance_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of guild_alliance
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_castle`
-- ----------------------------
DROP TABLE IF EXISTS `guild_castle`;
CREATE TABLE `guild_castle` (
  `castle_id` int(11) unsigned NOT NULL DEFAULT '0',
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `economy` int(11) unsigned NOT NULL DEFAULT '0',
  `defense` int(11) unsigned NOT NULL DEFAULT '0',
  `triggerE` int(11) unsigned NOT NULL DEFAULT '0',
  `triggerD` int(11) unsigned NOT NULL DEFAULT '0',
  `nextTime` int(11) unsigned NOT NULL DEFAULT '0',
  `payTime` int(11) unsigned NOT NULL DEFAULT '0',
  `createTime` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleC` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG0` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG1` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG2` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG3` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG4` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG5` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG6` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG7` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`castle_id`) USING BTREE,
  KEY `guild_id` (`guild_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of guild_castle
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_emblems`
-- ----------------------------
DROP TABLE IF EXISTS `guild_emblems`;
CREATE TABLE `guild_emblems` (
  `guild_id` int(11) unsigned NOT NULL,
  `world_name` varchar(32) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_data` blob,
  `version` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`world_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of guild_emblems
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_expulsion`
-- ----------------------------
DROP TABLE IF EXISTS `guild_expulsion`;
CREATE TABLE `guild_expulsion` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mes` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of guild_expulsion
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_member`
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`char_id`) USING BTREE,
  KEY `char_id` (`char_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of guild_member
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_position`
-- ----------------------------
DROP TABLE IF EXISTS `guild_position`;
CREATE TABLE `guild_position` (
  `guild_id` int(9) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mode` smallint(11) unsigned NOT NULL DEFAULT '0',
  `exp_mode` tinyint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`position`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of guild_position
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_skill`
-- ----------------------------
DROP TABLE IF EXISTS `guild_skill`;
CREATE TABLE `guild_skill` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of guild_skill
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_storage`
-- ----------------------------
DROP TABLE IF EXISTS `guild_storage`;
CREATE TABLE `guild_storage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `equip` int(11) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` int(10) unsigned NOT NULL DEFAULT '0',
  `card1` int(10) unsigned NOT NULL DEFAULT '0',
  `card2` int(10) unsigned NOT NULL DEFAULT '0',
  `card3` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id0` smallint(5) NOT NULL DEFAULT '0',
  `option_val0` smallint(5) NOT NULL DEFAULT '0',
  `option_parm0` tinyint(3) NOT NULL DEFAULT '0',
  `option_id1` smallint(5) NOT NULL DEFAULT '0',
  `option_val1` smallint(5) NOT NULL DEFAULT '0',
  `option_parm1` tinyint(3) NOT NULL DEFAULT '0',
  `option_id2` smallint(5) NOT NULL DEFAULT '0',
  `option_val2` smallint(5) NOT NULL DEFAULT '0',
  `option_parm2` tinyint(3) NOT NULL DEFAULT '0',
  `option_id3` smallint(5) NOT NULL DEFAULT '0',
  `option_val3` smallint(5) NOT NULL DEFAULT '0',
  `option_parm3` tinyint(3) NOT NULL DEFAULT '0',
  `option_id4` smallint(5) NOT NULL DEFAULT '0',
  `option_val4` smallint(5) NOT NULL DEFAULT '0',
  `option_parm4` tinyint(3) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `guild_id` (`guild_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of guild_storage
-- ----------------------------

-- ----------------------------
-- Table structure for `guild_storage_log`
-- ----------------------------
DROP TABLE IF EXISTS `guild_storage_log`;
CREATE TABLE `guild_storage_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `nameid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '1',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` int(10) unsigned NOT NULL DEFAULT '0',
  `card1` int(10) unsigned NOT NULL DEFAULT '0',
  `card2` int(10) unsigned NOT NULL DEFAULT '0',
  `card3` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id0` smallint(5) NOT NULL DEFAULT '0',
  `option_val0` smallint(5) NOT NULL DEFAULT '0',
  `option_parm0` tinyint(3) NOT NULL DEFAULT '0',
  `option_id1` smallint(5) NOT NULL DEFAULT '0',
  `option_val1` smallint(5) NOT NULL DEFAULT '0',
  `option_parm1` tinyint(3) NOT NULL DEFAULT '0',
  `option_id2` smallint(5) NOT NULL DEFAULT '0',
  `option_val2` smallint(5) NOT NULL DEFAULT '0',
  `option_parm2` tinyint(3) NOT NULL DEFAULT '0',
  `option_id3` smallint(5) NOT NULL DEFAULT '0',
  `option_val3` smallint(5) NOT NULL DEFAULT '0',
  `option_parm3` tinyint(3) NOT NULL DEFAULT '0',
  `option_id4` smallint(5) NOT NULL DEFAULT '0',
  `option_val4` smallint(5) NOT NULL DEFAULT '0',
  `option_parm4` tinyint(3) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `guild_id` (`guild_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of guild_storage_log
-- ----------------------------

-- ----------------------------
-- Table structure for `homunculus`
-- ----------------------------
DROP TABLE IF EXISTS `homunculus`;
CREATE TABLE `homunculus` (
  `homun_id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `prev_class` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `level` smallint(4) NOT NULL DEFAULT '0',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `intimacy` int(12) NOT NULL DEFAULT '0',
  `hunger` smallint(4) NOT NULL DEFAULT '0',
  `str` int(11) unsigned NOT NULL DEFAULT '0',
  `agi` int(11) unsigned NOT NULL DEFAULT '0',
  `vit` int(11) unsigned NOT NULL DEFAULT '0',
  `int` int(11) unsigned NOT NULL DEFAULT '0',
  `dex` int(11) unsigned NOT NULL DEFAULT '0',
  `luk` int(11) unsigned NOT NULL DEFAULT '0',
  `hp` int(11) unsigned NOT NULL DEFAULT '0',
  `max_hp` int(11) unsigned NOT NULL DEFAULT '0',
  `sp` int(11) NOT NULL DEFAULT '0',
  `max_sp` int(11) NOT NULL DEFAULT '0',
  `skill_point` smallint(4) unsigned NOT NULL DEFAULT '0',
  `alive` tinyint(2) NOT NULL DEFAULT '1',
  `rename_flag` tinyint(2) NOT NULL DEFAULT '0',
  `vaporize` tinyint(2) NOT NULL DEFAULT '0',
  `autofeed` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`homun_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of homunculus
-- ----------------------------

-- ----------------------------
-- Table structure for `hotkey`
-- ----------------------------
DROP TABLE IF EXISTS `hotkey`;
CREATE TABLE `hotkey` (
  `char_id` int(11) NOT NULL,
  `hotkey` tinyint(2) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `itemskill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_lvl` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`hotkey`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of hotkey
-- ----------------------------
INSERT INTO `hotkey` VALUES ('150000', '0', '0', '501', '0');

-- ----------------------------
-- Table structure for `interlog`
-- ----------------------------
DROP TABLE IF EXISTS `interlog`;
CREATE TABLE `interlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `log` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of interlog
-- ----------------------------

-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `equip` int(11) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` int(10) unsigned NOT NULL DEFAULT '0',
  `card1` int(10) unsigned NOT NULL DEFAULT '0',
  `card2` int(10) unsigned NOT NULL DEFAULT '0',
  `card3` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id0` smallint(5) NOT NULL DEFAULT '0',
  `option_val0` smallint(5) NOT NULL DEFAULT '0',
  `option_parm0` tinyint(3) NOT NULL DEFAULT '0',
  `option_id1` smallint(5) NOT NULL DEFAULT '0',
  `option_val1` smallint(5) NOT NULL DEFAULT '0',
  `option_parm1` tinyint(3) NOT NULL DEFAULT '0',
  `option_id2` smallint(5) NOT NULL DEFAULT '0',
  `option_val2` smallint(5) NOT NULL DEFAULT '0',
  `option_parm2` tinyint(3) NOT NULL DEFAULT '0',
  `option_id3` smallint(5) NOT NULL DEFAULT '0',
  `option_val3` smallint(5) NOT NULL DEFAULT '0',
  `option_parm3` tinyint(3) NOT NULL DEFAULT '0',
  `option_id4` smallint(5) NOT NULL DEFAULT '0',
  `option_val4` smallint(5) NOT NULL DEFAULT '0',
  `option_parm4` tinyint(3) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  `favorite` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `equip_switch` int(11) unsigned NOT NULL DEFAULT '0',
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `char_id` (`char_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('4', '150001', '1201', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `inventory` VALUES ('5', '150001', '2301', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ipbanlist`
-- ----------------------------
DROP TABLE IF EXISTS `ipbanlist`;
CREATE TABLE `ipbanlist` (
  `list` varchar(15) NOT NULL DEFAULT '',
  `btime` datetime NOT NULL,
  `rtime` datetime NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`list`,`btime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ipbanlist
-- ----------------------------

-- ----------------------------
-- Table structure for `item_cash_db`
-- ----------------------------
DROP TABLE IF EXISTS `item_cash_db`;
CREATE TABLE `item_cash_db` (
  `tab` smallint(6) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `price` mediumint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tab`,`item_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of item_cash_db
-- ----------------------------

-- ----------------------------
-- Table structure for `item_cash_db2`
-- ----------------------------
DROP TABLE IF EXISTS `item_cash_db2`;
CREATE TABLE `item_cash_db2` (
  `tab` smallint(6) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `price` mediumint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tab`,`item_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of item_cash_db2
-- ----------------------------

-- ----------------------------
-- Table structure for `item_db`
-- ----------------------------
DROP TABLE IF EXISTS `item_db`;
CREATE TABLE `item_db` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `name_aegis` varchar(50) NOT NULL DEFAULT '',
  `name_english` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(20) DEFAULT NULL,
  `price_buy` int(10) unsigned DEFAULT NULL,
  `price_sell` int(10) unsigned DEFAULT NULL,
  `weight` smallint(5) unsigned DEFAULT NULL,
  `attack` smallint(5) unsigned DEFAULT NULL,
  `defense` smallint(5) unsigned DEFAULT NULL,
  `range` tinyint(2) unsigned DEFAULT NULL,
  `slots` tinyint(2) unsigned DEFAULT NULL,
  `job_all` tinyint(1) unsigned DEFAULT NULL,
  `job_acolyte` tinyint(1) unsigned DEFAULT NULL,
  `job_alchemist` tinyint(1) unsigned DEFAULT NULL,
  `job_archer` tinyint(1) unsigned DEFAULT NULL,
  `job_assassin` tinyint(1) unsigned DEFAULT NULL,
  `job_barddancer` tinyint(1) unsigned DEFAULT NULL,
  `job_blacksmith` tinyint(1) unsigned DEFAULT NULL,
  `job_crusader` tinyint(1) unsigned DEFAULT NULL,
  `job_gunslinger` tinyint(1) unsigned DEFAULT NULL,
  `job_hunter` tinyint(1) unsigned DEFAULT NULL,
  `job_knight` tinyint(1) unsigned DEFAULT NULL,
  `job_mage` tinyint(1) unsigned DEFAULT NULL,
  `job_merchant` tinyint(1) unsigned DEFAULT NULL,
  `job_monk` tinyint(1) unsigned DEFAULT NULL,
  `job_ninja` tinyint(1) unsigned DEFAULT NULL,
  `job_novice` tinyint(1) unsigned DEFAULT NULL,
  `job_priest` tinyint(1) unsigned DEFAULT NULL,
  `job_rogue` tinyint(1) unsigned DEFAULT NULL,
  `job_sage` tinyint(1) unsigned DEFAULT NULL,
  `job_soullinker` tinyint(1) unsigned DEFAULT NULL,
  `job_stargladiator` tinyint(1) unsigned DEFAULT NULL,
  `job_supernovice` tinyint(1) unsigned DEFAULT NULL,
  `job_swordman` tinyint(1) unsigned DEFAULT NULL,
  `job_taekwon` tinyint(1) unsigned DEFAULT NULL,
  `job_thief` tinyint(1) unsigned DEFAULT NULL,
  `job_wizard` tinyint(1) unsigned DEFAULT NULL,
  `class_all` tinyint(1) unsigned DEFAULT NULL,
  `class_normal` tinyint(1) unsigned DEFAULT NULL,
  `class_upper` tinyint(1) unsigned DEFAULT NULL,
  `class_baby` tinyint(1) unsigned DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `location_head_top` tinyint(1) unsigned DEFAULT NULL,
  `location_head_mid` tinyint(1) unsigned DEFAULT NULL,
  `location_head_low` tinyint(1) unsigned DEFAULT NULL,
  `location_armor` tinyint(1) unsigned DEFAULT NULL,
  `location_right_hand` tinyint(1) unsigned DEFAULT NULL,
  `location_left_hand` tinyint(1) unsigned DEFAULT NULL,
  `location_garment` tinyint(1) unsigned DEFAULT NULL,
  `location_shoes` tinyint(1) unsigned DEFAULT NULL,
  `location_right_accessory` tinyint(1) unsigned DEFAULT NULL,
  `location_left_accessory` tinyint(1) unsigned DEFAULT NULL,
  `location_costume_head_top` tinyint(1) unsigned DEFAULT NULL,
  `location_costume_head_mid` tinyint(1) unsigned DEFAULT NULL,
  `location_costume_head_low` tinyint(1) unsigned DEFAULT NULL,
  `location_costume_garment` tinyint(1) unsigned DEFAULT NULL,
  `location_ammo` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_armor` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_weapon` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_shield` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_shoes` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_right_accessory` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_left_accessory` tinyint(1) unsigned DEFAULT NULL,
  `weapon_level` tinyint(1) unsigned DEFAULT NULL,
  `armor_level` tinyint(1) unsigned DEFAULT NULL,
  `equip_level_min` tinyint(3) unsigned DEFAULT NULL,
  `equip_level_max` tinyint(3) unsigned DEFAULT NULL,
  `refineable` tinyint(1) unsigned DEFAULT NULL,
  `view` smallint(5) unsigned DEFAULT NULL,
  `alias_name` varchar(50) DEFAULT NULL,
  `flag_buyingstore` tinyint(1) unsigned DEFAULT NULL,
  `flag_deadbranch` tinyint(1) unsigned DEFAULT NULL,
  `flag_container` tinyint(1) unsigned DEFAULT NULL,
  `flag_uniqueid` tinyint(1) unsigned DEFAULT NULL,
  `flag_bindonequip` tinyint(1) unsigned DEFAULT NULL,
  `flag_dropannounce` tinyint(1) unsigned DEFAULT NULL,
  `flag_noconsume` tinyint(1) unsigned DEFAULT NULL,
  `flag_dropeffect` varchar(20) DEFAULT NULL,
  `delay_duration` bigint(20) unsigned DEFAULT NULL,
  `delay_status` varchar(30) DEFAULT NULL,
  `stack_amount` smallint(5) unsigned DEFAULT NULL,
  `stack_inventory` tinyint(1) unsigned DEFAULT NULL,
  `stack_cart` tinyint(1) unsigned DEFAULT NULL,
  `stack_storage` tinyint(1) unsigned DEFAULT NULL,
  `stack_guildstorage` tinyint(1) unsigned DEFAULT NULL,
  `nouse_override` smallint(5) unsigned DEFAULT NULL,
  `nouse_sitting` tinyint(1) unsigned DEFAULT NULL,
  `trade_override` smallint(5) unsigned DEFAULT NULL,
  `trade_nodrop` tinyint(1) unsigned DEFAULT NULL,
  `trade_notrade` tinyint(1) unsigned DEFAULT NULL,
  `trade_tradepartner` tinyint(1) unsigned DEFAULT NULL,
  `trade_nosell` tinyint(1) unsigned DEFAULT NULL,
  `trade_nocart` tinyint(1) unsigned DEFAULT NULL,
  `trade_nostorage` tinyint(1) unsigned DEFAULT NULL,
  `trade_noguildstorage` tinyint(1) unsigned DEFAULT NULL,
  `trade_nomail` tinyint(1) unsigned DEFAULT NULL,
  `trade_noauction` tinyint(1) unsigned DEFAULT NULL,
  `script` text,
  `equip_script` text,
  `unequip_script` text,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UniqueAegisName` (`name_aegis`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of item_db
-- ----------------------------
INSERT INTO `item_db` VALUES ('613', 'Iron_Hammer', '钢铁锤子', 'Usable', null, '1000', null, '200', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'produce 1;', null, null);
INSERT INTO `item_db` VALUES ('998', 'Iron', '铁', 'Etc', null, '100', null, '50', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `item_db` VALUES ('999', 'Steel', '钢铁', 'Etc', null, '1000', null, '100', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `item_db2`
-- ----------------------------
DROP TABLE IF EXISTS `item_db2`;
CREATE TABLE `item_db2` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `name_aegis` varchar(50) DEFAULT NULL,
  `name_english` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `subtype` varchar(20) DEFAULT NULL,
  `price_buy` int(10) unsigned DEFAULT NULL,
  `price_sell` int(10) unsigned DEFAULT NULL,
  `weight` smallint(5) unsigned DEFAULT NULL,
  `attack` smallint(5) unsigned DEFAULT NULL,
  `defense` smallint(5) unsigned DEFAULT NULL,
  `range` tinyint(2) unsigned DEFAULT NULL,
  `slots` tinyint(2) unsigned DEFAULT NULL,
  `job_all` tinyint(1) unsigned DEFAULT NULL,
  `job_acolyte` tinyint(1) unsigned DEFAULT NULL,
  `job_alchemist` tinyint(1) unsigned DEFAULT NULL,
  `job_archer` tinyint(1) unsigned DEFAULT NULL,
  `job_assassin` tinyint(1) unsigned DEFAULT NULL,
  `job_barddancer` tinyint(1) unsigned DEFAULT NULL,
  `job_blacksmith` tinyint(1) unsigned DEFAULT NULL,
  `job_crusader` tinyint(1) unsigned DEFAULT NULL,
  `job_gunslinger` tinyint(1) unsigned DEFAULT NULL,
  `job_hunter` tinyint(1) unsigned DEFAULT NULL,
  `job_knight` tinyint(1) unsigned DEFAULT NULL,
  `job_mage` tinyint(1) unsigned DEFAULT NULL,
  `job_merchant` tinyint(1) unsigned DEFAULT NULL,
  `job_monk` tinyint(1) unsigned DEFAULT NULL,
  `job_ninja` tinyint(1) unsigned DEFAULT NULL,
  `job_novice` tinyint(1) unsigned DEFAULT NULL,
  `job_priest` tinyint(1) unsigned DEFAULT NULL,
  `job_rogue` tinyint(1) unsigned DEFAULT NULL,
  `job_sage` tinyint(1) unsigned DEFAULT NULL,
  `job_soullinker` tinyint(1) unsigned DEFAULT NULL,
  `job_stargladiator` tinyint(1) unsigned DEFAULT NULL,
  `job_supernovice` tinyint(1) unsigned DEFAULT NULL,
  `job_swordman` tinyint(1) unsigned DEFAULT NULL,
  `job_taekwon` tinyint(1) unsigned DEFAULT NULL,
  `job_thief` tinyint(1) unsigned DEFAULT NULL,
  `job_wizard` tinyint(1) unsigned DEFAULT NULL,
  `class_all` tinyint(1) unsigned DEFAULT NULL,
  `class_normal` tinyint(1) unsigned DEFAULT NULL,
  `class_upper` tinyint(1) unsigned DEFAULT NULL,
  `class_baby` tinyint(1) unsigned DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `location_head_top` tinyint(1) unsigned DEFAULT NULL,
  `location_head_mid` tinyint(1) unsigned DEFAULT NULL,
  `location_head_low` tinyint(1) unsigned DEFAULT NULL,
  `location_armor` tinyint(1) unsigned DEFAULT NULL,
  `location_right_hand` tinyint(1) unsigned DEFAULT NULL,
  `location_left_hand` tinyint(1) unsigned DEFAULT NULL,
  `location_garment` tinyint(1) unsigned DEFAULT NULL,
  `location_shoes` tinyint(1) unsigned DEFAULT NULL,
  `location_right_accessory` tinyint(1) unsigned DEFAULT NULL,
  `location_left_accessory` tinyint(1) unsigned DEFAULT NULL,
  `location_costume_head_top` tinyint(1) unsigned DEFAULT NULL,
  `location_costume_head_mid` tinyint(1) unsigned DEFAULT NULL,
  `location_costume_head_low` tinyint(1) unsigned DEFAULT NULL,
  `location_costume_garment` tinyint(1) unsigned DEFAULT NULL,
  `location_ammo` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_armor` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_weapon` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_shield` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_shoes` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_right_accessory` tinyint(1) unsigned DEFAULT NULL,
  `location_shadow_left_accessory` tinyint(1) unsigned DEFAULT NULL,
  `weapon_level` tinyint(1) unsigned DEFAULT NULL,
  `armor_level` tinyint(1) unsigned DEFAULT NULL,
  `equip_level_min` tinyint(3) unsigned DEFAULT NULL,
  `equip_level_max` tinyint(3) unsigned DEFAULT NULL,
  `refineable` tinyint(1) unsigned DEFAULT NULL,
  `view` smallint(5) unsigned DEFAULT NULL,
  `alias_name` varchar(50) DEFAULT NULL,
  `flag_buyingstore` tinyint(1) unsigned DEFAULT NULL,
  `flag_deadbranch` tinyint(1) unsigned DEFAULT NULL,
  `flag_container` tinyint(1) unsigned DEFAULT NULL,
  `flag_uniqueid` tinyint(1) unsigned DEFAULT NULL,
  `flag_bindonequip` tinyint(1) unsigned DEFAULT NULL,
  `flag_dropannounce` tinyint(1) unsigned DEFAULT NULL,
  `flag_noconsume` tinyint(1) unsigned DEFAULT NULL,
  `flag_dropeffect` varchar(20) DEFAULT NULL,
  `delay_duration` bigint(20) unsigned DEFAULT NULL,
  `delay_status` varchar(30) DEFAULT NULL,
  `stack_amount` smallint(5) unsigned DEFAULT NULL,
  `stack_inventory` tinyint(1) unsigned DEFAULT NULL,
  `stack_cart` tinyint(1) unsigned DEFAULT NULL,
  `stack_storage` tinyint(1) unsigned DEFAULT NULL,
  `stack_guildstorage` tinyint(1) unsigned DEFAULT NULL,
  `nouse_override` smallint(5) unsigned DEFAULT NULL,
  `nouse_sitting` tinyint(1) unsigned DEFAULT NULL,
  `trade_override` smallint(5) unsigned DEFAULT NULL,
  `trade_nodrop` tinyint(1) unsigned DEFAULT NULL,
  `trade_notrade` tinyint(1) unsigned DEFAULT NULL,
  `trade_tradepartner` tinyint(1) unsigned DEFAULT NULL,
  `trade_nosell` tinyint(1) unsigned DEFAULT NULL,
  `trade_nocart` tinyint(1) unsigned DEFAULT NULL,
  `trade_nostorage` tinyint(1) unsigned DEFAULT NULL,
  `trade_noguildstorage` tinyint(1) unsigned DEFAULT NULL,
  `trade_nomail` tinyint(1) unsigned DEFAULT NULL,
  `trade_noauction` tinyint(1) unsigned DEFAULT NULL,
  `script` text,
  `equip_script` text,
  `unequip_script` text,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UniqueAegisName` (`name_aegis`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of item_db2
-- ----------------------------

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(23) NOT NULL DEFAULT '',
  `user_pass` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT '0',
  `state` int(11) unsigned NOT NULL DEFAULT '0',
  `unban_time` int(11) unsigned NOT NULL DEFAULT '0',
  `expiration_time` int(11) unsigned NOT NULL DEFAULT '0',
  `logincount` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `lastlogin` datetime DEFAULT NULL,
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `character_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pincode` varchar(4) NOT NULL DEFAULT '',
  `pincode_change` int(11) unsigned NOT NULL DEFAULT '0',
  `vip_time` int(11) unsigned NOT NULL DEFAULT '0',
  `old_group` tinyint(3) NOT NULL DEFAULT '0',
  `web_auth_token` varchar(17) DEFAULT NULL,
  `web_auth_token_enabled` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`) USING BTREE,
  UNIQUE KEY `web_auth_token_key` (`web_auth_token`) USING BTREE,
  KEY `name` (`userid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2000001 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 's1', 'p1', 'S', 'athena@athena.com', '0', '0', '0', '0', '48', '2023-05-21 14:32:16', '172.17.16.12', null, '0', '', '0', '0', '0', null, '0');
INSERT INTO `login` VALUES ('2000000', 'hhhh', 'hhhhhh', 'F', 'a@a.com', '99', '0', '0', '0', '143', '2023-05-21 14:32:37', '106.39.148.3', null, '15', '', '0', '0', '0', 'eedec5016222ee1e', '1');

-- ----------------------------
-- Table structure for `lpig_instance_cd`
-- ----------------------------
DROP TABLE IF EXISTS `lpig_instance_cd`;
CREATE TABLE `lpig_instance_cd` (
  `instance_cd` char(20) NOT NULL,
  `instance_id` int(10) DEFAULT '0',
  `instance_record` int(32) DEFAULT '0',
  PRIMARY KEY (`instance_cd`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lpig_instance_cd
-- ----------------------------
INSERT INTO `lpig_instance_cd` VALUES ('19491817489766246', '1', '3');

-- ----------------------------
-- Table structure for `lpig_instance_char_cd`
-- ----------------------------
DROP TABLE IF EXISTS `lpig_instance_char_cd`;
CREATE TABLE `lpig_instance_char_cd` (
  `char_id` int(10) NOT NULL,
  `instance_cd` char(20) DEFAULT NULL,
  `instance_id` int(10) DEFAULT '0',
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lpig_instance_char_cd
-- ----------------------------
INSERT INTO `lpig_instance_char_cd` VALUES ('150000', '19491817489766246', '1');

-- ----------------------------
-- Table structure for `lpig_instance_db`
-- ----------------------------
DROP TABLE IF EXISTS `lpig_instance_db`;
CREATE TABLE `lpig_instance_db` (
  `instance_id` int(10) NOT NULL,
  `instance_name` char(255) DEFAULT NULL,
  `instance_release` int(10) DEFAULT NULL,
  `instance_type` int(10) DEFAULT NULL,
  PRIMARY KEY (`instance_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lpig_instance_db
-- ----------------------------
INSERT INTO `lpig_instance_db` VALUES ('1', '北森', '1', '1');

-- ----------------------------
-- Table structure for `lpig_instance_map`
-- ----------------------------
DROP TABLE IF EXISTS `lpig_instance_map`;
CREATE TABLE `lpig_instance_map` (
  `instance_id` int(10) NOT NULL,
  `instance_mapname` char(255) DEFAULT NULL,
  `instance_entermap` int(10) DEFAULT NULL,
  PRIMARY KEY (`instance_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lpig_instance_map
-- ----------------------------
INSERT INTO `lpig_instance_map` VALUES ('1', 'prt_maze01', '1');

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `send_name` varchar(30) NOT NULL DEFAULT '',
  `send_id` int(11) unsigned NOT NULL DEFAULT '0',
  `dest_name` varchar(30) NOT NULL DEFAULT '',
  `dest_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL DEFAULT '',
  `message` varchar(500) NOT NULL DEFAULT '',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `zeny` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for `mail_attachments`
-- ----------------------------
DROP TABLE IF EXISTS `mail_attachments`;
CREATE TABLE `mail_attachments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `index` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nameid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `card0` int(10) unsigned NOT NULL DEFAULT '0',
  `card1` int(10) unsigned NOT NULL DEFAULT '0',
  `card2` int(10) unsigned NOT NULL DEFAULT '0',
  `card3` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id0` smallint(5) NOT NULL DEFAULT '0',
  `option_val0` smallint(5) NOT NULL DEFAULT '0',
  `option_parm0` tinyint(3) NOT NULL DEFAULT '0',
  `option_id1` smallint(5) NOT NULL DEFAULT '0',
  `option_val1` smallint(5) NOT NULL DEFAULT '0',
  `option_parm1` tinyint(3) NOT NULL DEFAULT '0',
  `option_id2` smallint(5) NOT NULL DEFAULT '0',
  `option_val2` smallint(5) NOT NULL DEFAULT '0',
  `option_parm2` tinyint(3) NOT NULL DEFAULT '0',
  `option_id3` smallint(5) NOT NULL DEFAULT '0',
  `option_val3` smallint(5) NOT NULL DEFAULT '0',
  `option_parm3` tinyint(3) NOT NULL DEFAULT '0',
  `option_id4` smallint(5) NOT NULL DEFAULT '0',
  `option_val4` smallint(5) NOT NULL DEFAULT '0',
  `option_parm4` tinyint(3) NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`index`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of mail_attachments
-- ----------------------------

-- ----------------------------
-- Table structure for `mapreg`
-- ----------------------------
DROP TABLE IF EXISTS `mapreg`;
CREATE TABLE `mapreg` (
  `varname` varchar(32) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`varname`,`index`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mapreg
-- ----------------------------
INSERT INTO `mapreg` VALUES ('$arn_pritop60', '0', '480');
INSERT INTO `mapreg` VALUES ('$arn_pritop70', '0', '480');
INSERT INTO `mapreg` VALUES ('$arn_pritop80', '0', '480');
INSERT INTO `mapreg` VALUES ('$arn_pritop90', '0', '480');
INSERT INTO `mapreg` VALUES ('$arn_acotop', '0', '480');
INSERT INTO `mapreg` VALUES ('$arn_pritopn60$', '0', 'Default');
INSERT INTO `mapreg` VALUES ('$arn_pritopn70$', '0', 'Default');
INSERT INTO `mapreg` VALUES ('$arn_pritopn80$', '0', 'Default');
INSERT INTO `mapreg` VALUES ('$arn_pritopn90$', '0', 'Default');
INSERT INTO `mapreg` VALUES ('$arn_acotopn$', '0', 'Default');
INSERT INTO `mapreg` VALUES ('$timezonestring$', '0', '^FF0000GMT^000000');
INSERT INTO `mapreg` VALUES ('$ttnames$', '0', 'Breezy Havana');
INSERT INTO `mapreg` VALUES ('$ttnames$', '1', 'RS125');
INSERT INTO `mapreg` VALUES ('$ttnames$', '2', 'Hollgrehenn');
INSERT INTO `mapreg` VALUES ('$ttnames$', '3', 'Antonio');
INSERT INTO `mapreg` VALUES ('$ttnames$', '4', 'Aragham');
INSERT INTO `mapreg` VALUES ('$ttnames$', '5', 'Kafra Jasmine');
INSERT INTO `mapreg` VALUES ('$ttnames$', '6', 'Chris');
INSERT INTO `mapreg` VALUES ('$ttnames$', '7', 'Breezy Havana');
INSERT INTO `mapreg` VALUES ('$ttnames$', '8', 'RS125');
INSERT INTO `mapreg` VALUES ('$ttnames$', '9', 'Breezy Havana');
INSERT INTO `mapreg` VALUES ('$ttnames$', '10', 'Nari');
INSERT INTO `mapreg` VALUES ('$ttnames$', '11', 'Senorita Sylvia');
INSERT INTO `mapreg` VALUES ('$ttnames$', '12', 'Joo Jahk');
INSERT INTO `mapreg` VALUES ('$ttnames$', '13', 'RS125');
INSERT INTO `mapreg` VALUES ('$ttranks', '0', '999999');
INSERT INTO `mapreg` VALUES ('$top_60min', '0', '6');
INSERT INTO `mapreg` VALUES ('$top_80min', '0', '8');
INSERT INTO `mapreg` VALUES ('$120719_num_face', '0', '3600');
INSERT INTO `mapreg` VALUES ('$malayaNames$', '0', 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', '1', 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', '2', 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', '3', 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', '4', 'unknown');
INSERT INTO `mapreg` VALUES ('$malayaNames$', '5', 'unknown');
INSERT INTO `mapreg` VALUES ('$2011_agit_invest', '0', '1');
INSERT INTO `mapreg` VALUES ('$top_50min', '0', '5');
INSERT INTO `mapreg` VALUES ('$top_ptmin', '0', '10');
INSERT INTO `mapreg` VALUES ('$top_70min', '0', '7');
INSERT INTO `mapreg` VALUES ('$DTS_Time', '0', '34');
INSERT INTO `mapreg` VALUES ('$event_paramk', '0', '1');
INSERT INTO `mapreg` VALUES ('$prt_invest_result', '0', '1');
INSERT INTO `mapreg` VALUES ('$pay_invest_result', '0', '1');
INSERT INTO `mapreg` VALUES ('$gef_invest_result', '0', '1');
INSERT INTO `mapreg` VALUES ('$alde_invest_result', '0', '1');
INSERT INTO `mapreg` VALUES ('$subject_prt_fild01_1', '0', '1');
INSERT INTO `mapreg` VALUES ('$subject_prt_fild01_x', '0', '190');
INSERT INTO `mapreg` VALUES ('$subject_prt_fild01_y', '0', '367');
INSERT INTO `mapreg` VALUES ('$subject_prt_fild01_level', '0', '1');
INSERT INTO `mapreg` VALUES ('$subject_prt_fild01_view', '0', '1078');
INSERT INTO `mapreg` VALUES ('$subject_prt_fild01_dup_name$', '0', '草');
INSERT INTO `mapreg` VALUES ('$subject_prt_fild01_dis_name$', '0', '红草');
INSERT INTO `mapreg` VALUES ('$subject_prt_fild01_0', '0', '5');
INSERT INTO `mapreg` VALUES ('$subject_prt_fild01_renew', '0', '5');
INSERT INTO `mapreg` VALUES ('$subject_mapname$', '0', 'prt_fild01');
INSERT INTO `mapreg` VALUES ('$subject_x', '0', '190');
INSERT INTO `mapreg` VALUES ('$subject_y', '0', '367');
INSERT INTO `mapreg` VALUES ('$subject_level', '0', '1');
INSERT INTO `mapreg` VALUES ('$subject_dup_name$', '0', '草');
INSERT INTO `mapreg` VALUES ('$subject_dis_name$', '0', '红草');
INSERT INTO `mapreg` VALUES ('$subject_view', '0', '1078');
INSERT INTO `mapreg` VALUES ('$subject_renew', '0', '5');

-- ----------------------------
-- Table structure for `market`
-- ----------------------------
DROP TABLE IF EXISTS `market`;
CREATE TABLE `market` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `nameid` int(10) unsigned NOT NULL,
  `price` int(11) unsigned NOT NULL,
  `amount` int(11) NOT NULL,
  `flag` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`nameid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of market
-- ----------------------------

-- ----------------------------
-- Table structure for `memo`
-- ----------------------------
DROP TABLE IF EXISTS `memo`;
CREATE TABLE `memo` (
  `memo_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  `x` smallint(4) unsigned NOT NULL DEFAULT '0',
  `y` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memo_id`) USING BTREE,
  KEY `char_id` (`char_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of memo
-- ----------------------------

-- ----------------------------
-- Table structure for `mercenary`
-- ----------------------------
DROP TABLE IF EXISTS `mercenary`;
CREATE TABLE `mercenary` (
  `mer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `hp` int(11) unsigned NOT NULL DEFAULT '0',
  `sp` int(11) unsigned NOT NULL DEFAULT '0',
  `kill_counter` int(11) NOT NULL,
  `life_time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mer_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of mercenary
-- ----------------------------

-- ----------------------------
-- Table structure for `mercenary_owner`
-- ----------------------------
DROP TABLE IF EXISTS `mercenary_owner`;
CREATE TABLE `mercenary_owner` (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL DEFAULT '0',
  `arch_calls` int(11) NOT NULL DEFAULT '0',
  `arch_faith` int(11) NOT NULL DEFAULT '0',
  `spear_calls` int(11) NOT NULL DEFAULT '0',
  `spear_faith` int(11) NOT NULL DEFAULT '0',
  `sword_calls` int(11) NOT NULL DEFAULT '0',
  `sword_faith` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of mercenary_owner
-- ----------------------------

-- ----------------------------
-- Table structure for `merchant_configs`
-- ----------------------------
DROP TABLE IF EXISTS `merchant_configs`;
CREATE TABLE `merchant_configs` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `world_name` varchar(32) NOT NULL,
  `store_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`account_id`,`char_id`,`world_name`,`store_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of merchant_configs
-- ----------------------------

-- ----------------------------
-- Table structure for `mob_db`
-- ----------------------------
DROP TABLE IF EXISTS `mob_db`;
CREATE TABLE `mob_db` (
  `id` int(11) unsigned NOT NULL,
  `name_aegis` varchar(24) NOT NULL,
  `name_english` text NOT NULL,
  `name_japanese` text,
  `level` smallint(6) unsigned DEFAULT NULL,
  `hp` int(11) unsigned DEFAULT NULL,
  `sp` mediumint(9) unsigned DEFAULT NULL,
  `base_exp` int(11) unsigned DEFAULT NULL,
  `job_exp` int(11) unsigned DEFAULT NULL,
  `mvp_exp` int(11) unsigned DEFAULT NULL,
  `attack` smallint(6) unsigned DEFAULT NULL,
  `attack2` smallint(6) unsigned DEFAULT NULL,
  `defense` smallint(6) unsigned DEFAULT NULL,
  `magic_defense` smallint(6) unsigned DEFAULT NULL,
  `str` smallint(6) unsigned DEFAULT NULL,
  `agi` smallint(6) unsigned DEFAULT NULL,
  `vit` smallint(6) unsigned DEFAULT NULL,
  `int` smallint(6) unsigned DEFAULT NULL,
  `dex` smallint(6) unsigned DEFAULT NULL,
  `luk` smallint(6) unsigned DEFAULT NULL,
  `attack_range` tinyint(4) unsigned DEFAULT NULL,
  `skill_range` tinyint(4) unsigned DEFAULT NULL,
  `chase_range` tinyint(4) unsigned DEFAULT NULL,
  `size` varchar(24) DEFAULT NULL,
  `race` varchar(24) DEFAULT NULL,
  `racegroup_goblin` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_kobold` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_orc` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_golem` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_guardian` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_ninja` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_gvg` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_battlefield` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_treasure` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_biolab` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_manuk` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_splendide` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_scaraba` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_ogh_atk_def` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_ogh_hidden` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_bio5_swordman_thief` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_bio5_acolyte_merchant` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_bio5_mage_archer` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_bio5_mvp` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_clocktower` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_thanatos` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_faceworm` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_hearthunter` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_rockridge` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_werner_lab` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_temple_demon` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_illusion_vampire` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_malangdo` tinyint(1) unsigned DEFAULT NULL,
  `element` varchar(24) DEFAULT NULL,
  `element_level` tinyint(4) unsigned DEFAULT NULL,
  `walk_speed` smallint(6) unsigned DEFAULT NULL,
  `attack_delay` smallint(6) unsigned DEFAULT NULL,
  `attack_motion` smallint(6) unsigned DEFAULT NULL,
  `damage_motion` smallint(6) unsigned DEFAULT NULL,
  `damage_taken` smallint(6) unsigned DEFAULT NULL,
  `ai` varchar(2) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `mode_canmove` tinyint(1) unsigned DEFAULT NULL,
  `mode_looter` tinyint(1) unsigned DEFAULT NULL,
  `mode_aggressive` tinyint(1) unsigned DEFAULT NULL,
  `mode_assist` tinyint(1) unsigned DEFAULT NULL,
  `mode_castsensoridle` tinyint(1) unsigned DEFAULT NULL,
  `mode_norandomwalk` tinyint(1) unsigned DEFAULT NULL,
  `mode_nocast` tinyint(1) unsigned DEFAULT NULL,
  `mode_canattack` tinyint(1) unsigned DEFAULT NULL,
  `mode_castsensorchase` tinyint(1) unsigned DEFAULT NULL,
  `mode_changechase` tinyint(1) unsigned DEFAULT NULL,
  `mode_angry` tinyint(1) unsigned DEFAULT NULL,
  `mode_changetargetmelee` tinyint(1) unsigned DEFAULT NULL,
  `mode_changetargetchase` tinyint(1) unsigned DEFAULT NULL,
  `mode_targetweak` tinyint(1) unsigned DEFAULT NULL,
  `mode_randomtarget` tinyint(1) unsigned DEFAULT NULL,
  `mode_ignoremelee` tinyint(1) unsigned DEFAULT NULL,
  `mode_ignoremagic` tinyint(1) unsigned DEFAULT NULL,
  `mode_ignoreranged` tinyint(1) unsigned DEFAULT NULL,
  `mode_mvp` tinyint(1) unsigned DEFAULT NULL,
  `mode_ignoremisc` tinyint(1) unsigned DEFAULT NULL,
  `mode_knockbackimmune` tinyint(1) unsigned DEFAULT NULL,
  `mode_teleportblock` tinyint(1) unsigned DEFAULT NULL,
  `mode_fixeditemdrop` tinyint(1) unsigned DEFAULT NULL,
  `mode_detector` tinyint(1) unsigned DEFAULT NULL,
  `mode_statusimmune` tinyint(1) unsigned DEFAULT NULL,
  `mode_skillimmune` tinyint(1) unsigned DEFAULT NULL,
  `mvpdrop1_item` varchar(50) DEFAULT NULL,
  `mvpdrop1_rate` smallint(9) unsigned DEFAULT NULL,
  `mvpdrop1_option` varchar(50) DEFAULT NULL,
  `mvpdrop1_index` tinyint(2) unsigned DEFAULT NULL,
  `mvpdrop2_item` varchar(50) DEFAULT NULL,
  `mvpdrop2_rate` smallint(9) unsigned DEFAULT NULL,
  `mvpdrop2_option` varchar(50) DEFAULT NULL,
  `mvpdrop2_index` tinyint(2) unsigned DEFAULT NULL,
  `mvpdrop3_item` varchar(50) DEFAULT NULL,
  `mvpdrop3_rate` smallint(9) unsigned DEFAULT NULL,
  `mvpdrop3_option` varchar(50) DEFAULT NULL,
  `mvpdrop3_index` tinyint(2) unsigned DEFAULT NULL,
  `drop1_item` varchar(50) DEFAULT NULL,
  `drop1_rate` smallint(9) unsigned DEFAULT NULL,
  `drop1_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop1_option` varchar(50) DEFAULT NULL,
  `drop1_index` tinyint(2) unsigned DEFAULT NULL,
  `drop2_item` varchar(50) DEFAULT NULL,
  `drop2_rate` smallint(9) unsigned DEFAULT NULL,
  `drop2_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop2_option` varchar(50) DEFAULT NULL,
  `drop2_index` tinyint(2) unsigned DEFAULT NULL,
  `drop3_item` varchar(50) DEFAULT NULL,
  `drop3_rate` smallint(9) unsigned DEFAULT NULL,
  `drop3_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop3_option` varchar(50) DEFAULT NULL,
  `drop3_index` tinyint(2) unsigned DEFAULT NULL,
  `drop4_item` varchar(50) DEFAULT NULL,
  `drop4_rate` smallint(9) unsigned DEFAULT NULL,
  `drop4_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop4_option` varchar(50) DEFAULT NULL,
  `drop4_index` tinyint(2) unsigned DEFAULT NULL,
  `drop5_item` varchar(50) DEFAULT NULL,
  `drop5_rate` smallint(9) unsigned DEFAULT NULL,
  `drop5_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop5_option` varchar(50) DEFAULT NULL,
  `drop5_index` tinyint(2) unsigned DEFAULT NULL,
  `drop6_item` varchar(50) DEFAULT NULL,
  `drop6_rate` smallint(9) unsigned DEFAULT NULL,
  `drop6_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop6_option` varchar(50) DEFAULT NULL,
  `drop6_index` tinyint(2) unsigned DEFAULT NULL,
  `drop7_item` varchar(50) DEFAULT NULL,
  `drop7_rate` smallint(9) unsigned DEFAULT NULL,
  `drop7_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop7_option` varchar(50) DEFAULT NULL,
  `drop7_index` tinyint(2) unsigned DEFAULT NULL,
  `drop8_item` varchar(50) DEFAULT NULL,
  `drop8_rate` smallint(9) unsigned DEFAULT NULL,
  `drop8_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop8_option` varchar(50) DEFAULT NULL,
  `drop8_index` tinyint(2) unsigned DEFAULT NULL,
  `drop9_item` varchar(50) DEFAULT NULL,
  `drop9_rate` smallint(9) unsigned DEFAULT NULL,
  `drop9_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop9_option` varchar(50) DEFAULT NULL,
  `drop9_index` tinyint(2) unsigned DEFAULT NULL,
  `drop10_item` varchar(50) DEFAULT NULL,
  `drop10_rate` smallint(9) unsigned DEFAULT NULL,
  `drop10_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop10_option` varchar(50) DEFAULT NULL,
  `drop10_index` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name_aegis` (`name_aegis`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mob_db
-- ----------------------------
INSERT INTO `mob_db` VALUES ('1001', 'SCORPION', '蝎子', '蝎子', '34', '7140', '14790', '306', '238', null, '313', '588', '14', '29', '55', '35', '14', '29', '35', '12', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '1564', '864', '576', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1002', 'PORING', '波利', '波利', '11', '1815', '2310', '99', '77', null, '70', '125', '11', '14', '11', '14', '11', '14', '14', '9', '1', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '400', '1872', '672', '480', null, '2', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1004', 'HORNET', '蜂兵', '蜂兵', '18', '2700', '4050', '162', '126', null, '80', '135', '10', '15', '11', '35', '10', '15', '22', '4', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '150', '1292', '792', '216', null, '3', '', '1', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1005', 'FARMILIAR', '吸血蝙蝠', '吸血蝙蝠', '18', '4590', '2430', '162', '126', null, '120', '215', '17', '9', '19', '23', '17', '9', '23', '6', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '150', '1276', '576', '384', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1007', 'FABRE', '绿棉虫', '绿棉虫', '12', '1440', '1800', '108', '84', null, '71', '131', '8', '10', '12', '15', '8', '10', '10', '4', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '400', '1672', '672', '480', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1008', 'PUPA', '虫蛹', '虫蛹', '12', '1440', '1800', '108', '84', null, '71', '131', '8', '10', '12', '15', '8', '10', '10', '4', null, '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '1000', '1001', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1009', 'CONDOR', '秃鹰', '秃鹰', '15', '3150', '1800', '135', '105', null, '100', '180', '14', '8', '16', '19', '14', '8', '19', '5', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '150', '1148', '648', '480', null, '3', '', '1', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1010', 'WILOW', '树精', '树精', '14', '3360', '1680', '126', '98', null, '71', '136', '16', '8', '13', '5', '16', '8', '6', '13', '1', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1672', '672', '432', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1011', 'CHONCHON', '苍蝇', '苍蝇', '14', '2100', '2520', '126', '98', null, '88', '163', '10', '12', '15', '18', '10', '12', '12', '5', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '200', '1076', '576', '480', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1012', 'RODA_FROG', '罗达蛙', '罗达蛙', '15', '5625', '2250', '135', '105', null, '53', '88', '25', '10', '7', '27', '25', '10', '16', '6', '1', '10', '12', 'Medium', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '200', '2016', '816', '288', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1013', 'WOLF', '狼', '狼', '35', '19950', '8925', '315', '245', null, '256', '466', '38', '17', '42', '42', '38', '17', '42', '14', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1054', '504', '432', null, '3', '', '1', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1014', 'SPORE', '魔菇', '魔菇', '26', '5460', '12480', '234', '182', null, '81', '126', '14', '32', '9', '29', '14', '32', '34', '11', '1', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '200', '1872', '672', '288', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1015', 'ZOMBIE', '腐尸', '腐尸', '25', '18000', '6000', '225', '175', null, '216', '426', '48', '16', '42', '6', '48', '16', '6', '36', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '400', '2612', '912', '288', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1016', 'ARCHER_SKELETON', '邪骸弓箭手', '邪骸弓箭手', '41', '48585', '16605', '369', '287', null, '351', '691', '79', '27', '68', '10', '79', '27', '10', '59', '9', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '300', '2864', '864', '576', null, '5', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1018', 'CREAMY', '克瑞米', '克瑞米', '26', '5460', '8580', '234', '182', null, '117', '197', '14', '22', '16', '51', '14', '22', '32', '7', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '150', '1136', '720', '840', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1019', 'PECOPECO', '大嘴鸟', '大嘴鸟', '29', '13485', '6090', '261', '203', null, '207', '377', '31', '14', '34', '34', '31', '14', '34', '11', '1', '10', '12', 'Large', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '1564', '864', '576', null, '3', '', '1', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1020', 'MANDRAGORA', '曼陀罗魔花', '曼陀罗魔花', '22', '8580', '4620', '198', '154', null, '115', '220', '26', '14', '21', '8', '26', '14', '10', '21', '4', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '3', '1000', '1768', '768', '576', null, '10', '', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1023', 'ORK_WARRIOR', '兽人战士', '兽人战士', '34', '17340', '17340', '306', '238', null, '207', '377', '34', '34', '34', '34', '34', '34', '34', '27', '1', '10', '12', 'Medium', 'Demihuman', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1864', '864', '288', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1024', 'WORM_TAIL', '森灵', '森灵', '24', '9000', '5760', '216', '168', null, '113', '213', '25', '16', '20', '10', '25', '16', '12', '20', '2', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1048', '48', '192', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1025', 'SNAKE', '青蛇', '青蛇', '25', '9000', '4875', '225', '175', null, '171', '306', '24', '13', '27', '33', '24', '13', '33', '9', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1576', '576', '576', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1026', 'MUNAK', '僵尸', '僵尸', '40', '46800', '15600', '360', '280', null, '346', '681', '78', '26', '67', '10', '78', '26', '10', '57', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '200', '2468', '768', '288', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1028', 'SOLDIER_SKELETON', '邪骸士兵', '邪骸士兵', '39', '44460', '14625', '351', '273', null, '334', '659', '76', '25', '65', '9', '76', '25', '9', '56', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '200', '2276', '576', '432', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1029', 'ISIS', '蛇女伊丝', '蛇女伊丝', '57', '43605', '80370', '513', '399', null, '407', '717', '51', '94', '62', '37', '51', '94', '94', '50', '1', '10', '12', 'Large', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '200', '1384', '768', '336', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1030', 'ANACONDAQ', '毒蛇', '毒蛇', '33', '15840', '8910', '297', '231', null, '222', '397', '32', '18', '35', '43', '32', '18', '43', '11', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '200', '1576', '576', '576', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1031', 'POPORING', '波波利', '波波利', '24', '9000', '11160', '216', '168', null, '159', '284', '25', '31', '25', '31', '25', '31', '31', '20', '1', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '300', '1672', '672', '480', null, '2', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1032', 'VERIT', '毕莱特', '毕莱特', '48', '60480', '24480', '432', '336', null, '374', '734', '84', '34', '72', '13', '84', '34', '13', '62', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '250', '2468', '768', '480', null, '2', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1033', 'ELDER_WILOW', '长老树精', '长老树精', '30', '6300', '10800', '270', '210', null, '209', '389', '14', '24', '36', '19', '14', '24', '28', '19', '1', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '200', '1372', '672', '432', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1034', 'THARA_FROG', '达拉蛙', '达拉蛙', '32', '25440', '11040', '288', '224', null, '114', '189', '53', '23', '15', '57', '53', '23', '34', '13', '1', '10', '12', 'Medium', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '200', '2016', '816', '288', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1035', 'HUNTER_FLY', '赤苍蝇', '赤苍蝇', '52', '22620', '49920', '468', '364', null, '216', '356', '29', '64', '28', '89', '29', '64', '68', '14', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '2', '150', '676', '576', '480', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1036', 'GHOUL', '绿腐尸', '绿腐尸', '50', '72750', '24750', '450', '350', null, '433', '853', '97', '33', '84', '12', '97', '33', '12', '72', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '2', '250', '2456', '912', '504', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1037', 'SIDE_WINDER', '黑蛇', '黑蛇', '53', '32595', '31800', '477', '371', null, '253', '393', '41', '40', '28', '90', '41', '40', '104', '14', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '200', '1576', '576', '576', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1038', 'OSIRIS', '俄塞里斯', '俄塞里斯', '88', '452760', '153120', '792', '616', null, '1523', '2998', '46', '17', '295', '44', '343', '116', '44', '253', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '4', '100', '1072', '672', '384', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1039', 'BAPHOMET', '巴风特', '巴风特', '91', '245700', '327600', '819', '637', null, '1539', '2739', '81', '42', '240', '96', '180', '240', '330', '192', '2', '10', '12', 'Large', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '3', '100', '768', '768', '576', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1040', 'GOLEM', '巨石怪', '巨石怪', '35', '29925', '11550', '315', '245', null, '274', '524', '57', '22', '50', '14', '57', '22', '23', '50', '1', '10', '12', 'Large', 'Formless', null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '300', '1608', '816', '396', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1041', 'MUMMY', '木乃伊', '木乃伊', '47', '64155', '21855', '423', '329', null, '402', '792', '91', '31', '78', '11', '91', '31', '11', '67', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '2', '300', '1772', '72', '384', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1042', 'STEEL_CHONCHON', '绿苍蝇', '绿苍蝇', '27', '6075', '13365', '243', '189', null, '109', '179', '15', '33', '14', '46', '15', '33', '35', '7', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '150', '1076', '576', '480', null, '7', '', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1044', 'OBEAUNE', '人鱼', '人鱼', '41', '41820', '17835', '369', '287', null, '146', '241', '68', '29', '19', '73', '68', '29', '44', '17', '1', '10', '12', 'Medium', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '200', '1872', '672', '288', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1045', 'MARC', '马克', '马克', '46', '53130', '22770', '414', '322', null, '167', '277', '77', '33', '22', '82', '77', '33', '49', '19', '1', '10', '12', 'Medium', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '150', '1272', '72', '480', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1046', 'DOPPELGANGER', '死灵', '死灵', '82', '392370', '132840', '738', '574', null, '1420', '2795', '22', '9', '275', '41', '319', '108', '41', '236', '1', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '3', '100', '480', '480', '288', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1047', 'PECOPECO_EGG', '大嘴鸟蛋', '大嘴鸟蛋', '13', '2340', '1365', '117', '91', null, '88', '158', '12', '7', '14', '17', '12', '7', '17', '4', null, '10', '12', 'Small', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '1000', '1001', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1048', 'THIEF_BUG_EGG', '盗虫卵', '盗虫卵', '14', '2100', '2520', '126', '98', null, '88', '163', '10', '12', '15', '18', '10', '12', '12', '5', null, '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '1000', '701', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1049', 'PICKY', '小鸡', '小鸡', '13', '2340', '1365', '117', '91', null, '88', '158', '12', '7', '14', '17', '12', '7', '17', '4', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '988', '288', '168', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1050', 'PICKY_', '蛋壳小鸡', '蛋壳小鸡', '14', '2730', '1470', '126', '98', null, '94', '169', '13', '7', '15', '18', '13', '7', '18', '5', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '988', '288', '168', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1051', 'THIEF_BUG', '盗虫', '盗虫', '16', '2640', '3360', '144', '112', null, '101', '186', '11', '14', '17', '21', '11', '14', '14', '5', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '150', '1288', '288', '768', null, '7', '', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1052', 'ROCKER', '蝗虫', '蝗虫', '19', '6270', '3420', '171', '133', null, '145', '280', '22', '12', '27', '11', '22', '12', '9', '11', '1', '10', '12', 'Medium', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1864', '864', '540', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1053', 'THIEF_BUG_', '浮勒盗虫', '浮勒盗虫', '20', '6000', '6300', '180', '140', null, '98', '183', '20', '21', '17', '31', '20', '21', '10', '5', '1', '10', '12', 'Medium', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '200', '988', '288', '768', null, '7', '', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1054', 'THIEF_BUG__', '玛勒盗虫', '玛勒盗虫', '29', '6960', '10875', '261', '203', null, '130', '220', '16', '25', '18', '57', '16', '25', '35', '7', '1', '10', '12', 'Medium', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '300', '988', '288', '768', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1055', 'MUKA', '摩卡', '摩卡', '27', '12960', '6885', '243', '189', null, '138', '263', '32', '17', '25', '10', '32', '17', '12', '25', '1', '10', '12', 'Large', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '300', '1960', '960', '384', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1056', 'SMOKIE', '狸猫', '狸猫', '28', '11340', '6300', '252', '196', null, '189', '339', '27', '15', '30', '36', '27', '15', '36', '10', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1576', '576', '420', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1057', 'YOYO', '溜溜猴', '溜溜猴', '31', '13950', '7905', '279', '217', null, '209', '374', '30', '17', '33', '40', '30', '17', '40', '11', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1054', '54', '384', null, '7', '', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1058', 'METALLER', '重金属蝗虫', '重金属蝗虫', '32', '9600', '12000', '288', '224', null, '155', '270', '20', '25', '23', '57', '20', '25', '35', '9', '1', '10', '12', 'Medium', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '1708', '1008', '540', null, '7', '', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1059', 'MISTRESS', '蜂后', '蜂后', '84', '120960', '185220', '756', '588', null, '779', '1319', '96', '48', '108', '332', '96', '147', '206', '45', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '4', '100', '1148', '648', '300', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1060', 'BIGFOOT', '大脚熊', '大脚熊', '35', '19950', '8925', '315', '245', null, '256', '466', '38', '17', '42', '42', '38', '17', '42', '14', '1', '10', '12', 'Large', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '300', '1260', '192', '192', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1061', 'NIGHTMARE', '梦魇', '梦魇', '59', '51330', '68145', '531', '413', null, '495', '880', '58', '77', '77', '31', '58', '77', '107', '62', '1', '10', '12', 'Large', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Ghost', '3', '150', '1816', '816', '432', null, '20', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1063', 'LUNATIC', '疯兔', '疯兔', '13', '2340', '1365', '117', '91', null, '88', '158', '12', '7', '14', '17', '12', '7', '17', '4', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '200', '1456', '456', '336', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1064', 'MEGALODON', '邪骸食人鱼', '邪骸食人鱼', '34', '33660', '11220', '306', '238', null, '293', '578', '66', '22', '57', '8', '66', '22', '8', '48', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '200', '2492', '792', '432', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1065', 'STROUF', '海神', '海神', '58', '43500', '53940', '522', '406', null, '398', '603', '50', '62', '41', '62', '50', '62', '187', '38', '1', '10', '12', 'Large', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '3', '150', '1872', '672', '384', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1066', 'VADON', '螃蟹', '螃蟹', '29', '18705', '9570', '261', '203', null, '99', '159', '43', '22', '12', '57', '43', '22', '34', '10', '1', '10', '12', 'Small', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '300', '1632', '432', '540', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1067', 'CORNUTUS', '卡那多斯', '卡那多斯', '33', '27225', '11385', '297', '231', null, '115', '190', '55', '23', '15', '59', '55', '23', '35', '13', '1', '10', '12', 'Small', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '200', '1248', '48', '480', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1068', 'HYDRA', '海葵', '海葵', '24', '14400', '6120', '216', '168', null, '84', '139', '40', '17', '11', '43', '40', '17', '25', '10', '7', '10', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '1000', '800', '432', '600', null, '10', '', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1069', 'SWORD_FISH', '异变鱼', '异变鱼', '40', '40200', '16800', '360', '280', null, '145', '240', '67', '28', '19', '72', '67', '28', '43', '16', '1', '10', '12', 'Large', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '200', '1968', '768', '384', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1070', 'KUKRE', '库克雷', '库克雷', '21', '6615', '6930', '189', '147', null, '104', '194', '21', '22', '18', '33', '21', '22', '11', '5', '1', '10', '12', 'Small', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '150', '1776', '576', '288', null, '2', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1071', 'PIRATE_SKEL', '邪骸海盗', '邪骸海盗', '35', '35700', '12075', '315', '245', null, '298', '588', '68', '23', '58', '8', '68', '23', '8', '50', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '200', '1754', '554', '288', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1072', 'KAHO', '卡浩', '卡浩', '70', '66150', '120750', '630', '490', null, '504', '889', '63', '16', '77', '46', '63', '115', '115', '61', '1', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '4', '150', '1700', '1000', '500', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1073', 'CRAB', '卡拉蟹', '卡拉蟹', '30', '22500', '9450', '270', '210', null, '107', '177', '50', '21', '14', '54', '50', '21', '32', '12', '1', '7', '12', 'Small', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '200', '992', '792', '360', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1074', 'SHELLFISH', '贝壳魔灵', '贝壳魔灵', '25', '15750', '6750', '225', '175', null, '91', '151', '42', '18', '12', '45', '42', '18', '27', '10', '1', '10', '12', 'Small', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '200', '864', '864', '384', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1076', 'SKELETON', '邪骸战士', '邪骸战士', '20', '11700', '3900', '180', '140', null, '170', '335', '39', '13', '33', '5', '39', '13', '5', '28', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '200', '2228', '528', '576', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1077', 'POISON_SPORE', '毒魔菇', '毒魔菇', '29', '6960', '15225', '261', '203', null, '91', '141', '16', '35', '10', '33', '16', '35', '38', '12', '1', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '200', '1672', '672', '288', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1078', 'RED_PLANT', '红草', '红草', '11', '1815', '1155', '99', '77', null, '50', '95', '11', '7', '9', '4', '11', '7', '5', '9', '1', '7', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '1000', '1', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1079', 'BLUE_PLANT', '蓝草', '蓝草', '11', '1815', '1155', '99', '77', null, '50', '95', '11', '7', '9', '4', '11', '7', '5', '9', '1', '7', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '1000', '1', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1080', 'GREEN_PLANT', '绿草', '绿草', '11', '1815', '1155', '99', '77', null, '50', '95', '11', '7', '9', '4', '11', '7', '5', '9', '1', '7', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '1000', '1', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1081', 'YELLOW_PLANT', '黄草', '黄草', '11', '1815', '1155', '99', '77', null, '50', '95', '11', '7', '9', '4', '11', '7', '5', '9', '1', '7', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '1000', '1', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1082', 'WHITE_PLANT', '白草', '白草', '11', '1815', '1155', '99', '77', null, '50', '95', '11', '7', '9', '4', '11', '7', '5', '9', '1', '7', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '1000', '1', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1083', 'SHINING_PLANT', '光芒草', '光芒草', '11', '1815', '1155', '99', '77', null, '50', '95', '11', '7', '9', '4', '11', '7', '5', '9', '1', '7', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Holy', '1', '1000', '1', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1084', 'BLACK_MUSHROOM', '黑菇', '黑菇', '11', '1815', '1155', '99', '77', null, '50', '95', '11', '7', '9', '4', '11', '7', '5', '9', '1', '7', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '1000', '1', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1085', 'RED_MUSHROOM', '红菇', '红菇', '11', '1815', '1155', '99', '77', null, '50', '95', '11', '7', '9', '4', '11', '7', '5', '9', '1', '7', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '1000', '1', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1086', 'GOLDEN_BUG', '黄金虫', '黄金虫', '74', '69930', '144300', '666', '518', null, '1366', '2561', '63', '31', '239', '156', '63', '130', '156', '53', '1', '10', '12', 'Large', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '100', '768', '768', '480', null, '7', 'Boss', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1087', 'ORK_HERO', '兽人英雄', '兽人英雄', '87', '227070', '227070', '783', '609', null, '1061', '1931', '75', '75', '174', '174', '174', '174', '174', '139', '1', '10', '12', 'Large', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '2', '150', '1678', '780', '648', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1088', 'VOCAL', '摇滚蝗虫', '摇滚蝗虫', '28', '13860', '7140', '252', '196', null, '214', '414', '33', '17', '40', '16', '33', '17', '13', '16', '1', '10', '12', 'Medium', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1080', '648', '480', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1089', 'TOAD', '蛙王', '蛙王', '20', '12000', '5100', '180', '140', null, '84', '139', '40', '17', '11', '43', '40', '17', '25', '10', '1', '10', '12', 'Medium', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '200', '1236', '336', '432', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1090', 'MASTERING', '波利之王', '波利之王', '45', '39150', '47925', '405', '315', null, '368', '658', '58', '71', '58', '71', '58', '71', '71', '46', '1', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '300', '1072', '672', '480', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1091', 'DRAGON_FLY', '龙蝇', '龙蝇', '58', '34800', '53070', '522', '406', null, '323', '548', '40', '61', '45', '137', '40', '61', '85', '18', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '100', '1076', '576', '480', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1092', 'VAGABOND_WOLF', '流浪之狼', '流浪之狼', '34', '22440', '10200', '306', '238', null, '292', '532', '44', '20', '48', '48', '44', '20', '48', '16', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '150', '1048', '648', '432', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1093', 'ECLIPSE', '蓝疯兔', '蓝疯兔', '45', '35775', '19575', '405', '315', null, '368', '658', '53', '29', '58', '71', '53', '29', '71', '19', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '200', '1456', '456', '336', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1094', 'AMBERNITE', '蜗牛', '蜗牛', '23', '11730', '6210', '207', '161', null, '76', '121', '34', '18', '9', '45', '34', '18', '27', '8', '1', '10', '12', 'Large', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '400', '2048', '648', '648', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1095', 'ANDRE', '白蚁', '白蚁', '27', '11745', '7695', '243', '189', null, '185', '355', '29', '19', '34', '17', '29', '19', '14', '14', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '300', '1288', '288', '384', null, '7', '', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1096', 'ANGELING', '天使波利', '天使波利', '30', '20700', '25650', '270', '210', null, '292', '522', '46', '57', '46', '57', '46', '57', '57', '46', '1', '10', '12', 'Medium', 'Angel', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Holy', '4', '200', '1072', '672', '672', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1097', 'ANT_EGG', '白蚁幼虫', '白蚁幼虫', '14', '3150', '1890', '126', '98', null, '97', '187', '15', '9', '18', '9', '15', '9', '7', '7', null, '10', '12', 'Small', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '1000', '1001', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1098', 'ANUBIS', '安毕斯', '安毕斯', '85', '232050', '56100', '765', '595', null, '879', '1734', '83', '44', '171', '17', '182', '44', '23', '146', '1', '10', '12', 'Large', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '2', '150', '1250', '768', '360', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1099', 'ARGIOPE', '艾吉欧蜈蚣', '艾吉欧蜈蚣', '51', '26775', '34425', '459', '357', null, '253', '433', '35', '45', '36', '63', '35', '45', '67', '18', '1', '10', '12', 'Large', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '300', '1792', '792', '336', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1100', 'ARGOS', '艾斯蜘蛛', '艾斯蜘蛛', '35', '11550', '14700', '315', '245', null, '170', '295', '22', '28', '25', '63', '22', '28', '39', '10', '1', '10', '12', 'Large', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '300', '1468', '468', '768', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1101', 'BAPHOMET_', '小巴风特', '小巴风特', '60', '43200', '97200', '540', '420', null, '407', '702', '48', '9', '59', '43', '48', '108', '108', '47', '1', '10', '12', 'Small', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '100', '868', '480', '120', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1102', 'BATHORY', '巫婆', '巫婆', '54', '43740', '43740', '486', '378', null, '329', '599', '54', '54', '54', '54', '54', '54', '54', '43', '1', '10', '12', 'Medium', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '100', '1504', '840', '900', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1103', 'CARAMEL', '刺猬虫', '刺猬虫', '33', '11385', '14355', '297', '231', null, '208', '383', '23', '29', '35', '43', '23', '29', '29', '11', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1604', '840', '756', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1104', 'COCO', '松鼠', '松鼠', '27', '10530', '5670', '243', '189', null, '183', '328', '26', '14', '29', '35', '26', '14', '35', '9', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '150', '1864', '864', '1008', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1105', 'DENIRO', '兵蚁', '兵蚁', '29', '5220', '10875', '261', '203', null, '263', '493', '12', '25', '46', '30', '12', '25', '30', '10', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '150', '1288', '288', '576', null, '7', '', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1106', 'DESERT_WOLF', '沙漠之狼', '沙漠之狼', '37', '13320', '9990', '333', '259', null, '386', '716', '24', '18', '66', '35', '24', '18', '53', '14', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '1120', '420', '288', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1107', 'DESERT_WOLF_B', '沙漠幼狼', '沙漠幼狼', '19', '3135', '2850', '171', '133', null, '182', '332', '11', '10', '30', '20', '11', '10', '30', '6', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '300', '1600', '900', '240', null, '3', '', '1', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1108', 'DEVIACE', '狄奥斯', '狄奥斯', '57', '43605', '80370', '513', '399', null, '407', '717', '51', '94', '62', '37', '51', '94', '94', '50', '1', '10', '12', 'Medium', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '4', '400', '1680', '480', '384', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1109', 'DEVIRUCHI', '小恶魔', '小恶魔', '56', '37800', '84840', '504', '392', null, '380', '655', '45', '2', '55', '40', '45', '101', '101', '44', '1', '10', '12', 'Small', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '150', '980', '600', '384', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1110', 'DOKEBI', '土人', '土人', '43', '41280', '21930', '387', '301', null, '282', '537', '64', '34', '51', '21', '64', '34', '25', '51', '1', '10', '12', 'Small', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '250', '1156', '456', '384', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1111', 'DRAINLIAR', '红蝙蝠', '红蝙蝠', '34', '16830', '9180', '306', '238', null, '228', '408', '33', '18', '36', '44', '33', '18', '44', '12', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '2', '250', '1276', '576', '384', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1112', 'DRAKE', '海盗之王', '海盗之王', '80', '374400', '126000', '720', '560', null, '1384', '2724', '15', '6', '268', '40', '312', '105', '40', '230', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '400', '620', '420', '360', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1113', 'DROPS', '土波利', '土波利', '13', '2730', '3315', '117', '91', null, '88', '158', '14', '17', '14', '17', '14', '17', '17', '11', '1', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '400', '1372', '672', '480', null, '2', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1114', 'DUSTINESS', '猎蝇', '猎蝇', '31', '10230', '12555', '279', '217', null, '196', '361', '22', '27', '33', '40', '22', '27', '27', '11', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '2', '150', '1004', '504', '384', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1115', 'EDDGA', '虎王', '虎王', '75', '121500', '67500', '675', '525', null, '1868', '3488', '9', '60', '324', '115', '108', '60', '237', '72', '1', '10', '12', 'Large', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '300', '872', '1344', '432', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1116', 'EGGYRA', '转转蛋', '转转蛋', '34', '15300', '28560', '306', '238', null, '243', '428', '30', '56', '37', '22', '30', '56', '56', '29', '1', '10', '12', 'Medium', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Ghost', '2', '200', '1816', '816', '288', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1117', 'EVIL_DRUID', '暗神官', '暗神官', '68', '62220', '114240', '612', '476', null, '486', '856', '61', '13', '74', '44', '61', '112', '112', '59', '1', '10', '12', 'Large', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '4', '300', '2276', '576', '336', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1118', 'FLORA', '噬人花', '噬人花', '36', '23220', '12420', '324', '252', null, '188', '358', '43', '23', '34', '14', '43', '23', '17', '34', '3', '10', '12', 'Large', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '1000', '1432', '432', '576', null, '10', '', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1119', 'FRILLDORA', '伞蜥', '伞蜥', '40', '23400', '13200', '360', '280', null, '272', '487', '39', '22', '43', '52', '39', '22', '52', '14', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '300', '1540', '720', '432', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1120', 'GHOSTRING', '幽灵波利', '幽灵波利', '28', '5040', '32340', '252', '196', null, '135', '230', '12', '77', '19', '53', '12', '77', '35', '29', '1', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Ghost', '4', '300', '1220', '1080', '648', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1121', 'GIEARTH', '基尔瑟', '基尔瑟', '39', '22230', '12285', '351', '273', null, '266', '476', '38', '21', '42', '51', '38', '21', '51', '14', '1', '10', '12', 'Small', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1848', '1296', '432', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1122', 'GOBLIN_1', '刺刀哥布灵', '刺刀哥布灵', '35', '18375', '18375', '315', '245', null, '213', '388', '35', '35', '35', '35', '35', '35', '35', '28', '1', '10', '12', 'Medium', 'Demihuman', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '100', '1120', '620', '240', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1123', 'GOBLIN_2', '链锤哥布灵', '链锤哥布灵', '34', '17340', '17340', '306', '238', null, '207', '377', '34', '34', '34', '34', '34', '34', '34', '27', '1', '10', '12', 'Medium', 'Demihuman', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '150', '1320', '620', '240', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1124', 'GOBLIN_3', '大斧哥布灵', '大斧哥布灵', '34', '17340', '17340', '306', '238', null, '207', '377', '34', '34', '34', '34', '34', '34', '34', '27', '1', '10', '12', 'Medium', 'Demihuman', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '250', '1624', '624', '240', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1125', 'GOBLIN_4', '榔头哥布灵', '榔头哥布灵', '33', '16335', '16335', '297', '231', null, '201', '366', '33', '33', '33', '33', '33', '33', '33', '26', '1', '10', '12', 'Medium', 'Demihuman', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1624', '624', '240', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1126', 'GOBLIN_5', '刺锤哥布灵', '刺锤哥布灵', '32', '15360', '15360', '288', '224', null, '195', '355', '32', '32', '32', '32', '32', '32', '32', '25', '1', '10', '12', 'Medium', 'Demihuman', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '300', '3074', '1874', '480', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1127', 'HODE', '蚯蚓', '蚯蚓', '36', '8100', '16740', '324', '252', null, '331', '621', '15', '31', '58', '38', '15', '31', '38', '12', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '2', '200', '1480', '480', '720', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1128', 'HORN', '锹形虫', '锹形虫', '28', '8400', '10080', '252', '196', null, '177', '327', '20', '24', '30', '36', '20', '24', '24', '10', '1', '10', '12', 'Medium', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1528', '528', '288', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1129', 'HORONG', '鬼火', '鬼火', '44', '11220', '60720', '396', '308', null, '188', '328', '17', '92', '28', '63', '17', '92', '42', '42', '1', '10', '12', 'Small', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '4', '400', '1888', '1152', '828', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1130', 'JAKK', '南瓜先生', '南瓜先生', '48', '30960', '56880', '432', '336', null, '342', '602', '43', '79', '52', '31', '43', '79', '79', '42', '1', '10', '12', 'Medium', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '200', '1180', '480', '648', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1131', 'JOKER', '裘卡', '裘卡', '67', '60300', '110550', '603', '469', null, '479', '844', '60', '11', '73', '44', '60', '110', '110', '58', '1', '10', '12', 'Large', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '4', '100', '1364', '864', '432', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1132', 'KHALITZBURG', '卡利斯格', '卡利斯格', '73', '155490', '52560', '657', '511', null, '629', '1239', '43', '48', '122', '18', '142', '48', '18', '105', '1', '10', '12', 'Large', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '350', '528', '1000', '396', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1133', 'KOBOLD_1', '大斧犬妖', '大斧犬妖', '46', '31740', '31740', '414', '322', null, '280', '510', '46', '46', '46', '46', '46', '46', '46', '36', '1', '10', '12', 'Medium', 'Demihuman', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '2', '150', '1028', '528', '360', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1134', 'KOBOLD_2', '榔头犬妖', '榔头犬妖', '41', '25215', '25215', '369', '287', null, '250', '455', '41', '41', '41', '41', '41', '41', '41', '32', '1', '10', '12', 'Medium', 'Demihuman', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '2', '200', '1528', '528', '360', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1135', 'KOBOLD_3', '刺锤犬妖', '刺锤犬妖', '41', '25215', '25215', '369', '287', null, '250', '455', '41', '41', '41', '41', '41', '41', '41', '32', '1', '10', '12', 'Medium', 'Demihuman', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '300', '1228', '528', '360', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1136', 'kobold', '犬妖', '犬妖', '41', '25215', '25215', '369', '287', null, '250', '455', '41', '41', '41', '41', '41', '41', '41', '32', '1', '10', '12', 'medium', 'demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'poison', '2', '200', '1528', '528', '360', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1138', 'MAGNOLIA', '魔锅蛋', '魔锅蛋', '36', '15660', '35100', '324', '252', null, '242', '417', '29', '65', '35', '26', '29', '65', '65', '28', '1', '10', '12', 'Small', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '250', '1560', '360', '360', null, '2', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1139', 'MANTIS', '螳螂', '螳螂', '36', '10800', '16740', '324', '252', null, '166', '281', '20', '31', '23', '71', '20', '31', '44', '9', '1', '10', '12', 'Medium', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1528', '660', '432', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1140', 'MARDUK', '马尔杜克', '马尔杜克', '50', '33750', '61500', '450', '350', null, '360', '635', '45', '82', '55', '33', '45', '82', '82', '44', '1', '10', '12', 'Large', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '300', '1540', '840', '504', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1141', 'MARINA', '水母', '水母', '31', '21390', '11160', '279', '217', null, '107', '172', '46', '24', '13', '61', '46', '24', '36', '11', '1', '10', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '400', '2280', '1080', '864', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1142', 'MARINE_SPHERE', '气泡虫', '气泡虫', '38', '32490', '17100', '342', '266', null, '132', '212', '57', '30', '16', '75', '57', '30', '45', '14', '1', '10', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '800', '1201', '1', '1', null, '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1143', 'MARIONETTE', '傀儡娃娃', '傀儡娃娃', '51', '15300', '81855', '459', '357', null, '215', '375', '20', '8', '32', '73', '20', '107', '48', '48', '1', '10', '12', 'Small', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Ghost', '3', '300', '1480', '480', '1056', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1144', 'MARSE', '乌贼', '乌贼', '41', '41820', '17835', '369', '287', null, '146', '241', '68', '29', '19', '73', '68', '29', '44', '17', '1', '10', '12', 'Small', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '300', '1956', '756', '528', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1145', 'MARTIN', '土拨鼠', '土拨鼠', '28', '11340', '6300', '252', '196', null, '189', '339', '27', '15', '30', '36', '27', '15', '36', '10', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '2', '300', '1480', '480', '480', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1146', 'MATYR', '黑狐', '黑狐', '41', '24600', '13530', '369', '287', null, '279', '499', '40', '22', '44', '54', '40', '22', '54', '14', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '150', '432', '432', '360', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1147', 'MAYA', '蚁后', '蚁后', '91', '297570', '158340', '819', '637', null, '1407', '2717', '20', '17', '262', '109', '218', '116', '87', '109', '1', '10', '12', 'Large', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '4', '100', '864', '1000', '480', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1148', 'MEDUSA', '米杜沙', '米杜沙', '89', '106800', '194910', '801', '623', null, '636', '1121', '80', '47', '97', '58', '80', '146', '146', '78', '1', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '2', '180', '1720', '1320', '360', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1149', 'MINOROUS', '米洛斯', '米洛斯', '62', '63240', '45570', '558', '434', null, '442', '812', '68', '49', '74', '49', '68', '49', '68', '59', '1', '10', '12', 'Large', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '200', '1360', '960', '432', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1150', 'MOONLIGHT', '月夜猫', '月夜猫', '77', '106260', '177870', '693', '539', null, '1351', '2506', '92', '55', '231', '123', '92', '154', '184', '123', '1', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '3', '150', '1276', '576', '288', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1151', 'MYST', '麦斯特', '麦斯特', '48', '30960', '56880', '432', '336', null, '342', '602', '43', '79', '52', '31', '43', '79', '79', '42', '1', '10', '12', 'Large', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '200', '1576', '576', '384', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1152', 'ORC_SKELETON', '邪骸兽人', '邪骸兽人', '38', '42180', '14250', '342', '266', null, '324', '639', '74', '25', '63', '9', '74', '25', '9', '54', '1', '10', '12', 'Medium', 'Undead', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '200', '2420', '720', '648', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1153', 'ORC_ZOMBIE', '兽人腐尸', '兽人腐尸', '34', '33660', '11220', '306', '238', null, '293', '578', '66', '22', '57', '8', '66', '22', '8', '48', '1', '10', '12', 'Medium', 'Undead', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '400', '2852', '1152', '840', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1154', 'PASANA', '帕莎纳', '帕莎纳', '71', '75615', '75615', '639', '497', null, '433', '788', '71', '71', '71', '71', '71', '71', '71', '56', '1', '10', '12', 'Medium', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '165', '976', '576', '288', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1155', 'PETIT', '毕帝特地龙', '毕帝特地龙', '54', '129600', '30780', '486', '378', null, '639', '1219', '61', '38', '116', '25', '160', '38', '57', '62', '1', '10', '12', 'Medium', 'Dragon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1624', '620', '384', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1156', 'PETIT_', '毕帝特飞龙', '毕帝特飞龙', '55', '58575', '54450', '495', '385', null, '365', '585', '71', '66', '44', '108', '71', '66', '135', '23', '1', '10', '12', 'Medium', 'Dragon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '150', '1420', '1080', '528', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1157', 'PHARAOH', '法老王', '法老王', '103', '381615', '381615', '927', '721', null, '1506', '2741', '49', '49', '247', '247', '247', '247', '247', '247', '1', '10', '12', 'Large', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '3', '125', '868', '768', '288', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1158', 'PHEN', '剑鱼', '剑鱼', '36', '32400', '13500', '324', '252', null, '129', '214', '60', '25', '17', '64', '60', '25', '38', '15', '1', '10', '12', 'Medium', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '150', '2544', '1344', '1152', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1159', 'PHREEONI', '皮里恩', '皮里恩', '79', '123240', '149310', '711', '553', null, '1638', '3058', '5', '27', '284', '101', '104', '126', '208', '151', '1', '10', '12', 'Large', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '200', '1020', '1020', '288', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1160', 'PIERE', '工蚁', '工蚁', '28', '6720', '10080', '252', '196', null, '129', '219', '16', '24', '18', '55', '16', '24', '34', '7', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '1288', '288', '576', null, '7', '', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1161', 'PLANKTON', '漂浮虫', '漂浮虫', '20', '9000', '4500', '180', '140', null, '66', '106', '30', '15', '8', '39', '30', '15', '23', '7', '1', '10', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '3', '400', '2208', '1008', '324', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1162', 'RAFFLESIA', '草精', '草精', '27', '11745', '7695', '243', '189', null, '130', '245', '29', '19', '23', '11', '29', '19', '14', '23', '3', '10', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '150', '512', '528', '240', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1163', 'RAYDRIC', '幽灵剑士', '幽灵剑士', '62', '22320', '120900', '558', '434', null, '262', '457', '24', '31', '39', '89', '24', '130', '59', '59', '1', '10', '12', 'Large', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '2', '150', '824', '780', '420', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1164', 'REQUIEM', '诺可伊', '诺可伊', '45', '30375', '30375', '405', '315', null, '274', '499', '45', '45', '45', '45', '45', '45', '45', '36', '1', '10', '12', 'Medium', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '400', '1516', '816', '432', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1165', 'SAND_MAN', '泥人', '泥人', '44', '43560', '23100', '396', '308', null, '288', '548', '66', '35', '52', '22', '66', '35', '26', '52', '1', '10', '12', 'Medium', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '3', '250', '1672', '720', '288', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1166', 'SAVAGE', '野猪', '野猪', '36', '21060', '9720', '324', '252', null, '262', '477', '39', '18', '43', '43', '39', '18', '43', '14', '1', '10', '12', 'Large', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '2', '150', '1960', '960', '384', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1167', 'SAVAGE_BABE', '小野猪', '小野猪', '17', '4080', '2295', '153', '119', null, '114', '204', '16', '9', '18', '22', '16', '9', '22', '6', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '400', '1624', '624', '576', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1169', 'SKEL_WORKER', '邪骸矿工', '邪骸矿工', '40', '46800', '15600', '360', '280', null, '346', '681', '78', '26', '67', '10', '78', '26', '10', '57', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '400', '2420', '720', '384', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1170', 'SOHEE', '鬼女', '鬼女', '43', '10965', '58050', '387', '301', null, '182', '317', '17', '90', '27', '61', '17', '90', '41', '41', '1', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '250', '2112', '912', '576', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1174', 'STAINER', '瓢虫', '瓢虫', '26', '4290', '8580', '234', '182', null, '239', '449', '11', '22', '42', '27', '11', '22', '27', '9', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '200', '1688', '1188', '612', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1175', 'TAROU', '白鼠', '白鼠', '21', '6300', '3465', '189', '147', null, '139', '249', '20', '11', '22', '27', '20', '11', '27', '7', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '150', '1744', '1044', '684', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1176', 'VITATA', '黑蚁', '黑蚁', '30', '13500', '13950', '270', '210', null, '144', '269', '30', '31', '25', '47', '30', '31', '15', '8', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '300', '1768', '768', '384', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1177', 'ZENORC', '兹诺克', '兹诺克', '41', '27675', '12300', '369', '287', null, '298', '543', '45', '20', '49', '49', '45', '20', '49', '16', '1', '10', '12', 'Medium', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '1', '150', '1180', '480', '360', null, '2', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1178', 'ZEROM', '杰洛米', '杰洛米', '33', '16335', '16335', '297', '231', null, '201', '366', '33', '33', '33', '33', '33', '33', '33', '26', '1', '10', '12', 'Medium', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '1780', '1080', '432', null, '4', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1179', 'WHISPER', '白幽灵', '白幽灵', '44', '11220', '60720', '396', '308', null, '188', '328', '17', '92', '28', '63', '17', '92', '42', '42', '1', '10', '12', 'Small', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Ghost', '3', '150', '1960', '960', '504', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1180', 'NINE_TAIL', '九尾狐', '九尾狐', '61', '36600', '27450', '549', '427', null, '637', '1182', '40', '30', '109', '58', '40', '30', '87', '24', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '3', '150', '840', '540', '480', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1186', 'WHISPER_BOSS', '巨大白幽灵', '巨大白幽灵', '44', '12540', '48180', '396', '308', null, '216', '381', '19', '73', '33', '50', '19', '73', '46', '50', '1', '10', '12', 'Small', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Ghost', '2', '250', '2536', '1536', '672', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1188', 'BON_GUN', '妖道', '妖道', '42', '51030', '17010', '378', '294', null, '361', '711', '81', '27', '70', '10', '81', '27', '10', '60', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '200', '1720', '500', '420', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1190', 'ORC_LORD', '兽人酋长', '兽人酋长', '84', '211680', '211680', '756', '588', null, '1024', '1864', '69', '69', '168', '168', '168', '168', '168', '134', '1', '10', '12', 'Large', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '4', '100', '1248', '500', '360', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1191', 'MIMIC', '邪恶箱', '邪恶箱', '61', '44835', '100650', '549', '427', null, '414', '714', '49', '11', '60', '44', '49', '110', '110', '48', '1', '10', '12', 'Medium', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '100', '972', '500', '288', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1192', 'WRAITH', '恶灵', '恶灵', '63', '58590', '78435', '567', '441', null, '532', '947', '62', '83', '83', '33', '62', '83', '114', '66', '1', '10', '12', 'Large', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '4', '300', '1816', '576', '240', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1193', 'ALARM', '钟怪', '钟怪', '68', '68340', '90780', '612', '476', null, '571', '1016', '67', '89', '89', '35', '67', '89', '123', '71', '1', '10', '12', 'Medium', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '300', '1020', '500', '768', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1194', 'ARCLOUSE', '卷甲虫', '卷甲虫', '69', '76590', '49680', '621', '483', null, '485', '930', '74', '48', '89', '45', '74', '48', '36', '37', '1', '10', '12', 'Medium', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '2', '100', '960', '500', '480', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1195', 'RIDEWORD', '飞行魔书', '飞行魔书', '69', '56925', '129375', '621', '483', null, '470', '810', '55', '26', '68', '50', '55', '125', '125', '54', '1', '10', '12', 'Small', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '150', '864', '500', '192', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1196', 'SKEL_PRISONER', '邪骸战俘', '邪骸战俘', '62', '111600', '37200', '558', '434', null, '536', '1056', '21', '40', '104', '15', '120', '40', '15', '89', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '3', '350', '1848', '500', '576', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1197', 'ZOMBIE_PRISONER', '腐尸战俘', '腐尸战俘', '63', '115290', '38745', '567', '441', null, '541', '1066', '23', '41', '105', '15', '122', '41', '15', '90', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '3', '350', '1768', '500', '192', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1198', 'DARK_PRIEST', '暗黑祭司', '暗黑祭司', '89', '106800', '194910', '801', '623', null, '636', '1121', '80', '47', '97', '58', '80', '146', '146', '78', '2', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '4', '200', '864', '1252', '476', null, '13', 'Boss', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1199', 'PUNK', '朽魔', '朽魔', '53', '33390', '76320', '477', '371', null, '359', '619', '42', '96', '52', '38', '42', '96', '96', '41', '1', '10', '12', 'Small', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '300', '1500', '500', '1000', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1200', 'ZHERLTHSH', '艾斯恩魔女', '艾斯恩魔女', '73', '85410', '157680', '657', '511', null, '629', '1109', '78', '45', '96', '57', '78', '144', '144', '77', '1', '10', '12', 'Medium', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '200', '800', '2112', '768', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1201', 'RYBIO', '瑞比欧', '瑞比欧', '81', '97200', '128790', '729', '567', null, '681', '1211', '80', '7', '106', '42', '80', '106', '147', '85', '1', '10', '12', 'Large', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '2', '200', '1790', '1440', '540', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1202', 'PHENDARK', '阿修罗狂战士', '阿修罗狂战士', '83', '113295', '82170', '747', '581', null, '592', '1087', '91', '66', '99', '66', '91', '66', '91', '79', '2', '10', '12', 'Large', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '2', '175', '1744', '1344', '600', null, '13', '', '1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1203', 'MYSTELTAINN', '弑神者', '弑神者', '86', '118680', '219300', '774', '602', null, '741', '1306', '92', '71', '113', '68', '92', '170', '170', '90', '2', '10', '12', 'Large', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '4', '250', '1152', '500', '240', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1204', 'TIRFING', '兽牙怪', '兽牙怪', '81', '105705', '194400', '729', '567', null, '696', '1226', '87', '61', '106', '64', '87', '160', '160', '85', '1', '10', '12', 'Medium', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '3', '100', '816', '500', '240', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1205', 'EXECUTIONER', '行刑者', '行刑者', '75', '91125', '166500', '675', '525', null, '648', '1143', '81', '49', '99', '59', '81', '148', '148', '79', '2', '10', '12', 'Large', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '2', '200', '768', '500', '384', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1206', 'ANOLIAN', '虎蜥人', '虎蜥人', '71', '83070', '59640', '639', '497', null, '508', '933', '78', '56', '85', '56', '78', '56', '78', '68', '1', '10', '12', 'Medium', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '190', '900', '500', '864', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1207', 'STING', '史汀', '史汀', '71', '124605', '47925', '639', '497', null, '558', '1068', '18', '45', '102', '28', '117', '45', '46', '102', '1', '10', '12', 'Medium', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '3', '300', '528', '500', '240', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1208', 'WANDER_MAN', '邪骸浪人', '邪骸浪人', '84', '205380', '69300', '756', '588', null, '728', '1433', '64', '55', '141', '21', '163', '55', '21', '120', '2', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '100', '672', '500', '192', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1209', 'CRAMP', '蓝鼠', '蓝鼠', '66', '77220', '42570', '594', '462', null, '539', '964', '78', '43', '85', '104', '78', '43', '104', '28', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '2', '100', '1000', '500', '1000', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1211', 'BRILIGHT', '伊特瓢虫', '伊特瓢虫', '56', '21840', '36960', '504', '392', null, '558', '1058', '26', '44', '100', '53', '26', '44', '53', '22', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '1500', '500', '1000', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1212', 'IRON_FIST', '铁蝎', '铁蝎', '57', '20520', '42750', '513', '399', null, '526', '986', '24', '50', '92', '60', '24', '50', '60', '20', '1', '10', '12', 'Medium', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '200', '1500', '500', '1000', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1213', 'HIGH_ORC', '兽人战士长', '兽人战士长', '62', '57660', '57660', '558', '434', null, '378', '688', '62', '62', '62', '62', '62', '62', '62', '49', '1', '10', '12', 'Large', 'Demihuman', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '150', '1500', '500', '1000', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1214', 'CHOCO', '巧克猴', '巧克猴', '53', '49290', '27030', '477', '371', null, '431', '771', '62', '34', '68', '83', '62', '34', '83', '22', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '1500', '500', '1000', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1215', 'STEM_WORM', '灰森灵', '灰森灵', '50', '40500', '26250', '450', '350', null, '243', '458', '54', '35', '43', '22', '54', '35', '26', '43', '2', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '200', '1500', '500', '1000', null, '9', '', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1216', 'PENOMENA', '梅纳海葵', '梅纳海葵', '67', '101505', '53265', '603', '469', null, '232', '372', '2', '53', '28', '132', '101', '53', '79', '25', '7', '10', '12', 'Medium', 'Fish', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '400', '832', '500', '600', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1219', 'KNIGHT_OF_ABYSS', '深渊骑士', '深渊骑士', '89', '93450', '170880', '801', '623', null, '821', '1461', '70', '29', '128', '51', '70', '128', '176', '102', '1', '10', '12', 'Large', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '4', '300', '1500', '500', '1000', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1242', 'MARIN', '冰波利', '冰波利', '25', '13875', '14625', '225', '175', null, '127', '232', '37', '39', '21', '39', '37', '39', '19', '16', '1', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '2', '400', '1872', '672', '480', null, '1', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1257', 'INJUSTICE', '邪恶使者', '邪恶使者', '61', '49410', '91500', '549', '427', null, '439', '774', '54', '1', '67', '40', '54', '100', '100', '53', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '2', '400', '770', '720', '336', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1258', 'GOBLIN_ARCHER', '弓箭哥布灵', '弓箭哥布灵', '38', '21660', '21660', '342', '266', null, '231', '421', '38', '38', '38', '38', '38', '38', '38', '30', '9', '10', '12', 'Small', 'Demihuman', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Poison', '1', '200', '1172', '672', '420', null, '5', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1259', 'GRYPHON', '狮鹫兽', '狮鹫兽', '82', '174660', '57810', '738', '574', null, '1016', '1866', '43', '47', '170', '113', '142', '47', '155', '70', '1', '10', '12', 'Large', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '4', '100', '704', '504', '432', null, '21', 'Boss', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1260', 'DARK_FRAME', '镜妖', '镜妖', '69', '64170', '116955', '621', '483', null, '492', '867', '62', '14', '75', '45', '62', '113', '113', '60', '1', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '3', '200', '920', '720', '200', null, '21', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1261', 'WILD_ROSE', '狂暴野猫', '狂暴野猫', '48', '33840', '18720', '432', '336', null, '324', '579', '47', '26', '51', '63', '47', '26', '63', '17', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '100', '964', '864', '288', null, '2', '', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1262', 'MUTANT_DRAGON', '半龙人', '半龙人', '75', '121500', '40500', '675', '525', null, '771', '1416', '9', '36', '129', '86', '108', '36', '118', '43', '4', '10', '12', 'Large', 'Dragon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '250', '1280', '1080', '240', null, '21', 'Boss', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1263', 'WIND_GHOST', '风魔巫师', '风魔巫师', '61', '43920', '55815', '549', '427', null, '274', '454', '48', '61', '36', '91', '48', '61', '85', '36', '2', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '3', '150', '1056', '1056', '336', null, '21', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1264', 'MERMAN', '人鱼士兵', '人鱼士兵', '63', '99225', '42525', '567', '441', null, '229', '379', '6', '45', '30', '113', '105', '45', '68', '26', '2', '10', '12', 'Medium', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '3', '220', '916', '816', '336', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1267', 'CARAT', '卡拉特小丑', '卡拉特小丑', '61', '49410', '91500', '549', '427', null, '439', '774', '54', '1', '67', '40', '54', '100', '100', '53', '1', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '2', '200', '1078', '768', '384', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1268', 'BLOODY_KNIGHT', '血腥骑士', '血腥骑士', '92', '150420', '200100', '828', '644', null, '930', '1655', '10', '46', '145', '58', '109', '145', '200', '116', '3', '10', '12', 'Large', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '4', '250', '828', '528', '192', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1269', 'CLOCK', '古钟魔', '古钟魔', '70', '48300', '88200', '630', '490', null, '538', '958', '46', '84', '84', '33', '46', '84', '115', '67', '1', '10', '12', 'Medium', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '2', '200', '1092', '792', '480', null, '17', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1270', 'C_TOWER_MANAGER', '钟塔守护者', '钟塔守护者', '73', '131400', '50370', '657', '511', null, '575', '1100', '21', '46', '105', '29', '120', '46', '48', '105', '3', '10', '12', 'Large', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '4', '200', '1072', '672', '384', null, '17', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1271', 'ALLIGATOR', '鳄鱼人', '鳄鱼人', '52', '62400', '38220', '468', '364', null, '283', '528', '80', '49', '49', '49', '80', '49', '34', '37', '1', '10', '12', 'Medium', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Water', '1', '200', '1100', '900', '480', null, '17', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1272', 'DARK_LORD', '黑暗之王', '黑暗之王', '90', '521100', '128250', '810', '630', null, '1862', '3672', '89', '95', '362', '36', '386', '95', '49', '311', '2', '10', '12', 'Large', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '4', '100', '868', '768', '480', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1273', 'ORC_LADY', '兽人女战士', '兽人女战士', '41', '25215', '25215', '369', '287', null, '250', '455', '41', '41', '41', '41', '41', '41', '41', '32', '1', '10', '12', 'Medium', 'Demihuman', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '2', '200', '1050', '900', '288', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1274', 'MEGALITH', '邪恶摩艾', '邪恶摩艾', '55', '45375', '45375', '495', '385', null, '335', '610', '55', '55', '55', '55', '55', '55', '55', '44', '9', '10', '12', 'Large', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '4', '200', '1332', '1332', '672', null, '10', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1275', 'ALICE', '爱丽丝女仆', '爱丽丝女仆', '72', '30240', '163080', '648', '504', null, '309', '539', '28', '52', '46', '103', '28', '151', '69', '69', '1', '10', '12', 'Medium', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '200', '502', '2304', '480', null, '17', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1276', 'RAYDRIC_ARCHER', '幽灵弓箭手', '幽灵弓箭手', '62', '22320', '120900', '558', '434', null, '262', '457', '24', '31', '39', '89', '24', '130', '59', '59', '9', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '2', '200', '1152', '1152', '480', null, '5', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1277', 'GREATEST_GENERAL', '将军魔碑', '将军魔碑', '50', '22500', '37500', '450', '350', null, '439', '814', '30', '50', '75', '40', '30', '50', '60', '40', '3', '10', '12', 'Medium', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '200', '1152', '1152', '384', null, '10', '', '1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1278', 'STALACTIC_GOLEM', '钟乳巨石怪', '钟乳巨石怪', '70', '120750', '46200', '630', '490', null, '548', '1048', '16', '44', '100', '28', '115', '44', '46', '100', '1', '10', '12', 'Large', 'Formless', null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '4', '200', '1264', '864', '288', null, '17', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1279', 'TRI_JOINT', '三叶虫', '三叶虫', '42', '26460', '27720', '378', '294', null, '208', '388', '42', '44', '36', '66', '42', '44', '22', '11', '1', '10', '12', 'Small', 'Insect', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '1', '200', '860', '660', '624', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1280', 'STEAM_GOBLIN', '喷射哥布灵', '喷射哥布灵', '45', '30375', '30375', '405', '315', null, '274', '499', '45', '45', '45', '45', '45', '45', '45', '36', '1', '10', '12', 'Medium', 'Demihuman', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '2', '200', '1008', '1008', '528', null, '17', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1281', 'SAGEWORM', '贤者虫', '贤者虫', '53', '22260', '46110', '477', '371', null, '428', '783', '28', '58', '71', '46', '28', '58', '69', '38', '1', '10', '12', 'Small', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '200', '936', '936', '288', null, '17', '', '1', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1282', 'KOBOLD_ARCHER', '犬妖弓箭手', '犬妖弓箭手', '43', '27735', '27735', '387', '301', null, '262', '477', '43', '43', '43', '43', '43', '43', '43', '34', '9', '10', '12', 'Small', 'Demihuman', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '1', '200', '1008', '1008', '384', null, '5', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1283', 'CHIMERA', '凯美拉', '凯美拉', '80', '166800', '55200', '720', '560', null, '988', '1813', '40', '46', '165', '110', '139', '46', '152', '69', '1', '10', '12', 'Large', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '3', '200', '772', '672', '360', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1290', 'SKELETON_GENERAL', '邪骸战士长', '邪骸战士长', '83', '241530', '80925', '747', '581', null, '861', '1696', '95', '65', '167', '24', '194', '65', '24', '143', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '150', '2276', '576', '432', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1295', 'OWL_BARON', '鹗枭男爵', '鹗枭男爵', '85', '65025', '161925', '765', '595', null, '557', '982', '51', '28', '85', '51', '51', '127', '127', '68', '2', '10', '12', 'Large', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '175', '1345', '824', '440', null, '21', 'Boss', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1296', 'KOBOLD_LEADER', '犬妖首领', '犬妖首领', '75', '101250', '101250', '675', '525', null, '549', '999', '90', '90', '90', '90', '90', '90', '90', '72', '1', '10', '12', 'Medium', 'Demihuman', null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '2', '150', '1028', '528', '360', null, '21', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1298', 'ZOMBIE_MASTER', '腐尸首领', '腐尸首领', '72', '181440', '61560', '648', '504', null, '748', '1473', '69', '57', '145', '21', '168', '57', '21', '124', '1', '10', '12', 'Medium', 'Undead', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '1', '175', '2612', '912', '288', null, '21', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1299', 'GOBLIN_LEADER', '哥布灵首领', '哥布灵首领', '74', '97680', '97680', '666', '518', null, '536', '976', '88', '88', '88', '88', '88', '88', '88', '71', '1', '10', '12', 'Medium', 'Demihuman', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Wind', '1', '120', '1120', '620', '240', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '1', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1302', 'DARK_ILLUSION', '迷幻之王', '迷幻之王', '87', '291015', '71775', '783', '609', null, '1080', '2130', '25', '55', '210', '20', '223', '55', '28', '180', '2', '10', '12', 'Large', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Undead', '4', '145', '1024', '768', '480', null, '21', 'Boss', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1320', 'OWL_DUKE', '鹗枭首领', '鹗枭首领', '85', '77775', '195075', '765', '595', null, '669', '1179', '61', '54', '102', '61', '61', '153', '153', '81', '1', '10', '12', 'Large', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '195', '1345', '824', '440', null, '21', 'Boss', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1365', 'APOCALIPS', '阿修罗机械战士', '阿修罗机械战士', '76', '114000', '82080', '684', '532', null, '652', '1197', '1', '72', '109', '72', '100', '72', '100', '87', '2', '10', '12', 'Large', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '3', '400', '1840', '1440', '384', null, '17', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1368', 'GEOGRAPHER', '邪恶向日葵', '邪恶向日葵', '66', '78210', '41580', '594', '462', null, '348', '663', '79', '42', '63', '26', '79', '42', '31', '63', '3', '10', '12', 'Medium', 'Plant', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '3', '1000', '1308', '1008', '480', null, '10', '', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1369', 'GRAND_PECO', '七彩大嘴鸟', '七彩大嘴鸟', '68', '109140', '48960', '612', '476', null, '713', '1298', '8', '48', '117', '117', '107', '48', '117', '48', '2', '10', '12', 'Large', 'Brute', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Fire', '2', '165', '1460', '960', '432', null, '3', '', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1370', 'SUCCUBUS', '恶魔女仆', '恶魔女仆', '95', '121125', '222300', '855', '665', null, '682', '1202', '85', '57', '104', '62', '85', '156', '156', '83', '2', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '3', '155', '1306', '1056', '288', null, '21', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1374', 'INCUBUS', '恶魔侍者', '恶魔侍者', '85', '96900', '178500', '765', '595', null, '610', '1075', '76', '41', '93', '56', '76', '140', '140', '74', '2', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '3', '165', '850', '600', '336', null, '21', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1379', 'NIGHTMARE_TERROR', '七彩梦魇', '七彩梦魇', '88', '114840', '153120', '792', '616', null, '743', '1323', '87', '17', '116', '46', '87', '116', '159', '92', '1', '10', '12', 'Large', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '3', '165', '1216', '816', '432', null, '4', '', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1388', 'ARCHANGELING', '圣天使波利', '圣天使波利', '70', '190050', '232050', '630', '490', null, '1148', '2053', '82', '23', '181', '221', '181', '221', '221', '181', '1', '10', '12', 'Medium', 'Angel', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Holy', '3', '180', '1072', '672', '480', null, '21', 'Boss', '1', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1582', 'DEVILING', '恶魔波利', '恶魔波利', '41', '48585', '43665', '369', '287', null, '368', '658', '79', '71', '58', '71', '79', '71', '71', '58', '1', '10', '12', 'Medium', 'Demon', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Dark', '4', '200', '1072', '1056', '384', null, '21', 'Boss', '1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1613', 'METALING', '金属波利', '金属波利', '36', '20520', '25380', '324', '252', null, '241', '431', '38', '47', '38', '47', '38', '47', '47', '31', '1', '10', '12', 'Small', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '1', '300', '384', '672', '480', null, '2', '', '1', '0', '1', '0', '1', '0', '0', '1', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1784', 'STAPO', '石头波利', '石头波利', '33', '17325', '21285', '297', '231', null, '222', '397', '35', '43', '35', '43', '35', '43', '43', '28', '1', '10', '12', 'Small', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Earth', '2', '300', '936', '792', '432', null, '2', '', '1', '0', '1', '0', '0', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);
INSERT INTO `mob_db` VALUES ('1977', 'HEAVY_METALING', '重金属波利', '重金属波利', '83', '110805', '135705', '747', '581', null, '564', '1009', '89', '10', '89', '109', '89', '109', '109', '71', '1', '10', '12', 'Small', 'Formless', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'Neutral', '1', '200', '384', '672', '480', null, '20', '', '1', '0', '1', '0', '0', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '0', '', null, '', null, '', null, '', null, '', null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null, '', null, null, '', null);

-- ----------------------------
-- Table structure for `mob_db2`
-- ----------------------------
DROP TABLE IF EXISTS `mob_db2`;
CREATE TABLE `mob_db2` (
  `id` int(11) unsigned NOT NULL,
  `name_aegis` varchar(24) DEFAULT NULL,
  `name_english` text,
  `name_japanese` text,
  `level` smallint(6) unsigned DEFAULT NULL,
  `hp` int(11) unsigned DEFAULT NULL,
  `sp` mediumint(9) unsigned DEFAULT NULL,
  `base_exp` int(11) unsigned DEFAULT NULL,
  `job_exp` int(11) unsigned DEFAULT NULL,
  `mvp_exp` int(11) unsigned DEFAULT NULL,
  `attack` smallint(6) unsigned DEFAULT NULL,
  `attack2` smallint(6) unsigned DEFAULT NULL,
  `defense` smallint(6) unsigned DEFAULT NULL,
  `magic_defense` smallint(6) unsigned DEFAULT NULL,
  `str` smallint(6) unsigned DEFAULT NULL,
  `agi` smallint(6) unsigned DEFAULT NULL,
  `vit` smallint(6) unsigned DEFAULT NULL,
  `int` smallint(6) unsigned DEFAULT NULL,
  `dex` smallint(6) unsigned DEFAULT NULL,
  `luk` smallint(6) unsigned DEFAULT NULL,
  `attack_range` tinyint(4) unsigned DEFAULT NULL,
  `skill_range` tinyint(4) unsigned DEFAULT NULL,
  `chase_range` tinyint(4) unsigned DEFAULT NULL,
  `size` varchar(24) DEFAULT NULL,
  `race` varchar(24) DEFAULT NULL,
  `racegroup_goblin` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_kobold` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_orc` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_golem` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_guardian` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_ninja` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_gvg` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_battlefield` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_treasure` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_biolab` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_manuk` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_splendide` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_scaraba` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_ogh_atk_def` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_ogh_hidden` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_bio5_swordman_thief` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_bio5_acolyte_merchant` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_bio5_mage_archer` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_bio5_mvp` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_clocktower` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_thanatos` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_faceworm` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_hearthunter` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_rockridge` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_werner_lab` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_temple_demon` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_illusion_vampire` tinyint(1) unsigned DEFAULT NULL,
  `racegroup_malangdo` tinyint(1) unsigned DEFAULT NULL,
  `element` varchar(24) DEFAULT NULL,
  `element_level` tinyint(4) unsigned DEFAULT NULL,
  `walk_speed` smallint(6) unsigned DEFAULT NULL,
  `attack_delay` smallint(6) unsigned DEFAULT NULL,
  `attack_motion` smallint(6) unsigned DEFAULT NULL,
  `damage_motion` smallint(6) unsigned DEFAULT NULL,
  `damage_taken` smallint(6) unsigned DEFAULT NULL,
  `ai` varchar(2) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `mode_canmove` tinyint(1) unsigned DEFAULT NULL,
  `mode_looter` tinyint(1) unsigned DEFAULT NULL,
  `mode_aggressive` tinyint(1) unsigned DEFAULT NULL,
  `mode_assist` tinyint(1) unsigned DEFAULT NULL,
  `mode_castsensoridle` tinyint(1) unsigned DEFAULT NULL,
  `mode_norandomwalk` tinyint(1) unsigned DEFAULT NULL,
  `mode_nocast` tinyint(1) unsigned DEFAULT NULL,
  `mode_canattack` tinyint(1) unsigned DEFAULT NULL,
  `mode_castsensorchase` tinyint(1) unsigned DEFAULT NULL,
  `mode_changechase` tinyint(1) unsigned DEFAULT NULL,
  `mode_angry` tinyint(1) unsigned DEFAULT NULL,
  `mode_changetargetmelee` tinyint(1) unsigned DEFAULT NULL,
  `mode_changetargetchase` tinyint(1) unsigned DEFAULT NULL,
  `mode_targetweak` tinyint(1) unsigned DEFAULT NULL,
  `mode_randomtarget` tinyint(1) unsigned DEFAULT NULL,
  `mode_ignoremelee` tinyint(1) unsigned DEFAULT NULL,
  `mode_ignoremagic` tinyint(1) unsigned DEFAULT NULL,
  `mode_ignoreranged` tinyint(1) unsigned DEFAULT NULL,
  `mode_mvp` tinyint(1) unsigned DEFAULT NULL,
  `mode_ignoremisc` tinyint(1) unsigned DEFAULT NULL,
  `mode_knockbackimmune` tinyint(1) unsigned DEFAULT NULL,
  `mode_teleportblock` tinyint(1) unsigned DEFAULT NULL,
  `mode_fixeditemdrop` tinyint(1) unsigned DEFAULT NULL,
  `mode_detector` tinyint(1) unsigned DEFAULT NULL,
  `mode_statusimmune` tinyint(1) unsigned DEFAULT NULL,
  `mode_skillimmune` tinyint(1) unsigned DEFAULT NULL,
  `mvpdrop1_item` varchar(50) DEFAULT NULL,
  `mvpdrop1_rate` smallint(9) unsigned DEFAULT NULL,
  `mvpdrop1_option` varchar(50) DEFAULT NULL,
  `mvpdrop1_index` tinyint(2) unsigned DEFAULT NULL,
  `mvpdrop2_item` varchar(50) DEFAULT NULL,
  `mvpdrop2_rate` smallint(9) unsigned DEFAULT NULL,
  `mvpdrop2_option` varchar(50) DEFAULT NULL,
  `mvpdrop2_index` tinyint(2) unsigned DEFAULT NULL,
  `mvpdrop3_item` varchar(50) DEFAULT NULL,
  `mvpdrop3_rate` smallint(9) unsigned DEFAULT NULL,
  `mvpdrop3_option` varchar(50) DEFAULT NULL,
  `mvpdrop3_index` tinyint(2) unsigned DEFAULT NULL,
  `drop1_item` varchar(50) DEFAULT NULL,
  `drop1_rate` smallint(9) unsigned DEFAULT NULL,
  `drop1_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop1_option` varchar(50) DEFAULT NULL,
  `drop1_index` tinyint(2) unsigned DEFAULT NULL,
  `drop2_item` varchar(50) DEFAULT NULL,
  `drop2_rate` smallint(9) unsigned DEFAULT NULL,
  `drop2_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop2_option` varchar(50) DEFAULT NULL,
  `drop2_index` tinyint(2) unsigned DEFAULT NULL,
  `drop3_item` varchar(50) DEFAULT NULL,
  `drop3_rate` smallint(9) unsigned DEFAULT NULL,
  `drop3_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop3_option` varchar(50) DEFAULT NULL,
  `drop3_index` tinyint(2) unsigned DEFAULT NULL,
  `drop4_item` varchar(50) DEFAULT NULL,
  `drop4_rate` smallint(9) unsigned DEFAULT NULL,
  `drop4_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop4_option` varchar(50) DEFAULT NULL,
  `drop4_index` tinyint(2) unsigned DEFAULT NULL,
  `drop5_item` varchar(50) DEFAULT NULL,
  `drop5_rate` smallint(9) unsigned DEFAULT NULL,
  `drop5_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop5_option` varchar(50) DEFAULT NULL,
  `drop5_index` tinyint(2) unsigned DEFAULT NULL,
  `drop6_item` varchar(50) DEFAULT NULL,
  `drop6_rate` smallint(9) unsigned DEFAULT NULL,
  `drop6_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop6_option` varchar(50) DEFAULT NULL,
  `drop6_index` tinyint(2) unsigned DEFAULT NULL,
  `drop7_item` varchar(50) DEFAULT NULL,
  `drop7_rate` smallint(9) unsigned DEFAULT NULL,
  `drop7_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop7_option` varchar(50) DEFAULT NULL,
  `drop7_index` tinyint(2) unsigned DEFAULT NULL,
  `drop8_item` varchar(50) DEFAULT NULL,
  `drop8_rate` smallint(9) unsigned DEFAULT NULL,
  `drop8_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop8_option` varchar(50) DEFAULT NULL,
  `drop8_index` tinyint(2) unsigned DEFAULT NULL,
  `drop9_item` varchar(50) DEFAULT NULL,
  `drop9_rate` smallint(9) unsigned DEFAULT NULL,
  `drop9_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop9_option` varchar(50) DEFAULT NULL,
  `drop9_index` tinyint(2) unsigned DEFAULT NULL,
  `drop10_item` varchar(50) DEFAULT NULL,
  `drop10_rate` smallint(9) unsigned DEFAULT NULL,
  `drop10_nosteal` tinyint(1) unsigned DEFAULT NULL,
  `drop10_option` varchar(50) DEFAULT NULL,
  `drop10_index` tinyint(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name_aegis` (`name_aegis`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mob_db2
-- ----------------------------

-- ----------------------------
-- Table structure for `mob_skill_db`
-- ----------------------------
DROP TABLE IF EXISTS `mob_skill_db`;
CREATE TABLE `mob_skill_db` (
  `MOB_ID` smallint(6) NOT NULL,
  `INFO` text NOT NULL,
  `STATE` text NOT NULL,
  `SKILL_ID` smallint(6) NOT NULL,
  `SKILL_LV` tinyint(4) NOT NULL,
  `RATE` smallint(4) NOT NULL,
  `CASTTIME` mediumint(9) NOT NULL,
  `DELAY` int(9) NOT NULL,
  `CANCELABLE` text NOT NULL,
  `TARGET` text NOT NULL,
  `CONDITION` text NOT NULL,
  `CONDITION_VALUE` text,
  `VAL1` mediumint(9) DEFAULT NULL,
  `VAL2` mediumint(9) DEFAULT NULL,
  `VAL3` mediumint(9) DEFAULT NULL,
  `VAL4` mediumint(9) DEFAULT NULL,
  `VAL5` mediumint(9) DEFAULT NULL,
  `EMOTION` text,
  `CHAT` text
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mob_skill_db
-- ----------------------------

-- ----------------------------
-- Table structure for `mob_skill_db2`
-- ----------------------------
DROP TABLE IF EXISTS `mob_skill_db2`;
CREATE TABLE `mob_skill_db2` (
  `MOB_ID` smallint(6) NOT NULL,
  `INFO` text NOT NULL,
  `STATE` text NOT NULL,
  `SKILL_ID` smallint(6) NOT NULL,
  `SKILL_LV` tinyint(4) NOT NULL,
  `RATE` smallint(4) NOT NULL,
  `CASTTIME` mediumint(9) NOT NULL,
  `DELAY` int(9) NOT NULL,
  `CANCELABLE` text NOT NULL,
  `TARGET` text NOT NULL,
  `CONDITION` text NOT NULL,
  `CONDITION_VALUE` text,
  `VAL1` mediumint(9) DEFAULT NULL,
  `VAL2` mediumint(9) DEFAULT NULL,
  `VAL3` mediumint(9) DEFAULT NULL,
  `VAL4` mediumint(9) DEFAULT NULL,
  `VAL5` mediumint(9) DEFAULT NULL,
  `EMOTION` text,
  `CHAT` text
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mob_skill_db2
-- ----------------------------

-- ----------------------------
-- Table structure for `party`
-- ----------------------------
DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `party_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `exp` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `item` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `leader_id` int(11) unsigned NOT NULL DEFAULT '0',
  `leader_char` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`party_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of party
-- ----------------------------
INSERT INTO `party` VALUES ('1', '9999', '0', '0', '2000000', '150000');

-- ----------------------------
-- Table structure for `pet`
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `pet_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `level` smallint(4) unsigned NOT NULL DEFAULT '0',
  `egg_id` int(10) unsigned NOT NULL DEFAULT '0',
  `equip` int(10) unsigned NOT NULL DEFAULT '0',
  `intimate` smallint(9) unsigned NOT NULL DEFAULT '0',
  `hungry` smallint(9) unsigned NOT NULL DEFAULT '0',
  `rename_flag` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `incubate` int(11) unsigned NOT NULL DEFAULT '0',
  `autofeed` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pet_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pet
-- ----------------------------

-- ----------------------------
-- Table structure for `quest`
-- ----------------------------
DROP TABLE IF EXISTS `quest`;
CREATE TABLE `quest` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL,
  `state` enum('0','1','2') NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `count1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`quest_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of quest
-- ----------------------------

-- ----------------------------
-- Table structure for `recruitment`
-- ----------------------------
DROP TABLE IF EXISTS `recruitment`;
CREATE TABLE `recruitment` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(32) NOT NULL DEFAULT '',
  `world_name` varchar(32) NOT NULL,
  `adventure_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tanker` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `dealer` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `healer` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `assist` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `min_level` int(11) unsigned NOT NULL,
  `max_level` int(11) unsigned NOT NULL,
  `memo` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`account_id`,`char_id`,`world_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of recruitment
-- ----------------------------

-- ----------------------------
-- Table structure for `sales`
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `nameid` int(10) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`nameid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of sales
-- ----------------------------

-- ----------------------------
-- Table structure for `sc_data`
-- ----------------------------
DROP TABLE IF EXISTS `sc_data`;
CREATE TABLE `sc_data` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `type` smallint(11) unsigned NOT NULL,
  `tick` bigint(20) NOT NULL,
  `val1` int(11) NOT NULL DEFAULT '0',
  `val2` int(11) NOT NULL DEFAULT '0',
  `val3` int(11) NOT NULL DEFAULT '0',
  `val4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of sc_data
-- ----------------------------

-- ----------------------------
-- Table structure for `skill`
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of skill
-- ----------------------------

-- ----------------------------
-- Table structure for `skillcooldown`
-- ----------------------------
DROP TABLE IF EXISTS `skillcooldown`;
CREATE TABLE `skillcooldown` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `skill` smallint(11) unsigned NOT NULL DEFAULT '0',
  `tick` bigint(20) NOT NULL,
  PRIMARY KEY (`char_id`,`skill`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of skillcooldown
-- ----------------------------

-- ----------------------------
-- Table structure for `skill_homunculus`
-- ----------------------------
DROP TABLE IF EXISTS `skill_homunculus`;
CREATE TABLE `skill_homunculus` (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL,
  PRIMARY KEY (`homun_id`,`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of skill_homunculus
-- ----------------------------

-- ----------------------------
-- Table structure for `storage`
-- ----------------------------
DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` smallint(11) unsigned NOT NULL DEFAULT '0',
  `equip` int(11) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` int(10) unsigned NOT NULL DEFAULT '0',
  `card1` int(10) unsigned NOT NULL DEFAULT '0',
  `card2` int(10) unsigned NOT NULL DEFAULT '0',
  `card3` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id0` smallint(5) NOT NULL DEFAULT '0',
  `option_val0` smallint(5) NOT NULL DEFAULT '0',
  `option_parm0` tinyint(3) NOT NULL DEFAULT '0',
  `option_id1` smallint(5) NOT NULL DEFAULT '0',
  `option_val1` smallint(5) NOT NULL DEFAULT '0',
  `option_parm1` tinyint(3) NOT NULL DEFAULT '0',
  `option_id2` smallint(5) NOT NULL DEFAULT '0',
  `option_val2` smallint(5) NOT NULL DEFAULT '0',
  `option_parm2` tinyint(3) NOT NULL DEFAULT '0',
  `option_id3` smallint(5) NOT NULL DEFAULT '0',
  `option_val3` smallint(5) NOT NULL DEFAULT '0',
  `option_parm3` tinyint(3) NOT NULL DEFAULT '0',
  `option_id4` smallint(5) NOT NULL DEFAULT '0',
  `option_val4` smallint(5) NOT NULL DEFAULT '0',
  `option_parm4` tinyint(3) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  `bound` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unique_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `enchantgrade` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account_id` (`account_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of storage
-- ----------------------------

-- ----------------------------
-- Table structure for `subject_db`
-- ----------------------------
DROP TABLE IF EXISTS `subject_db`;
CREATE TABLE `subject_db` (
  `map_name` char(255) DEFAULT NULL,
  `x` int(10) DEFAULT NULL,
  `y` int(10) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `duplicate_name` char(255) DEFAULT NULL,
  `display_name` char(255) DEFAULT NULL,
  `view` int(10) DEFAULT NULL,
  `renew` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of subject_db
-- ----------------------------
INSERT INTO `subject_db` VALUES ('prt_fild01', '190', '367', '1', '草', '红草', '1078', '5');

-- ----------------------------
-- Table structure for `suspend`
-- ----------------------------
DROP TABLE IF EXISTS `suspend`;
CREATE TABLE `suspend` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `sex` enum('F','M') NOT NULL DEFAULT 'M',
  `map` varchar(20) NOT NULL,
  `x` smallint(5) unsigned NOT NULL,
  `y` smallint(5) unsigned NOT NULL,
  `body_direction` char(1) NOT NULL DEFAULT '4',
  `head_direction` char(1) NOT NULL DEFAULT '0',
  `sit` char(1) NOT NULL DEFAULT '1',
  `mode` tinyint(4) NOT NULL,
  `tick` bigint(20) NOT NULL DEFAULT '0',
  `val1` int(11) NOT NULL DEFAULT '0',
  `val2` int(11) NOT NULL DEFAULT '0',
  `val3` int(11) NOT NULL DEFAULT '0',
  `val4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of suspend
-- ----------------------------

-- ----------------------------
-- Table structure for `user_configs`
-- ----------------------------
DROP TABLE IF EXISTS `user_configs`;
CREATE TABLE `user_configs` (
  `account_id` int(11) unsigned NOT NULL,
  `world_name` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`account_id`,`world_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_configs
-- ----------------------------
INSERT INTO `user_configs` VALUES ('2000000', 'Pandas Server', '{\n   \"data\": {\n      \"EmotionHotkey\": [\n         \"@reloadscript\",\n         \"@jump\",\n         \"/高兴\",\n         \"/爱心\",\n         \"/流冷汗\",\n         \"/灵感\",\n         \"/生气\",\n         \"/郁闷\",\n         \"/金钱\",\n         \"/无言\"\n      ]\n   }\n}');

-- ----------------------------
-- Table structure for `vendings`
-- ----------------------------
DROP TABLE IF EXISTS `vendings`;
CREATE TABLE `vendings` (
  `id` int(10) unsigned NOT NULL,
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(10) unsigned NOT NULL,
  `sex` enum('F','M') NOT NULL DEFAULT 'M',
  `map` varchar(20) NOT NULL,
  `x` smallint(5) unsigned NOT NULL,
  `y` smallint(5) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `body_direction` char(1) NOT NULL DEFAULT '4',
  `head_direction` char(1) NOT NULL DEFAULT '0',
  `sit` char(1) NOT NULL DEFAULT '1',
  `autotrade` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of vendings
-- ----------------------------

-- ----------------------------
-- Table structure for `vending_items`
-- ----------------------------
DROP TABLE IF EXISTS `vending_items`;
CREATE TABLE `vending_items` (
  `vending_id` int(10) unsigned NOT NULL,
  `index` smallint(5) unsigned NOT NULL,
  `cartinventory_id` int(10) unsigned NOT NULL,
  `amount` smallint(5) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  PRIMARY KEY (`vending_id`,`index`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=gbk ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of vending_items
-- ----------------------------
