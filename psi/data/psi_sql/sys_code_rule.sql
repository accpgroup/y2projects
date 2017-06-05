/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : 127.0.0.1:3306
Source Database       : psi

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-06-06 02:09:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_code_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_code_rule`;
CREATE TABLE `sys_code_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(20) DEFAULT NULL,
  `areaPrefix` varchar(20) DEFAULT NULL,
  `areaTime` varchar(20) DEFAULT NULL,
  `glideBit` int(11) DEFAULT NULL COMMENT '流水位',
  `currentCode` varchar(50) DEFAULT NULL,
  `tabName` varchar(50) DEFAULT NULL,
  `available` char(10) DEFAULT NULL COMMENT '可获得的',
  `nextseq` varchar(20) DEFAULT NULL,
  `curDate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_code_rule
-- ----------------------------
INSERT INTO `sys_code_rule` VALUES ('1', '客户资料', 'C', 'yyyyMMdd', '3', 'C-20170605-001', 'client', 'N', '003', '20170606');
