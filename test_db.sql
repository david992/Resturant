/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50557
Source Host           : localhost:3306
Source Database       : test_db

Target Server Type    : MYSQL
Target Server Version : 50557
File Encoding         : 65001

Date: 2018-04-08 20:04:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `menu_class`
-- ----------------------------
DROP TABLE IF EXISTS `menu_class`;
CREATE TABLE `menu_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `food_class_name` varchar(100) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_class
-- ----------------------------
INSERT INTO `menu_class` VALUES ('1', '蒸菜', '2017-12-19 11:39:32', '2018-01-06 21:21:34');
INSERT INTO `menu_class` VALUES ('2', '川菜', '2017-12-19 11:41:54', '2018-01-06 21:21:38');
INSERT INTO `menu_class` VALUES ('3', '凉菜', '2017-12-29 17:47:36', '2018-01-06 21:21:25');
INSERT INTO `menu_class` VALUES ('17', '湘菜', '2018-01-06 21:22:11', '2018-04-04 14:41:17');

-- ----------------------------
-- Table structure for `menu_list`
-- ----------------------------
DROP TABLE IF EXISTS `menu_list`;
CREATE TABLE `menu_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(50) NOT NULL,
  `material` varchar(100) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `vip_price` float(10,2) DEFAULT NULL,
  `des` varchar(500) DEFAULT NULL,
  `food_class_id` varchar(100) DEFAULT NULL,
  `food_img_name` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu_list
-- ----------------------------
INSERT INTO `menu_list` VALUES ('1', '粉蒸肉', '米粉、五花肉', '30.00', '24.00', '123', '1', '1256607214.jpg', '2017-12-26 19:53:13', '2018-01-01 21:21:56');
INSERT INTO `menu_list` VALUES ('2', '农家小炒肉', '青椒、瘦肉', '24.00', '20.00', '无', '1', '1253519531.jpg', '2017-12-26 19:47:57', '2017-12-29 16:22:42');
INSERT INTO `menu_list` VALUES ('3', '油焖大虾', '虾仁、芹菜', '35.00', '30.00', '好吃不贵', '1', '1257397027.jpg', '2017-12-26 19:51:55', null);
INSERT INTO `menu_list` VALUES ('4', '糖醋排骨', '糖、醋、排骨', '26.00', '22.00', '暂无', '1', '1257396703.jpg', '2017-12-19 11:38:42', '2017-12-29 16:22:23');
INSERT INTO `menu_list` VALUES ('5', '辣子鸡', '鸡肉、辣椒', '28.00', '23.00', '无', '1', '1257395866.jpg', '2017-12-26 19:57:29', '2018-01-06 19:45:12');
INSERT INTO `menu_list` VALUES ('6', '水煮鱼', '鱼、辣椒', '32.00', '27.00', '无', '2', '1257396058.jpg', '2017-12-26 20:10:35', '2018-01-06 19:45:08');

-- ----------------------------
-- Table structure for `notices`
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES ('1', 'Test公告', '暂无', '2017-12-27 22:12:37', '2018-01-06 21:25:57');
INSERT INTO `notices` VALUES ('3', '5.16特价菜', '特色', '2017-12-29 16:24:41', null);
INSERT INTO `notices` VALUES ('4', '新增菜单《糖醋排骨》', '新增菜单《糖醋排骨》', '2017-12-29 16:25:08', null);
INSERT INTO `notices` VALUES ('5', '4.22特色菜', '4.22特色菜', '2017-12-29 16:26:12', null);
INSERT INTO `notices` VALUES ('6', '新增菜单《农家小炒肉》', '非常好吃', '2017-12-29 16:27:55', null);
INSERT INTO `notices` VALUES ('7', '新增菜单《油焖大虾》', '欢迎品尝', '2017-12-29 16:28:45', null);
INSERT INTO `notices` VALUES ('8', '今日特惠', '所有菜品，每单享八折优惠！！！', '2018-01-06 21:24:35', '2018-01-06 21:25:10');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `num` int(10) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `delivery` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('3', '2', '1', '1', '2018-04-08 19:00:11', null);
INSERT INTO `orders` VALUES ('4', '3', '2', '1', '2018-04-08 19:19:45', null);

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemusername` varchar(20) NOT NULL,
  `systemuserpassword` varchar(30) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `systemusername` (`systemusername`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '2017-12-15 10:00:10', '2017-12-19 20:21:37');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` int(2) NOT NULL,
  `age` tinyint(5) DEFAULT NULL,
  `idcard` varchar(18) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `postnumber` int(6) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'lbw', '123456', 'liu', '1', '20', '896456249887487454', '111', '18742465421', '1574845324@qq.com', '124356', '2017-12-15 10:02:12', '2017-12-15 10:02:15');
INSERT INTO `users` VALUES ('2', 'tom', '123456', 'tom', '0', '26', '456387489496452215', '999', '13964582121', '16345498@qq.com', '3216554', '2017-12-15 10:09:11', '2017-12-15 10:09:15');
INSERT INTO `users` VALUES ('3', 'jack', '654321', 'jack', '0', '35', '354897441115475146', 'hb', '17124544212', '45574120245@qq.com', '987456', '2017-12-15 10:11:37', '2017-12-15 10:11:44');
INSERT INTO `users` VALUES ('8', 'www', 'wwwwww', '653', '0', null, '265474564875686567', '5486786', '13765858477', '4362354@qq.com', null, '2018-04-08 17:40:45', null);
