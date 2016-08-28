/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : hr

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-08-26 15:36:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `COUNTRY_ID` char(2) NOT NULL,
  `COUNTRY_NAME` varchar(40) DEFAULT NULL,
  `REGION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('AR', 'Argentina', '2');
INSERT INTO `countries` VALUES ('AU', 'Australia', '3');
INSERT INTO `countries` VALUES ('BE', 'Belgium', '1');
INSERT INTO `countries` VALUES ('BR', 'Brazil', '2');
INSERT INTO `countries` VALUES ('CA', 'Canada', '2');
INSERT INTO `countries` VALUES ('CH', 'Switzerland', '1');
INSERT INTO `countries` VALUES ('CN', 'China', '3');
INSERT INTO `countries` VALUES ('DE', 'Germany', '1');
INSERT INTO `countries` VALUES ('DK', 'Denmark', '1');
INSERT INTO `countries` VALUES ('EG', 'Egypt', '4');
INSERT INTO `countries` VALUES ('FR', 'France', '1');
INSERT INTO `countries` VALUES ('HK', 'HongKong', '3');
INSERT INTO `countries` VALUES ('IL', 'Israel', '4');
INSERT INTO `countries` VALUES ('IN', 'India', '3');
INSERT INTO `countries` VALUES ('IT', 'Italy', '1');
INSERT INTO `countries` VALUES ('JP', 'Japan', '3');
INSERT INTO `countries` VALUES ('KW', 'Kuwait', '4');
INSERT INTO `countries` VALUES ('MX', 'Mexico', '2');
INSERT INTO `countries` VALUES ('NG', 'Nigeria', '4');
INSERT INTO `countries` VALUES ('NL', 'Netherlands', '1');
INSERT INTO `countries` VALUES ('SG', 'Singapore', '3');
INSERT INTO `countries` VALUES ('UK', 'United Kingdom', '1');
INSERT INTO `countries` VALUES ('US', 'United States of America', '2');
INSERT INTO `countries` VALUES ('ZM', 'Zambia', '4');
INSERT INTO `countries` VALUES ('ZW', 'Zimbabwe', '4');
INSERT INTO `countries` VALUES ('ZZ', '国家ZZ', '5');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `DEPARTMENT_ID` int(4) NOT NULL,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `MANAGER_ID` int(6) DEFAULT NULL,
  `LOCATION_ID` int(4) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('10', 'Administration', '200', '1700');
INSERT INTO `departments` VALUES ('20', 'Marketing', '201', '1800');
INSERT INTO `departments` VALUES ('30', 'Purchasing', '114', '1700');
INSERT INTO `departments` VALUES ('40', 'Human Resources', '203', '2400');
INSERT INTO `departments` VALUES ('50', 'Shipping', '121', '1500');
INSERT INTO `departments` VALUES ('60', 'IT', '103', '1400');
INSERT INTO `departments` VALUES ('70', 'Public Relations', '204', '2700');
INSERT INTO `departments` VALUES ('80', 'Sales', '145', '2500');
INSERT INTO `departments` VALUES ('90', 'Executive', '100', '1700');
INSERT INTO `departments` VALUES ('100', 'Finance', '108', '1700');
INSERT INTO `departments` VALUES ('110', 'Accounting', '205', '1700');
INSERT INTO `departments` VALUES ('120', 'Treasury', null, '1700');
INSERT INTO `departments` VALUES ('130', 'Corporate Tax', null, '1700');
INSERT INTO `departments` VALUES ('140', 'Control And Credit', null, '1700');
INSERT INTO `departments` VALUES ('150', 'Shareholder Services', null, '1700');
INSERT INTO `departments` VALUES ('160', 'Benefits', null, '1700');
INSERT INTO `departments` VALUES ('170', 'Manufacturing', null, '1700');
INSERT INTO `departments` VALUES ('180', 'Construction', null, '1700');
INSERT INTO `departments` VALUES ('190', 'Contracting', null, '1700');
INSERT INTO `departments` VALUES ('200', 'Operations', null, '1700');
INSERT INTO `departments` VALUES ('210', 'IT Support', null, '1700');
INSERT INTO `departments` VALUES ('220', 'NOC', null, '1700');
INSERT INTO `departments` VALUES ('230', 'IT Helpdesk', null, '1700');
INSERT INTO `departments` VALUES ('240', 'Government Sales', null, '1700');
INSERT INTO `departments` VALUES ('250', 'Retail Sales', null, '1700');
INSERT INTO `departments` VALUES ('260', 'Recruiting', null, '1700');
INSERT INTO `departments` VALUES ('270', 'Payroll', null, '1700');
INSERT INTO `departments` VALUES ('290', '公司290', '100', '2400');
INSERT INTO `departments` VALUES ('291', '公司291', '100', '2400');
INSERT INTO `departments` VALUES ('292', '信息科', '100', '1700');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `EMPLOYEE_ID` int(6) NOT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `HIRE_DATE` datetime NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MANAGER_ID` int(6) DEFAULT NULL,
  `DEPARTMENT_ID` int(4) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('100', 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17 12:00:00', 'AD_PRES', '24000.00', null, null, '90');
INSERT INTO `employees` VALUES ('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1989-09-21 12:00:00', 'AD_VP', '20000.00', null, '100', '90');
INSERT INTO `employees` VALUES ('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1993-01-13 12:00:00', 'AD_VP', '20000.00', null, '100', '90');
INSERT INTO `employees` VALUES ('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1990-01-03 12:00:00', 'IT_PROG', '9000.00', null, '102', '60');
INSERT INTO `employees` VALUES ('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1991-05-21 12:00:00', 'IT_PROG', '6000.00', null, '103', '60');
INSERT INTO `employees` VALUES ('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1997-06-25 12:00:00', 'IT_PROG', '4800.00', null, '103', '60');
INSERT INTO `employees` VALUES ('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1998-02-05 12:00:00', 'IT_PROG', '4800.00', null, '103', '60');
INSERT INTO `employees` VALUES ('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1999-02-07 12:00:00', 'IT_PROG', '4200.00', null, '103', '60');
INSERT INTO `employees` VALUES ('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1994-08-17 12:00:00', 'FI_MGR', '12000.00', null, '101', '100');
INSERT INTO `employees` VALUES ('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1994-08-16 12:00:00', 'FI_ACCOUNT', '9000.00', null, '108', '100');
INSERT INTO `employees` VALUES ('110', 'John', 'Chen', 'JCHEN', '515.124.4269', '1997-09-28 12:00:00', 'FI_ACCOUNT', '8200.00', null, '108', '100');
INSERT INTO `employees` VALUES ('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1997-09-30 12:00:00', 'FI_ACCOUNT', '7700.00', null, '108', '100');
INSERT INTO `employees` VALUES ('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1998-03-07 12:00:00', 'FI_ACCOUNT', '7800.00', null, '108', '100');
INSERT INTO `employees` VALUES ('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1999-12-07 12:00:00', 'FI_ACCOUNT', '6900.00', null, '108', '100');
INSERT INTO `employees` VALUES ('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1994-12-07 12:00:00', 'PU_MAN', '11000.00', null, '100', '30');
INSERT INTO `employees` VALUES ('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1995-05-18 12:00:00', 'PU_CLERK', '3100.00', null, '114', '30');
INSERT INTO `employees` VALUES ('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1997-12-24 12:00:00', 'PU_CLERK', '2900.00', null, '114', '30');
INSERT INTO `employees` VALUES ('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1997-07-24 12:00:00', 'PU_CLERK', '2800.00', null, '114', '30');
INSERT INTO `employees` VALUES ('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1998-11-15 12:00:00', 'PU_CLERK', '2600.00', null, '114', '30');
INSERT INTO `employees` VALUES ('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '1999-08-10 12:00:00', 'PU_CLERK', '2500.00', null, '114', '30');
INSERT INTO `employees` VALUES ('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '1996-07-18 12:00:00', 'ST_MAN', '8000.00', null, '100', '50');
INSERT INTO `employees` VALUES ('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '1997-04-10 12:00:00', 'ST_MAN', '8200.00', null, '100', '50');
INSERT INTO `employees` VALUES ('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '1995-05-01 12:00:00', 'ST_MAN', '7900.00', null, '100', '50');
INSERT INTO `employees` VALUES ('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '1997-10-10 12:00:00', 'ST_MAN', '6500.00', null, '100', '50');
INSERT INTO `employees` VALUES ('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1999-11-16 12:00:00', 'ST_MAN', '5800.00', null, '100', '50');
INSERT INTO `employees` VALUES ('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '1997-07-16 12:00:00', 'ST_CLERK', '3200.00', null, '120', '50');
INSERT INTO `employees` VALUES ('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '1998-09-28 12:00:00', 'ST_CLERK', '2700.00', null, '120', '50');
INSERT INTO `employees` VALUES ('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', '1999-01-14 12:00:00', 'ST_CLERK', '2400.00', null, '120', '50');
INSERT INTO `employees` VALUES ('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '2000-03-08 12:00:00', 'ST_CLERK', '2200.00', null, '120', '50');
INSERT INTO `employees` VALUES ('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '1997-08-20 12:00:00', 'ST_CLERK', '3300.00', null, '121', '50');
INSERT INTO `employees` VALUES ('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '1997-10-30 12:00:00', 'ST_CLERK', '2800.00', null, '121', '50');
INSERT INTO `employees` VALUES ('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '1997-02-16 12:00:00', 'ST_CLERK', '2500.00', null, '121', '50');
INSERT INTO `employees` VALUES ('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '1999-04-10 12:00:00', 'ST_CLERK', '2100.00', null, '121', '50');
INSERT INTO `employees` VALUES ('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '1996-06-14 12:00:00', 'ST_CLERK', '3300.00', null, '122', '50');
INSERT INTO `employees` VALUES ('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '1998-08-26 12:00:00', 'ST_CLERK', '2900.00', null, '122', '50');
INSERT INTO `employees` VALUES ('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', '1999-12-12 12:00:00', 'ST_CLERK', '2400.00', null, '122', '50');
INSERT INTO `employees` VALUES ('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '2000-02-06 12:00:00', 'ST_CLERK', '2200.00', null, '122', '50');
INSERT INTO `employees` VALUES ('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '1995-07-14 12:00:00', 'ST_CLERK', '3600.00', null, '123', '50');
INSERT INTO `employees` VALUES ('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '1997-10-26 12:00:00', 'ST_CLERK', '3200.00', null, '123', '50');
INSERT INTO `employees` VALUES ('139', 'John', 'Seo', 'JSEO', '650.121.2019', '1998-02-12 12:00:00', 'ST_CLERK', '2700.00', null, '123', '50');
INSERT INTO `employees` VALUES ('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '1998-04-06 12:00:00', 'ST_CLERK', '2500.00', null, '123', '50');
INSERT INTO `employees` VALUES ('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1995-10-17 12:00:00', 'ST_CLERK', '3500.00', null, '124', '50');
INSERT INTO `employees` VALUES ('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1997-01-29 12:00:00', 'ST_CLERK', '3100.00', null, '124', '50');
INSERT INTO `employees` VALUES ('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1998-03-15 12:00:00', 'ST_CLERK', '2600.00', null, '124', '50');
INSERT INTO `employees` VALUES ('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1998-07-09 12:00:00', 'ST_CLERK', '2500.00', null, '124', '50');
INSERT INTO `employees` VALUES ('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '1996-10-01 12:00:00', 'SA_MAN', '14000.00', '0.40', '100', '80');
INSERT INTO `employees` VALUES ('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '1997-01-05 12:00:00', 'SA_MAN', '13500.00', '0.30', '100', '80');
INSERT INTO `employees` VALUES ('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '1997-03-10 12:00:00', 'SA_MAN', '12000.00', '0.30', '100', '80');
INSERT INTO `employees` VALUES ('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '1999-10-15 12:00:00', 'SA_MAN', '11000.00', '0.30', '100', '80');
INSERT INTO `employees` VALUES ('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '2000-01-29 12:00:00', 'SA_MAN', '10500.00', '0.20', '100', '80');
INSERT INTO `employees` VALUES ('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '1997-01-30 12:00:00', 'SA_REP', '10000.00', '0.30', '145', '80');
INSERT INTO `employees` VALUES ('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '1997-03-24 12:00:00', 'SA_REP', '9500.00', '0.25', '145', '80');
INSERT INTO `employees` VALUES ('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '1997-08-20 12:00:00', 'SA_REP', '9000.00', '0.25', '145', '80');
INSERT INTO `employees` VALUES ('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '1998-03-30 12:00:00', 'SA_REP', '8000.00', '0.20', '145', '80');
INSERT INTO `employees` VALUES ('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '1998-12-09 12:00:00', 'SA_REP', '7500.00', '0.20', '145', '80');
INSERT INTO `employees` VALUES ('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '1999-11-23 12:00:00', 'SA_REP', '7000.00', '0.15', '145', '80');
INSERT INTO `employees` VALUES ('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', '1996-01-30 12:00:00', 'SA_REP', '10000.00', '0.35', '146', '80');
INSERT INTO `employees` VALUES ('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '1996-03-04 12:00:00', 'SA_REP', '9500.00', '0.35', '146', '80');
INSERT INTO `employees` VALUES ('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '1996-08-01 12:00:00', 'SA_REP', '9000.00', '0.35', '146', '80');
INSERT INTO `employees` VALUES ('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '1997-03-10 12:00:00', 'SA_REP', '8000.00', '0.30', '146', '80');
INSERT INTO `employees` VALUES ('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '1997-12-15 12:00:00', 'SA_REP', '7500.00', '0.30', '146', '80');
INSERT INTO `employees` VALUES ('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '1998-11-03 12:00:00', 'SA_REP', '7000.00', '0.25', '146', '80');
INSERT INTO `employees` VALUES ('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '1997-11-11 12:00:00', 'SA_REP', '10500.00', '0.25', '147', '80');
INSERT INTO `employees` VALUES ('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '1999-03-19 12:00:00', 'SA_REP', '9500.00', '0.15', '147', '80');
INSERT INTO `employees` VALUES ('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '2000-01-24 12:00:00', 'SA_REP', '7200.00', '0.10', '147', '80');
INSERT INTO `employees` VALUES ('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', '2000-02-23 12:00:00', 'SA_REP', '6800.00', '0.10', '147', '80');
INSERT INTO `employees` VALUES ('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '2000-03-24 12:00:00', 'SA_REP', '6400.00', '0.10', '147', '80');
INSERT INTO `employees` VALUES ('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '2000-04-21 12:00:00', 'SA_REP', '6200.00', '0.10', '147', '80');
INSERT INTO `employees` VALUES ('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '1997-03-11 12:00:00', 'SA_REP', '11500.00', '0.25', '148', '80');
INSERT INTO `employees` VALUES ('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '1998-03-23 12:00:00', 'SA_REP', '10000.00', '0.20', '148', '80');
INSERT INTO `employees` VALUES ('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '1998-01-24 12:00:00', 'SA_REP', '9600.00', '0.20', '148', '80');
INSERT INTO `employees` VALUES ('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '1999-02-23 12:00:00', 'SA_REP', '7400.00', '0.15', '148', '80');
INSERT INTO `employees` VALUES ('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '1999-03-24 12:00:00', 'SA_REP', '7300.00', '0.15', '148', '80');
INSERT INTO `employees` VALUES ('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '2000-04-21 12:00:00', 'SA_REP', '6100.00', '0.10', '148', '80');
INSERT INTO `employees` VALUES ('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1996-05-11 12:00:00', 'SA_REP', '11000.00', '0.30', '149', '80');
INSERT INTO `employees` VALUES ('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '1997-03-19 12:00:00', 'SA_REP', '8800.00', '0.25', '149', '80');
INSERT INTO `employees` VALUES ('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1998-03-24 12:00:00', 'SA_REP', '8600.00', '0.20', '149', '80');
INSERT INTO `employees` VALUES ('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '1998-04-23 12:00:00', 'SA_REP', '8000.00', '0.20', '149', '80');
INSERT INTO `employees` VALUES ('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1999-05-24 12:00:00', 'SA_REP', '7000.00', '0.15', '149', null);
INSERT INTO `employees` VALUES ('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '2000-01-04 12:00:00', 'SA_REP', '7211.00', '0.10', '149', '80');
INSERT INTO `employees` VALUES ('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '1998-01-24 12:00:00', 'SH_CLERK', '3200.00', null, '120', '50');
INSERT INTO `employees` VALUES ('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '1998-02-23 12:00:00', 'SH_CLERK', '3100.00', null, '120', '50');
INSERT INTO `employees` VALUES ('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '1999-06-21 12:00:00', 'SH_CLERK', '2500.00', null, '120', '50');
INSERT INTO `employees` VALUES ('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '2000-02-03 12:00:00', 'SH_CLERK', '2800.00', null, '120', '50');
INSERT INTO `employees` VALUES ('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '1996-01-27 12:00:00', 'SH_CLERK', '4200.00', null, '121', '50');
INSERT INTO `employees` VALUES ('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', '1997-02-20 12:00:00', 'SH_CLERK', '4100.00', null, '121', '50');
INSERT INTO `employees` VALUES ('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '1998-06-24 12:00:00', 'SH_CLERK', '3400.00', null, '121', '50');
INSERT INTO `employees` VALUES ('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '1999-02-07 12:00:00', 'SH_CLERK', '3000.00', null, '121', '50');
INSERT INTO `employees` VALUES ('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '1997-06-14 12:00:00', 'SH_CLERK', '3800.00', null, '122', '50');
INSERT INTO `employees` VALUES ('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '1997-08-13 12:00:00', 'SH_CLERK', '3600.00', null, '122', '50');
INSERT INTO `employees` VALUES ('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', '1998-07-11 12:00:00', 'SH_CLERK', '2900.00', null, '122', '50');
INSERT INTO `employees` VALUES ('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '1999-12-19 12:00:00', 'SH_CLERK', '2500.00', null, '122', '50');
INSERT INTO `employees` VALUES ('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', '1996-02-04 12:00:00', 'SH_CLERK', '4000.00', null, '123', '50');
INSERT INTO `employees` VALUES ('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '1997-03-03 12:00:00', 'SH_CLERK', '3900.00', null, '123', '50');
INSERT INTO `employees` VALUES ('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '1998-07-01 12:00:00', 'SH_CLERK', '3200.00', null, '123', '50');
INSERT INTO `employees` VALUES ('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', '1999-03-17 12:00:00', 'SH_CLERK', '2800.00', null, '123', '50');
INSERT INTO `employees` VALUES ('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '1998-04-24 12:00:00', 'SH_CLERK', '3100.00', null, '124', '50');
INSERT INTO `employees` VALUES ('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '1998-05-23 12:00:00', 'SH_CLERK', '3000.00', null, '124', '50');
INSERT INTO `employees` VALUES ('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '1999-06-21 12:00:00', 'SH_CLERK', '2600.00', null, '124', '50');
INSERT INTO `employees` VALUES ('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '2000-01-13 12:00:00', 'SH_CLERK', '2600.00', null, '124', '50');
INSERT INTO `employees` VALUES ('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-17 12:00:00', 'AD_ASST', '4400.00', null, '101', '10');
INSERT INTO `employees` VALUES ('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1996-02-17 12:00:00', 'MK_MAN', '13000.00', null, '100', '20');
INSERT INTO `employees` VALUES ('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', '1997-08-17 12:00:00', 'MK_REP', '6000.00', null, '201', '20');
INSERT INTO `employees` VALUES ('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '1994-06-07 12:00:00', 'HR_REP', '6500.00', null, '101', '40');
INSERT INTO `employees` VALUES ('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', '1994-06-07 12:00:00', 'PR_REP', '10000.00', null, '101', '70');
INSERT INTO `employees` VALUES ('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1994-06-07 12:00:00', 'AC_MGR', '12000.00', null, '101', '110');
INSERT INTO `employees` VALUES ('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1994-06-07 12:00:00', 'AC_ACCOUNT', '8300.00', null, '205', '110');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `JOB_ID` varchar(10) NOT NULL,
  `JOB_TITLE` varchar(35) NOT NULL,
  `MIN_SALARY` int(6) DEFAULT NULL,
  `MAX_SALARY` int(6) DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jobs
-- ----------------------------
INSERT INTO `jobs` VALUES ('AC_ACCOUNT', 'Public Accountant', '4200', '9000');
INSERT INTO `jobs` VALUES ('AC_MGR', 'Accounting Manager', '8200', '16000');
INSERT INTO `jobs` VALUES ('AD_ASST', 'Administration Assistant', '3000', '6000');
INSERT INTO `jobs` VALUES ('AD_PRES', 'President', '20000', '40000');
INSERT INTO `jobs` VALUES ('AD_VP', 'Administration Vice President', '15000', '30000');
INSERT INTO `jobs` VALUES ('FI_ACCOUNT', 'Accountant', '4200', '9000');
INSERT INTO `jobs` VALUES ('FI_MGR', 'Finance Manager', '8200', '16000');
INSERT INTO `jobs` VALUES ('HR_REP', 'Human Resources Representative', '4000', '9000');
INSERT INTO `jobs` VALUES ('IT_PROG', 'Programmer', '4000', '10000');
INSERT INTO `jobs` VALUES ('MK_MAN', 'Marketing Manager', '9000', '15000');
INSERT INTO `jobs` VALUES ('MK_REP', 'Marketing Representative', '4000', '9000');
INSERT INTO `jobs` VALUES ('PR_REP', 'Public Relations Representative', '4500', '10500');
INSERT INTO `jobs` VALUES ('PU_CLERK', 'Purchasing Clerk', '2500', '5500');
INSERT INTO `jobs` VALUES ('PU_MAN', 'Purchasing Manager', '8000', '15000');
INSERT INTO `jobs` VALUES ('SA_MAN', 'Sales Manager', '10000', '20000');
INSERT INTO `jobs` VALUES ('SA_REP', 'Sales Representative', '6000', '12000');
INSERT INTO `jobs` VALUES ('SH_CLERK', 'Shipping Clerk', '2500', '5500');
INSERT INTO `jobs` VALUES ('ST_CLERK', 'Stock Clerk', '2000', '5000');
INSERT INTO `jobs` VALUES ('ST_MAN', 'Stock Manager', '5500', '8500');

-- ----------------------------
-- Table structure for job_history
-- ----------------------------
DROP TABLE IF EXISTS `job_history`;
CREATE TABLE `job_history` (
  `EMPLOYEE_ID` int(6) NOT NULL,
  `START_DATE` datetime NOT NULL,
  `END_DATE` datetime NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `DEPARTMENT_ID` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_history
-- ----------------------------
INSERT INTO `job_history` VALUES ('200', '1999-01-01 12:00:00', '1999-01-05 12:00:00', 'AD_VP', '10');
INSERT INTO `job_history` VALUES ('102', '1993-01-13 12:00:00', '1998-07-24 12:00:00', 'IT_PROG', '60');
INSERT INTO `job_history` VALUES ('101', '1989-09-21 12:00:00', '1993-10-27 12:00:00', 'AC_ACCOUNT', '110');
INSERT INTO `job_history` VALUES ('101', '1993-10-28 12:00:00', '1997-03-15 12:00:00', 'AC_MGR', '110');
INSERT INTO `job_history` VALUES ('201', '1996-02-17 12:00:00', '1999-12-19 12:00:00', 'MK_REP', '20');
INSERT INTO `job_history` VALUES ('114', '1998-03-24 12:00:00', '1999-12-31 12:00:00', 'ST_CLERK', '50');
INSERT INTO `job_history` VALUES ('122', '1999-01-01 12:00:00', '1999-12-31 12:00:00', 'ST_CLERK', '50');
INSERT INTO `job_history` VALUES ('200', '1987-09-17 12:00:00', '1993-06-17 12:00:00', 'AD_ASST', '90');
INSERT INTO `job_history` VALUES ('176', '1998-03-24 12:00:00', '1998-12-31 12:00:00', 'SA_REP', '80');
INSERT INTO `job_history` VALUES ('176', '1999-01-01 12:00:00', '1999-12-31 12:00:00', 'SA_MAN', '80');
INSERT INTO `job_history` VALUES ('200', '1994-07-01 12:00:00', '1998-12-31 12:00:00', 'AC_ACCOUNT', '90');
INSERT INTO `job_history` VALUES ('201', '2010-12-02 12:00:00', '2011-04-21 12:00:00', 'SA_MAN', '80');

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `LOCATION_ID` int(4) NOT NULL,
  `STREET_ADDRESS` varchar(40) DEFAULT NULL,
  `POSTAL_CODE` varchar(12) DEFAULT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE_PROVINCE` varchar(25) DEFAULT NULL,
  `COUNTRY_ID` char(2) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of locations
-- ----------------------------
INSERT INTO `locations` VALUES ('1000', '1297 Via Cola di Rie', '00989', 'Roma', null, 'IT');
INSERT INTO `locations` VALUES ('1100', '93091 Calle della Testa', '10934', 'Venice', null, 'IT');
INSERT INTO `locations` VALUES ('1200', '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP');
INSERT INTO `locations` VALUES ('1300', '9450 Kamiya-cho', '6823', 'Hiroshima', null, 'JP');
INSERT INTO `locations` VALUES ('1400', '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US');
INSERT INTO `locations` VALUES ('1500', '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US');
INSERT INTO `locations` VALUES ('1600', '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US');
INSERT INTO `locations` VALUES ('1700', '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US');
INSERT INTO `locations` VALUES ('1800', '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA');
INSERT INTO `locations` VALUES ('1900', '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA');
INSERT INTO `locations` VALUES ('2000', '40-5-12 Laogianggen', '190518', 'Beijing', null, 'CN');
INSERT INTO `locations` VALUES ('2100', '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN');
INSERT INTO `locations` VALUES ('2200', '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU');
INSERT INTO `locations` VALUES ('2300', '198 Clementi North', '540198', 'Singapore', null, 'SG');
INSERT INTO `locations` VALUES ('2400', '8204 Arthur St', null, 'London', null, 'UK');
INSERT INTO `locations` VALUES ('2500', 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK');
INSERT INTO `locations` VALUES ('2600', '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK');
INSERT INTO `locations` VALUES ('2700', 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE');
INSERT INTO `locations` VALUES ('2800', 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR');
INSERT INTO `locations` VALUES ('2900', '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH');
INSERT INTO `locations` VALUES ('3000', 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH');
INSERT INTO `locations` VALUES ('3100', 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL');
INSERT INTO `locations` VALUES ('3200', 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX');

-- ----------------------------
-- Table structure for regions
-- ----------------------------
DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions` (
  `REGION_ID` int(11) NOT NULL,
  `REGION_NAME` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of regions
-- ----------------------------
INSERT INTO `regions` VALUES ('1', 'Europe');
INSERT INTO `regions` VALUES ('2', 'Americas');
INSERT INTO `regions` VALUES ('3', 'Asia');
INSERT INTO `regions` VALUES ('4', 'Middle East and Africa');
INSERT INTO `regions` VALUES ('5', '地区5');
