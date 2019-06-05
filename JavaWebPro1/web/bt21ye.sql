/*
Navicat MySQL Data Transfer

Source Server         : album
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : albumshop

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-06-03 11:21:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bt21ye
-- ----------------------------
DROP TABLE IF EXISTS `bt21ye`;
CREATE TABLE `bt21ye` (
  `id` int(4) NOT NULL,
  `name` char(55) DEFAULT NULL,
  `picture` varchar(655) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bt21ye
-- ----------------------------
INSERT INTO `bt21ye` VALUES ('1', 'TATA', 'bt21tata.jpg');
INSERT INTO `bt21ye` VALUES ('2', 'RJ', 'bt21thtree.jpg');
INSERT INTO `bt21ye` VALUES ('3', 'CHIMMY', 'bt21four.jpg');
INSERT INTO `bt21ye` VALUES ('4', 'COOKY', 'bt21five.jpg');
INSERT INTO `bt21ye` VALUES ('5', 'MANG', 'bt21nine.jpg');
INSERT INTO `bt21ye` VALUES ('6', 'SHOOKY', 'bt21coo.jpg');
INSERT INTO `bt21ye` VALUES ('7', 'KOYA', 'bt21ten.jpg');
INSERT INTO `bt21ye` VALUES ('8', 'VAN', 'bt21van.jpg');
