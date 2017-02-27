/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : ostp

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2016-11-22 19:21:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for basicequiptype
-- ----------------------------
DROP TABLE IF EXISTS `basicequiptype`;
CREATE TABLE `basicequiptype` (
  `EquipTypeID` char(32) NOT NULL COMMENT '装备功能分类编号',
  `EquipTypeName` varchar(20) NOT NULL COMMENT '装备功能分类名称',
  `Note` varchar(20) NOT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`EquipTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础数据管理：装备功能类型';

-- ----------------------------
-- Records of basicequiptype
-- ----------------------------
INSERT INTO `basicequiptype` VALUES ('4994769b5c1b44bf84d6efeea5f6771e', '看你', '', 'admin', '2016-11-08 14:49:00', 'admin', '2016-11-08 14:49:00');
INSERT INTO `basicequiptype` VALUES ('4ae53e2643f54b6cba6fe1c94632b341', '454554', '', 'admin', '2016-11-08 14:50:40', 'admin', '2016-11-22 15:04:01');
INSERT INTO `basicequiptype` VALUES ('96522fa2a8e940f6b3a008ab05c2cc59', 'fz', '', 'admin', '2016-11-08 14:59:06', 'admin', '2016-11-08 14:59:06');
INSERT INTO `basicequiptype` VALUES ('9bf98b6c01a346bfbd51d5206f6284e5', '他的', '', 'admin', '2016-11-08 14:48:47', 'admin', '2016-11-08 14:48:47');
INSERT INTO `basicequiptype` VALUES ('af1adfc3395548c89f509d92d44c8945', 'dad333', '3123', 'admin', '2016-11-08 14:54:58', 'admin', '2016-11-08 14:54:58');
INSERT INTO `basicequiptype` VALUES ('afc1c51e20294329ab36539ecd5f1439', 'dad1', '13123123', 'admin', '2016-11-08 14:46:17', 'admin', '2016-11-08 14:46:17');
INSERT INTO `basicequiptype` VALUES ('ba25f44ad54041f4975f1f86b67acecf', '12121212', '123123123', 'admin', '2016-11-08 14:38:46', 'admin', '2016-11-08 14:38:46');
INSERT INTO `basicequiptype` VALUES ('d465f39e2e1e4583a51027093c78d317', '343111', '', 'admin', '2016-11-08 14:54:37', 'admin', '2016-11-08 14:54:37');
INSERT INTO `basicequiptype` VALUES ('d4dda97f9e7e4e1babec3ebb89b85b88', '313123', '131232131231231231', 'admin', '2016-11-07 19:12:21', 'admin', '2016-11-08 14:38:55');
INSERT INTO `basicequiptype` VALUES ('e6e03f4aa2fb467a805e30c10c29517e', '个ihb', '', 'admin', '2016-11-08 14:51:58', 'admin', '2016-11-08 14:51:58');

-- ----------------------------
-- Table structure for basicinfo
-- ----------------------------
DROP TABLE IF EXISTS `basicinfo`;
CREATE TABLE `basicinfo` (
  `InfoID` char(32) NOT NULL COMMENT '资讯标识',
  `Author` varchar(20) NOT NULL COMMENT '作者',
  `Title` varchar(20) NOT NULL COMMENT '资讯标题',
  `FirstLevelInfoTypeID` char(32) NOT NULL COMMENT '资讯一级类型标识',
  `SecondLevelInfoTypeID` char(32) NOT NULL COMMENT '资讯二级类型标识',
  `SportTypeID` char(32) NOT NULL COMMENT '运动类型',
  `CopyFrom` varchar(50) DEFAULT NULL COMMENT '文章来源',
  `KeyWords` varchar(50) NOT NULL COMMENT '关键字',
  `Content` varchar(5000) NOT NULL COMMENT '文本内容',
  `ImgUrl` varchar(255) DEFAULT NULL COMMENT '列表图片',
  `CreateTime` date DEFAULT NULL COMMENT '创建时间',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`InfoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯：资讯';

-- ----------------------------
-- Records of basicinfo
-- ----------------------------
INSERT INTO `basicinfo` VALUES ('1479613267947', 'rt', 'rt', '4', '13', '56a3c9dc48a840afb0b8daefe3bb14e0', 'rt', 'rt', '<p>rtrt资讯内容</p>\r\n', null, '2016-11-20', null);
INSERT INTO `basicinfo` VALUES ('1479613299411', 'fghfg', 'gfhfg', '5', '19', '56a3c9dc48a840afb0b8daefe3bb14e0', 'fghfgh', 'fghfg', '<p>资讯内容fghgfh</p>\r\n', null, '2016-11-20', null);

-- ----------------------------
-- Table structure for basicphotostyle
-- ----------------------------
DROP TABLE IF EXISTS `basicphotostyle`;
CREATE TABLE `basicphotostyle` (
  `PhotoStyleID` char(32) NOT NULL COMMENT '图像风格类型编号',
  `PhotoStyleName` varchar(20) NOT NULL COMMENT '图像风格类型名称',
  `Note` varchar(20) NOT NULL COMMENT '备注',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`PhotoStyleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础数据管理：图像风格类型';

-- ----------------------------
-- Records of basicphotostyle
-- ----------------------------
INSERT INTO `basicphotostyle` VALUES ('5a944e3ed8fa4bfb9202f02f5be2af4d', '动物', '自然界动物', null, 'admin', '2016-11-09 20:07:24', 'admin', '2016-11-09 20:07:24');
INSERT INTO `basicphotostyle` VALUES ('5be20b23916d47f490d4079682b8638c', '风景', '自然风景', null, 'admin', '2016-11-09 20:06:35', 'admin', '2016-11-09 20:06:35');
INSERT INTO `basicphotostyle` VALUES ('c24c1150c66e472b889f48e3535b73bf', '5f', 'ga', null, 'admin', '2016-11-07 19:39:51', 'admin', '2016-11-07 19:39:51');
INSERT INTO `basicphotostyle` VALUES ('e00900cef2a94488bba1c53d2e296d6d', 'ghdx', 'hd', null, 'admin', '2016-11-07 19:35:12', 'admin', '2016-11-07 19:35:12');

-- ----------------------------
-- Table structure for basicsport
-- ----------------------------
DROP TABLE IF EXISTS `basicsport`;
CREATE TABLE `basicsport` (
  `SportID` char(32) NOT NULL COMMENT '户外运动编号',
  `SportTypeID` char(32) NOT NULL COMMENT '户外运动类型分类编号',
  `SportName` varchar(20) NOT NULL DEFAULT '' COMMENT '户外运动名称',
  `SportKeywords` varchar(50) NOT NULL DEFAULT '' COMMENT '户外运动搜索用关键词',
  `SportNote` varchar(100) DEFAULT '' COMMENT '备注',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`SportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础数据管理：户外运动';

-- ----------------------------
-- Records of basicsport
-- ----------------------------
INSERT INTO `basicsport` VALUES ('135a58b28d254c339e4ee07be460024a', '42daec416efd4a71a1557dc035d6818f', '喜马拉雅一月游', '喜马拉雅', '活动买好保险', null, 'admin', '2016-11-09 20:00:13', 'admin', '2016-11-22 15:03:53');
INSERT INTO `basicsport` VALUES ('36783aa724034a2f811fa8fa4987e3a3', '56a3c9dc48a840afb0b8daefe3bb14e0', '北冰洋花式游泳', '北冰洋', '带好比基尼', null, 'admin', '2016-11-09 20:02:38', 'admin', '2016-11-09 20:02:38');
INSERT INTO `basicsport` VALUES ('5d8886f487fc464da87f7be7890784f6', '48d1d2dac7ff403d8869182eaa18200c', '黄河漂流记', '黄河', '带好衣服', null, 'admin', '2016-11-09 20:00:49', 'admin', '2016-11-09 20:00:49');
INSERT INTO `basicsport` VALUES ('7e6eb1d05ab04f62b341d09447d31610', '6e9584816d2e4c06ad026a1c45462109', '南海潜水', '南海', '潜水设备自带', null, 'admin', '2016-11-09 20:03:29', 'admin', '2016-11-09 20:03:29');
INSERT INTO `basicsport` VALUES ('ada2af2eba91458288b104b643554fcb', '4fdff762b5494bd4b1763c7c0b7d7e5a', '梅岭一日游', '梅岭', '穿好运动鞋', null, 'admin', '2016-11-09 20:01:47', 'admin', '2016-11-09 20:01:47');
INSERT INTO `basicsport` VALUES ('af45a568d3cf4dbbafd7df2bad0df2bc', 'ac2d020280294dd099074faa96d9b793', '南昌马拉松', '南昌', '自带饮料', null, 'admin', '2016-11-09 20:05:37', 'admin', '2016-11-09 20:05:37');
INSERT INTO `basicsport` VALUES ('bcb1e6f4588e447a89fb869588a0ccaf', '42daec416efd4a71a1557dc035d6818f', '川藏骑行', '骑行', '人数不限', null, 'admin', '2016-11-09 19:59:19', 'admin', '2016-11-09 19:59:19');
INSERT INTO `basicsport` VALUES ('c1ac48456f1f43f98168720a06325324', '973ce5e6815f4cf483bbb53dc04a38f6', '孔目湖钓鱼比赛', '交大孔目湖', '自带渔具', null, 'admin', '2016-11-09 20:05:01', 'admin', '2016-11-09 20:05:01');
INSERT INTO `basicsport` VALUES ('ffa09a4b7a7b43b5bb5b19d9860af36c', '943376c32ec44247aa12def538355304', '张家界攀岩', '张家界', '带好装备', null, 'admin', '2016-11-09 20:04:11', 'admin', '2016-11-09 20:04:11');

-- ----------------------------
-- Table structure for basicsporttype
-- ----------------------------
DROP TABLE IF EXISTS `basicsporttype`;
CREATE TABLE `basicsporttype` (
  `SportTypeID` char(32) NOT NULL COMMENT '户外运动类型分类编号',
  `SportTypeName` varchar(20) NOT NULL DEFAULT '' COMMENT '户外运动类型分类名称',
  `Note` varchar(20) DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`SportTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础数据管理：户外运动类型';

-- ----------------------------
-- Records of basicsporttype
-- ----------------------------
INSERT INTO `basicsporttype` VALUES ('42daec416efd4a71a1557dc035d6818f', '骑行', 'ridding', 'admin', '2016-11-09 19:55:46', 'admin', '2016-11-22 15:03:23');
INSERT INTO `basicsporttype` VALUES ('46c8dfd3a7cf443e96507698e0495c43', '登山', 'climb mountain', 'admin', '2016-11-09 19:55:06', 'admin', '2016-11-09 19:55:06');
INSERT INTO `basicsporttype` VALUES ('48d1d2dac7ff403d8869182eaa18200c', '漂流', 'piaoliu', 'admin', '2016-11-09 19:56:03', 'admin', '2016-11-09 19:56:03');
INSERT INTO `basicsporttype` VALUES ('4fdff762b5494bd4b1763c7c0b7d7e5a', '徒步', 'foot', 'admin', '2016-11-09 19:56:25', 'admin', '2016-11-09 19:56:25');
INSERT INTO `basicsporttype` VALUES ('56a3c9dc48a840afb0b8daefe3bb14e0', '游泳', 'swimming', 'admin', '2016-11-09 19:53:14', 'admin', '2016-11-09 19:53:14');
INSERT INTO `basicsporttype` VALUES ('6e9584816d2e4c06ad026a1c45462109', '潜水', 'diving', 'admin', '2016-11-09 19:54:03', 'admin', '2016-11-09 19:54:03');
INSERT INTO `basicsporttype` VALUES ('943376c32ec44247aa12def538355304', '攀岩', 'panyan', 'admin', '2016-11-09 19:55:23', 'admin', '2016-11-09 19:55:23');
INSERT INTO `basicsporttype` VALUES ('973ce5e6815f4cf483bbb53dc04a38f6', '钓鱼', 'fishing', 'admin', '2016-11-09 19:56:41', 'admin', '2016-11-09 19:56:41');
INSERT INTO `basicsporttype` VALUES ('ac2d020280294dd099074faa96d9b793', '跑步', 'running', 'admin', '2016-11-09 19:54:23', 'admin', '2016-11-09 19:54:23');
INSERT INTO `basicsporttype` VALUES ('de281194801f4011bc491659984b026a', '22', '22', 'admin', '2016-11-22 15:03:34', 'admin', '2016-11-22 15:03:34');

-- ----------------------------
-- Table structure for communityanswerinfo
-- ----------------------------
DROP TABLE IF EXISTS `communityanswerinfo`;
CREATE TABLE `communityanswerinfo` (
  `AnsID` int(20) NOT NULL COMMENT '答案的唯一标识',
  `AnsAuthor` varchar(20) NOT NULL COMMENT '答案的作者',
  `AnsTime` datetime NOT NULL COMMENT '答案发布的时间',
  `AnsAttention` varchar(10) NOT NULL COMMENT '答案的关注数',
  `QuestionID` varchar(20) NOT NULL COMMENT '问题的id',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`AnsID`),
  UNIQUE KEY `AnsID_UNIQUE` (`AnsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社区：回答表';

-- ----------------------------
-- Records of communityanswerinfo
-- ----------------------------

-- ----------------------------
-- Table structure for communityquestioninfo
-- ----------------------------
DROP TABLE IF EXISTS `communityquestioninfo`;
CREATE TABLE `communityquestioninfo` (
  `QuestionID` char(32) NOT NULL COMMENT '问题唯一标识',
  `QuestionTitle` varchar(20) NOT NULL COMMENT '问题的标题',
  `QuestionContent` varchar(5000) NOT NULL COMMENT '问题内容',
  `QuestionAuthor` varchar(20) NOT NULL COMMENT '问题的发布者',
  `QuestionAttention` varchar(10) NOT NULL COMMENT '问题的关注度',
  `QuestionTime` datetime NOT NULL COMMENT '问题的发布时间',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`QuestionID`),
  UNIQUE KEY `QuestionID_UNIQUE` (`QuestionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社区：问题表';

-- ----------------------------
-- Records of communityquestioninfo
-- ----------------------------
INSERT INTO `communityquestioninfo` VALUES ('105996B3FEDD4FF2806BC4DC12662DB9', 'vvvv', '<p>sdfsafs</p>', 'vvs', 'sdsadfas', '2016-11-11 00:00:00', '0');
INSERT INTO `communityquestioninfo` VALUES ('1BB0884CAE514D8AAE820E34E55ABD7F', 'bbb', '<p>bbbb</p>', 'bbb', 'bbb', '2016-11-19 00:00:00', '1');
INSERT INTO `communityquestioninfo` VALUES ('62E2CAA1425148AABE1B11E456ABDA3E', 'aaa', '<p>aaaa</p>', 'aaaa', 'aaa', '2016-11-25 00:00:00', '1');
INSERT INTO `communityquestioninfo` VALUES ('81906DBF26394A9B8B4B7F64E325BCA1', 'vvvv', '<p>vvvvvv</p>', 'vvvv', 'vvvv', '2016-11-18 00:00:00', '1');
INSERT INTO `communityquestioninfo` VALUES ('A7CB75C292C54E5C85AE7D805184C5B9', 'test', '<p>adsfsdfsa啊说法地方</p>', 'tets', 'ttt', '2016-11-20 10:33:23', '1');
INSERT INTO `communityquestioninfo` VALUES ('F2DDBB417A674EFD8B1CDD18B83F9EBD', 'sdfsadfda', '<p>safsdfgsg</p>', 'sadfsadfa', 'asdfsadf', '2016-11-10 00:00:00', '1');

-- ----------------------------
-- Table structure for courseinfo
-- ----------------------------
DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE `courseinfo` (
  `CourseID` char(32) NOT NULL COMMENT '文化类别的id',
  `CourseTitle` varchar(20) NOT NULL COMMENT '文化类的教程标题',
  `CourseAuthor` varchar(20) DEFAULT NULL COMMENT '文化类文章的作者',
  `UpdateTime` datetime DEFAULT NULL COMMENT '教程上传时间',
  `Content` varchar(5000) NOT NULL COMMENT '教程的文本内容',
  `CoverPicture` varchar(500) DEFAULT NULL COMMENT '教程封面图片',
  `SportTypeID` char(32) NOT NULL COMMENT '户外运动类型编号',
  `ClickTimes` char(32) DEFAULT NULL COMMENT '本教程的点击量',
  `Keywords` varchar(100) NOT NULL COMMENT '关键字',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  `CreateTime` datetime NOT NULL COMMENT '课程创建时间',
  `CreateBy` varchar(255) NOT NULL COMMENT '课程创建者',
  `UpdateBy` varchar(20) DEFAULT NULL COMMENT '课程更新者',
  PRIMARY KEY (`CourseID`),
  UNIQUE KEY `CourseID_UNIQUE` (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教程：教程信息';

-- ----------------------------
-- Records of courseinfo
-- ----------------------------
INSERT INTO `courseinfo` VALUES ('1648c57fe6804ee481c2c2ae58e75541', '游泳', 'kenel', '2016-11-20 17:27:10', '<p>ddddddd</p>\r\n', '/ostp/userfiles/images/2016/11/20/Capture001.png', '42daec416efd4a71a1557dc035d6818f', '10000', 'k', 'T', '2016-11-19 11:18:47', 'admin', 'admin');
INSERT INTO `courseinfo` VALUES ('369007720f584c5a9069518b2f2720d7', '攀爬', 'frak', '2016-11-19 11:47:40', '<p>f&#39;s&#39;da&#39;f</p>\r\n', '', '42daec416efd4a71a1557dc035d6818f', '1000000000', 'f', 'T', '2016-11-19 11:47:13', 'admin', 'admin');
INSERT INTO `courseinfo` VALUES ('7df85cc459b141f7a2d15e4c9faf500c', '321', '321', '2016-11-20 17:37:51', '<p>11</p>\r\n', '', '42daec416efd4a71a1557dc035d6818f', '111', '321', 'T', '2016-11-20 17:37:51', 'admin', null);

-- ----------------------------
-- Table structure for coursetype
-- ----------------------------
DROP TABLE IF EXISTS `coursetype`;
CREATE TABLE `coursetype` (
  `CourseTypeID` char(32) NOT NULL COMMENT '教程类型编号',
  `CourseTypeName` varchar(20) NOT NULL COMMENT '运动详细类别的名称',
  `Note` int(5) NOT NULL COMMENT '运动所属的大分类id',
  PRIMARY KEY (`CourseTypeID`),
  UNIQUE KEY `CourseTypeID_UNIQUE` (`CourseTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教程：教程分类信息';

-- ----------------------------
-- Records of coursetype
-- ----------------------------

-- ----------------------------
-- Table structure for equip
-- ----------------------------
DROP TABLE IF EXISTS `equip`;
CREATE TABLE `equip` (
  `EquipID` char(32) NOT NULL COMMENT '装备唯一标识',
  `EquipName` varchar(20) NOT NULL COMMENT '装备名字',
  `EquipPrice` varchar(20) NOT NULL COMMENT '装备价格',
  `EquipParam` varchar(20) NOT NULL COMMENT '装备参数',
  `EquipRecommend` char(1) DEFAULT NULL COMMENT '推荐',
  `SportTypeID` char(32) DEFAULT NULL COMMENT '运动类型',
  `EquipTypeID` char(32) DEFAULT NULL COMMENT '装备功能类型',
  `Note` varchar(200) DEFAULT NULL COMMENT '备注',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  `UpdateDate` datetime DEFAULT NULL COMMENT '更新时间',
  `CreateDate` datetime DEFAULT NULL COMMENT '创建时间',
  `UpdateBy` varchar(255) DEFAULT NULL COMMENT '更新者',
  `CreateBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `EquipImage` varchar(255) DEFAULT NULL COMMENT '封面图片',
  PRIMARY KEY (`EquipID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备：装备';

-- ----------------------------
-- Records of equip
-- ----------------------------
INSERT INTO `equip` VALUES ('119AC153DF224AD48189034945AA03E5', '头盔2', '200', '无', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', '<p>321321</p>\r\n', '1', '2016-11-20 17:46:14', '2016-11-12 17:56:04', 'admin', 'admin', '');
INSERT INTO `equip` VALUES ('366FF6D11604431ABCF174835D584CA6', '1', '1', '1', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', null, '1', '2016-11-20 15:51:31', '2016-11-19 11:56:38', 'admin', 'admin', '/ostp/userfiles/images/2016/11/20/019.jpg');
INSERT INTO `equip` VALUES ('6AFCBDAE11D14491A1D142030BC74A2D', '111', '11', '11', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', null, '1', '2016-11-20 15:52:50', '2016-11-13 15:30:30', 'admin', 'admin', '');
INSERT INTO `equip` VALUES ('7B0BCEEDDA9C4E758A3B371811098E97', '321tt321321', '321', '3213', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', '<p>321</p>\r\n', '1', '2016-11-18 23:42:51', '2016-11-18 23:42:51', 'admin', 'admin', '/ostp/userfiles/images/t01f607aaebdab49126(1).jpg');
INSERT INTO `equip` VALUES ('89A8F31CCE944E07A9B09AFA9AD6F56D', '2', '2', '2', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', '<p>2</p>\r\n', '1', '2016-11-19 11:56:59', '2016-11-19 11:56:59', 'admin', 'admin', '');
INSERT INTO `equip` VALUES ('8CFC419292DB4BF2A3C000B54C15426B', 'asdg', '444', 'fsda', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', '<p>ryjyt</p>\r\n', '1', '2016-11-20 17:40:27', '2016-11-20 17:40:27', 'admin', 'admin', '/ostp/userfiles/images/2016/11/20/t0132376249b987a37e.jpg');
INSERT INTO `equip` VALUES ('A746AB785C57446898C519F6E2F34021', 'rwedddd', '32311', 'fds', '0', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', null, '0', '2016-11-18 23:22:31', null, 'admin', null, '/ostp/userfiles/files/t0132376249b987a37e.jpg');
INSERT INTO `equip` VALUES ('BD4EA26DD04947918377CA834EB86C53', 'rwe', '121', 'rwe', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', null, '1', '2016-11-18 23:22:21', null, 'admin', null, '/ostp/userfiles/files/t0132376249b987a37e.jpg');
INSERT INTO `equip` VALUES ('BEC1EFACED0243F4ABA66F231CF7D212', 'gsdfg', 'gsfdg', 'gsdfg', '1', '1', '1', 'gsdfg', '1', null, '2016-11-06 14:02:20', null, 'admin', null);
INSERT INTO `equip` VALUES ('C3B1AA29123449B69CAD505FEC2AF61A', '111hfdghfgh', '312', '312', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', '<p>yrty</p>\r\n', '1', null, '2016-11-18 23:40:54', null, 'admin', '/ostp/userfiles/images/111_jpg.jpg');
INSERT INTO `equip` VALUES ('CB66E203325A4A94BC93D6D73C481C12', '1122', '11', '222', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', '															<p>3333</p>\n\n														', '1', '2016-11-13 15:26:23', '2016-11-13 15:26:13', 'admin', 'admin', null);
INSERT INTO `equip` VALUES ('CC3B869F301A405B9DC3F9E6631952BA', '321', '321', '312', '1', '1', '1', '312', '1', null, '2016-11-02 16:59:57', null, 'admin', null);
INSERT INTO `equip` VALUES ('D543AE53234542F7B46A326B3D5B085D', '11', '23.11', '31', '1', '6a0dd31de8a24eb0ae72c6e803d2f45d', '4994769b5c1b44bf84d6efeea5f6771e', '3213', '1', null, '2016-11-08 21:41:41', null, 'admin', null);
INSERT INTO `equip` VALUES ('E8AD442E4E1640278FFAC4B5048D0914', '321tt', '312', '312', '1', '42daec416efd4a71a1557dc035d6818f', '4994769b5c1b44bf84d6efeea5f6771e', '<p>vnm,mbn,</p>\r\n', '1', null, '2016-11-18 23:39:22', null, 'admin', '/ostp/userfiles/files/t0132376249b987a37e.jpg');

-- ----------------------------
-- Table structure for equipevaluate
-- ----------------------------
DROP TABLE IF EXISTS `equipevaluate`;
CREATE TABLE `equipevaluate` (
  `EvaluteID` char(32) NOT NULL COMMENT '评测唯一标识',
  `Title` varchar(20) NOT NULL COMMENT '测评标题',
  `Author` varchar(20) NOT NULL COMMENT '作者',
  `PublishTime` varchar(20) NOT NULL COMMENT '发布时间',
  `Origin` varchar(20) NOT NULL COMMENT '来源',
  `EquipID` char(32) NOT NULL COMMENT '关联装备编号',
  `Content` varchar(5000) DEFAULT NULL COMMENT '内容',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`EvaluteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备：测评';

-- ----------------------------
-- Records of equipevaluate
-- ----------------------------

-- ----------------------------
-- Table structure for infofirstleveltype
-- ----------------------------
DROP TABLE IF EXISTS `infofirstleveltype`;
CREATE TABLE `infofirstleveltype` (
  `FirstLevelInfoTypeID` char(32) NOT NULL COMMENT '资讯一级类型标识',
  `FirstLevelInfoTypeName` varchar(20) NOT NULL COMMENT '咨讯一级分类名称',
  `Note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FirstLevelInfoTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯：资讯一级类型';

-- ----------------------------
-- Records of infofirstleveltype
-- ----------------------------
INSERT INTO `infofirstleveltype` VALUES ('1', '户外知识', null);
INSERT INTO `infofirstleveltype` VALUES ('2', '装备资讯', null);
INSERT INTO `infofirstleveltype` VALUES ('3', '专题活动', null);
INSERT INTO `infofirstleveltype` VALUES ('4', '赛事新闻', null);
INSERT INTO `infofirstleveltype` VALUES ('5', '专栏专访', null);

-- ----------------------------
-- Table structure for infosecondleveltype
-- ----------------------------
DROP TABLE IF EXISTS `infosecondleveltype`;
CREATE TABLE `infosecondleveltype` (
  `SecondLevelInfoTypeID` char(32) NOT NULL COMMENT '资讯二级类型标识',
  `SecondLevelInfoTypeName` varchar(20) NOT NULL COMMENT '咨讯二级分类名称',
  `FirstLevelInfoTypeID` char(32) NOT NULL COMMENT '关联一级资讯',
  `Note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`SecondLevelInfoTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资讯：资讯二级类型';

-- ----------------------------
-- Records of infosecondleveltype
-- ----------------------------
INSERT INTO `infosecondleveltype` VALUES ('1', '户外常识', '1', null);
INSERT INTO `infosecondleveltype` VALUES ('10', '撸哇撸', '3', null);
INSERT INTO `infosecondleveltype` VALUES ('11', '噢噢噢噢', '3', null);
INSERT INTO `infosecondleveltype` VALUES ('12', '啦啦啦啦', '3', null);
INSERT INTO `infosecondleveltype` VALUES ('13', '国内新闻', '4', null);
INSERT INTO `infosecondleveltype` VALUES ('14', '国外新闻', '4', null);
INSERT INTO `infosecondleveltype` VALUES ('15', '小道消息', '4', null);
INSERT INTO `infosecondleveltype` VALUES ('16', '关注热点', '4', null);
INSERT INTO `infosecondleveltype` VALUES ('17', '达人专访', '5', null);
INSERT INTO `infosecondleveltype` VALUES ('18', '品牌专访', '5', null);
INSERT INTO `infosecondleveltype` VALUES ('19', '极限挑战', '5', null);
INSERT INTO `infosecondleveltype` VALUES ('2', '安全知识', '1', null);
INSERT INTO `infosecondleveltype` VALUES ('3', '户外公开课', '1', null);
INSERT INTO `infosecondleveltype` VALUES ('4', '领队培训', '1', null);
INSERT INTO `infosecondleveltype` VALUES ('5', '新品报道', '2', null);
INSERT INTO `infosecondleveltype` VALUES ('6', '装备评测', '2', null);
INSERT INTO `infosecondleveltype` VALUES ('7', '装备品牌', '2', null);
INSERT INTO `infosecondleveltype` VALUES ('8', '装备行情', '2', null);
INSERT INTO `infosecondleveltype` VALUES ('9', '你造吗？', '3', null);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(100) DEFAULT NULL,
  `parentId` bigint(32) DEFAULT NULL COMMENT '父节点ID',
  `href` varchar(2000) DEFAULT NULL,
  `menuClass` varchar(100) DEFAULT NULL COMMENT '链接类型(_blank...)',
  `icon` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2238 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1000', '系统管理', '0', '', '', 'icon-cog', '1');
INSERT INTO `menu` VALUES ('1001', '基础数据管理', '0', null, null, 'icon-folder-open-alt', '0');
INSERT INTO `menu` VALUES ('1002', '资讯管理', '0', null, null, 'icon-dashboard', '2');
INSERT INTO `menu` VALUES ('1003', '装备管理', '0', '', '', 'icon-flag', '3');
INSERT INTO `menu` VALUES ('1004', '摄影管理', '0', '', '', 'icon-camera-retro', '4');
INSERT INTO `menu` VALUES ('1005', '位置管理', '0', null, null, 'icon-adjust', '5');
INSERT INTO `menu` VALUES ('1006', '教程管理', '0', null, null, 'icon-headphones', '6');
INSERT INTO `menu` VALUES ('1007', '行程管理', '0', null, null, 'icon-eye-open', '7');
INSERT INTO `menu` VALUES ('1008', '社区管理', '0', null, null, 'icon-comments', '8');
INSERT INTO `menu` VALUES ('2000', '权限管理', '1000', 'admin/system-authority', null, 'icon-eye-open', '9');
INSERT INTO `menu` VALUES ('2001', '系统用户', '1000', 'admin/system-user', null, null, null);
INSERT INTO `menu` VALUES ('2002', '角色授权管理', '1000', 'admin/system-role', '', '', '0');
INSERT INTO `menu` VALUES ('2003', '户外运动类型', '1001', 'admin/outdoorSportType-list', null, null, null);
INSERT INTO `menu` VALUES ('2004', '户外运动', '1001', 'admin/outdoorSport-list', null, null, null);
INSERT INTO `menu` VALUES ('2005', '装备功能类型', '1001', 'admin/equipType-list', null, null, null);
INSERT INTO `menu` VALUES ('2006', '图像风格类型', '1001', 'admin/pictureStyleType-list', null, null, null);
INSERT INTO `menu` VALUES ('2007', '位置类型类型', '1001', 'admin/positionType-list', null, null, null);
INSERT INTO `menu` VALUES ('2008', '资讯列表', '1002', 'admin/info-list', null, null, null);
INSERT INTO `menu` VALUES ('2009', '资讯添加', '1002', 'admin/info-add', null, null, null);
INSERT INTO `menu` VALUES ('2010', '装备列表', '1003', 'admin/equip-list', null, null, null);
INSERT INTO `menu` VALUES ('2011', '装备添加', '1003', 'admin/equip-add', null, null, null);
INSERT INTO `menu` VALUES ('2012', '摄影列表', '1004', 'admin/photography-list', null, null, null);
INSERT INTO `menu` VALUES ('2013', '摄影添加', '1004', 'admin/photography-add', null, null, null);
INSERT INTO `menu` VALUES ('2014', '位置列表', '1005', 'admin/position-list', null, null, null);
INSERT INTO `menu` VALUES ('2015', '位置添加', '1005', 'admin/position-add', null, null, null);
INSERT INTO `menu` VALUES ('2016', '教程列表', '1006', 'admin/course-list', null, null, null);
INSERT INTO `menu` VALUES ('2017', '教程添加', '1006', 'admin/course-add', null, null, null);
INSERT INTO `menu` VALUES ('2018', '行程列表', '1007', 'admin/travel-list', null, null, null);
INSERT INTO `menu` VALUES ('2019', '行程添加', '1007', 'admin/travel-add', null, null, null);
INSERT INTO `menu` VALUES ('2020', '社区列表', '1008', 'admin/community_list', null, null, null);
INSERT INTO `menu` VALUES ('2021', '社区添加', '1008', 'admin/community_add', null, null, null);
INSERT INTO `menu` VALUES ('2022', '菜单管理', '1000', 'admin/system-menu', '', '', '0');
INSERT INTO `menu` VALUES ('2200', 'xxxx', '2000', 'xxx', null, 'icon-eye-open', null);
INSERT INTO `menu` VALUES ('2222', 'tttt', '2200', 'tttt', null, 'icon-eye-open', null);
INSERT INTO `menu` VALUES ('2223', 'test', '1000', 'test', 'test', 'test', '1');
INSERT INTO `menu` VALUES ('2226', 'tttt1', '2222', 'test', '', '', '0');
INSERT INTO `menu` VALUES ('2227', 'tttt2', '2226', 'fff', '', '', '1');
INSERT INTO `menu` VALUES ('2231', '一级菜单测试', '0', '', '', 'icon-tag', '12');
INSERT INTO `menu` VALUES ('2232', '二级菜单测试', '2231', '', '', '', '0');
INSERT INTO `menu` VALUES ('2234', '用户管理', '1000', '', '', '', '0');
INSERT INTO `menu` VALUES ('2235', '23432', '2000', '', '', '', '0');
INSERT INTO `menu` VALUES ('2236', '问题列表', '1008', 'admin/community-questions-list', '', '', '0');
INSERT INTO `menu` VALUES ('2237', '问题添加', '1008', 'admin/community-questions-add', '', '', '0');

-- ----------------------------
-- Table structure for photophotography
-- ----------------------------
DROP TABLE IF EXISTS `photophotography`;
CREATE TABLE `photophotography` (
  `PictureID` char(32) NOT NULL COMMENT '照片唯一标识',
  `Title` varchar(20) NOT NULL COMMENT '照片标题',
  `Author` varchar(20) NOT NULL COMMENT '作者',
  `PublishTime` varchar(20) NOT NULL COMMENT '发布时间',
  `Origin` varchar(20) DEFAULT NULL COMMENT '来源',
  `SportTypeID` char(32) DEFAULT NULL COMMENT '运动类型编号',
  `StyleTypeID` char(32) DEFAULT NULL COMMENT '风格类型编号',
  `LevelType` char(2) DEFAULT NULL COMMENT '等级（1是精品、0是普通）',
  `PhotoParam` varchar(2000) DEFAULT NULL COMMENT '照片参数',
  `Introduction` varchar(300) DEFAULT NULL COMMENT '照片感言',
  `CurrentLikeTimes` char(32) DEFAULT NULL COMMENT '当日点赞数',
  `TotalLikeTimes` char(32) DEFAULT NULL COMMENT '总点赞数',
  `PhotoUrl` varchar(100) DEFAULT NULL COMMENT '照片链接',
  `ThumbPhotography` varchar(100) DEFAULT NULL COMMENT '照片缩略图',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`PictureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='摄影：摄影';

-- ----------------------------
-- Records of photophotography
-- ----------------------------
INSERT INTO `photophotography` VALUES ('0C0A5F4B7F2D4E55A0A51A89340DC8A3', '1', '1', '2016-11-20 15:33:58', '1', '42daec416efd4a71a1557dc035d6818f', '15876182e60e4d29b9e065b3372d88af', '1', '1', '<p><a href=\"/ostp/userfiles/files/2016/11/20/wjw.doc\"><img alt=\"\" src=\"/ostp/userfiles/images/2016/11/20/t0132376249b987a37e.jpg\" style=\"height:200px; width:200px\" />附件</a></p>\r\n\r\n<ol>\r\n	<li>46456465</li>\r\n	<li>5646456</li>\r\n	<li>56456</li>\r\n</ol>\r\n', '1', '1', '', null, null);
INSERT INTO `photophotography` VALUES ('7B885758EC7C45B59E8A10DC6988F91B', '1', '1', '2016-11-15', '1', '42daec416efd4a71a1557dc035d6818f', '15876182e60e4d29b9e065b3372d88af', '1', '11', '<p>11</p>\r\n', '1', '1', '', null, null);
INSERT INTO `photophotography` VALUES ('F3EF28EB35EB4DDEB507F244B1A899DB', '1', '1', '2016-11-09 00:00:00', '1', '42daec416efd4a71a1557dc035d6818f', '15876182e60e4d29b9e065b3372d88af', '1', '1', '<p><img alt=\"\" src=\"/ostp/userfiles/images/2016/11/20/1689972489-1A3425-0202-009D-01A4-05-0780-0438-05.jpg\" style=\"height:900px; width:1600px\" /></p>\r\n', '1', '1', '/ostp/userfiles/images/2016/11/20/019.jpg', null, null);

-- ----------------------------
-- Table structure for positiondetailinfo
-- ----------------------------
DROP TABLE IF EXISTS `positiondetailinfo`;
CREATE TABLE `positiondetailinfo` (
  `PositionID` char(32) NOT NULL COMMENT '位置ID',
  `PositionTypeID` char(32) NOT NULL COMMENT '位置类型',
  `SportTypeID` char(32) NOT NULL COMMENT '运动类型（攀岩，潜水）',
  `PositionName` varchar(20) NOT NULL COMMENT '具体位置名称',
  `PositionCoordinate` varchar(10) NOT NULL COMMENT '位置坐标',
  `PositionPicture` varchar(100) DEFAULT NULL COMMENT '位置图片',
  `PositionThumbnailPicture` varchar(100) DEFAULT NULL COMMENT '缩略图路径',
  `PositionDescribe` varchar(5000) DEFAULT NULL COMMENT '位置详细介绍',
  `PositionTime` datetime NOT NULL COMMENT '位置适宜去的时间',
  `CreatTime` datetime DEFAULT NULL COMMENT '条目创建时间',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`PositionID`),
  UNIQUE KEY `PositionID_UNIQUE` (`PositionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='位置：位置详细信息';

-- ----------------------------
-- Records of positiondetailinfo
-- ----------------------------
INSERT INTO `positiondetailinfo` VALUES ('2759FF9E667E45CE9574C1DA888CE8B3', '4fedcb9937ac41d487df4ed737e703f6', '6e9584816d2e4c06ad026a1c45462109', '南昌', '11|11', '/ostp/userfiles/images/2016/11/22/2.PNG', '/ostp/userfiles/_thumbs/Images/2016/11/22/2.PNG', '<p>江西省南昌市</p>\r\n', '2016-11-22 15:08:20', '2016-11-22 15:08:57', null);
INSERT INTO `positiondetailinfo` VALUES ('44D2BCA35C5E4964803EF54C7096AB02', '2', '56a3c9dc48a840afb0b8daefe3bb14e0', '1122', '1122|12', '/ostp/userfiles/images/2016/11/22/1.PNG', '/ostp/userfiles/_thumbs/Images/2016/11/22/1.PNG', '<p>位置内容112222</p>\r\n', '2016-11-17 00:00:00', '2016-11-22 11:14:09', null);

-- ----------------------------
-- Table structure for positiontypeinfo
-- ----------------------------
DROP TABLE IF EXISTS `positiontypeinfo`;
CREATE TABLE `positiontypeinfo` (
  `PositionTypeID` char(32) NOT NULL COMMENT '位置分类编号',
  `PositionTypeName` varchar(20) NOT NULL COMMENT '位置类型名称（住宿、餐饮、火车站、机场等）',
  `Note` varchar(20) NOT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`PositionTypeID`),
  UNIQUE KEY `PositionTypeID_UNIQUE` (`PositionTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='位置：位置类型详细信息';

-- ----------------------------
-- Records of positiontypeinfo
-- ----------------------------
INSERT INTO `positiontypeinfo` VALUES ('4fedcb9937ac41d487df4ed737e703f6', '机场', 'airport', 'admin', '2016-11-22 15:06:22', 'admin', '2016-11-22 15:06:26');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` char(32) NOT NULL COMMENT '角色id',
  `authority` varchar(20) NOT NULL COMMENT '角色权限',
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `code` varchar(20) NOT NULL COMMENT '角色代码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('5AF110E0E7984175B657328C227A9AC1', 'ROLE_PHOTOADMIN', '摄影管理员', 'photoadmin');
INSERT INTO `role` VALUES ('5AF110E0E7984175B657328C227A9AC2', 'ROLE_COURSEADMIN', '教程管理员', 'courseadmin');
INSERT INTO `role` VALUES ('5AF110E0E7984175B657328C227A9AC3', 'ROLE_POSITIONADMIN', '位置管理员', 'positionadmin');
INSERT INTO `role` VALUES ('5AF110E0E7984175B657328C227A9AC4', 'ROLE_BASICADMIN', '基础数据管理员', 'basicadmin');
INSERT INTO `role` VALUES ('5AF110E0E7984175B657328C227A9AC5', 'ROLE_INFOADMIN', '资讯管理员', 'infoadmin');
INSERT INTO `role` VALUES ('5AF110E0E7984175B657328C227A9AC6', 'ROLE_ADMIN', '超级管理员', 'admin');
INSERT INTO `role` VALUES ('70427E5323C44AF78C4C9420130E73A6', 'ROLE_EQUIPADMIN', '装备管理员', 'equipadmin');
INSERT INTO `role` VALUES ('8E6D42C9D257403DA132DAD9CE34CA6A', 'ROLE_TEST', '测试', '测试');
INSERT INTO `role` VALUES ('91F40D4325AE47EC9F5C51806528162D', 'ROLE_TRAVELADMIN', '行程管理员', 'traveladmin');

-- ----------------------------
-- Table structure for rolemenu
-- ----------------------------
DROP TABLE IF EXISTS `rolemenu`;
CREATE TABLE `rolemenu` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT,
  `roleId` char(32) DEFAULT NULL,
  `menuId` bigint(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1470 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolemenu
-- ----------------------------
INSERT INTO `rolemenu` VALUES ('498', '5AF110E0E7984175B657328C227A9AC2', '1006');
INSERT INTO `rolemenu` VALUES ('499', '5AF110E0E7984175B657328C227A9AC2', '2016');
INSERT INTO `rolemenu` VALUES ('500', '5AF110E0E7984175B657328C227A9AC2', '2017');
INSERT INTO `rolemenu` VALUES ('501', '5AF110E0E7984175B657328C227A9AC3', '1005');
INSERT INTO `rolemenu` VALUES ('502', '5AF110E0E7984175B657328C227A9AC3', '2014');
INSERT INTO `rolemenu` VALUES ('503', '5AF110E0E7984175B657328C227A9AC3', '2015');
INSERT INTO `rolemenu` VALUES ('920', '026E3A5AE4C94A13B72500B93E6FAE54', '2231');
INSERT INTO `rolemenu` VALUES ('921', '026E3A5AE4C94A13B72500B93E6FAE54', '2232');
INSERT INTO `rolemenu` VALUES ('1206', '5AF110E0E7984175B657328C227A9AC5', '1002');
INSERT INTO `rolemenu` VALUES ('1207', '5AF110E0E7984175B657328C227A9AC5', '2008');
INSERT INTO `rolemenu` VALUES ('1208', '5AF110E0E7984175B657328C227A9AC5', '2009');
INSERT INTO `rolemenu` VALUES ('1289', '37DE53149A864A5D8BECA7A99B37094E', '1005');
INSERT INTO `rolemenu` VALUES ('1290', '37DE53149A864A5D8BECA7A99B37094E', '2014');
INSERT INTO `rolemenu` VALUES ('1291', '37DE53149A864A5D8BECA7A99B37094E', '2015');
INSERT INTO `rolemenu` VALUES ('1297', '5AF110E0E7984175B657328C227A9AC1', '1004');
INSERT INTO `rolemenu` VALUES ('1298', '5AF110E0E7984175B657328C227A9AC1', '2012');
INSERT INTO `rolemenu` VALUES ('1299', '5AF110E0E7984175B657328C227A9AC1', '2013');
INSERT INTO `rolemenu` VALUES ('1316', '8E6D42C9D257403DA132DAD9CE34CA6A', '2231');
INSERT INTO `rolemenu` VALUES ('1317', '8E6D42C9D257403DA132DAD9CE34CA6A', '2232');
INSERT INTO `rolemenu` VALUES ('1318', '5AF110E0E7984175B657328C227A9AC4', '1000');
INSERT INTO `rolemenu` VALUES ('1319', '5AF110E0E7984175B657328C227A9AC4', '2000');
INSERT INTO `rolemenu` VALUES ('1320', '5AF110E0E7984175B657328C227A9AC4', '2200');
INSERT INTO `rolemenu` VALUES ('1321', '5AF110E0E7984175B657328C227A9AC4', '2222');
INSERT INTO `rolemenu` VALUES ('1322', '5AF110E0E7984175B657328C227A9AC4', '2226');
INSERT INTO `rolemenu` VALUES ('1323', '5AF110E0E7984175B657328C227A9AC4', '2227');
INSERT INTO `rolemenu` VALUES ('1324', '5AF110E0E7984175B657328C227A9AC4', '2235');
INSERT INTO `rolemenu` VALUES ('1325', '5AF110E0E7984175B657328C227A9AC4', '2001');
INSERT INTO `rolemenu` VALUES ('1326', '5AF110E0E7984175B657328C227A9AC4', '2002');
INSERT INTO `rolemenu` VALUES ('1327', '5AF110E0E7984175B657328C227A9AC4', '2022');
INSERT INTO `rolemenu` VALUES ('1328', '5AF110E0E7984175B657328C227A9AC4', '2223');
INSERT INTO `rolemenu` VALUES ('1329', '5AF110E0E7984175B657328C227A9AC4', '2234');
INSERT INTO `rolemenu` VALUES ('1330', '5AF110E0E7984175B657328C227A9AC4', '1001');
INSERT INTO `rolemenu` VALUES ('1331', '5AF110E0E7984175B657328C227A9AC4', '2003');
INSERT INTO `rolemenu` VALUES ('1332', '5AF110E0E7984175B657328C227A9AC4', '2004');
INSERT INTO `rolemenu` VALUES ('1333', '5AF110E0E7984175B657328C227A9AC4', '2005');
INSERT INTO `rolemenu` VALUES ('1334', '5AF110E0E7984175B657328C227A9AC4', '2006');
INSERT INTO `rolemenu` VALUES ('1335', '5AF110E0E7984175B657328C227A9AC4', '2007');
INSERT INTO `rolemenu` VALUES ('1400', '91F40D4325AE47EC9F5C51806528162D', '1007');
INSERT INTO `rolemenu` VALUES ('1401', '91F40D4325AE47EC9F5C51806528162D', '2018');
INSERT INTO `rolemenu` VALUES ('1402', '91F40D4325AE47EC9F5C51806528162D', '2019');
INSERT INTO `rolemenu` VALUES ('1403', '70427E5323C44AF78C4C9420130E73A6', '1003');
INSERT INTO `rolemenu` VALUES ('1404', '70427E5323C44AF78C4C9420130E73A6', '2010');
INSERT INTO `rolemenu` VALUES ('1405', '70427E5323C44AF78C4C9420130E73A6', '2011');
INSERT INTO `rolemenu` VALUES ('1439', '5AF110E0E7984175B657328C227A9AC6', '1000');
INSERT INTO `rolemenu` VALUES ('1440', '5AF110E0E7984175B657328C227A9AC6', '2001');
INSERT INTO `rolemenu` VALUES ('1441', '5AF110E0E7984175B657328C227A9AC6', '2002');
INSERT INTO `rolemenu` VALUES ('1442', '5AF110E0E7984175B657328C227A9AC6', '2022');
INSERT INTO `rolemenu` VALUES ('1443', '5AF110E0E7984175B657328C227A9AC6', '1001');
INSERT INTO `rolemenu` VALUES ('1444', '5AF110E0E7984175B657328C227A9AC6', '2003');
INSERT INTO `rolemenu` VALUES ('1445', '5AF110E0E7984175B657328C227A9AC6', '2004');
INSERT INTO `rolemenu` VALUES ('1446', '5AF110E0E7984175B657328C227A9AC6', '2005');
INSERT INTO `rolemenu` VALUES ('1447', '5AF110E0E7984175B657328C227A9AC6', '2006');
INSERT INTO `rolemenu` VALUES ('1448', '5AF110E0E7984175B657328C227A9AC6', '2007');
INSERT INTO `rolemenu` VALUES ('1449', '5AF110E0E7984175B657328C227A9AC6', '1002');
INSERT INTO `rolemenu` VALUES ('1450', '5AF110E0E7984175B657328C227A9AC6', '2008');
INSERT INTO `rolemenu` VALUES ('1451', '5AF110E0E7984175B657328C227A9AC6', '2009');
INSERT INTO `rolemenu` VALUES ('1452', '5AF110E0E7984175B657328C227A9AC6', '1003');
INSERT INTO `rolemenu` VALUES ('1453', '5AF110E0E7984175B657328C227A9AC6', '2010');
INSERT INTO `rolemenu` VALUES ('1454', '5AF110E0E7984175B657328C227A9AC6', '2011');
INSERT INTO `rolemenu` VALUES ('1455', '5AF110E0E7984175B657328C227A9AC6', '1004');
INSERT INTO `rolemenu` VALUES ('1456', '5AF110E0E7984175B657328C227A9AC6', '2012');
INSERT INTO `rolemenu` VALUES ('1457', '5AF110E0E7984175B657328C227A9AC6', '2013');
INSERT INTO `rolemenu` VALUES ('1458', '5AF110E0E7984175B657328C227A9AC6', '1005');
INSERT INTO `rolemenu` VALUES ('1459', '5AF110E0E7984175B657328C227A9AC6', '2014');
INSERT INTO `rolemenu` VALUES ('1460', '5AF110E0E7984175B657328C227A9AC6', '2015');
INSERT INTO `rolemenu` VALUES ('1461', '5AF110E0E7984175B657328C227A9AC6', '1006');
INSERT INTO `rolemenu` VALUES ('1462', '5AF110E0E7984175B657328C227A9AC6', '2016');
INSERT INTO `rolemenu` VALUES ('1463', '5AF110E0E7984175B657328C227A9AC6', '2017');
INSERT INTO `rolemenu` VALUES ('1464', '5AF110E0E7984175B657328C227A9AC6', '1007');
INSERT INTO `rolemenu` VALUES ('1465', '5AF110E0E7984175B657328C227A9AC6', '2018');
INSERT INTO `rolemenu` VALUES ('1466', '5AF110E0E7984175B657328C227A9AC6', '2019');
INSERT INTO `rolemenu` VALUES ('1467', '5AF110E0E7984175B657328C227A9AC6', '1008');
INSERT INTO `rolemenu` VALUES ('1468', '5AF110E0E7984175B657328C227A9AC6', '2236');
INSERT INTO `rolemenu` VALUES ('1469', '5AF110E0E7984175B657328C227A9AC6', '2237');

-- ----------------------------
-- Table structure for triptravelinfo
-- ----------------------------
DROP TABLE IF EXISTS `triptravelinfo`;
CREATE TABLE `triptravelinfo` (
  `TravelID` char(32) NOT NULL COMMENT '行程编号',
  `TravelName` varchar(100) NOT NULL COMMENT '行程名称',
  `SportTypeID` char(32) NOT NULL COMMENT '运动分类编号',
  `Attention` varchar(2000) DEFAULT NULL COMMENT '注意事项',
  `KeyWord` varchar(100) DEFAULT NULL,
  `Guide` varchar(5000) NOT NULL COMMENT '攻略',
  `CreatTime` datetime DEFAULT NULL,
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`TravelID`),
  UNIQUE KEY `TravelID_UNIQUE` (`TravelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行程：行程信息';

-- ----------------------------
-- Records of triptravelinfo
-- ----------------------------
INSERT INTO `triptravelinfo` VALUES ('0CBCE8E6701A4CC9A9F74278435FACEF', 'adf', '943376c32ec44247aa12def538355304', '<p>adf</p>\r\n', 'gggg', '<p>请在这里输入行程攻略。。。。。。asdf</p>\r\n', '2016-11-22 10:24:43', null);
INSERT INTO `triptravelinfo` VALUES ('190359391D6D47B9B125AAEB198462A5', 'ff', '48d1d2dac7ff403d8869182eaa18200c', '<p>fdas</p>\r\n', '11111111111112222', '<p>请在这里输入行程攻略。。。。。。</p>\r\n\r\n<p>www</p>\r\n\r\n<p>www</p>\r\n\r\n<p>www</p>\r\n\r\n<p>www</p>\r\n', null, null);
INSERT INTO `triptravelinfo` VALUES ('6765A99D4ECD41159CCABB074CD6888C', 'eeee', '4fdff762b5494bd4b1763c7c0b7d7e5a', '', 'eeee', '<p>请在这里输入行程攻略。。。。。。</p>\r\n\r\n<p>3123</p>\r\n\r\n<p>3123</p>\r\n\r\n<p>3123</p>\r\n', '2016-11-22 10:26:36', null);

-- ----------------------------
-- Table structure for triptravelpath
-- ----------------------------
DROP TABLE IF EXISTS `triptravelpath`;
CREATE TABLE `triptravelpath` (
  `TravelID` char(32) NOT NULL COMMENT '交通路线编号',
  `PositionID` varchar(100) NOT NULL COMMENT '行程编号',
  `Enabled` char(1) DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`TravelID`),
  UNIQUE KEY `TravelID_UNIQUE` (`TravelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行程：交通和线路';

-- ----------------------------
-- Records of triptravelpath
-- ----------------------------

-- ----------------------------
-- Table structure for t_c3p0
-- ----------------------------
DROP TABLE IF EXISTS `t_c3p0`;
CREATE TABLE `t_c3p0` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_c3p0
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserID` char(32) NOT NULL COMMENT '用户唯一标识',
  `UserName` varchar(20) NOT NULL COMMENT '用户昵称',
  `UserSex` char(1) NOT NULL COMMENT '用户性别',
  `UserEmail` varchar(50) NOT NULL COMMENT '用户邮箱',
  `UserPhone` varchar(20) NOT NULL COMMENT '用户手机',
  `UserAuthority` varchar(20) NOT NULL COMMENT '用户权限',
  `UserDesc` varchar(300) NOT NULL COMMENT '用户介绍',
  `UserPsw` char(40) NOT NULL COMMENT '用户密码',
  `UserHobby` varchar(20) DEFAULT NULL COMMENT '兴趣爱好',
  `UserJob` varchar(20) DEFAULT NULL COMMENT '职业',
  `UserEdu` varchar(20) DEFAULT NULL COMMENT '教育程度',
  `UserTag` varchar(20) DEFAULT NULL COMMENT '个人标签',
  `Enabled` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '逻辑删除标志',
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `UserID_UNIQUE` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社区：用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0822AA871DD84C55BCB66862E01B81BF', 'admin', '1', '123@sina.com', '13812345678', 'ROLE_ADMIN', '超级管理员', 'ec557bf547043802ef3d625d28f63a92166f03d1', '读书，看电影，听音乐										', '教师																		', '博士后', '愤青', '1');
INSERT INTO `user` VALUES ('099705B71DFE4BD8B9A92E6050A67208', 'poadmin', '1', '21422@qq.com', '123123124', 'ROLE_PHOTOADMIN', '摄影管理员', '7f591beaa5f0b0d6930bb7b563ebfe57ba671a35', '', '', '博士后', '', '1');
INSERT INTO `user` VALUES ('0B6563A073F749F7A6CDA79D27CF1A60', 'aaa', '0', '222122@qq.com', 'aaa', 'ROLE_POSITONADMIN', '位置管理员', '781545e463efd2357963e98650dd7d839ff25f0b', null, null, null, null, '1');
INSERT INTO `user` VALUES ('4B8F791B00AC44F6A4C6D2AA24DACB63', 'padmin', '0', '222122@qq.com', '123123123', 'ROLE_POSITONADMIN', '位置管理员', '7f36d5e56dc447b5bbd88e84bd8eb3d716f86b4c', '																	\r\n	', '																	\r\n	', '', '', '1');
INSERT INTO `user` VALUES ('6EA8F60C45CF415C99D795684E111B0E', 'badmin', '1', '222@qq.com', '12312312', 'ROLE_BASICADMIN', '基础数据管理员', '58dd02dc2bc8f75e50852c2c9635e02bf054f608', '', '', '无', '', '1');
INSERT INTO `user` VALUES ('74E2A7B78126454FB4B550E7E7D7C6E7', 'cadmin', '0', '222@qq.com', '145345345', 'ROLE_COURSEADMIN', '教程管理员', '4ef1cc14b3adaf5e6775024f2ab73887039095b2', '																	\r\n	', '															\r\n			', '小学', '', '1');
INSERT INTO `user` VALUES ('99BC7271C1D94E7B9555D6D10333BF01', 'iadmin', '0', '2qw22@qq.com', '122q321232', 'ROLE_INFOADMIN', '资讯管理员', 'c26e551a52a1c64d266b931fd369b6073a8340b1', '', '', '无', '', '1');
INSERT INTO `user` VALUES ('C6282DC7D9CB4968A5B9AE010746C324', 'tadmin', '0', 'a@qq.com', '1231312124', 'ROLE_TRAVELADMIN', '行程管理员', 'fc19592f74a7d2d2ea69b11e3beb2c1827da184b', null, null, null, null, '1');
INSERT INTO `user` VALUES ('D5864B6B77774C2490ADFBE2B3B5A46B', 'eadmin', '0', '222@qq.com', '123123123123', 'ROLE_EQUIPADMIN', '装备管理员', 'f2cb2645460b4e1d4fddaa7ec014f488427c1924', null, null, null, null, '1');

-- ----------------------------
-- Table structure for userrole
-- ----------------------------
DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(32) NOT NULL COMMENT '角色ID',
  `UserID` varchar(32) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='用户---角色';

-- ----------------------------
-- Records of userrole
-- ----------------------------
INSERT INTO `userrole` VALUES ('12', '5AF110E0E7984175B657328C227A9AC6', '0822AA871DD84C55BCB66862E01B81BF');
INSERT INTO `userrole` VALUES ('16', '5AF110E0E7984175B657328C227A9AC4', '6EA8F60C45CF415C99D795684E111B0E');
INSERT INTO `userrole` VALUES ('17', '5AF110E0E7984175B657328C227A9AC5', '99BC7271C1D94E7B9555D6D10333BF01');
INSERT INTO `userrole` VALUES ('18', '5AF110E0E7984175B657328C227A9AC3', '4B8F791B00AC44F6A4C6D2AA24DACB63');
INSERT INTO `userrole` VALUES ('19', '5AF110E0E7984175B657328C227A9AC1', '099705B71DFE4BD8B9A92E6050A67208');
INSERT INTO `userrole` VALUES ('20', '5AF110E0E7984175B657328C227A9AC2', '74E2A7B78126454FB4B550E7E7D7C6E7');
INSERT INTO `userrole` VALUES ('22', '5AF110E0E7984175B657328C227A9AC3', '0B6563A073F749F7A6CDA79D27CF1A60');
INSERT INTO `userrole` VALUES ('23', '70427E5323C44AF78C4C9420130E73A6', 'D5864B6B77774C2490ADFBE2B3B5A46B');
INSERT INTO `userrole` VALUES ('24', '91F40D4325AE47EC9F5C51806528162D', 'C6282DC7D9CB4968A5B9AE010746C324');
