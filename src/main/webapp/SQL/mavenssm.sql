/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : mavenssm

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2016-10-26 10:17:42
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
  `user_pwd` varchar(32) DEFAULT NULL COMMENT '加盐后用户密码',
  `pwd_salt` varchar(6) DEFAULT NULL COMMENT 'MD5盐',
  `state` int(11) DEFAULT '0' COMMENT '用户激活状态，0未激活，1已激活，默认未激活',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `is_delete` tinyint(4) DEFAULT NULL COMMENT '是否删除，0未删除；1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='用户登录表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '张三', '12345678901', '12345678901@163com', '', '', null, null, '2016-10-01 23:38:56', '2016-10-14 23:39:09', '0');
INSERT INTO `t_user` VALUES ('2', '李四', '12345678902', '12345678902@163com', '', '', null, null, '2016-10-01 23:39:01', '2016-10-14 23:39:13', '0');
INSERT INTO `t_user` VALUES ('3', 'www', '12345678903', '12345678903@163com', '123', '', null, null, '2016-10-14 23:39:05', '2016-10-01 23:39:16', '0');
INSERT INTO `t_user` VALUES ('15', 'xuwei', '123', '123', '123', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('16', '@@@', '123', '123', '123', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('17', 'cxc', 'cxc', 'sads', 'csxc', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('18', 'adstretr', 'tretret', 'ertreter', 'eretret', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('19', 'adsddsad', 'tretretasdasd', 'ertreterdsad', 'dsadad', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('20', 'sdfsdf', '18539920693', 'dsfsd@123.com', 'dfsdf', null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('21', 'dsfgdgf', '13102086520', 'dfdsf@1223.com', 'dssdsd', null, null, null, null, null, null);
