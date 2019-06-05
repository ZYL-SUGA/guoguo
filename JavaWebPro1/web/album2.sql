/*
Navicat MySQL Data Transfer

Source Server         : album
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : albumshop

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-05-13 19:11:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album2
-- ----------------------------
DROP TABLE IF EXISTS `album2`;
CREATE TABLE `album2` (
  `id` int(20) NOT NULL,
  `name` char(50) DEFAULT NULL,
  `picture` varchar(600) DEFAULT NULL,
  `value` decimal(20,1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of album2
-- ----------------------------
INSERT INTO `album2` VALUES ('1', 'MAP OF THE SOUL: PERSONA', 'album6.jpg', '14.3');
INSERT INTO `album2` VALUES ('2', 'LOVEYOUSELF 结 ANSWER', 'album7(2).jpg', '15.0');
INSERT INTO `album2` VALUES ('3', 'LOVEYOURSELF 转TEAR', 'album7.jpg', '13.4');
INSERT INTO `album2` VALUES ('4', 'YOUNG FOREVER', 'album11.jpg', '12.3');
INSERT INTO `album2` VALUES ('5', 'WINGS', 'album4.jpg', '16.0');
INSERT INTO `album2` VALUES ('6', 'LOVEYOURSELF 承 HER', 'album2.jpg', '15.5');
INSERT INTO `album2` VALUES ('7', 'FACE YOURSELF', 'album4.jpg', '17.0');
INSERT INTO `album2` VALUES ('8', 'YOU NEVER WALK ALONE', 'album3.jpg', '16.4');
INSERT INTO `album2` VALUES ('9', 'YOUNG FOREVER PT2', 'album1.jpg', '13.2');
