/*
Navicat MySQL Data Transfer

Source Server         : zzzzzzzzz本机root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : hunter

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-24 15:11:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hunter_access_record
-- ----------------------------
DROP TABLE IF EXISTS `hunter_access_record`;
CREATE TABLE `hunter_access_record` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `ACCESS_TYPE` varchar(30) NOT NULL,
  `ACCESS_TIME` datetime NOT NULL,
  `ACCESS_IP` varchar(45) NOT NULL,
  PRIMARY KEY (`RECORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_access_record
-- ----------------------------
INSERT INTO `hunter_access_record` VALUES ('1', '1001', 'admin', 'login', '2018-04-19 16:18:43', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('2', '1001', 'admin', 'login', '2018-04-19 16:20:52', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('3', '1001', 'admin', 'login', '2018-04-19 16:31:14', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('4', '1001', 'admin', 'login', '2018-04-19 16:36:29', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('5', '1001', 'admin', 'login', '2018-05-04 22:15:41', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('6', '1001', 'admin', 'login', '2018-05-04 22:19:57', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('7', '1001', 'admin', 'login', '2018-05-04 22:23:08', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('8', '1001', 'admin', 'logout', '2018-05-04 22:40:13', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('9', '1020', '邹宏林', 'login', '2018-05-04 22:40:31', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('10', '1020', '邹宏林', 'logout', '2018-05-04 22:41:17', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('11', '1001', 'admin', 'login', '2018-05-04 22:41:29', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('12', '1001', 'admin', 'logout', '2018-05-04 22:56:50', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('13', '1020', '邹宏林', 'login', '2018-05-04 22:57:04', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('14', '1020', '邹宏林', 'logout', '2018-05-04 22:57:12', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('15', '1001', 'admin', 'login', '2018-05-04 22:57:29', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('16', '1001', 'admin', 'logout', '2018-05-04 23:13:08', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('17', '1001', 'admin', 'login', '2018-05-04 23:14:16', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('18', '1001', 'admin', 'login', '2018-05-04 23:35:20', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('19', '1001', 'admin', 'logout', '2018-05-04 23:35:31', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('20', '1001', 'admin', 'login', '2018-05-04 23:35:37', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('21', '1001', 'admin', 'login', '2018-05-12 13:43:34', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('22', '1001', 'admin', 'login', '2018-05-12 13:56:02', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('23', '1001', 'admin', 'logout', '2018-05-12 15:46:01', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('24', '1001', 'admin', 'login', '2018-05-12 15:46:12', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('25', '1001', 'admin', 'login', '2018-05-12 16:21:19', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('26', '1001', 'admin', 'login', '2018-05-19 20:18:54', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('27', '1001', 'admin', 'logout', '2018-05-19 20:35:52', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('28', '1001', 'admin', 'login', '2018-05-19 20:36:11', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('29', '1001', 'admin', 'logout', '2018-05-19 20:41:38', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('30', '1001', 'admin', 'login', '2018-05-19 20:41:44', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('31', '1001', 'admin', 'login', '2018-05-19 20:42:59', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('32', '1001', 'admin', 'login', '2018-05-19 20:43:57', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('33', '1001', 'admin', 'login', '2018-05-19 21:36:50', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('34', '1001', 'admin', 'login', '2018-05-19 21:40:34', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('35', '1001', 'admin', 'login', '2018-05-19 21:45:53', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('36', '1001', 'admin', 'login', '2018-05-19 22:03:28', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('37', '1001', 'admin', 'login', '2018-05-19 22:05:52', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('38', '1001', 'admin', 'login', '2018-05-19 22:10:51', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('39', '1001', 'admin', 'login', '2018-05-19 22:16:10', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('40', '1001', 'admin', 'login', '2018-05-19 22:23:54', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('41', '1001', 'admin', 'login', '2018-05-19 22:28:29', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('42', '1001', 'admin', 'login', '2018-05-19 22:31:48', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('43', '1001', 'admin', 'login', '2018-05-23 12:38:39', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('44', '1001', 'admin', 'login', '2018-06-02 21:25:36', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('45', '1001', 'admin', 'login', '2018-06-02 21:27:26', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('46', '1001', 'admin', 'login', '2018-06-02 21:37:53', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('47', '1001', 'admin', 'login', '2018-06-02 22:25:14', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('48', '1001', 'admin', 'login', '2018-06-02 22:31:31', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('49', '1001', 'admin', 'login', '2018-06-02 22:46:55', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('50', '1001', 'admin', 'login', '2018-06-02 23:06:05', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('51', '1001', 'admin', 'login', '2018-06-19 20:29:05', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('52', '1001', 'admin', 'login', '2018-06-19 21:40:46', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('53', '1001', 'admin', 'logout', '2018-06-19 21:57:38', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('54', '1001', 'admin', 'login', '2018-06-19 21:57:46', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('55', '1001', 'admin', 'login', '2018-06-19 22:19:50', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('56', '1001', 'admin', 'login', '2018-06-19 22:21:23', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('57', '1001', 'admin', 'login', '2018-06-21 21:20:28', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('58', '1001', 'admin', 'login', '2018-06-21 21:59:42', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('59', '1001', 'admin', 'login', '2018-06-21 22:05:11', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('60', '1001', 'admin', 'login', '2018-06-21 22:14:04', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('61', '1001', 'admin', 'login', '2018-06-21 22:20:01', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('62', '1001', 'admin', 'login', '2018-06-23 10:02:55', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('63', '1001', 'admin', 'login', '2018-06-23 11:15:03', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('64', '1001', 'admin', 'logout', '2018-06-23 11:15:07', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('65', '1001', 'admin', 'login', '2018-06-23 11:21:18', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('66', '1001', 'admin', 'login', '2018-06-23 14:52:11', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('67', '1001', 'admin', 'login', '2018-06-23 14:57:23', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('68', '1001', 'admin', 'login', '2018-06-23 15:14:16', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('69', '1001', 'admin', 'logout', '2018-06-23 16:14:10', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('70', '1001', 'admin', 'login', '2018-06-23 16:44:19', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('71', '1001', 'admin', 'login', '2018-06-23 17:14:29', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('72', '1001', 'admin', 'login', '2018-06-23 17:21:04', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('73', '1001', 'admin', 'login', '2018-06-23 17:32:21', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('74', '1001', 'admin', 'login', '2018-06-23 17:41:43', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('75', '1001', 'admin', 'login', '2018-06-23 17:44:05', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('76', '1001', 'admin', 'login', '2018-06-23 17:49:30', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('77', '1001', 'admin', 'login', '2018-06-23 17:52:19', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('78', '1001', 'admin', 'login', '2018-06-23 17:54:42', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('79', '1001', 'admin', 'login', '2018-06-23 18:22:18', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('80', '1001', 'admin', 'login', '2018-06-23 19:07:53', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('81', '1001', 'admin', 'login', '2018-06-23 19:43:19', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('82', '1001', 'admin', 'login', '2018-06-23 20:03:38', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('83', '1001', 'admin', 'login', '2018-06-23 20:14:27', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('84', '1001', 'admin', 'login', '2018-06-23 20:16:04', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('85', '1001', 'admin', 'logout', '2018-06-23 20:20:50', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('86', '1022', '无名氏1022', 'login', '2018-06-23 20:21:05', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('87', '1022', '无名氏1022', 'logout', '2018-06-23 20:22:41', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('88', '1001', 'admin', 'login', '2018-06-23 20:22:48', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('89', '1001', 'admin', 'login', '2018-06-23 22:07:53', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('90', '1001', 'admin', 'login', '2018-06-23 22:49:44', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('91', '1001', 'admin', 'login', '2018-06-24 08:49:15', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('92', '1001', 'admin', 'login', '2018-06-24 08:52:26', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('93', '1001', 'admin', 'login', '2018-06-24 08:59:02', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('94', '1001', 'admin', 'login', '2018-06-24 09:22:50', '0:0:0:0:0:0:0:1');
INSERT INTO `hunter_access_record` VALUES ('95', '1001', 'admin', 'login', '2018-06-24 10:10:22', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for hunter_action
-- ----------------------------
DROP TABLE IF EXISTS `hunter_action`;
CREATE TABLE `hunter_action` (
  `ACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTION_NAME` varchar(30) NOT NULL,
  `ACTION_DESC` varchar(30) DEFAULT NULL,
  `ACTION_PARAM` varchar(50) NOT NULL,
  PRIMARY KEY (`ACTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_action
-- ----------------------------
INSERT INTO `hunter_action` VALUES ('1', 'addSupplier', null, '/supplierManage/addSupplier');
INSERT INTO `hunter_action` VALUES ('2', 'deleteSupplier', null, '/supplierManage/deleteSupplier');
INSERT INTO `hunter_action` VALUES ('3', 'updateSupplier', null, '/supplierManage/updateSupplier');
INSERT INTO `hunter_action` VALUES ('4', 'selectSupplier', null, '/supplierManage/getSupplierList');
INSERT INTO `hunter_action` VALUES ('5', 'getSupplierInfo', null, '/supplierManage/getSupplierInfo');
INSERT INTO `hunter_action` VALUES ('6', 'importSupplier', null, '/supplierManage/importSupplier');
INSERT INTO `hunter_action` VALUES ('7', 'exportSupplier', null, '/supplierManage/exportSupplier');
INSERT INTO `hunter_action` VALUES ('8', 'selectCustomer', null, '/customerManage/getCustomerList');
INSERT INTO `hunter_action` VALUES ('9', 'addCustomer', null, '/customerManage/addCustomer');
INSERT INTO `hunter_action` VALUES ('10', 'getCustomerInfo', null, '/customerManage/getCustomerInfo');
INSERT INTO `hunter_action` VALUES ('11', 'updateCustomer', null, '/customerManage/updateCustomer');
INSERT INTO `hunter_action` VALUES ('12', 'deleteCustomer', null, '/customerManage/deleteCustomer');
INSERT INTO `hunter_action` VALUES ('13', 'importCustomer', null, '/customerManage/importCustomer');
INSERT INTO `hunter_action` VALUES ('14', 'exportCustomer', null, '/customerManage/exportCustomer');
INSERT INTO `hunter_action` VALUES ('15', 'selectGoods', null, '/goodsManage/getGoodsList');
INSERT INTO `hunter_action` VALUES ('16', 'addGoods', null, '/goodsManage/addGoods');
INSERT INTO `hunter_action` VALUES ('17', 'getGoodsInfo', null, '/goodsManage/getGoodsInfo');
INSERT INTO `hunter_action` VALUES ('18', 'updateGoods', null, '/goodsManage/updateGoods');
INSERT INTO `hunter_action` VALUES ('19', 'deleteGoods', null, '/goodsManage/deleteGoods');
INSERT INTO `hunter_action` VALUES ('20', 'importGoods', null, '/goodsManage/importGoods');
INSERT INTO `hunter_action` VALUES ('21', 'exportGoods', null, '/goodsManage/exportGoods');
INSERT INTO `hunter_action` VALUES ('22', 'selectRepository', null, '/repositoryManage/getRepositoryList');
INSERT INTO `hunter_action` VALUES ('23', 'addRepository', null, '/repositoryManage/addRepository');
INSERT INTO `hunter_action` VALUES ('24', 'getRepositoryInfo', null, '/repositoryManage/getRepository');
INSERT INTO `hunter_action` VALUES ('25', 'updateRepository', null, '/repositoryManage/updateRepository');
INSERT INTO `hunter_action` VALUES ('26', 'deleteRepository', null, '/repositoryManage/deleteRepository');
INSERT INTO `hunter_action` VALUES ('27', 'importRepository', null, '/repositoryManage/importRepository');
INSERT INTO `hunter_action` VALUES ('28', 'exportRepository', null, '/repositoryManage/exportRepository');
INSERT INTO `hunter_action` VALUES ('29', 'selectRepositoryAdmin', null, '/repositoryAdminManage/getRepositoryAdminList');
INSERT INTO `hunter_action` VALUES ('30', 'addRepositoryAdmin', null, '/repositoryAdminManage/addRepositoryAdmin');
INSERT INTO `hunter_action` VALUES ('31', 'getRepositoryAdminInfo', null, '/repositoryAdminManage/getRepositoryAdminInfo');
INSERT INTO `hunter_action` VALUES ('32', 'updateRepositoryAdmin', null, '/repositoryAdminManage/updateRepositoryAdmin');
INSERT INTO `hunter_action` VALUES ('33', 'deleteRepositoryAdmin', null, '/repositoryAdminManage/deleteRepositoryAdmin');
INSERT INTO `hunter_action` VALUES ('34', 'importRepositoryAd,om', null, '/repositoryAdminManage/importRepositoryAdmin');
INSERT INTO `hunter_action` VALUES ('35', 'exportRepository', null, '/repositoryAdminManage/exportRepositoryAdmin');
INSERT INTO `hunter_action` VALUES ('36', 'getUnassignRepository', null, '/repositoryManage/getUnassignRepository');
INSERT INTO `hunter_action` VALUES ('37', 'getStorageListWithRepository', null, '/storageManage/getStorageListWithRepository');
INSERT INTO `hunter_action` VALUES ('38', 'getStorageList', null, '/storageManage/getStorageList');
INSERT INTO `hunter_action` VALUES ('39', 'addStorageRecord', null, '/storageManage/addStorageRecord');
INSERT INTO `hunter_action` VALUES ('40', 'updateStorageRecord', null, '/storageManage/updateStorageRecord');
INSERT INTO `hunter_action` VALUES ('41', 'deleteStorageRecord', null, '/storageManage/deleteStorageRecord');
INSERT INTO `hunter_action` VALUES ('42', 'importStorageRecord', null, '/storageManage/importStorageRecord');
INSERT INTO `hunter_action` VALUES ('43', 'exportStorageRecord', null, '/storageManage/exportStorageRecord');
INSERT INTO `hunter_action` VALUES ('44', ' stockIn', '货物进库操作', '/stockRecordManage/stockIn');
INSERT INTO `hunter_action` VALUES ('45', 'stockOut', '货物出库操作', '/stockRecordManage/stockOut');
INSERT INTO `hunter_action` VALUES ('46', 'searchStockRecord', '查询货物出入库记录', '/stockRecordManage/searchStockRecord');
INSERT INTO `hunter_action` VALUES ('47', 'getAccessRecords', '查询登入登出记录', '/systemLog/getAccessRecords');
INSERT INTO `hunter_action` VALUES ('48', 'selectUserOperationRecords', '查村用户操作记录', '/systemLog/selectUserOperationRecords');

-- ----------------------------
-- Table structure for hunter_customer
-- ----------------------------
DROP TABLE IF EXISTS `hunter_customer`;
CREATE TABLE `hunter_customer` (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_NAME` varchar(30) NOT NULL,
  `CUSTOMER_PERSON` varchar(10) NOT NULL,
  `CUSTOMER_TEL` varchar(20) NOT NULL,
  `CUSTOMER_EMAIL` varchar(20) NOT NULL,
  `CUSTOMER_ADDRESS` varchar(30) NOT NULL,
  `CUSTOMER_INDUSTRY` varchar(255) DEFAULT NULL,
  `CUSTOMER_ENTERPRISESCALE` varchar(255) DEFAULT NULL,
  `CUSTOMER_COMMUNICATER` varchar(255) DEFAULT NULL,
  `CUSTOMER_COMMUNICATETIME` varchar(255) DEFAULT NULL,
  `CUSTOMER_COMMUNICATERESULTS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1230 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_customer
-- ----------------------------
INSERT INTO `hunter_customer` VALUES ('1214', '醴陵荣旗瓷业有限公司', '陈娟', '17716786888', '23369888@136.com', '中国 湖南 醴陵市 嘉树乡玉茶村柏树组', null, null, null, null, null);
INSERT INTO `hunter_customer` VALUES ('1215', '深圳市松林达电子有限公司', '刘明', '85263335-820', '85264958@126.com', '中国 广东 深圳市宝安区 深圳市宝安区福永社区桥头村桥塘路育', null, null, null, null, null);
INSERT INTO `hunter_customer` VALUES ('1216', '郑州绿之源饮品有限公司 ', '赵志敬', '87094196', '87092165@qq.com', '中国 河南 郑州市 郑州市嘉亿东方大厦609', null, null, null, null, null);
INSERT INTO `hunter_customer` VALUES ('1229', '123', '1', '123', '123@qq.com', '123', '123', '123', '123', '123', '123');

-- ----------------------------
-- Table structure for hunter_goods
-- ----------------------------
DROP TABLE IF EXISTS `hunter_goods`;
CREATE TABLE `hunter_goods` (
  `GOOD_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '职位id',
  `GOOD_NAME` varchar(30) NOT NULL COMMENT '职位名称',
  `GOOD_RYPE` varchar(20) NOT NULL COMMENT '学历',
  `GOOD_SIZE` int(20) NOT NULL COMMENT '招收人数',
  `GOOD_VALUE` varchar(1000) NOT NULL COMMENT '职位要求',
  `GOOD_WORK` varchar(10) DEFAULT NULL,
  `GOOD_CUSTOMERID` int(11) DEFAULT NULL,
  PRIMARY KEY (`GOOD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_goods
-- ----------------------------
INSERT INTO `hunter_goods` VALUES ('114', '高级工程师', '博士', '10', '吃苦耐劳', '10年以上', '1215');

-- ----------------------------
-- Table structure for hunter_operation_record
-- ----------------------------
DROP TABLE IF EXISTS `hunter_operation_record`;
CREATE TABLE `hunter_operation_record` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `OPERATION_NAME` varchar(30) NOT NULL,
  `OPERATION_TIME` datetime NOT NULL,
  `OPERATION_RESULT` varchar(15) NOT NULL,
  PRIMARY KEY (`RECORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_operation_record
-- ----------------------------

-- ----------------------------
-- Table structure for hunter_record_in
-- ----------------------------
DROP TABLE IF EXISTS `hunter_record_in`;
CREATE TABLE `hunter_record_in` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_SUPPLIERID` int(11) NOT NULL,
  `RECORD_GOODID` int(11) NOT NULL,
  `RECORD_NUMBER` int(11) NOT NULL,
  `RECORD_TIME` datetime NOT NULL,
  `RECORD_PERSON` varchar(10) NOT NULL,
  `RECORD_REPOSITORYID` int(11) NOT NULL,
  PRIMARY KEY (`RECORD_ID`),
  KEY `RECORD_SUPPLIERID` (`RECORD_SUPPLIERID`),
  KEY `RECORD_GOODID` (`RECORD_GOODID`),
  KEY `RECORD_REPOSITORYID` (`RECORD_REPOSITORYID`),
  CONSTRAINT `hunter_record_in_ibfk_1` FOREIGN KEY (`RECORD_SUPPLIERID`) REFERENCES `hunter_supplier` (`SUPPLIER_ID`),
  CONSTRAINT `hunter_record_in_ibfk_3` FOREIGN KEY (`RECORD_REPOSITORYID`) REFERENCES `hunter_respository` (`REPO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_record_in
-- ----------------------------
INSERT INTO `hunter_record_in` VALUES ('15', '1015', '105', '1000', '2016-12-31 00:00:00', 'admin', '1004');
INSERT INTO `hunter_record_in` VALUES ('16', '1015', '105', '200', '2017-01-02 00:00:00', 'admin', '1004');

-- ----------------------------
-- Table structure for hunter_record_out
-- ----------------------------
DROP TABLE IF EXISTS `hunter_record_out`;
CREATE TABLE `hunter_record_out` (
  `RECORD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_CUSTOMERID` int(11) NOT NULL,
  `RECORD_GOODID` int(11) NOT NULL,
  `RECORD_NUMBER` int(11) NOT NULL,
  `RECORD_TIME` datetime NOT NULL,
  `RECORD_PERSON` varchar(10) NOT NULL,
  `RECORD_REPOSITORYID` int(11) NOT NULL,
  PRIMARY KEY (`RECORD_ID`),
  KEY `RECORD_CUSTOMERID` (`RECORD_CUSTOMERID`),
  KEY `RECORD_GOODID` (`RECORD_GOODID`),
  KEY `RECORD_REPOSITORYID` (`RECORD_REPOSITORYID`),
  CONSTRAINT `hunter_record_out_ibfk_1` FOREIGN KEY (`RECORD_CUSTOMERID`) REFERENCES `hunter_customer` (`CUSTOMER_ID`),
  CONSTRAINT `hunter_record_out_ibfk_3` FOREIGN KEY (`RECORD_REPOSITORYID`) REFERENCES `hunter_respository` (`REPO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_record_out
-- ----------------------------
INSERT INTO `hunter_record_out` VALUES ('7', '1214', '104', '750', '2016-12-31 00:00:00', 'admin', '1003');

-- ----------------------------
-- Table structure for hunter_record_storage
-- ----------------------------
DROP TABLE IF EXISTS `hunter_record_storage`;
CREATE TABLE `hunter_record_storage` (
  `RECORD_GOODID` int(11) NOT NULL AUTO_INCREMENT,
  `RECORD_REPOSITORY` int(11) NOT NULL,
  `RECORD_NUMBER` int(11) NOT NULL,
  PRIMARY KEY (`RECORD_GOODID`,`RECORD_REPOSITORY`),
  KEY `RECORD_REPOSITORY` (`RECORD_REPOSITORY`),
  CONSTRAINT `hunter_record_storage_ibfk_2` FOREIGN KEY (`RECORD_REPOSITORY`) REFERENCES `hunter_respository` (`REPO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_record_storage
-- ----------------------------
INSERT INTO `hunter_record_storage` VALUES ('103', '1005', '10000');
INSERT INTO `hunter_record_storage` VALUES ('104', '1003', '1750');
INSERT INTO `hunter_record_storage` VALUES ('105', '1004', '2000');

-- ----------------------------
-- Table structure for hunter_repo_admin
-- ----------------------------
DROP TABLE IF EXISTS `hunter_repo_admin`;
CREATE TABLE `hunter_repo_admin` (
  `REPO_ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPO_ADMIN_NAME` varchar(10) NOT NULL DEFAULT '',
  `REPO_ADMIN_SEX` varchar(10) NOT NULL DEFAULT '',
  `REPO_ADMIN_TEL` varchar(20) NOT NULL DEFAULT '',
  `REPO_ADMIN_ADDRESS` varchar(30) NOT NULL DEFAULT '',
  `REPO_ADMIN_BIRTH` datetime NOT NULL,
  `REPO_ADMIN_REPOID` int(11) DEFAULT NULL,
  PRIMARY KEY (`REPO_ADMIN_ID`),
  KEY `REPO_ADMIN_REPOID` (`REPO_ADMIN_REPOID`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_repo_admin
-- ----------------------------
INSERT INTO `hunter_repo_admin` VALUES ('1019', '', '', '', '', '2016-12-07 00:00:00', '1016');
INSERT INTO `hunter_repo_admin` VALUES ('1020', '', '', '', '', '2018-06-23 00:00:00', '1015');
INSERT INTO `hunter_repo_admin` VALUES ('1021', '1231', '男', '123', '123', '1899-12-24 00:00:00', '1018');
INSERT INTO `hunter_repo_admin` VALUES ('1022', '', '', '', '', '2018-06-23 00:00:00', '1017');
INSERT INTO `hunter_repo_admin` VALUES ('1023', '', '', '', '', '2018-06-23 00:00:00', null);

-- ----------------------------
-- Table structure for hunter_respository
-- ----------------------------
DROP TABLE IF EXISTS `hunter_respository`;
CREATE TABLE `hunter_respository` (
  `REPO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPO_ADDRESS` varchar(30) NOT NULL,
  `REPO_STATUS` varchar(20) NOT NULL,
  `REPO_AREA` varchar(20) NOT NULL,
  `REPO_DESC` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`REPO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_respository
-- ----------------------------
INSERT INTO `hunter_respository` VALUES ('1003', '北京顺义南彩工业园区彩祥西路9号', '可用', '11000㎡', '提供服务完整');
INSERT INTO `hunter_respository` VALUES ('1004', '广州白云石井石潭路大基围工业区', '可用', '1000㎡', '物流极为便利');
INSERT INTO `hunter_respository` VALUES ('1005', ' 香港北区文锦渡路（红桥新村）', '可用', '5000.00㎡', null);

-- ----------------------------
-- Table structure for hunter_roles
-- ----------------------------
DROP TABLE IF EXISTS `hunter_roles`;
CREATE TABLE `hunter_roles` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(20) NOT NULL,
  `ROLE_DESC` varchar(30) DEFAULT NULL,
  `ROLE_URL_PREFIX` varchar(20) NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_roles
-- ----------------------------
INSERT INTO `hunter_roles` VALUES ('1', 'systemAdmin', null, 'systemAdmin');
INSERT INTO `hunter_roles` VALUES ('2', 'commonsAdmin', null, 'commonsAdmin');

-- ----------------------------
-- Table structure for hunter_role_action
-- ----------------------------
DROP TABLE IF EXISTS `hunter_role_action`;
CREATE TABLE `hunter_role_action` (
  `ACTION_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ACTION_ID`,`ROLE_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  CONSTRAINT `hunter_role_action_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `hunter_roles` (`ROLE_ID`),
  CONSTRAINT `hunter_role_action_ibfk_2` FOREIGN KEY (`ACTION_ID`) REFERENCES `hunter_action` (`ACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_role_action
-- ----------------------------
INSERT INTO `hunter_role_action` VALUES ('1', '1');
INSERT INTO `hunter_role_action` VALUES ('2', '1');
INSERT INTO `hunter_role_action` VALUES ('3', '1');
INSERT INTO `hunter_role_action` VALUES ('4', '1');
INSERT INTO `hunter_role_action` VALUES ('5', '1');
INSERT INTO `hunter_role_action` VALUES ('6', '1');
INSERT INTO `hunter_role_action` VALUES ('7', '1');
INSERT INTO `hunter_role_action` VALUES ('8', '1');
INSERT INTO `hunter_role_action` VALUES ('9', '1');
INSERT INTO `hunter_role_action` VALUES ('10', '1');
INSERT INTO `hunter_role_action` VALUES ('11', '1');
INSERT INTO `hunter_role_action` VALUES ('12', '1');
INSERT INTO `hunter_role_action` VALUES ('13', '1');
INSERT INTO `hunter_role_action` VALUES ('14', '1');
INSERT INTO `hunter_role_action` VALUES ('15', '1');
INSERT INTO `hunter_role_action` VALUES ('16', '1');
INSERT INTO `hunter_role_action` VALUES ('17', '1');
INSERT INTO `hunter_role_action` VALUES ('18', '1');
INSERT INTO `hunter_role_action` VALUES ('19', '1');
INSERT INTO `hunter_role_action` VALUES ('20', '1');
INSERT INTO `hunter_role_action` VALUES ('21', '1');
INSERT INTO `hunter_role_action` VALUES ('22', '1');
INSERT INTO `hunter_role_action` VALUES ('23', '1');
INSERT INTO `hunter_role_action` VALUES ('24', '1');
INSERT INTO `hunter_role_action` VALUES ('25', '1');
INSERT INTO `hunter_role_action` VALUES ('26', '1');
INSERT INTO `hunter_role_action` VALUES ('27', '1');
INSERT INTO `hunter_role_action` VALUES ('28', '1');
INSERT INTO `hunter_role_action` VALUES ('29', '1');
INSERT INTO `hunter_role_action` VALUES ('30', '1');
INSERT INTO `hunter_role_action` VALUES ('31', '1');
INSERT INTO `hunter_role_action` VALUES ('32', '1');
INSERT INTO `hunter_role_action` VALUES ('33', '1');
INSERT INTO `hunter_role_action` VALUES ('34', '1');
INSERT INTO `hunter_role_action` VALUES ('35', '1');
INSERT INTO `hunter_role_action` VALUES ('36', '1');
INSERT INTO `hunter_role_action` VALUES ('37', '1');
INSERT INTO `hunter_role_action` VALUES ('39', '1');
INSERT INTO `hunter_role_action` VALUES ('40', '1');
INSERT INTO `hunter_role_action` VALUES ('41', '1');
INSERT INTO `hunter_role_action` VALUES ('42', '1');
INSERT INTO `hunter_role_action` VALUES ('43', '1');
INSERT INTO `hunter_role_action` VALUES ('44', '1');
INSERT INTO `hunter_role_action` VALUES ('45', '1');
INSERT INTO `hunter_role_action` VALUES ('46', '1');
INSERT INTO `hunter_role_action` VALUES ('47', '1');
INSERT INTO `hunter_role_action` VALUES ('48', '1');
INSERT INTO `hunter_role_action` VALUES ('4', '2');
INSERT INTO `hunter_role_action` VALUES ('8', '2');
INSERT INTO `hunter_role_action` VALUES ('15', '2');
INSERT INTO `hunter_role_action` VALUES ('38', '2');
INSERT INTO `hunter_role_action` VALUES ('43', '2');
INSERT INTO `hunter_role_action` VALUES ('44', '2');
INSERT INTO `hunter_role_action` VALUES ('45', '2');

-- ----------------------------
-- Table structure for hunter_supplier
-- ----------------------------
DROP TABLE IF EXISTS `hunter_supplier`;
CREATE TABLE `hunter_supplier` (
  `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SEX` varchar(30) NOT NULL,
  `SUPPLIER_PERSON` varchar(10) NOT NULL,
  `SUPPLIER_TEL` varchar(20) NOT NULL,
  `SUPPLIER_EMAIL` varchar(20) NOT NULL,
  `SUPPLIER_ADDRESS` varchar(30) NOT NULL,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1021 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_supplier
-- ----------------------------
INSERT INTO `hunter_supplier` VALUES ('1015', '男', '郑绮云', '26391678', '22390898@qq.com', '中国 广东 佛山市顺德区 北滘镇怡和路2号怡和中心14楼');
INSERT INTO `hunter_supplier` VALUES ('1016', '男', '邹宏林', '15803047723', '123@qqc.om', '23');
INSERT INTO `hunter_supplier` VALUES ('1017', '男', '黄凤霞', '123', '123@qq.com', '123');
INSERT INTO `hunter_supplier` VALUES ('1018', '女', '33', '33', '33@qq.com', '123');
INSERT INTO `hunter_supplier` VALUES ('1019', '男', '77', '77', '77@qq.com', '77');
INSERT INTO `hunter_supplier` VALUES ('1020', '男', '88', '88', '88@qq.com', '88');

-- ----------------------------
-- Table structure for hunter_user
-- ----------------------------
DROP TABLE IF EXISTS `hunter_user`;
CREATE TABLE `hunter_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_USERNAME` varchar(30) NOT NULL DEFAULT '无名氏',
  `USER_PASSWORD` varchar(40) NOT NULL,
  `USER_FIRST_LOGIN` int(11) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_user
-- ----------------------------
INSERT INTO `hunter_user` VALUES ('1001', 'admin', '6f5379e73c1a9eac6163ab8eaec7e41c', '0');
INSERT INTO `hunter_user` VALUES ('1019', '李富荣', 'c4b3af5a5ab3e3d5aac4c5a5436201b8', '1');
INSERT INTO `hunter_user` VALUES ('1020', '邹宏林', '38dc12ed0ca4f15ef59db04c6479b5ce', '1');
INSERT INTO `hunter_user` VALUES ('1021', '1231', '19c6797d19c8ee2d308e65106b01aa5b', '1');
INSERT INTO `hunter_user` VALUES ('1022', '无名氏1022', '9d149ac891b6e304d2ca3b051e52dc16', '0');
INSERT INTO `hunter_user` VALUES ('1023', '无名氏1023', 'ea83c15f309f59560994d8b98d70515c', '1');

-- ----------------------------
-- Table structure for hunter_user_role
-- ----------------------------
DROP TABLE IF EXISTS `hunter_user_role`;
CREATE TABLE `hunter_user_role` (
  `ROLE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `hunter_user_role_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `hunter_roles` (`ROLE_ID`),
  CONSTRAINT `hunter_user_role_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `hunter_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_user_role
-- ----------------------------
INSERT INTO `hunter_user_role` VALUES ('1', '1001');
INSERT INTO `hunter_user_role` VALUES ('2', '1019');
INSERT INTO `hunter_user_role` VALUES ('2', '1020');
INSERT INTO `hunter_user_role` VALUES ('2', '1021');
INSERT INTO `hunter_user_role` VALUES ('2', '1022');
INSERT INTO `hunter_user_role` VALUES ('2', '1023');

-- ----------------------------
-- Table structure for hunter_user_supplier
-- ----------------------------
DROP TABLE IF EXISTS `hunter_user_supplier`;
CREATE TABLE `hunter_user_supplier` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `SUPPLIER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hunter_user_supplier
-- ----------------------------
INSERT INTO `hunter_user_supplier` VALUES ('1', '1001', '1016');
