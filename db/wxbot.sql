/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : wxbot

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-15 22:57:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wb_user
-- ----------------------------
DROP TABLE IF EXISTS `wb_user`;
CREATE TABLE `wb_user` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `gid` int(8) NOT NULL COMMENT '用户权限所在分组',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '账号状态 0-正常  -1-冻结',
  `username` varchar(16) NOT NULL COMMENT '用户登录名',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  `nickname` varchar(64) DEFAULT '空白' COMMENT '用户名称',
  `login_ip` varchar(16) DEFAULT '0.0.0.0' COMMENT '用户登录ip',
  `create_time` int(16) DEFAULT NULL COMMENT '创建时间',
  `login_time` int(16) DEFAULT NULL COMMENT '登录时间',
  `update_time` int(16) DEFAULT NULL COMMENT '更新信息时间',
  `deleted_time` int(16) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户资料表';

-- ----------------------------
-- Records of wb_user
-- ----------------------------

-- ----------------------------
-- Table structure for wb_user_group
-- ----------------------------
DROP TABLE IF EXISTS `wb_user_group`;
CREATE TABLE `wb_user_group` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '用户' COMMENT '组别名称',
  `permissions` varchar(255) DEFAULT NULL COMMENT '权限分配多个按 '','' 隔开',
  `create_time` int(16) DEFAULT NULL,
  `update_time` int(16) DEFAULT NULL,
  `deleted_time` int(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户权限组';

-- ----------------------------
-- Records of wb_user_group
-- ----------------------------
