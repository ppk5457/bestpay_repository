/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50523
Source Host           : localhost:3306
Source Database       : bestpay

Target Server Type    : MYSQL
Target Server Version : 50523
File Encoding         : 65001

Date: 2016-08-25 19:57:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptno` int(11) NOT NULL,
  `dname` varchar(255) DEFAULT NULL,
  `loc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('10', 'accounting', 'new york');
INSERT INTO `dept` VALUES ('20', 'research', 'dallas');
INSERT INTO `dept` VALUES ('30', 'sales', 'chicago');
INSERT INTO `dept` VALUES ('40', 'operations', 'boston');
INSERT INTO `dept` VALUES ('50', '50abc', '50def');
INSERT INTO `dept` VALUES ('60', 'developer', 'haikou');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `empno` int(4) NOT NULL,
  `ename` varchar(10) DEFAULT NULL,
  `job` varchar(9) DEFAULT NULL,
  `mgr` int(4) DEFAULT NULL,
  `hiredate` datetime DEFAULT NULL,
  `sal` double(7,2) DEFAULT NULL,
  `comm` double(7,2) DEFAULT NULL,
  `deptno` int(2) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('102', 'errchu', 'developer', '1455', '2011-05-26 00:00:00', '5500.00', '14.00', '10');
INSERT INTO `emp` VALUES ('104', 'huyong', 'pm', '1455', '2011-05-26 00:00:00', '5500.00', '14.00', '10');
INSERT INTO `emp` VALUES ('105', 'wangjing', 'deeloper', '1455', '2011-05-26 00:00:00', '5500.00', '14.00', '10');
INSERT INTO `emp` VALUES ('7369', 'smith', 'clerk', '7902', '1980-12-17 00:00:00', '800.00', null, '20');
INSERT INTO `emp` VALUES ('7499', 'allen', 'salesman', '7698', '1981-02-20 00:00:00', '1600.00', '300.00', '30');
INSERT INTO `emp` VALUES ('7521', 'ward', 'salesman', '7698', '1981-02-22 00:00:00', '1250.00', '500.00', '30');
INSERT INTO `emp` VALUES ('7566', 'jones', 'manager', '7839', '1984-04-02 00:00:00', '2975.00', null, '20');
INSERT INTO `emp` VALUES ('7654', 'martin', 'salesman', '7698', '1981-09-28 00:00:00', '1250.00', '1400.00', '30');
INSERT INTO `emp` VALUES ('7698', 'blake', 'manager', '7839', '1981-05-01 00:00:00', '2850.00', null, '30');
INSERT INTO `emp` VALUES ('7782', 'clark', 'manager', '7839', '1981-06-09 00:00:00', '2450.00', null, '10');
INSERT INTO `emp` VALUES ('7788', 'scott', 'analyst', '7566', '1987-04-19 00:00:00', '4000.00', null, '20');
INSERT INTO `emp` VALUES ('7839', 'king', 'president', null, '1981-11-17 00:00:00', '5000.00', null, '10');
INSERT INTO `emp` VALUES ('7844', 'turner', 'salesman', '7698', '1981-09-08 00:00:00', '1500.00', '0.00', '30');
INSERT INTO `emp` VALUES ('7876', 'adams', 'clerk', '7788', '1987-05-23 00:00:00', '1100.00', null, '20');
INSERT INTO `emp` VALUES ('7900', 'james', 'clerk', '7698', '1981-12-03 00:00:00', '950.00', null, '30');
INSERT INTO `emp` VALUES ('7902', 'ford', 'analyst', '7566', '1982-01-23 00:00:00', '3000.00', null, '20');
INSERT INTO `emp` VALUES ('7934', 'miller', 'clerk', '7782', '2011-05-26 00:00:00', '1300.00', null, '10');
