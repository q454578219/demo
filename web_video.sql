/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : web_video

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-10-24 18:12:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for button
-- ----------------------------
DROP TABLE IF EXISTS `button`;
CREATE TABLE `button` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bcode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of button
-- ----------------------------
INSERT INTO `button` VALUES ('1', '用户新增', 'user:add');
INSERT INTO `button` VALUES ('2', '用户修改', 'user:update');
INSERT INTO `button` VALUES ('3', '用户删除', 'user:delete');

-- ----------------------------
-- Table structure for button_role
-- ----------------------------
DROP TABLE IF EXISTS `button_role`;
CREATE TABLE `button_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `buttonid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of button_role
-- ----------------------------
INSERT INTO `button_role` VALUES ('1', '1', '1');
INSERT INTO `button_role` VALUES ('2', '1', '2');
INSERT INTO `button_role` VALUES ('3', '1', '3');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `mid` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `mname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `mcode` varchar(255) NOT NULL COMMENT '菜单编码',
  `murl` varchar(255) NOT NULL COMMENT '菜单地址',
  `micon` varchar(255) NOT NULL COMMENT '图片',
  `mparent` int(11) DEFAULT NULL COMMENT '父节点',
  `morder` int(3) DEFAULT NULL COMMENT '排序',
  `mstatus` int(1) NOT NULL DEFAULT '1' COMMENT '状态 开启：1 关闭：0',
  `mremark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', '系统菜单', 'SYSTEM', '', '', '0', '1', '1', null);
INSERT INTO `module` VALUES ('2', '用户管理', 'SYSTEM:USER', '', '', '1', '1', '1', null);
INSERT INTO `module` VALUES ('3', '菜单管理', 'SYSTEM:MODULE', '', '', '1', '2', '1', null);
INSERT INTO `module` VALUES ('4', '角色管理', 'SYSTEM:ROLE', '', '', '1', '3', '1', null);

-- ----------------------------
-- Table structure for module_role
-- ----------------------------
DROP TABLE IF EXISTS `module_role`;
CREATE TABLE `module_role` (
  `rid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  KEY `rid` (`rid`) USING BTREE,
  KEY `mid` (`mid`) USING BTREE,
  CONSTRAINT `mid` FOREIGN KEY (`mid`) REFERENCES `module` (`mid`),
  CONSTRAINT `rid` FOREIGN KEY (`rid`) REFERENCES `role` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of module_role
-- ----------------------------
INSERT INTO `module_role` VALUES ('1', '1');
INSERT INTO `module_role` VALUES ('1', '2');
INSERT INTO `module_role` VALUES ('1', '3');
INSERT INTO `module_role` VALUES ('1', '4');
INSERT INTO `module_role` VALUES ('2', '1');
INSERT INTO `module_role` VALUES ('2', '3');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin');
INSERT INTO `role` VALUES ('2', 'customer');
INSERT INTO `role` VALUES ('3', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '1', '2018-09-25 17:22:20');
INSERT INTO `user` VALUES ('2', 'xyycici', '1992', '1', '2018-09-25 17:22:20');
INSERT INTO `user` VALUES ('3', 'sujin', '123', '1', '2018-09-25 17:22:20');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  KEY `u_fk` (`uid`) USING BTREE,
  KEY `r_fk` (`rid`) USING BTREE,
  CONSTRAINT `r_fk` FOREIGN KEY (`rid`) REFERENCES `role` (`rid`),
  CONSTRAINT `u_fk` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('3', '3');
