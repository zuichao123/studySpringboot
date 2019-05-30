/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : 127.0.0.1:3306
Source Database       : sunjian

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2019-05-30 20:18:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET gbk NOT NULL,
  `age` varchar(100) CHARACTER SET gbk NOT NULL,
  `gender` varchar(100) CHARACTER SET gbk NOT NULL,
  `email` varchar(100) CHARACTER SET gbk DEFAULT NULL,
  `city` varchar(100) CHARACTER SET gbk DEFAULT NULL,
  `status` varchar(2) NOT NULL,
  `createTime` varchar(100) DEFAULT NULL,
  `updateTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
