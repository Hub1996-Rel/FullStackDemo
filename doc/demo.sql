/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : demo

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 26/01/2021 10:37:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `sex` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `address` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zhangsan', '张三', '123', '男', '888@qq.com', '呼伦贝尔');
INSERT INTO `user` VALUES (2, 'lisi', '李四', '123', '男', '777@qq.com', '北京市');
INSERT INTO `user` VALUES (3, 'lisi1', '李四1', '123', '男', '777@qq.com', '北京市');
INSERT INTO `user` VALUES (5, 'lisi3', '李四', '123', '男', '777@qq.com', '北京市');
INSERT INTO `user` VALUES (6, 'lisi4', '李四', '123', '男', '777@qq.com', '北京市');
INSERT INTO `user` VALUES (7, 'lisi5', '李四', '123', '男', '777@qq.com', '北京市');
INSERT INTO `user` VALUES (8, 'lisi6', '李四', '123', '男', '777@qq.com', '北京市');
INSERT INTO `user` VALUES (9, 'lisi7', '李四', '123', '男', '777@qq.com', '北京市');
INSERT INTO `user` VALUES (10, 'lisi8', '李四', '123', '男', '777@qq.com', '北京市');
INSERT INTO `user` VALUES (11, 'lisi9', '李四', '123', '男', '777@qq.com', '北京市');
INSERT INTO `user` VALUES (17, 'zhangsan1', '张三1', '123', '男', '888@qq.com', '呼伦贝尔');
INSERT INTO `user` VALUES (18, 'zhangsan2', '张三2', '123', '男', '888@qq.com', '呼伦贝尔');
INSERT INTO `user` VALUES (19, 'zhangsan3', '张三3', '123', '男', '888@qq.com', '呼伦贝尔');
INSERT INTO `user` VALUES (20, 'zhangsan4', '张三4', '123', '男', '888@qq.com', '呼伦贝尔');
INSERT INTO `user` VALUES (21, 'zhangsan5', '张三5', '123', '男', '888@qq.com', '呼伦贝尔');
INSERT INTO `user` VALUES (22, 'zhangsan6', '张三6', '123', '男', '888@qq.com', '呼伦贝尔');
INSERT INTO `user` VALUES (23, 'zhangsan7', '张三7', '123', '男', '888@qq.com', '呼伦贝尔');
INSERT INTO `user` VALUES (24, 'zhangsan8', '张三8', '123', '男', '888@qq.com', '呼伦贝尔');

SET FOREIGN_KEY_CHECKS = 1;
