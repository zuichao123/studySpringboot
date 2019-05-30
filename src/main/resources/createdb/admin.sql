/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : 127.0.0.1:3306
Source Database       : sunjian

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2019-05-30 20:18:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `xingming` varchar(255) CHARACTER SET gbk NOT NULL,
  `status` varchar(2) NOT NULL,
  `beizhu` varchar(255) CHARACTER SET gbk DEFAULT NULL,
  `createTime` varchar(100) DEFAULT NULL,
  `updateTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
