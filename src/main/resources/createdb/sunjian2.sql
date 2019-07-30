/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50620
Source Host           : 127.0.0.1:3306
Source Database       : sunjian2

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2019-07-30 15:31:40
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '62c8ad0a15d9d1ca38d5dee762a16e01', '超级管理员', '1', '是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是', '2019-05-28 18:57:07', '2019-05-31 14:34:39');
INSERT INTO `admin` VALUES ('4', '2w', 'ec9cbcbeaf6327c7d0b9f89df3df9423', '2w', '-1', '2w', '2019-05-28 20:29:07', '2019-05-30 11:21:53');
INSERT INTO `admin` VALUES ('5', '123', '202cb962ac59075b964b07152d234b70', '123', '-1', 'swfe', '2019-05-28 20:29:26', '2019-05-31 14:35:02');
INSERT INTO `admin` VALUES ('6', '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '3', '-1', '3', '2019-05-28 20:31:50', '2019-05-30 11:22:02');
INSERT INTO `admin` VALUES ('7', 'sunjian2', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian2', '-1', '中科虹霸', null, '2019-05-31 14:36:25');
INSERT INTO `admin` VALUES ('8', 'sunjian3', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian3', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('9', 'sunjian4', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian4', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('10', 'sunjian5', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian5', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('11', 'sunjian6', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian6', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('12', 'sunjian7', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian7', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('13', 'sunjian8', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian8', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('14', 'sunjian9', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian9', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('15', 'sunjian10', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian10', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('16', 'sunjian11', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian11', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('17', 'sunjian12', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian12', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('18', 'sunjian13', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian13', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('19', 'sunjian14', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian14', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('20', 'sunjian15', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian15', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('21', 'sunjian16', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian16', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('22', 'sunjian17', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian17', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('23', 'sunjian18', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian18', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('24', 'sunjian19', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian19', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('25', 'sunjian20', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian20', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('26', 'sunjian21', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian21', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('27', 'sunjian22', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian22', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('28', 'sunjian23', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian23', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('29', 'sunjian24', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian24', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('30', 'sunjian25', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian25', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('31', 'sunjian26', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian26', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('32', 'sunjian27', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian27', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('33', 'sunjian28', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian28', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('34', 'sunjian29', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian29', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('35', 'sunjian30', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian30', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('36', 'sunjian31', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian31', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('37', 'sunjian32', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian32', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('38', 'sunjian33', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian33', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('39', 'sunjian34', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian34', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('40', 'sunjian35', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian35', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('41', 'sunjian36', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian36', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('42', 'sunjian37', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian37', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('43', 'sunjian38', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian38', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('44', 'sunjian39', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian39', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('45', 'sunjian40', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian40', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('46', 'sunjian41', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian41', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('47', 'sunjian42', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian42', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('48', 'sunjian43', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian43', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('49', 'sunjian44', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian44', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('50', 'sunjian45', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian45', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('51', 'sunjian46', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian46', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('52', 'sunjian47', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian47', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('53', 'sunjian48', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian48', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('54', 'sunjian49', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian49', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('55', 'sunjian50', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian50', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('56', 'sunjian51', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian51', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('57', 'sunjian52', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian52', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('58', 'sunjian53', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian53', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('59', 'sunjian54', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian54', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('60', 'sunjian55', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian55', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('61', 'sunjian56', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian56', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('62', 'sunjian57', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian57', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('63', 'sunjian58', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian58', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('64', 'sunjian59', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian59', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('65', 'sunjian60', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian60', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('66', 'sunjian61', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian61', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('67', 'sunjian62', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian62', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('68', 'sunjian63', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian63', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('69', 'sunjian64', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian64', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('70', 'sunjian65', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian65', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('71', 'sunjian66', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian66', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('72', 'sunjian67', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian67', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('73', 'sunjian68', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian68', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('74', 'sunjian69', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian69', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('75', 'sunjian70', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian70', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('76', 'sunjian71', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian71', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('77', 'sunjian72', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian72', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('78', 'sunjian73', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian73', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('79', 'sunjian74', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian74', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('80', 'sunjian75', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian75', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('81', 'sunjian76', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian76', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('82', 'sunjian77', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian77', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('83', 'sunjian78', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian78', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('84', 'sunjian79', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian79', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('85', 'sunjian80', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian80', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('86', 'sunjian81', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian81', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('87', 'sunjian82', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian82', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('88', 'sunjian83', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian83', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('89', 'sunjian84', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian84', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('90', 'sunjian85', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian85', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('91', 'sunjian86', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian86', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('92', 'sunjian87', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian87', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('93', 'sunjian88', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian88', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('94', 'sunjian89', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian89', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('95', 'sunjian90', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian90', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('96', 'sunjian91', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian91', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('97', 'sunjian92', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian92', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('98', 'sunjian93', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian93', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('99', 'sunjian94', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian94', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('100', 'sunjian95', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian95', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('101', 'sunjian96', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian96', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('102', 'sunjian97', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian97', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('103', 'sunjian98', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian98', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('104', 'sunjian99', 'e10adc3949ba59abbe56e057f20f883e', 'sunjian99', '1', '中科虹霸', null, null);
INSERT INTO `admin` VALUES ('105', '234', '0e9212587d373ca58e9bada0c15e6fe4', '234', '1', '', '2019-05-31 14:16:42', null);
INSERT INTO `admin` VALUES ('106', 'wer', '22c276a05aa7c90566ae2175bcc2a9b0', 'wer', '1', '', '2019-05-31 14:19:40', null);
INSERT INTO `admin` VALUES ('107', '2344', '289dff07669d7a23de0ef88d2f7129e7', '234', '1', '我虽然不太好的人士提供还让他', '2019-05-31 14:22:39', '2019-05-31 15:54:16');

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
  `province` varchar(100) CHARACTER SET gbk DEFAULT NULL,
  `city` varchar(100) CHARACTER SET gbk DEFAULT NULL,
  `status` varchar(2) CHARACTER SET gbk NOT NULL,
  `createTime` varchar(100) CHARACTER SET gbk DEFAULT NULL,
  `updateTime` varchar(100) CHARACTER SET gbk DEFAULT NULL,
  `comments` varchar(100) CHARACTER SET gbk DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', '1', '1', '1rrrrr', '1', '福建省', '是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是大V按时大多数非是', '1', '2019-05-28 18:59:17', '2019-07-19 19:43:03', '');
INSERT INTO `person` VALUES ('2', '2', '2', '2', '2', '内蒙古自治区', '2', '1', '2019-05-28 18:59:23', '2019-05-28 20:31:33', '内蒙古自治区');
INSERT INTO `person` VALUES ('3', 'gdfg', 'dfsgsdf', 'sdfg', 'sdfg', '内蒙古自治区', 'dgfedfgdsfg', '-1', '2019-05-28 20:30:45', '2019-05-28 20:31:10', '内蒙古自治区');
INSERT INTO `person` VALUES ('4', '22', '2', '2', '2', '内蒙古自治区', '2', '-1', '2019-05-28 20:31:23', '2019-05-31 14:37:57', '内蒙古自治区');
INSERT INTO `person` VALUES ('5', 'tr', 'rt', 'rt', 'rt', '内蒙古自治区', '', '-1', '2019-05-30 10:45:56', '2019-05-31 14:36:33', '内蒙古自治区');
INSERT INTO `person` VALUES ('6', '123', '123', '123', '123', '内蒙古自治区', '123是打发斯蒂芬所发生的发', '-1', '2019-05-31 14:37:23', '2019-05-31 14:37:32', '内蒙古自治区');
INSERT INTO `person` VALUES ('7', 'sunjian3', '3', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞3', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('8', 'sunjian4', '4', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞4', '1', '2019-05-31 14:42:00', '2019-05-31 19:43:24', '内蒙古自治区');
INSERT INTO `person` VALUES ('9', 'sunjian5', '5', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞5', '1', '2019-05-31 14:42:00', '2019-05-31 19:43:30', '内蒙古自治区');
INSERT INTO `person` VALUES ('10', 'sunjian6', '6', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞6', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('11', 'sunjian7', '7', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞7', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('12', 'sunjian8', '8', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞8', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('13', 'sunjian9', '9', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞9', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('14', 'sunjian10', '10', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞10', '-1', '2019-05-31 14:42:00', '2019-07-17 16:11:05', '内蒙古自治区');
INSERT INTO `person` VALUES ('15', 'sunjian11', '11', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞11', '-1', '2019-05-31 14:42:00', '2019-07-17 16:11:13', '内蒙古自治区');
INSERT INTO `person` VALUES ('16', 'sunjian12', '12', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞12', '-1', '2019-05-31 14:42:00', '2019-07-17 16:11:30', '内蒙古自治区');
INSERT INTO `person` VALUES ('17', 'sunjian13', '13', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞13', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('18', 'sunjian14', '14', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞14', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('19', 'sunjian15', '15', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞15', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('20', 'sunjian16', '16', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞16', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('21', 'sunjian17', '17', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞17', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('22', 'sunjian18', '18', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞18', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('23', 'sunjian19', '19', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞19', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('24', 'sunjian20', '20', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞20', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('25', 'sunjian21', '21', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞21', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('26', 'sunjian22', '22', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞22', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('27', 'sunjian23', '23', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞23', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('28', 'sunjian24', '24', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞24', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('29', 'sunjian25', '25', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞25', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('30', 'sunjian26', '26', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞26', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('31', 'sunjian27', '27', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞27', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('32', 'sunjian28', '28', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞28', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('33', 'sunjian29', '29', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞29', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('34', 'sunjian30', '30', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞30', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('35', 'sunjian31', '31', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞31', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('36', 'sunjian32', '32', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞32', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('37', 'sunjian33', '33', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞33', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('38', 'sunjian34', '34', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞34', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('39', 'sunjian35', '35', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞35', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('40', 'sunjian36', '36', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞36', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('41', 'sunjian37', '37', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞37', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('42', 'sunjian38', '38', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞38', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('43', 'sunjian39', '39', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞39', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('44', 'sunjian40', '40', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞40', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('45', 'sunjian41', '41', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞41', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('46', 'sunjian42', '42', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞42', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('47', 'sunjian43', '43', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞43', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('48', 'sunjian44', '44', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞44', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('49', 'sunjian45', '45', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞45', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('50', 'sunjian46', '46', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞46', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('51', 'sunjian47', '47', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞47', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('52', 'sunjian48', '48', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞48', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('53', 'sunjian49', '49', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞49', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('54', 'sunjian50', '50', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞50', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('55', 'sunjian51', '51', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞51', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('56', 'sunjian52', '52', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞52', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('57', 'sunjian53', '53', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞53', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('58', 'sunjian54', '54', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞54', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('59', 'sunjian55', '55', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞55', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('60', 'sunjian56', '56', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞56', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('61', 'sunjian57', '57', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞57', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('62', 'sunjian58', '58', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞58', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('63', 'sunjian59', '59', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞59', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('64', 'sunjian60', '60', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞60', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('65', 'sunjian61', '61', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞61', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('66', 'sunjian62', '62', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞62', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('67', 'sunjian63', '63', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞63', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('68', 'sunjian64', '64', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞64', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('69', 'sunjian65', '65', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞65', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('70', 'sunjian66', '66', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞66', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('71', 'sunjian67', '67', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞67', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('72', 'sunjian68', '68', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞68', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('73', 'sunjian69', '69', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞69', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('74', 'sunjian70', '70', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞70', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('75', 'sunjian71', '71', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞71', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('76', 'sunjian72', '72', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞72', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('77', 'sunjian73', '73', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞73', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('78', 'sunjian74', '74', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞74', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('79', 'sunjian75', '75', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞75', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('80', 'sunjian76', '76', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞76', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('81', 'sunjian77', '77', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞77', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('82', 'sunjian78', '78', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞78', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('83', 'sunjian79', '79', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞79', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('84', 'sunjian80', '80', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞80', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('85', 'sunjian81', '81', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞81', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('86', 'sunjian82', '82', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞82', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('87', 'sunjian83', '83', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞83', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('88', 'sunjian84', '84', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞84', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('89', 'sunjian85', '85', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞85', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('90', 'sunjian86', '86', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞86', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('91', 'sunjian87', '87', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞87', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('92', 'sunjian88', '88', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞88', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('93', 'sunjian89', '89', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞89', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('94', 'sunjian90', '90', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞90', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('95', 'sunjian91', '91', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞91', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('96', 'sunjian92', '92', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞92', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('97', 'sunjian93', '93', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞93', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('98', 'sunjian94', '94', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞94', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('99', 'sunjian95', '95', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞95', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('100', 'sunjian96', '96', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞96', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('101', 'sunjian97', '97', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞97', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('102', 'sunjian98', '98', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞98', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('103', 'sunjian99', '99', '男', 'zuichao@188.com', '内蒙古自治区', '中国山西洪洞99', '1', '2019-05-31 14:42:00', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('104', 'qa1', ' 2', '男', '123123@163.com', '内蒙古自治区', 'adfa是大法师打发斯蒂芬', '1', '2019-07-08 11:23:56', '2019-07-08 11:24:16', '内蒙古自治区');
INSERT INTO `person` VALUES ('105', 'asdf', 'adsf', 'asdf', 'asdf', '内蒙古自治区', 'asdfddddddddddddddd', '1', '2019-07-17 16:10:01', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('106', 'saddddddddd', 'ddddddddd', 'dddddddd', 'dddddddd', '内蒙古自治区', 'dddddddddddd', '1', '2019-07-17 16:30:12', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('107', 'qwdqd', 'asdas', 'sdas', 'ADSASD', '内蒙古自治区', 'qwe', '1', '2019-07-17 16:43:08', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('108', 'aaaa', 'asdf', 'asdf', 'asdf', '内蒙古自治区', 'qwer', '1', '2019-07-17 16:44:53', null, '内蒙古自治区');
INSERT INTO `person` VALUES ('110', 'wwwwwwww7', 'gjg', 'ghj', 'ghj', '230000', 'fghjfghj', '1', '2019-07-19 14:30:56', '2019-07-19 17:03:10', '');
INSERT INTO `person` VALUES ('111', '346题4', '3454', '345345', '345345', '450000', '345345', '1', '2019-07-19 15:24:46', '2019-07-19 15:24:46', '345345热帖地方个地方');
INSERT INTO `person` VALUES ('112', 'ty', 'tyu', 'tyu', 'tyu', '120000', 'tyu', '1', '2019-07-19 17:13:12', '2019-07-19 17:13:12', '');
INSERT INTO `person` VALUES ('113', 'fhjgfhj', 'dfghfdgh', 'dfgh', 'dfghdfgh', '110000', 'dfgh', '1', '2019-07-19 17:13:50', '2019-07-19 17:13:50', 'dgfhfh');
INSERT INTO `person` VALUES ('114', '三人同行', '水电费感受到法国', '水电费感受到法国', '水电费感受到法国', '120000', '是电饭锅水电费', '1', '2019-07-19 17:38:18', '2019-07-19 17:38:18', '');
INSERT INTO `person` VALUES ('115', 'sdf', 'sdf', 'asdf', '阿斯蒂芬', '150000', '俺的沙发', '1', '2019-07-19 17:42:25', '2019-07-19 17:42:25', '');
INSERT INTO `person` VALUES ('116', '俺的沙发', '水电费', '水电费', '阿萨德', '120000', '水电费', '1', '2019-07-19 18:12:11', '2019-07-19 18:12:11', '');
INSERT INTO `person` VALUES ('117', '阿大声道', '水电费', '阿斯蒂芬', '阿斯蒂芬', '450000', '奥德赛', '1', '2019-07-19 18:29:55', '2019-07-19 18:29:55', '俺的沙发');
INSERT INTO `person` VALUES ('118', '许昌表现出VB', '水电费水电费', '是的发个', '是的发个', '110000', '如果对方', '1', '2019-07-19 18:38:02', '2019-07-19 18:38:02', '地方');
INSERT INTO `person` VALUES ('119', 'asdfasdf', '大声道', '水电费', '阿萨德', '110000', '奥德赛', '1', '2019-07-19 18:43:41', '2019-07-19 18:43:41', '');
INSERT INTO `person` VALUES ('120', 'vvdvfdf', 'dsfgsdfgsdfg', 'sdfgsdfgdfg', 'sdfgsdfg ', '西藏自治区', 'sdfgdsf ', '1', '2019-07-19 18:59:15', '2019-07-19 18:59:15', '');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `pId` varchar(10) NOT NULL COMMENT '省ID',
  `pName` varchar(255) NOT NULL COMMENT '省名字'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '110000', '北京市');
INSERT INTO `province` VALUES ('2', '120000', '天津市');
INSERT INTO `province` VALUES ('3', '130000', '河北省');
INSERT INTO `province` VALUES ('4', '140000', '山西省');
INSERT INTO `province` VALUES ('5', '150000', '内蒙古自治区');
INSERT INTO `province` VALUES ('6', '210000', '辽宁省');
INSERT INTO `province` VALUES ('7', '220000', '吉林省');
INSERT INTO `province` VALUES ('8', '230000', '黑龙江省');
INSERT INTO `province` VALUES ('9', '310000', '上海市');
INSERT INTO `province` VALUES ('10', '320000', '江苏省');
INSERT INTO `province` VALUES ('11', '330000', '浙江省');
INSERT INTO `province` VALUES ('12', '340000', '安徽省');
INSERT INTO `province` VALUES ('13', '350000', '福建省');
INSERT INTO `province` VALUES ('14', '360000', '江西省');
INSERT INTO `province` VALUES ('15', '370000', '山东省');
INSERT INTO `province` VALUES ('16', '410000', '河南省');
INSERT INTO `province` VALUES ('17', '420000', '湖北省');
INSERT INTO `province` VALUES ('18', '430000', '湖南省');
INSERT INTO `province` VALUES ('19', '440000', '广东省');
INSERT INTO `province` VALUES ('20', '450000', '广西壮族自治区');
INSERT INTO `province` VALUES ('21', '460000', '海南省');
INSERT INTO `province` VALUES ('22', '500000', '重庆市');
INSERT INTO `province` VALUES ('23', '510000', '四川省');
INSERT INTO `province` VALUES ('24', '520000', '贵州省');
INSERT INTO `province` VALUES ('25', '530000', '云南省');
INSERT INTO `province` VALUES ('26', '540000', '西藏自治区');
INSERT INTO `province` VALUES ('27', '610000', '陕西省');
INSERT INTO `province` VALUES ('28', '620000', '甘肃省');
INSERT INTO `province` VALUES ('29', '630000', '青海省');
INSERT INTO `province` VALUES ('30', '640000', '宁夏回族自治区');
INSERT INTO `province` VALUES ('31', '650000', '新疆维吾尔自治区');
INSERT INTO `province` VALUES ('32', '710000', '台湾省');
INSERT INTO `province` VALUES ('33', '810000', '香港特别行政区');
INSERT INTO `province` VALUES ('34', '820000', '澳门特别行政区');
