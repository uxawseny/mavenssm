/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : mavenssm

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2016-11-15 13:20:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `user_phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱地址',
  `user_pwd` varchar(255) DEFAULT NULL COMMENT '加盐后用户密码',
  `pwd_salt` varchar(6) DEFAULT NULL COMMENT 'MD5盐',
  `state` int(11) DEFAULT '0' COMMENT '用户激活状态，0未激活，1已激活，默认未激活',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `is_delete` tinyint(4) DEFAULT NULL COMMENT '是否删除，0未删除；1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='用户登录表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
