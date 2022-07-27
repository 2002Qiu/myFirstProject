/*
Navicat MySQL Data Transfer

Source Server         : 11
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2022-07-27 20:17:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bmgys_weihu`
-- ----------------------------
DROP TABLE IF EXISTS `bmgys_weihu`;
CREATE TABLE `bmgys_weihu` (
  `gys_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '供应商编号',
  `gys_name` varchar(50) DEFAULT NULL COMMENT '供应商名称',
  `gys_jc` varchar(50) DEFAULT NULL COMMENT '供应商简称',
  `gys_dz` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `dqzgrs` varchar(30) DEFAULT NULL COMMENT '当前在岗人数',
  PRIMARY KEY (`gys_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bmgys_weihu
-- ----------------------------
INSERT INTO `bmgys_weihu` VALUES ('1', '11', '1656', '山西省长治市', '11');
INSERT INTO `bmgys_weihu` VALUES ('2', '22', '1657', '山西省长治市', '10');

-- ----------------------------
-- Table structure for `bm_weihu`
-- ----------------------------
DROP TABLE IF EXISTS `bm_weihu`;
CREATE TABLE `bm_weihu` (
  `bm_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `bmparent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestor` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `bm_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `bm_xssx` int(11) DEFAULT '0' COMMENT '显示顺序',
  `bm_leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `bm_phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `bm_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `bm_status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `bm_delete` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `bm_create` varchar(64) DEFAULT '' COMMENT '创建者',
  `bm_createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `bm_update` varchar(64) DEFAULT '' COMMENT '更新者',
  `bm_updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`bm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bm_weihu
-- ----------------------------
INSERT INTO `bm_weihu` VALUES ('1', '0', '0', '武工职', '0', '叶勇', '110', '1100@qq.com', '0', '0', '', '2022-07-23 00:00:00', '', null);
INSERT INTO `bm_weihu` VALUES ('2', '1', '0,1', '信息学院', '0', '龚海燕', '120', '120@qq.com', '0', '0', '', '2022-07-23 00:00:00', '小王', '2022-07-23 00:00:00');
INSERT INTO `bm_weihu` VALUES ('3', '1', '0,1', '机电学院', '0', '张某某', '130', '130@qq.com', '0', '0', '', '2022-07-23 00:00:00', '小王', '2022-07-23 00:00:00');
INSERT INTO `bm_weihu` VALUES ('4', '1', '0,1', '经贸学院', '0', '王某某', '140', '140@qq.com', '0', '0', '', '2022-07-23 00:00:00', '', null);
INSERT INTO `bm_weihu` VALUES ('5', '0', '0', '腾讯', '0', '马化腾', '111', '111@qq.com', '0', '0', '', '2022-07-23 00:00:00', '', null);
INSERT INTO `bm_weihu` VALUES ('6', '5', '0,1,5', '光子', '1', '小张', '150', '150@qq.com', '0', '0', '', '2022-07-23 00:00:00', '', null);
INSERT INTO `bm_weihu` VALUES ('7', '2', '0,1,2', '软件2002班', '0', '张刚', '222', '222@qq.com', '0', '0', '', '2022-07-23 00:00:00', '', null);
INSERT INTO `bm_weihu` VALUES ('8', '5', '0,5', '农1111', '0', '小王', '150', '150@xx.cn', '0', '0', '', '2022-07-25 00:00:00', '', null);
INSERT INTO `bm_weihu` VALUES ('11', '4', '0,1,4', '444', '0', '', '', '', '0', '0', '', null, '', null);

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'bm_weihu', '组织机构维护', '', null, 'BmWeihu', 'tree', 'com.ruoyi.system', 'system', 'weihu', '组织机构维护', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"bm_name\",\"treeParentCode\":\"bmparent_id\",\"parentMenuName\":\"组织机构管理\",\"treeCode\":\"bm_id\"}', 'admin', '2022-07-23 14:33:17', '', '2022-07-25 15:50:44', '');
INSERT INTO `gen_table` VALUES ('3', 'bmgys_weihu', '供应商信息表', '', null, 'BmgysWeihu', 'crud', 'com.ruoyi.system', 'gyssystem', 'gysxxb', '供应商基本信息维护', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2000\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"组织机构管理\",\"treeCode\":\"\"}', 'admin', '2022-07-23 16:24:07', '', '2022-07-23 22:04:44', '');
INSERT INTO `gen_table` VALUES ('4', 'user_b', '员工信息表', '', null, 'UserB', 'crud', 'com.ruoyi.system', 'usersystem', 'b', '人员基本信息维护', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2025\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"人事管理\",\"treeCode\":\"\"}', 'admin', '2022-07-24 14:09:08', '', '2022-07-25 15:25:17', '');
INSERT INTO `gen_table` VALUES ('12', 'usergw_b', '岗位信息表', '', null, 'UsergwB', 'tree', 'com.ruoyi.system', 'usergwsystem', 'c', '岗位信息管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2025\",\"treeName\":\"gw_name\",\"treeParentCode\":\"gwparent_id\",\"parentMenuName\":\"人事管理\",\"treeCode\":\"gw_id\"}', 'admin', '2022-07-26 14:56:52', '', '2022-07-26 14:58:17', '');
INSERT INTO `gen_table` VALUES ('16', 'pzuser', '员工配置信息表', '', null, 'Pzuser', 'crud', 'com.ruoyi.system', 'pzusersystem', 'pzuser', '员工配置管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2025\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"人事管理\",\"treeCode\":\"\"}', 'admin', '2022-07-26 20:24:46', '', '2022-07-26 20:36:42', '');
INSERT INTO `gen_table` VALUES ('20', 'yg_qj_a', '员工请假信息表', '', null, 'YgQjA', 'crud', 'com.ruoyi.system', 'ygqjsystem', 'e', '请休假管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2068\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"考勤管理\",\"treeCode\":\"\"}', 'admin', '2022-07-27 14:48:31', '', '2022-07-27 14:52:35', '');
INSERT INTO `gen_table` VALUES ('21', 'yg_cc_b', '员工出差信息表', '', null, 'YgCcB', 'crud', 'com.ruoyi.system', 'ygccsystem', 'f', '出差管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2068\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"考勤管理\",\"treeCode\":\"\"}', 'admin', '2022-07-27 15:09:58', '', '2022-07-27 15:12:12', '');
INSERT INTO `gen_table` VALUES ('22', 'yg_kq_c', '员工考勤异常表', '', null, 'YgKqC', 'crud', 'com.ruoyi.system', 'ygkqsystem', 'g', '异常考勤管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2068\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"考勤管理\",\"treeCode\":\"\"}', 'admin', '2022-07-27 15:29:28', '', '2022-07-27 15:34:46', '');
INSERT INTO `gen_table` VALUES ('24', 'user_lz', '员工离职信息表', '', null, 'UserLz', 'crud', 'com.ruoyi.system', 'user_lz_system', 'lz', '员工离职功能', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2025\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"人事管理\",\"treeCode\":\"\"}', 'admin', '2022-07-27 19:53:40', '', '2022-07-27 19:57:42', '');

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'bm_id', '部门id', 'bigint(20)', 'Long', 'bmId', '1', '1', null, '1', null, '1', null, 'EQ', 'input', '', '1', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('2', '1', 'bmparent_id', '父部门id', 'bigint(20)', 'Long', 'bmparentId', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '2', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('3', '1', 'ancestor', '祖级列表', 'varchar(50)', 'String', 'ancestor', '0', '0', null, null, '1', null, null, 'EQ', 'input', '', '3', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('4', '1', 'bm_name', '部门名称', 'varchar(30)', 'String', 'bmName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '4', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('5', '1', 'bm_xssx', '显示顺序', 'int(4)', 'Integer', 'bmXssx', '0', '0', null, null, '1', '1', null, 'EQ', 'input', '', '5', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('6', '1', 'bm_leader', '负责人', 'varchar(20)', 'String', 'bmLeader', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('7', '1', 'bm_phone', '联系电话', 'varchar(11)', 'String', 'bmPhone', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('8', '1', 'bm_email', '邮箱', 'varchar(50)', 'String', 'bmEmail', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '8', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('9', '1', 'bm_status', '部门状态（0正常 1停用）', 'char(1)', 'String', 'bmStatus', '0', '0', null, '1', '1', '1', '1', 'EQ', 'radio', '', '9', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('10', '1', 'bm_delete', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'bmDelete', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '10', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('11', '1', 'bm_create', '创建者', 'varchar(64)', 'String', 'bmCreate', '0', '0', null, null, null, null, null, 'EQ', 'input', '', '11', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('12', '1', 'bm_createtime', '创建时间', 'datetime', 'Date', 'bmCreatetime', '0', '0', null, '1', null, '1', null, 'EQ', 'datetime', '', '12', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('13', '1', 'bm_update', '更新者', 'varchar(64)', 'String', 'bmUpdate', '0', '0', null, null, '1', null, null, 'EQ', 'input', '', '13', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('14', '1', 'bm_updatetime', '更新时间', 'datetime', 'Date', 'bmUpdatetime', '0', '0', null, null, '1', null, null, 'EQ', 'datetime', '', '14', 'admin', '2022-07-23 14:33:17', null, '2022-07-25 15:50:44');
INSERT INTO `gen_table_column` VALUES ('29', '3', 'gys_id', '供应商编号', 'bigint(20)', 'Long', 'gysId', '1', '1', null, '1', null, '1', '1', 'EQ', 'input', '', '1', 'admin', '2022-07-23 16:24:07', null, '2022-07-23 22:04:44');
INSERT INTO `gen_table_column` VALUES ('30', '3', 'gys_name', '供应商名称', 'varchar(50)', 'String', 'gysName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-07-23 16:24:07', null, '2022-07-23 22:04:44');
INSERT INTO `gen_table_column` VALUES ('31', '3', 'gys_jc', '供应商简称', 'varchar(50)', 'String', 'gysJc', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-07-23 16:24:07', null, '2022-07-23 22:04:44');
INSERT INTO `gen_table_column` VALUES ('32', '3', 'gys_dz', '联系地址', 'varchar(100)', 'String', 'gysDz', '0', '0', null, '1', '1', '1', null, 'LIKE', 'input', '', '4', 'admin', '2022-07-23 16:24:07', null, '2022-07-23 22:04:44');
INSERT INTO `gen_table_column` VALUES ('33', '3', 'dqzgrs', '当前在岗人数', 'varchar(30)', 'String', 'dqzgrs', '0', '0', null, '1', null, '1', null, 'EQ', 'input', '', '5', 'admin', '2022-07-23 16:24:07', null, '2022-07-23 22:04:44');
INSERT INTO `gen_table_column` VALUES ('34', '4', 'yg_id', '员工工号', 'bigint(20)', 'Long', 'ygId', '1', '1', null, null, null, '1', null, 'EQ', 'input', '', '1', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('35', '4', 'yg_bm', '员工部门', 'varchar(20)', 'String', 'ygBm', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('36', '4', 'yg_name', '员工姓名', 'varchar(30)', 'String', 'ygName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('37', '4', 'yg_sfzh', '员工身份证号', 'varchar(18)', 'String', 'ygSfzh', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '4', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('38', '4', 'yg_hjdz', '员工户籍地址', 'varchar(100)', 'String', 'ygHjdz', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '5', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('39', '4', 'yg_gj', '员工国籍', 'varchar(20)', 'String', 'ygGj', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('40', '4', 'yg_mz', '民族', 'varchar(10)', 'String', 'ygMz', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('41', '4', 'yg_cssj', '出生时间', 'datetime', 'Date', 'ygCssj', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '8', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('42', '4', 'yg_dw', '协力供应商单位', 'varchar(20)', 'String', 'ygDw', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('43', '4', 'yg_rzsj', '员工入职时间', 'datetime', 'Date', 'ygRzsj', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '10', 'admin', '2022-07-24 14:09:08', null, '2022-07-25 15:25:17');
INSERT INTO `gen_table_column` VALUES ('71', '12', 'gw_id', '岗位序号', 'bigint(40)', 'Long', 'gwId', '1', '1', null, '1', null, '1', '1', 'EQ', 'input', '', '1', 'admin', '2022-07-26 14:56:52', null, '2022-07-26 14:58:17');
INSERT INTO `gen_table_column` VALUES ('72', '12', 'gwparent_id', '父部门id', 'bigint(20)', 'Long', 'gwparentId', '0', '0', null, '1', '1', null, null, 'EQ', 'input', '', '2', 'admin', '2022-07-26 14:56:52', null, '2022-07-26 14:58:17');
INSERT INTO `gen_table_column` VALUES ('73', '12', 'gw_name', '岗位名称', 'varchar(30)', 'String', 'gwName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '3', 'admin', '2022-07-26 14:56:52', null, '2022-07-26 14:58:17');
INSERT INTO `gen_table_column` VALUES ('74', '12', 'gw_jb', '岗位级别', 'varchar(50)', 'String', 'gwJb', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2022-07-26 14:56:52', null, '2022-07-26 14:58:17');
INSERT INTO `gen_table_column` VALUES ('85', '16', 'yg_id', '员工工号', 'bigint(20)', 'Long', 'ygId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2022-07-26 20:24:46', null, '2022-07-26 20:36:42');
INSERT INTO `gen_table_column` VALUES ('86', '16', 'yg_name', '员工姓名', 'varchar(30)', 'String', 'ygName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-07-26 20:24:46', null, '2022-07-26 20:36:42');
INSERT INTO `gen_table_column` VALUES ('87', '16', 'yg_bm', '员工部门', 'varchar(20)', 'String', 'ygBm', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-07-26 20:24:46', null, '2022-07-26 20:36:42');
INSERT INTO `gen_table_column` VALUES ('88', '16', 'yg_gw', '员工所在岗位', 'varchar(20)', 'String', 'ygGw', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2022-07-26 20:24:46', null, '2022-07-26 20:36:42');
INSERT INTO `gen_table_column` VALUES ('110', '20', 'qj_id', '员工休假id', 'bigint(10)', 'Integer', 'qjId', '1', '1', null, null, null, '1', null, 'EQ', 'input', '', '1', 'admin', '2022-07-27 14:48:31', null, '2022-07-27 14:52:35');
INSERT INTO `gen_table_column` VALUES ('111', '20', 'qj_name', '请假人姓名', 'varchar(30)', 'String', 'qjName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-07-27 14:48:31', null, '2022-07-27 14:52:35');
INSERT INTO `gen_table_column` VALUES ('112', '20', 'qj_lx', '请假类型', 'char(1)', 'String', 'qjLx', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 'yg_xj_a', '3', 'admin', '2022-07-27 14:48:31', null, '2022-07-27 14:52:35');
INSERT INTO `gen_table_column` VALUES ('113', '20', 'qj_start', '请假开始时间', 'datetime', 'Date', 'qjStart', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '4', 'admin', '2022-07-27 14:48:31', null, '2022-07-27 14:52:35');
INSERT INTO `gen_table_column` VALUES ('114', '20', 'qj_js', '请假结束时间', 'datetime', 'Date', 'qjJs', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '5', 'admin', '2022-07-27 14:48:31', null, '2022-07-27 14:52:35');
INSERT INTO `gen_table_column` VALUES ('115', '20', 'qj_sc', '请假时长', 'int(10)', 'Integer', 'qjSc', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '6', 'admin', '2022-07-27 14:48:31', null, '2022-07-27 14:52:35');
INSERT INTO `gen_table_column` VALUES ('116', '20', 'qj_sy', '请假事由', 'varchar(100)', 'String', 'qjSy', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2022-07-27 14:48:31', null, '2022-07-27 14:52:35');
INSERT INTO `gen_table_column` VALUES ('117', '20', 'qj_dtr', '工作代替人', 'varchar(30)', 'String', 'qjDtr', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '8', 'admin', '2022-07-27 14:48:31', null, '2022-07-27 14:52:35');
INSERT INTO `gen_table_column` VALUES ('118', '21', 'cc_id', '出差人员id', 'bigint(20)', 'Long', 'ccId', '1', '1', null, null, null, '1', '1', 'EQ', 'input', '', '1', 'admin', '2022-07-27 15:09:58', null, '2022-07-27 15:12:12');
INSERT INTO `gen_table_column` VALUES ('119', '21', 'cc_name', '出差人员姓名', 'varchar(30)', 'String', 'ccName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-07-27 15:09:58', null, '2022-07-27 15:12:12');
INSERT INTO `gen_table_column` VALUES ('120', '21', 'cc_mdd', '出差目的地', 'varchar(100)', 'String', 'ccMdd', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-07-27 15:09:58', null, '2022-07-27 15:12:12');
INSERT INTO `gen_table_column` VALUES ('121', '21', 'cc_sj', '出差时间', 'datetime', 'Date', 'ccSj', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '4', 'admin', '2022-07-27 15:09:58', null, '2022-07-27 15:12:12');
INSERT INTO `gen_table_column` VALUES ('122', '21', 'cc_start', '出差开始时间', 'datetime', 'Date', 'ccStart', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '5', 'admin', '2022-07-27 15:09:58', null, '2022-07-27 15:12:12');
INSERT INTO `gen_table_column` VALUES ('123', '21', 'cc_final', '出差结束时间', 'datetime', 'Date', 'ccFinal', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '6', 'admin', '2022-07-27 15:09:58', null, '2022-07-27 15:12:12');
INSERT INTO `gen_table_column` VALUES ('124', '21', 'cc_sy', '出差事由', 'varchar(100)', 'String', 'ccSy', '0', '0', null, '1', '1', '1', null, 'EQ', 'input', '', '7', 'admin', '2022-07-27 15:09:58', null, '2022-07-27 15:12:12');
INSERT INTO `gen_table_column` VALUES ('125', '22', 'ygyc_id', '员工id', 'bigint(10)', 'Integer', 'ygycId', '1', '1', null, null, null, '1', null, 'EQ', 'input', '', '1', 'admin', '2022-07-27 15:29:28', null, '2022-07-27 15:34:46');
INSERT INTO `gen_table_column` VALUES ('126', '22', 'ygyc_name', '员工姓名', 'varchar(30)', 'String', 'ygycName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-07-27 15:29:28', null, '2022-07-27 15:34:46');
INSERT INTO `gen_table_column` VALUES ('127', '22', 'ygyc_leix', '员工异常类型', 'char(1)', 'String', 'ygycLeix', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 'yg_kq_c', '3', 'admin', '2022-07-27 15:29:28', null, '2022-07-27 15:34:46');
INSERT INTO `gen_table_column` VALUES ('128', '22', 'ygyc_time', '异常时间', 'datetime', 'Date', 'ygycTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '4', 'admin', '2022-07-27 15:29:28', null, '2022-07-27 15:34:46');
INSERT INTO `gen_table_column` VALUES ('134', '24', 'yg_id', '员工工号', 'bigint(30)', 'Long', 'ygId', '1', '1', null, '1', null, '1', '1', 'EQ', 'input', '', '1', 'admin', '2022-07-27 19:53:40', null, '2022-07-27 19:57:42');
INSERT INTO `gen_table_column` VALUES ('135', '24', 'yg_name', '员工姓名', 'varchar(40)', 'String', 'ygName', '0', '0', null, '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2022-07-27 19:53:40', null, '2022-07-27 19:57:42');
INSERT INTO `gen_table_column` VALUES ('136', '24', 'yglz_gw', '离职岗位', 'varchar(40)', 'String', 'yglzGw', '0', '0', null, '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2022-07-27 19:53:40', null, '2022-07-27 19:57:42');
INSERT INTO `gen_table_column` VALUES ('137', '24', 'yglz_lx', '离职类型', 'char(1)', 'String', 'yglzLx', '0', '0', null, '1', '1', '1', '1', 'EQ', 'select', 'yg_lzlx', '4', 'admin', '2022-07-27 19:53:40', null, '2022-07-27 19:57:42');
INSERT INTO `gen_table_column` VALUES ('138', '24', 'yglz_time', '确认离职时间', 'datetime', 'Date', 'yglzTime', '0', '0', null, '1', '1', '1', null, 'EQ', 'datetime', '', '5', 'admin', '2022-07-27 19:53:40', null, '2022-07-27 19:57:42');

-- ----------------------------
-- Table structure for `pzuser`
-- ----------------------------
DROP TABLE IF EXISTS `pzuser`;
CREATE TABLE `pzuser` (
  `yg_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '员工工号',
  `yg_name` varchar(30) CHARACTER SET utf8 DEFAULT '' COMMENT '员工姓名',
  `yg_bm` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '员工部门',
  `yg_gw` varchar(20) CHARACTER SET utf8 DEFAULT '' COMMENT '员工所在岗位',
  PRIMARY KEY (`yg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pzuser
-- ----------------------------
INSERT INTO `pzuser` VALUES ('2', 'tom jack', '光子', 'hr');

-- ----------------------------
-- Table structure for `qrtz_blob_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_calendars`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_cron_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_fired_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_job_details`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_locks`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_paused_trigger_grps`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_scheduler_state`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simple_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_simprop_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `qrtz_triggers`
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES ('6', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('7', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES ('8', '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES ('9', '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES ('10', '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2022-07-23 14:17:42', '', null, '是否开启菜单多页签显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for `sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', '', null);
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', '', null);
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', 'admin', '2022-07-24 10:27:23');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-07-23 14:17:40', '', null);

-- ----------------------------
-- Table structure for `sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-07-23 14:17:41', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-07-23 14:17:41', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-07-23 14:17:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-07-23 14:17:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-07-23 14:17:41', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-07-23 14:17:41', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-07-23 14:17:41', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-07-23 14:17:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-07-23 14:17:41', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('30', '1', '事假', '0', 'yg_xj_a', null, 'primary', 'Y', '0', 'admin', '2022-07-27 14:28:23', '', null, '事假');
INSERT INTO `sys_dict_data` VALUES ('31', '2', '年休', '1', 'yg_xj_a', null, 'primary', 'Y', '0', 'admin', '2022-07-27 14:29:12', '', null, '年休');
INSERT INTO `sys_dict_data` VALUES ('32', '3', '婚嫁', '2', 'yg_xj_a', null, 'primary', 'Y', '0', 'admin', '2022-07-27 14:43:56', '', null, '婚嫁');
INSERT INTO `sys_dict_data` VALUES ('33', '4', '丧假', '3', 'yg_xj_a', null, 'primary', 'Y', '0', 'admin', '2022-07-27 14:44:27', '', null, '丧假');
INSERT INTO `sys_dict_data` VALUES ('34', '4', '病假', '4', 'yg_xj_a', null, 'primary', 'Y', '0', 'admin', '2022-07-27 14:44:53', '', null, '病假');
INSERT INTO `sys_dict_data` VALUES ('35', '1', '旷工', '0', 'yg_kq_c', null, 'primary', 'Y', '0', 'admin', '2022-07-27 15:32:35', '', null, '旷工');
INSERT INTO `sys_dict_data` VALUES ('36', '2', '迟到', '1', 'yg_kq_c', null, 'primary', 'Y', '0', 'admin', '2022-07-27 15:32:53', '', null, '迟到');
INSERT INTO `sys_dict_data` VALUES ('37', '3', '早退', '2', 'yg_kq_c', '', 'primary', 'Y', '0', 'admin', '2022-07-27 15:33:23', 'admin', '2022-07-27 15:33:32', '早退');
INSERT INTO `sys_dict_data` VALUES ('38', '1', '长期', '0', 'yg_lzlx', null, 'primary', 'Y', '0', 'admin', '2022-07-27 19:55:58', '', null, '长期离职');
INSERT INTO `sys_dict_data` VALUES ('39', '2', '短期', '1', 'yg_lzlx', null, 'primary', 'Y', '0', 'admin', '2022-07-27 19:56:23', '', null, '短期离职');

-- ----------------------------
-- Table structure for `sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2022-07-23 14:17:41', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2022-07-23 14:17:41', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2022-07-23 14:17:41', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2022-07-23 14:17:41', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2022-07-23 14:17:41', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2022-07-23 14:17:41', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2022-07-23 14:17:41', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2022-07-23 14:17:41', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2022-07-23 14:17:41', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2022-07-23 14:17:41', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('11', '休假类型', 'yg_xj_a', '0', 'admin', '2022-07-27 14:14:38', '', null, '休假类型（事假，年休，婚嫁，丧假，病假）');
INSERT INTO `sys_dict_type` VALUES ('12', '异常类型', 'yg_kq_c', '0', 'admin', '2022-07-27 15:31:20', '', null, '异常类型（矿工，迟到，早退）');
INSERT INTO `sys_dict_type` VALUES ('13', '离职类型', 'yg_lzlx', '0', 'admin', '2022-07-27 19:55:11', '', null, '员工离职类型');

-- ----------------------------
-- Table structure for `sys_job`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-07-23 14:17:42', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-07-23 14:17:42', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-07-23 14:17:42', '', null, '');

-- ----------------------------
-- Table structure for `sys_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logininfor`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 14:19:39');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-23 14:33:07');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 14:33:11');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-23 15:33:36');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 15:33:40');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 15:49:24');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 15:53:58');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 15:56:52');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 16:33:56');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 16:35:54');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 16:37:16');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 16:47:59');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 21:47:07');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 21:49:08');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 21:49:48');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 22:03:33');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-23 22:07:34');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-23 22:07:38');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-24 09:26:50');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-24 10:21:22');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-24 10:55:45');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-24 14:01:55');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-24 14:17:52');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-24 16:06:45');
INSERT INTO `sys_logininfor` VALUES ('124', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-24 16:23:00');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-25 14:04:35');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-25 14:19:17');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-25 14:46:33');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 08:27:57');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 09:33:35');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 09:42:43');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 10:23:46');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-26 10:42:32');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-26 10:42:34');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 10:42:36');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 10:46:35');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-26 10:55:16');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-26 10:55:22');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-26 10:55:24');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 10:55:26');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 11:02:41');
INSERT INTO `sys_logininfor` VALUES ('141', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 11:05:36');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 11:28:25');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 11:35:45');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-26 13:59:00');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-26 13:59:04');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 13:59:06');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 14:29:50');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 14:39:38');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 14:42:32');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 14:47:53');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 14:52:22');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 15:01:23');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 16:59:24');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 17:23:13');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 17:24:02');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 17:24:33');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 19:07:50');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 19:09:38');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 19:10:24');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-26 19:10:44');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-26 19:10:48');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 19:10:50');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 19:13:37');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 19:18:04');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 19:23:17');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 19:52:50');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 19:54:23');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 20:20:04');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 20:21:51');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 20:38:43');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 21:07:46');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 21:31:00');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 21:31:23');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 21:31:47');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 21:42:17');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-26 21:44:17');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 08:45:48');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 08:55:42');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-27 08:58:00');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 08:58:01');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-27 09:06:28');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-27 09:06:43');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 09:06:45');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 09:21:02');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-27 09:43:31');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 09:43:34');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 09:44:13');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 09:44:40');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 10:01:25');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 10:02:38');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 10:03:19');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 10:03:56');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-27 10:04:32');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 10:04:34');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 10:08:04');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 10:25:00');
INSERT INTO `sys_logininfor` VALUES ('197', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 10:25:30');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 13:54:10');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 14:13:00');
INSERT INTO `sys_logininfor` VALUES ('200', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 14:13:37');
INSERT INTO `sys_logininfor` VALUES ('201', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 14:35:05');
INSERT INTO `sys_logininfor` VALUES ('202', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 14:37:47');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 14:42:34');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 14:47:53');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 14:51:59');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 15:14:35');
INSERT INTO `sys_logininfor` VALUES ('207', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 15:31:41');
INSERT INTO `sys_logininfor` VALUES ('208', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 15:32:05');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 15:36:41');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-07-27 18:46:10');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 18:46:12');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 19:52:00');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-27 20:02:01');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2105 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '2', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2022-07-23 14:17:41', 'admin', '2022-07-24 16:09:13', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2022-07-23 14:17:41', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2022-07-23 14:17:41', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '若依官网', '0', '4', 'http://ruoyi.vip', 'menuBlank', 'C', '0', '1', '', 'fa fa-location-arrow', 'admin', '2022-07-23 14:17:41', '', null, '若依官网地址');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2022-07-23 14:17:41', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2022-07-23 14:17:41', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2022-07-23 14:17:41', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2022-07-23 14:17:41', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2022-07-23 14:17:41', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2022-07-23 14:17:41', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2022-07-23 14:17:41', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2022-07-23 14:17:41', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2022-07-23 14:17:41', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2022-07-23 14:17:41', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2022-07-23 14:17:41', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2022-07-23 14:17:41', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2022-07-23 14:17:41', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2022-07-23 14:17:41', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '表单构建', '3', '1', '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2022-07-23 14:17:41', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('115', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2022-07-23 14:17:41', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('116', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2022-07-23 14:17:41', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2022-07-23 14:17:41', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2022-07-23 14:17:41', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '账户解锁', '501', '4', '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '在线查询', '109', '1', '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '批量强退', '109', '2', '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '单条强退', '109', '3', '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务查询', '110', '1', '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务新增', '110', '2', '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务修改', '110', '3', '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '任务删除', '110', '4', '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '状态修改', '110', '5', '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '任务详细', '110', '6', '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '任务导出', '110', '7', '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成查询', '115', '1', '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '生成修改', '115', '2', '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '生成删除', '115', '3', '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '预览代码', '115', '4', '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('1061', '生成代码', '115', '5', '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2000', '组织机构管理', '0', '1', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-user-circle', 'admin', '2022-07-23 15:34:08', 'admin', '2022-07-24 16:08:50', '');
INSERT INTO `sys_menu` VALUES ('2001', '组织机构维护', '2000', '1', '/system/weihu', '', 'C', '0', '1', 'system:weihu:view', '#', 'admin', '2022-07-23 15:42:54', '', null, '组织机构维护菜单');
INSERT INTO `sys_menu` VALUES ('2002', '组织机构维护查询', '2001', '1', '#', '', 'F', '0', '1', 'system:weihu:list', '#', 'admin', '2022-07-23 15:42:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2003', '组织机构维护新增', '2001', '2', '#', '', 'F', '0', '1', 'system:weihu:add', '#', 'admin', '2022-07-23 15:42:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2004', '组织机构维护修改', '2001', '3', '#', '', 'F', '0', '1', 'system:weihu:edit', '#', 'admin', '2022-07-23 15:42:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2005', '组织机构维护删除', '2001', '4', '#', '', 'F', '0', '1', 'system:weihu:remove', '#', 'admin', '2022-07-23 15:42:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '组织机构维护导出', '2001', '5', '#', '', 'F', '0', '1', 'system:weihu:export', '#', 'admin', '2022-07-23 15:42:54', '', null, '');
INSERT INTO `sys_menu` VALUES ('2019', '供应商基本信息维护', '2000', '1', '/gyssystem/gysxxb', '', 'C', '0', '1', 'gyssystem:gysxxb:view', '#', 'admin', '2022-07-23 16:43:33', '', null, '供应商基本信息维护菜单');
INSERT INTO `sys_menu` VALUES ('2020', '供应商基本信息维护查询', '2019', '1', '#', '', 'F', '0', '1', 'gyssystem:gysxxb:list', '#', 'admin', '2022-07-23 16:43:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2021', '供应商基本信息维护新增', '2019', '2', '#', '', 'F', '0', '1', 'gyssystem:gysxxb:add', '#', 'admin', '2022-07-23 16:43:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2022', '供应商基本信息维护修改', '2019', '3', '#', '', 'F', '0', '1', 'gyssystem:gysxxb:edit', '#', 'admin', '2022-07-23 16:43:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2023', '供应商基本信息维护删除', '2019', '4', '#', '', 'F', '0', '1', 'gyssystem:gysxxb:remove', '#', 'admin', '2022-07-23 16:43:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2024', '供应商基本信息维护导出', '2019', '5', '#', '', 'F', '0', '1', 'gyssystem:gysxxb:export', '#', 'admin', '2022-07-23 16:43:34', '', null, '');
INSERT INTO `sys_menu` VALUES ('2025', '人事管理', '0', '0', '#', 'menuItem', 'M', '0', '1', null, 'fa fa-child', 'admin', '2022-07-24 10:59:22', '', null, '');
INSERT INTO `sys_menu` VALUES ('2026', '人员基本信息维护', '2025', '1', '/usersystem/b', '', 'C', '0', '1', 'usersystem:b:view', '#', 'admin', '2022-07-24 14:14:32', '', null, '人员基本信息维护菜单');
INSERT INTO `sys_menu` VALUES ('2027', '人员基本信息维护查询', '2026', '1', '#', '', 'F', '0', '1', 'usersystem:b:list', '#', 'admin', '2022-07-24 14:14:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '人员基本信息维护新增', '2026', '2', '#', '', 'F', '0', '1', 'usersystem:b:add', '#', 'admin', '2022-07-24 14:14:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2029', '人员基本信息维护修改', '2026', '3', '#', '', 'F', '0', '1', 'usersystem:b:edit', '#', 'admin', '2022-07-24 14:14:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2030', '人员基本信息维护删除', '2026', '4', '#', '', 'F', '0', '1', 'usersystem:b:remove', '#', 'admin', '2022-07-24 14:14:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2031', '人员基本信息维护导出', '2026', '5', '#', '', 'F', '0', '1', 'usersystem:b:export', '#', 'admin', '2022-07-24 14:14:32', '', null, '');
INSERT INTO `sys_menu` VALUES ('2050', '岗位信息管理', '2025', '3', '/usergwsystem/c', 'menuItem', 'C', '0', '1', 'usergwsystem:c:view', '#', 'admin', '2022-07-26 15:01:01', 'admin', '2022-07-26 15:03:57', '岗位信息管理菜单');
INSERT INTO `sys_menu` VALUES ('2051', '岗位信息管理查询', '2050', '1', '#', '', 'F', '0', '1', 'usergwsystem:c:list', '#', 'admin', '2022-07-26 15:01:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('2052', '岗位信息管理新增', '2050', '2', '#', '', 'F', '0', '1', 'usergwsystem:c:add', '#', 'admin', '2022-07-26 15:01:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('2053', '岗位信息管理修改', '2050', '3', '#', '', 'F', '0', '1', 'usergwsystem:c:edit', '#', 'admin', '2022-07-26 15:01:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('2054', '岗位信息管理删除', '2050', '4', '#', '', 'F', '0', '1', 'usergwsystem:c:remove', '#', 'admin', '2022-07-26 15:01:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('2055', '岗位信息管理导出', '2050', '5', '#', '', 'F', '0', '1', 'usergwsystem:c:export', '#', 'admin', '2022-07-26 15:01:01', '', null, '');
INSERT INTO `sys_menu` VALUES ('2062', '员工配置管理', '2025', '2', '/pzusersystem/pzuser', 'menuItem', 'C', '0', '1', 'pzusersystem:pzuser:view', '#', 'admin', '2022-07-26 20:39:33', 'admin', '2022-07-26 20:40:11', '员工配置管理菜单');
INSERT INTO `sys_menu` VALUES ('2063', '员工配置管理查询', '2062', '1', '#', '', 'F', '0', '1', 'pzusersystem:pzuser:list', '#', 'admin', '2022-07-26 20:39:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2064', '员工配置管理新增', '2062', '2', '#', '', 'F', '0', '1', 'pzusersystem:pzuser:add', '#', 'admin', '2022-07-26 20:39:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2065', '员工配置管理修改', '2062', '3', '#', '', 'F', '0', '1', 'pzusersystem:pzuser:edit', '#', 'admin', '2022-07-26 20:39:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2066', '员工配置管理删除', '2062', '4', '#', '', 'F', '0', '1', 'pzusersystem:pzuser:remove', '#', 'admin', '2022-07-26 20:39:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2067', '员工配置管理导出', '2062', '5', '#', '', 'F', '0', '1', 'pzusersystem:pzuser:export', '#', 'admin', '2022-07-26 20:39:33', '', null, '');
INSERT INTO `sys_menu` VALUES ('2068', '考勤管理', '0', '1', '#', 'menuItem', 'M', '0', '1', '', 'fa fa-hand-grab-o', 'admin', '2022-07-27 10:34:17', 'admin', '2022-07-27 10:34:44', '');
INSERT INTO `sys_menu` VALUES ('2081', '请休假管理', '2068', '1', '/ygqjsystem/e', '', 'C', '0', '1', 'ygqjsystem:e:view', '#', 'admin', '2022-07-27 14:51:41', '', null, '请休假管理菜单');
INSERT INTO `sys_menu` VALUES ('2082', '请休假管理查询', '2081', '1', '#', '', 'F', '0', '1', 'ygqjsystem:e:list', '#', 'admin', '2022-07-27 14:51:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2083', '请休假管理新增', '2081', '2', '#', '', 'F', '0', '1', 'ygqjsystem:e:add', '#', 'admin', '2022-07-27 14:51:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2084', '请休假管理修改', '2081', '3', '#', '', 'F', '0', '1', 'ygqjsystem:e:edit', '#', 'admin', '2022-07-27 14:51:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2085', '请休假管理删除', '2081', '4', '#', '', 'F', '0', '1', 'ygqjsystem:e:remove', '#', 'admin', '2022-07-27 14:51:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2086', '请休假管理导出', '2081', '5', '#', '', 'F', '0', '1', 'ygqjsystem:e:export', '#', 'admin', '2022-07-27 14:51:41', '', null, '');
INSERT INTO `sys_menu` VALUES ('2087', '出差管理', '2068', '1', '/ygccsystem/f', '', 'C', '0', '1', 'ygccsystem:f:view', '#', 'admin', '2022-07-27 15:14:07', '', null, '出差管理菜单');
INSERT INTO `sys_menu` VALUES ('2088', '出差管理查询', '2087', '1', '#', '', 'F', '0', '1', 'ygccsystem:f:list', '#', 'admin', '2022-07-27 15:14:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2089', '出差管理新增', '2087', '2', '#', '', 'F', '0', '1', 'ygccsystem:f:add', '#', 'admin', '2022-07-27 15:14:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2090', '出差管理修改', '2087', '3', '#', '', 'F', '0', '1', 'ygccsystem:f:edit', '#', 'admin', '2022-07-27 15:14:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2091', '出差管理删除', '2087', '4', '#', '', 'F', '0', '1', 'ygccsystem:f:remove', '#', 'admin', '2022-07-27 15:14:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2092', '出差管理导出', '2087', '5', '#', '', 'F', '0', '1', 'ygccsystem:f:export', '#', 'admin', '2022-07-27 15:14:07', '', null, '');
INSERT INTO `sys_menu` VALUES ('2093', '异常考勤管理', '2068', '1', '/ygkqsystem/g', '', 'C', '0', '1', 'ygkqsystem:g:view', '#', 'admin', '2022-07-27 15:36:20', '', null, '异常考勤管理菜单');
INSERT INTO `sys_menu` VALUES ('2094', '异常考勤管理查询', '2093', '1', '#', '', 'F', '0', '1', 'ygkqsystem:g:list', '#', 'admin', '2022-07-27 15:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2095', '异常考勤管理新增', '2093', '2', '#', '', 'F', '0', '1', 'ygkqsystem:g:add', '#', 'admin', '2022-07-27 15:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2096', '异常考勤管理修改', '2093', '3', '#', '', 'F', '0', '1', 'ygkqsystem:g:edit', '#', 'admin', '2022-07-27 15:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2097', '异常考勤管理删除', '2093', '4', '#', '', 'F', '0', '1', 'ygkqsystem:g:remove', '#', 'admin', '2022-07-27 15:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2098', '异常考勤管理导出', '2093', '5', '#', '', 'F', '0', '1', 'ygkqsystem:g:export', '#', 'admin', '2022-07-27 15:36:20', '', null, '');
INSERT INTO `sys_menu` VALUES ('2099', '员工离职功能', '2025', '4', '/user_lz_system/lz', 'menuItem', 'C', '0', '1', 'user_lz_system:lz:view', '#', 'admin', '2022-07-27 20:01:36', 'admin', '2022-07-27 20:02:21', '员工离职功能菜单');
INSERT INTO `sys_menu` VALUES ('2100', '员工离职功能查询', '2099', '1', '#', '', 'F', '0', '1', 'user_lz_system:lz:list', '#', 'admin', '2022-07-27 20:01:36', '', null, '');
INSERT INTO `sys_menu` VALUES ('2101', '员工离职功能新增', '2099', '2', '#', '', 'F', '0', '1', 'user_lz_system:lz:add', '#', 'admin', '2022-07-27 20:01:36', '', null, '');
INSERT INTO `sys_menu` VALUES ('2102', '员工离职功能修改', '2099', '3', '#', '', 'F', '0', '1', 'user_lz_system:lz:edit', '#', 'admin', '2022-07-27 20:01:36', '', null, '');
INSERT INTO `sys_menu` VALUES ('2103', '员工离职功能删除', '2099', '4', '#', '', 'F', '0', '1', 'user_lz_system:lz:remove', '#', 'admin', '2022-07-27 20:01:36', '', null, '');
INSERT INTO `sys_menu` VALUES ('2104', '员工离职功能导出', '2099', '5', '#', '', 'F', '0', '1', 'user_lz_system:lz:export', '#', 'admin', '2022-07-27 20:01:36', '', null, '');

-- ----------------------------
-- Table structure for `sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2022-07-23 14:17:42', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2022-07-23 14:17:42', '', null, '管理员');

-- ----------------------------
-- Table structure for `sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"bm_weihu\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 14:33:17');
INSERT INTO `sys_oper_log` VALUES ('101', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"组织机构管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-user-circle\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 15:34:08');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"co', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 15:41:56');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/bm_weihu', '127.0.0.1', '内网IP', '\"bm_weihu\"', null, '0', null, '2022-07-23 15:42:00');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"co', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 15:55:06');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"7\"],\"columns[6].sor', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 15:55:38');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_dept\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 15:57:16');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"co', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 15:58:59');
INSERT INTO `sys_oper_log` VALUES ('108', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"co', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 15:59:46');
INSERT INTO `sys_oper_log` VALUES ('109', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/bm_weihu', '127.0.0.1', '内网IP', '\"bm_weihu\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 15:59:53');
INSERT INTO `sys_oper_log` VALUES ('110', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmparentId\":[\"\"],\"ancestor\":[\"\"],\"bmName\":[\"\"],\"bmXssx\":[\"\"],\"bmLeader\":[\"\"],\"bmPhone\":[\"\"],\"bmEmail\":[\"\"],\"bmDelete\":[\"12\"],\"bmCreate\":[\"\"],\"bmCreatetime\":[\"\"],\"bmUpdate\":[\"\"],\"bmUpdatetime\":[\"\"]}', null, '1', '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'bm_delete\' at row 1\r\n### The error may exist in file [D:\\RuoYi-master\\ruoyi-admin\\target\\classes\\mapper\\system\\BmWeihuMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.BmWeihuMapper.insertBmWeihu-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into bm_weihu          ( ancestor,             bm_name,                          bm_leader,             bm_phone,             bm_email,                          bm_delete,             bm_create,                          bm_update )           values ( ?,             ?,                          ?,             ?,             ?,                          ?,             ?,                          ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'bm_delete\' at row 1\n; Data truncation: Data too long for column \'bm_delete\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'bm_delete\' at row 1', '2022-07-23 16:00:10');
INSERT INTO `sys_oper_log` VALUES ('111', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmparentId\":[\"\"],\"ancestor\":[\"\"],\"bmName\":[\"\"],\"bmXssx\":[\"\"],\"bmLeader\":[\"\"],\"bmPhone\":[\"\"],\"bmEmail\":[\"\"],\"bmDelete\":[\"1\"],\"bmCreate\":[\"\"],\"bmCreatetime\":[\"\"],\"bmUpdate\":[\"\"],\"bmUpdatetime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:00:14');
INSERT INTO `sys_oper_log` VALUES ('112', '组织机构维护', '3', 'com.ruoyi.system.controller.BmWeihuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/weihu/remove/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:00:25');
INSERT INTO `sys_oper_log` VALUES ('113', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"colu', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:01:10');
INSERT INTO `sys_oper_log` VALUES ('114', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"colum', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:02:17');
INSERT INTO `sys_oper_log` VALUES ('115', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].isQuery\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"colum', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:02:34');
INSERT INTO `sys_oper_log` VALUES ('116', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/bm_weihu', '127.0.0.1', '内网IP', '\"bm_weihu\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:02:37');
INSERT INTO `sys_oper_log` VALUES ('117', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"co', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:06:03');
INSERT INTO `sys_oper_log` VALUES ('118', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"1\"],\"bmparentId\":[\"20\"],\"parentName\":[\"\"],\"ancestor\":[\"1\"],\"bmName\":[\"啦啦啦\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"1\"],\"bmPhone\":[\"35434\"],\"bmEmail\":[\"354343\"],\"bmDelete\":[\"0\"],\"bmCreate\":[\"\"],\"bmCreatetime\":[\"2022-07-23\"],\"bmUpdate\":[\"\"],\"bmUpdatetime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:06:38');
INSERT INTO `sys_oper_log` VALUES ('119', '组织机构维护', '3', 'com.ruoyi.system.controller.BmWeihuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/weihu/remove/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:08:59');
INSERT INTO `sys_oper_log` VALUES ('120', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"bmgys_weihu\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:24:07');
INSERT INTO `sys_oper_log` VALUES ('121', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"weihu\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"params', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:25:54');
INSERT INTO `sys_oper_log` VALUES ('122', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/bmgys_weihu', '127.0.0.1', '内网IP', '\"bmgys_weihu\"', null, '0', null, '2022-07-23 16:25:57');
INSERT INTO `sys_oper_log` VALUES ('123', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '2007', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-23 16:37:30');
INSERT INTO `sys_oper_log` VALUES ('124', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '2007', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-23 16:37:42');
INSERT INTO `sys_oper_log` VALUES ('125', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2007\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"供应商基本信息维护\"],\"url\":[\"/system/weih\"],\"target\":[\"menuItem\"],\"perms\":[\"system:weihu:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:37:48');
INSERT INTO `sys_oper_log` VALUES ('126', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '2007', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-23 16:37:52');
INSERT INTO `sys_oper_log` VALUES ('127', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '2007', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-23 16:38:19');
INSERT INTO `sys_oper_log` VALUES ('128', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2012', '127.0.0.1', '内网IP', '2012', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:39:29');
INSERT INTO `sys_oper_log` VALUES ('129', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '2007', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-23 16:39:35');
INSERT INTO `sys_oper_log` VALUES ('130', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2011', '127.0.0.1', '内网IP', '2011', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:39:49');
INSERT INTO `sys_oper_log` VALUES ('131', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2008', '127.0.0.1', '内网IP', '2008', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:39:58');
INSERT INTO `sys_oper_log` VALUES ('132', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2009', '127.0.0.1', '内网IP', '2009', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:40:02');
INSERT INTO `sys_oper_log` VALUES ('133', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2010', '127.0.0.1', '内网IP', '2010', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:40:06');
INSERT INTO `sys_oper_log` VALUES ('134', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '2007', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:40:10');
INSERT INTO `sys_oper_log` VALUES ('135', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"param', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:41:17');
INSERT INTO `sys_oper_log` VALUES ('136', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/bmgys_weihu', '127.0.0.1', '内网IP', '\"bmgys_weihu\"', null, '0', null, '2022-07-23 16:41:20');
INSERT INTO `sys_oper_log` VALUES ('137', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gyssystem\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"pa', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:43:05');
INSERT INTO `sys_oper_log` VALUES ('138', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发部门', '/tool/gen/download/bmgys_weihu', '127.0.0.1', '内网IP', '\"bmgys_weihu\"', null, '0', null, '2022-07-23 16:43:08');
INSERT INTO `sys_oper_log` VALUES ('139', '供应商基本信息维护', '1', 'com.ruoyi.system.controller.BmgysWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/gyssystem/gysxxb/add', '127.0.0.1', '内网IP', '{\"gysName\":[\"11\"],\"gysJc\":[\"11\"],\"gysDz\":[\"山西省长治市\"],\"dqzgrs\":[\"11\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:48:23');
INSERT INTO `sys_oper_log` VALUES ('140', '供应商基本信息维护', '2', 'com.ruoyi.system.controller.BmgysWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/gyssystem/gysxxb/edit', '127.0.0.1', '内网IP', '{\"gysId\":[\"1\"],\"gysName\":[\"11\"],\"gysJc\":[\"1656\"],\"gysDz\":[\"山西省长治市\"],\"dqzgrs\":[\"11\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:48:35');
INSERT INTO `sys_oper_log` VALUES ('141', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', '2014', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:49:19');
INSERT INTO `sys_oper_log` VALUES ('142', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2013', '127.0.0.1', '内网IP', '2013', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-23 16:49:37');
INSERT INTO `sys_oper_log` VALUES ('143', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2018', '127.0.0.1', '内网IP', '2018', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:49:43');
INSERT INTO `sys_oper_log` VALUES ('144', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2017', '127.0.0.1', '内网IP', '2017', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:49:50');
INSERT INTO `sys_oper_log` VALUES ('145', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2016', '127.0.0.1', '内网IP', '2016', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:49:54');
INSERT INTO `sys_oper_log` VALUES ('146', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2015', '127.0.0.1', '内网IP', '2015', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:50:01');
INSERT INTO `sys_oper_log` VALUES ('147', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发部门', '/system/menu/remove/2013', '127.0.0.1', '内网IP', '2013', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 16:50:04');
INSERT INTO `sys_oper_log` VALUES ('148', '供应商基本信息维护', '5', 'com.ruoyi.system.controller.BmgysWeihuController.export()', 'POST', '1', 'admin', '研发部门', '/gyssystem/gysxxb/export', '127.0.0.1', '内网IP', '{\"gysName\":[\"\"],\"gysJc\":[\"\"],\"gysDz\":[\"\"],\"dqzgrs\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"06bdb7df-7891-4aea-b6ad-40d1196b8d36_供应商基本信息维护数据.xlsx\",\"code\":0}', '0', null, '2022-07-23 21:47:15');
INSERT INTO `sys_oper_log` VALUES ('149', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gyssystem\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"组织机', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 21:48:00');
INSERT INTO `sys_oper_log` VALUES ('150', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/bmgys_weihu', '127.0.0.1', '内网IP', '\"bmgys_weihu\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 21:51:02');
INSERT INTO `sys_oper_log` VALUES ('151', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gyssystem\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"par', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 21:51:38');
INSERT INTO `sys_oper_log` VALUES ('152', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', '1', 'admin', '研发部门', '/tool/gen/synchDb/bmgys_weihu', '127.0.0.1', '内网IP', '\"bmgys_weihu\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 21:51:42');
INSERT INTO `sys_oper_log` VALUES ('153', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gyssystem\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"par', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 21:57:34');
INSERT INTO `sys_oper_log` VALUES ('154', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gyssystem\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"par', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 21:59:32');
INSERT INTO `sys_oper_log` VALUES ('155', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gyssystem\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"组织机', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:01:59');
INSERT INTO `sys_oper_log` VALUES ('156', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gyssystem\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"组织机构管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:04:08');
INSERT INTO `sys_oper_log` VALUES ('157', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gyssystem\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"组织机构管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:04:13');
INSERT INTO `sys_oper_log` VALUES ('158', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"bmgys_weihu\"],\"tableComment\":[\"供应商信息表\"],\"className\":[\"BmgysWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"29\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"供应商编号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gysId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"30\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"供应商名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gysName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"31\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"供应商简称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gysJc\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"32\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"联系地址\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gysDz\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"33\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"当前在岗人数\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"dqzgrs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gyssystem\"],\"businessName\":[\"gysxxb\"],\"functionName\":[\"供应商基本信息维护\"],\"params[parentMenuId]\":[\"2000\"],\"params[parentMenuName]\":[\"组织机', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:04:44');
INSERT INTO `sys_oper_log` VALUES ('159', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"7\"],\"columns[6].sort\":[\"7\"],\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:19:02');
INSERT INTO `sys_oper_log` VALUES ('160', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmName\":[\"武工职\"],\"bmLeader\":[\"叶勇\"],\"bmPhone\":[\"110\"],\"bmEmail\":[\"1100@qq.com\"],\"bmCreatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:21:45');
INSERT INTO `sys_oper_log` VALUES ('161', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"7\"],\"columns[6].sort\":[\"7\"],\"', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:22:45');
INSERT INTO `sys_oper_log` VALUES ('162', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmName\":[\"武工职信息学院\"],\"bmLeader\":[\"龚海燕\"],\"bmPhone\":[\"120\"],\"bmEmail\":[\"120@qq.com\"],\"bmCreatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:25:36');
INSERT INTO `sys_oper_log` VALUES ('163', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"2\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"武工职信息学院\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"龚海燕\"],\"bmPhone\":[\"120\"],\"bmEmail\":[\"120@qq.com\"],\"bmUpdate\":[\"\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:26:04');
INSERT INTO `sys_oper_log` VALUES ('164', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"2\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"武工职信息学院\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"龚海燕\"],\"bmPhone\":[\"120\"],\"bmEmail\":[\"120@qq.com\"],\"bmUpdate\":[\"小王\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:26:35');
INSERT INTO `sys_oper_log` VALUES ('165', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"2\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"武工职信息学院\"],\"bmXssx\":[\"1\"],\"bmLeader\":[\"龚海燕\"],\"bmPhone\":[\"120\"],\"bmEmail\":[\"120@qq.com\"],\"bmUpdate\":[\"小王\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:27:33');
INSERT INTO `sys_oper_log` VALUES ('166', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmName\":[\"武工职机电学院\"],\"bmLeader\":[\"张某某\"],\"bmPhone\":[\"130\"],\"bmEmail\":[\"130@qq.com\"],\"bmCreatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:28:26');
INSERT INTO `sys_oper_log` VALUES ('167', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"3\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"wu\"],\"bmName\":[\"武工职机电学院\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"张某某\"],\"bmPhone\":[\"130\"],\"bmEmail\":[\"130@qq.com\"],\"bmUpdate\":[\"小王\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:28:52');
INSERT INTO `sys_oper_log` VALUES ('168', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"1\"],\"bmparentId\":[\"0\"],\"parentName\":[\"\"],\"ancestor\":[\"武工职\"],\"bmName\":[\"武工职\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"叶勇\"],\"bmPhone\":[\"110\"],\"bmEmail\":[\"1100@qq.com\"],\"bmUpdate\":[\"\"],\"bmUpdatetime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:29:13');
INSERT INTO `sys_oper_log` VALUES ('169', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"3\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"武工职机电学院\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"张某某\"],\"bmPhone\":[\"130\"],\"bmEmail\":[\"130@qq.com\"],\"bmUpdate\":[\"小王\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:29:22');
INSERT INTO `sys_oper_log` VALUES ('170', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"3\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"武工职机电学院\"],\"bmXssx\":[\"2\"],\"bmLeader\":[\"张某某\"],\"bmPhone\":[\"130\"],\"bmEmail\":[\"130@qq.com\"],\"bmUpdate\":[\"小王\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:29:35');
INSERT INTO `sys_oper_log` VALUES ('171', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"7', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:30:26');
INSERT INTO `sys_oper_log` VALUES ('172', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"7', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:30:38');
INSERT INTO `sys_oper_log` VALUES ('173', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"2\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"信息学院\"],\"bmXssx\":[\"1\"],\"bmLeader\":[\"龚海燕\"],\"bmPhone\":[\"120\"],\"bmEmail\":[\"120@qq.com\"],\"bmUpdate\":[\"小王\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:31:32');
INSERT INTO `sys_oper_log` VALUES ('174', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"3\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"机电学院\"],\"bmXssx\":[\"2\"],\"bmLeader\":[\"张某某\"],\"bmPhone\":[\"130\"],\"bmEmail\":[\"130@qq.com\"],\"bmUpdate\":[\"小王\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:31:36');
INSERT INTO `sys_oper_log` VALUES ('175', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmparentId\":[\"1\"],\"bmName\":[\"经贸学院\"],\"bmLeader\":[\"王某某\"],\"bmPhone\":[\"140\"],\"bmEmail\":[\"140@qq.com\"],\"bmCreatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:32:06');
INSERT INTO `sys_oper_log` VALUES ('176', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"4\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"经贸学院\"],\"bmXssx\":[\"4\"],\"bmLeader\":[\"王某某\"],\"bmPhone\":[\"140\"],\"bmEmail\":[\"140@qq.com\"],\"bmUpdate\":[\"\"],\"bmUpdatetime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:32:12');
INSERT INTO `sys_oper_log` VALUES ('177', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmparentId\":[\"\"],\"bmName\":[\"腾讯\"],\"bmLeader\":[\"马化腾\"],\"bmPhone\":[\"111\"],\"bmEmail\":[\"111@qq.com\"],\"bmCreatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:33:09');
INSERT INTO `sys_oper_log` VALUES ('178', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmparentId\":[\"5\"],\"bmName\":[\"光子\"],\"bmLeader\":[\"小张\"],\"bmPhone\":[\"150\"],\"bmEmail\":[\"150@qq.com\"],\"bmCreatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:33:50');
INSERT INTO `sys_oper_log` VALUES ('179', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"6\"],\"bmparentId\":[\"5\"],\"parentName\":[\"腾讯\"],\"ancestor\":[\"\"],\"bmName\":[\"光子\"],\"bmXssx\":[\"1\"],\"bmLeader\":[\"小张\"],\"bmPhone\":[\"150\"],\"bmEmail\":[\"150@qq.com\"],\"bmUpdate\":[\"\"],\"bmUpdatetime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:33:56');
INSERT INTO `sys_oper_log` VALUES ('180', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmparentId\":[\"2\"],\"bmName\":[\"软件2002班\"],\"bmLeader\":[\"张刚\"],\"bmPhone\":[\"222\"],\"bmEmail\":[\"222@qq.com\"],\"bmCreatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:34:57');
INSERT INTO `sys_oper_log` VALUES ('181', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"2\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"信息学院\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"龚海燕\"],\"bmPhone\":[\"120\"],\"bmEmail\":[\"120@qq.com\"],\"bmUpdate\":[\"小王\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:35:25');
INSERT INTO `sys_oper_log` VALUES ('182', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"3\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"机电学院\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"张某某\"],\"bmPhone\":[\"130\"],\"bmEmail\":[\"130@qq.com\"],\"bmUpdate\":[\"小王\"],\"bmUpdatetime\":[\"2022-07-23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:35:32');
INSERT INTO `sys_oper_log` VALUES ('183', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"4\"],\"bmparentId\":[\"1\"],\"parentName\":[\"武工职\"],\"ancestor\":[\"\"],\"bmName\":[\"经贸学院\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"王某某\"],\"bmPhone\":[\"140\"],\"bmEmail\":[\"140@qq.com\"],\"bmUpdate\":[\"\"],\"bmUpdatetime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-23 22:35:37');
INSERT INTO `sys_oper_log` VALUES ('184', '供应商基本信息维护', '1', 'com.ruoyi.system.controller.BmgysWeihuController.addSave()', 'POST', '1', 'admin', '研发部门', '/gyssystem/gysxxb/add', '127.0.0.1', '内网IP', '{\"gysName\":[\"22\"],\"gysJc\":[\"1657\"],\"gysDz\":[\"山西省长治市\"],\"dqzgrs\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 09:37:39');
INSERT INTO `sys_oper_log` VALUES ('185', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"深圳总公司\"],\"deptName\":[\"研发\"],\"orderNum\":[\"1\"],\"leader\":[\"若依\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 10:27:23');
INSERT INTO `sys_oper_log` VALUES ('186', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"人事管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"0\"],\"icon\":[\"fa fa-child\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 10:59:22');
INSERT INTO `sys_oper_log` VALUES ('187', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"user_b\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 14:09:09');
INSERT INTO `sys_oper_log` VALUES ('188', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"user_b\"],\"tableComment\":[\"员工信息表\"],\"className\":[\"UserB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工部门\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygBm\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工身份证号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygSfzh\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"员工户籍地址\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ygHjdz\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"39\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"员工国籍\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"ygGj\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 14:13:52');
INSERT INTO `sys_oper_log` VALUES ('189', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/user_b', '127.0.0.1', '内网IP', '\"user_b\"', null, '0', null, '2022-07-24 14:13:56');
INSERT INTO `sys_oper_log` VALUES ('190', '人员基本信息维护', '1', 'com.ruoyi.system.controller.UserBController.addSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/add', '127.0.0.1', '内网IP', '{\"ygBm\":[\"前端\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"美国\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"无\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 14:20:12');
INSERT INTO `sys_oper_log` VALUES ('191', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygBm\":[\"前端\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"美国\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"武汉宝信软件公司\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 14:21:18');
INSERT INTO `sys_oper_log` VALUES ('192', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygBm\":[\"前端\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"呜哩呱啦\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"武汉宝信软件公司\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 14:26:33');
INSERT INTO `sys_oper_log` VALUES ('193', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2000\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"组织机构管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-user-circle\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 16:08:50');
INSERT INTO `sys_oper_log` VALUES ('194', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"系统管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-gear\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 16:09:13');
INSERT INTO `sys_oper_log` VALUES ('195', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"usergw_b\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 16:19:06');
INSERT INTO `sys_oper_log` VALUES ('196', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"usergw_b\"],\"tableComment\":[\"岗位信息表\"],\"className\":[\"UsergwB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"44\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"岗位序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gwId\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"45\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"岗位名称\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"gwName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"46\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"岗位级别\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gwJb\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"gwsystem\"],\"businessName\":[\"b\"],\"functionName\":[\"岗位信息管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 16:20:19');
INSERT INTO `sys_oper_log` VALUES ('197', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/usergw_b', '127.0.0.1', '内网IP', '\"usergw_b\"', null, '0', null, '2022-07-24 16:20:24');
INSERT INTO `sys_oper_log` VALUES ('198', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/usergw_b', '127.0.0.1', '内网IP', '\"usergw_b\"', null, '0', null, '2022-07-24 16:20:46');
INSERT INTO `sys_oper_log` VALUES ('199', '岗位信息管理', '1', 'com.ruoyi.system.controller.UsergwBController.addSave()', 'POST', '1', 'admin', '研发', '/gwsystem/b/add', '127.0.0.1', '内网IP', '{\"gwName\":[\"ceo\"],\"gwJb\":[\"一\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 16:24:02');
INSERT INTO `sys_oper_log` VALUES ('200', '岗位信息管理', '1', 'com.ruoyi.system.controller.UsergwBController.addSave()', 'POST', '1', 'admin', '研发', '/gwsystem/b/add', '127.0.0.1', '内网IP', '{\"gwName\":[\"工人\"],\"gwJb\":[\"三\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-24 16:24:28');
INSERT INTO `sys_oper_log` VALUES ('201', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '研发', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-07-25 14:10:00');
INSERT INTO `sys_oper_log` VALUES ('202', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'POST', '1', 'admin', '研发', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"undefined\"]}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-07-25 14:16:23');
INSERT INTO `sys_oper_log` VALUES ('203', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygBm\":[\"软件2002班\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"呜哩呱啦\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"武汉宝信软件公司\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 14:54:40');
INSERT INTO `sys_oper_log` VALUES ('204', '组织机构维护', '1', 'com.ruoyi.system.controller.BmWeihuController.addSave()', 'POST', '1', 'admin', '研发', '/system/weihu/add', '127.0.0.1', '内网IP', '{\"bmparentId\":[\"5\"],\"bmName\":[\"农药\"],\"bmLeader\":[\"小王\"],\"bmPhone\":[\"150\"],\"bmEmail\":[\"150@xx.cn\"],\"bmCreatetime\":[\"2022-07-25\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 14:56:27');
INSERT INTO `sys_oper_log` VALUES ('205', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"user_b\"],\"tableComment\":[\"员工信息表\"],\"className\":[\"UserB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工部门\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygBm\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工身份证号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygSfzh\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"员工户籍地址\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ygHjdz\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"39\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"员工国籍\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"ygGj\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:21:44');
INSERT INTO `sys_oper_log` VALUES ('206', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"user_b\"],\"tableComment\":[\"员工信息表\"],\"className\":[\"UserB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工部门\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygBm\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工身份证号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygSfzh\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"员工户籍地址\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ygHjdz\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"39\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"员工国籍\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"ygGj\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:22:47');
INSERT INTO `sys_oper_log` VALUES ('207', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"4\"],\"tableName\":[\"user_b\"],\"tableComment\":[\"员工信息表\"],\"className\":[\"UserB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工部门\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygBm\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].isRequired\":[\"1\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工姓名\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工身份证号\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygSfzh\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"38\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"员工户籍地址\"],\"columns[4].javaType\":[\"String\"],\"columns[4].javaField\":[\"ygHjdz\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"39\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"员工国籍\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"ygGj\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:25:17');
INSERT INTO `sys_oper_log` VALUES ('208', '人员基本信息维护', '1', 'com.ruoyi.system.controller.UserBController.addSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/add', '127.0.0.1', '内网IP', '{\"ygName\":[\"dsa\"],\"ygBm\":[\"sfdasf\"],\"ygSfzh\":[\"dsad\"],\"ygHjdz\":[\"asdas\"],\"ygGj\":[\"dad\"],\"ygMz\":[\"asd\"],\"ygCssj\":[\"2022-07-08\"],\"ygDw\":[\"asd\"],\"ygRzsj\":[\"2022-07-06\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:27:18');
INSERT INTO `sys_oper_log` VALUES ('209', '人员基本信息维护', '3', 'com.ruoyi.system.controller.UserBController.remove()', 'POST', '1', 'admin', '研发', '/usersystem/b/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:27:27');
INSERT INTO `sys_oper_log` VALUES ('210', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygBm\":[\"信息学院\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"呜哩呱啦\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"武汉宝信软件公司\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:38:56');
INSERT INTO `sys_oper_log` VALUES ('211', '人员基本信息维护', '1', 'com.ruoyi.system.controller.UserBController.addSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/add', '127.0.0.1', '内网IP', '{\"ygName\":[\"王志远\"],\"ygBm\":[\"软件2002班\"],\"ygSfzh\":[\"3154616161\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"韩国\"],\"ygCssj\":[\"2022-07-26\"],\"ygDw\":[\"无\"],\"ygRzsj\":[\"2022-07-26\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:39:37');
INSERT INTO `sys_oper_log` VALUES ('212', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"3\"],\"ygBm\":[\"机电学院\"],\"ygName\":[\"王志远\"],\"ygSfzh\":[\"3154616161\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"韩国\"],\"ygCssj\":[\"2022-07-26\"],\"ygDw\":[\"无\"],\"ygRzsj\":[\"2022-07-26\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:39:46');
INSERT INTO `sys_oper_log` VALUES ('213', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"3\"],\"ygBm\":[\"机电学院\"],\"ygName\":[\"王志远\"],\"ygSfzh\":[\"3154616161\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"韩国\"],\"ygCssj\":[\"2022-07-26\"],\"ygDw\":[\"武汉宝信\"],\"ygRzsj\":[\"2022-07-26\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:43:43');
INSERT INTO `sys_oper_log` VALUES ('214', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"1\"],\"tableName\":[\"bm_weihu\"],\"tableComment\":[\"组织机构维护\"],\"className\":[\"BmWeihu\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"1\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"bmId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"2\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"bmparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"3\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestor\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"4\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bmName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"5\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"bmXssx\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"6\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"bmLeader\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryType\":[\"EQ\"],\"columns[5].htmlType\":[\"input\"],\"columns[5].dictType\":[\"\"],\"columns[6].columnId\":[\"7', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:50:44');
INSERT INTO `sys_oper_log` VALUES ('215', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygBm\":[\"软件2002班\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"呜哩呱啦\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"武汉宝信软件公司\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-25 15:57:52');
INSERT INTO `sys_oper_log` VALUES ('216', '组织机构维护', '2', 'com.ruoyi.system.controller.BmWeihuController.editSave()', 'POST', '1', 'admin', '研发', '/system/weihu/edit', '127.0.0.1', '内网IP', '{\"bmId\":[\"8\"],\"bmparentId\":[\"5\"],\"parentName\":[\"腾讯\"],\"bmName\":[\"农1111\"],\"bmXssx\":[\"0\"],\"bmLeader\":[\"小王\"],\"bmPhone\":[\"150\"],\"bmEmail\":[\"150@xx.cn\"],\"bmUpdate\":[\"\"],\"bmUpdatetime\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 09:33:56');
INSERT INTO `sys_oper_log` VALUES ('217', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"5\"],\"deptId\":[\"3\"],\"ygBm\":[\"机电学院\"],\"ygName\":[\"测试\"],\"ygSfzh\":[\"\"],\"ygHjdz\":[\"\"],\"ygGj\":[\"\"],\"ygMz\":[\"\"],\"ygCssj\":[\"\"],\"ygDw\":[\"\"],\"ygRzsj\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 09:34:12');
INSERT INTO `sys_oper_log` VALUES ('218', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"deptId\":[\"6\"],\"ygBm\":[\"光子\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"呜哩呱啦\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"武汉宝信软件公司\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 09:43:31');
INSERT INTO `sys_oper_log` VALUES ('219', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"userpz_b\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:17:07');
INSERT INTO `sys_oper_log` VALUES ('220', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"userpz_b\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"UserpzB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"47\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"48\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"49\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工所在岗位\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygGw\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"50\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工部门\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygBm\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"userpzsystem\"],\"businessName\":[\"b\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:19:17');
INSERT INTO `sys_oper_log` VALUES ('221', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_b', '127.0.0.1', '内网IP', '\"userpz_b\"', null, '0', null, '2022-07-26 10:19:23');
INSERT INTO `sys_oper_log` VALUES ('222', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_b', '127.0.0.1', '内网IP', '\"userpz_b\"', null, '0', null, '2022-07-26 10:19:35');
INSERT INTO `sys_oper_log` VALUES ('223', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2039', '127.0.0.1', '内网IP', '2039', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:24:06');
INSERT INTO `sys_oper_log` VALUES ('224', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2038', '127.0.0.1', '内网IP', '2038', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-26 10:24:13');
INSERT INTO `sys_oper_log` VALUES ('225', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2043', '127.0.0.1', '内网IP', '2043', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:24:20');
INSERT INTO `sys_oper_log` VALUES ('226', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2042', '127.0.0.1', '内网IP', '2042', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:24:24');
INSERT INTO `sys_oper_log` VALUES ('227', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2041', '127.0.0.1', '内网IP', '2041', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:24:28');
INSERT INTO `sys_oper_log` VALUES ('228', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2040', '127.0.0.1', '内网IP', '2040', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:24:32');
INSERT INTO `sys_oper_log` VALUES ('229', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2038', '127.0.0.1', '内网IP', '2038', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:24:38');
INSERT INTO `sys_oper_log` VALUES ('230', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"userpz_b\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"UserpzB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"47\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"48\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"49\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工所在岗位\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygGw\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"50\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工部门\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygBm\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"pzsystem\"],\"businessName\":[\"a\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:26:06');
INSERT INTO `sys_oper_log` VALUES ('231', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_b', '127.0.0.1', '内网IP', '\"userpz_b\"', null, '0', null, '2022-07-26 10:26:10');
INSERT INTO `sys_oper_log` VALUES ('232', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:31:04');
INSERT INTO `sys_oper_log` VALUES ('233', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"6\"],\"tableName\":[\"userpz_b\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"UserpzB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"47\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"48\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"49\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工所在岗位\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygGw\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"50\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工部门\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygBm\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"userpzsystem\"],\"businessName\":[\"a\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:33:40');
INSERT INTO `sys_oper_log` VALUES ('234', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_b', '127.0.0.1', '内网IP', '\"userpz_b\"', null, '0', null, '2022-07-26 10:33:53');
INSERT INTO `sys_oper_log` VALUES ('235', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2045', '127.0.0.1', '内网IP', '2045', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:42:50');
INSERT INTO `sys_oper_log` VALUES ('236', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2046', '127.0.0.1', '内网IP', '2046', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:42:55');
INSERT INTO `sys_oper_log` VALUES ('237', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2047', '127.0.0.1', '内网IP', '2047', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:42:59');
INSERT INTO `sys_oper_log` VALUES ('238', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2048', '127.0.0.1', '内网IP', '2048', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:43:03');
INSERT INTO `sys_oper_log` VALUES ('239', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2049', '127.0.0.1', '内网IP', '2049', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:43:08');
INSERT INTO `sys_oper_log` VALUES ('240', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2044', '127.0.0.1', '内网IP', '2044', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:43:11');
INSERT INTO `sys_oper_log` VALUES ('241', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:43:43');
INSERT INTO `sys_oper_log` VALUES ('242', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"userpz_b\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:44:46');
INSERT INTO `sys_oper_log` VALUES ('243', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:45:16');
INSERT INTO `sys_oper_log` VALUES ('244', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"userpz_a\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:46:40');
INSERT INTO `sys_oper_log` VALUES ('245', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"8\"],\"tableName\":[\"userpz_a\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"UserpzA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"55\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"56\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"57\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工所在岗位\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gw\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"58\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工部门\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bm\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"system\"],\"businessName\":[\"a\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:47:37');
INSERT INTO `sys_oper_log` VALUES ('246', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_a', '127.0.0.1', '内网IP', '\"userpz_a\"', null, '0', null, '2022-07-26 10:47:43');
INSERT INTO `sys_oper_log` VALUES ('247', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"8\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:55:41');
INSERT INTO `sys_oper_log` VALUES ('248', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"userpz_a\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:55:44');
INSERT INTO `sys_oper_log` VALUES ('249', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"userpz_a\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"UserpzA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"59\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"60\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"61\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工所在岗位\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gw\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"62\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工部门\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bm\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"userpzsystem\"],\"businessName\":[\"a\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 10:57:41');
INSERT INTO `sys_oper_log` VALUES ('250', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_a', '127.0.0.1', '内网IP', '\"userpz_a\"', null, '0', null, '2022-07-26 10:57:45');
INSERT INTO `sys_oper_log` VALUES ('251', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"userpz_a\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"UserpzA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"59\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"60\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"61\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工所在岗位\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gw\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"62\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工部门\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bm\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"userpzsystem\"],\"businessName\":[\"a\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:02:59');
INSERT INTO `sys_oper_log` VALUES ('252', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_a', '127.0.0.1', '内网IP', '\"userpz_a\"', null, '0', null, '2022-07-26 11:03:01');
INSERT INTO `sys_oper_log` VALUES ('253', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"9\"],\"tableName\":[\"userpz_a\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"UserpzA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"59\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"60\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"name\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"61\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工所在岗位\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gw\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"62\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工部门\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bm\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"userpzsystem\"],\"businessName\":[\"a\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:15:18');
INSERT INTO `sys_oper_log` VALUES ('254', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2039', '127.0.0.1', '内网IP', '2039', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:28:46');
INSERT INTO `sys_oper_log` VALUES ('255', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2040', '127.0.0.1', '内网IP', '2040', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:28:53');
INSERT INTO `sys_oper_log` VALUES ('256', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2041', '127.0.0.1', '内网IP', '2041', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:28:59');
INSERT INTO `sys_oper_log` VALUES ('257', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2042', '127.0.0.1', '内网IP', '2042', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:29:04');
INSERT INTO `sys_oper_log` VALUES ('258', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2043', '127.0.0.1', '内网IP', '2043', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:29:08');
INSERT INTO `sys_oper_log` VALUES ('259', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2038', '127.0.0.1', '内网IP', '2038', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:29:12');
INSERT INTO `sys_oper_log` VALUES ('260', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:29:21');
INSERT INTO `sys_oper_log` VALUES ('261', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"userpz_a\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:30:18');
INSERT INTO `sys_oper_log` VALUES ('262', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"10\"],\"tableName\":[\"userpz_a\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"UserpzA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"63\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isEdit\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"64\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"65\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工所在岗位\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygGw\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"66\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工部门\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"bm\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"userpzsystem\"],\"businessName\":[\"a\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 11:30:58');
INSERT INTO `sys_oper_log` VALUES ('263', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_a', '127.0.0.1', '内网IP', '\"userpz_a\"', null, '0', null, '2022-07-26 11:31:01');
INSERT INTO `sys_oper_log` VALUES ('264', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2033', '127.0.0.1', '内网IP', '2033', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:48:16');
INSERT INTO `sys_oper_log` VALUES ('265', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2034', '127.0.0.1', '内网IP', '2034', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:48:21');
INSERT INTO `sys_oper_log` VALUES ('266', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2035', '127.0.0.1', '内网IP', '2035', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:48:25');
INSERT INTO `sys_oper_log` VALUES ('267', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2037', '127.0.0.1', '内网IP', '2037', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:48:28');
INSERT INTO `sys_oper_log` VALUES ('268', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2036', '127.0.0.1', '内网IP', '2036', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:48:32');
INSERT INTO `sys_oper_log` VALUES ('269', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2032', '127.0.0.1', '内网IP', '2032', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:48:35');
INSERT INTO `sys_oper_log` VALUES ('270', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:52:37');
INSERT INTO `sys_oper_log` VALUES ('271', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"usergw_b\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:52:44');
INSERT INTO `sys_oper_log` VALUES ('272', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"11\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:55:15');
INSERT INTO `sys_oper_log` VALUES ('273', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"usergw_b\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:56:52');
INSERT INTO `sys_oper_log` VALUES ('274', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"12\"],\"tableName\":[\"usergw_b\"],\"tableComment\":[\"岗位信息表\"],\"className\":[\"UsergwB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"71\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"岗位序号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"gwId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"72\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"gwparentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"73\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"岗位名称\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"gwName\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"LIKE\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"74\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"岗位级别\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"gwJb\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"tree\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"usergwsystem\"],\"businessName\":[\"c\"],\"functionName\":[\"岗位信息管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"gw_id\"],\"params[treeParentCode]\":[\"gwparent_id\"],\"params[treeName]\":[\"gw_name\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 14:58:17');
INSERT INTO `sys_oper_log` VALUES ('275', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/usergw_b', '127.0.0.1', '内网IP', '\"usergw_b\"', null, '0', null, '2022-07-26 14:58:21');
INSERT INTO `sys_oper_log` VALUES ('276', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/usergw_b', '127.0.0.1', '内网IP', '\"usergw_b\"', null, '0', null, '2022-07-26 14:58:31');
INSERT INTO `sys_oper_log` VALUES ('277', '岗位信息管理', '3', 'com.ruoyi.system.controller.UsergwBController.remove()', 'GET', '1', 'admin', '研发', '/usergwsystem/c/remove/2', '127.0.0.1', '内网IP', '2', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 15:01:50');
INSERT INTO `sys_oper_log` VALUES ('278', '岗位信息管理', '3', 'com.ruoyi.system.controller.UsergwBController.remove()', 'GET', '1', 'admin', '研发', '/usergwsystem/c/remove/1', '127.0.0.1', '内网IP', '1', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 15:01:53');
INSERT INTO `sys_oper_log` VALUES ('279', '岗位信息管理', '1', 'com.ruoyi.system.controller.UsergwBController.addSave()', 'POST', '1', 'admin', '研发', '/usergwsystem/c/add', '127.0.0.1', '内网IP', '{\"gwparentId\":[\"\"],\"gwName\":[\"总经理\"],\"gwJb\":[\"一\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 15:02:18');
INSERT INTO `sys_oper_log` VALUES ('280', '岗位信息管理', '1', 'com.ruoyi.system.controller.UsergwBController.addSave()', 'POST', '1', 'admin', '研发', '/usergwsystem/c/add', '127.0.0.1', '内网IP', '{\"gwparentId\":[\"3\"],\"gwName\":[\"副总经理\"],\"gwJb\":[\"二\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 15:02:57');
INSERT INTO `sys_oper_log` VALUES ('281', '岗位信息管理', '1', 'com.ruoyi.system.controller.UsergwBController.addSave()', 'POST', '1', 'admin', '研发', '/usergwsystem/c/add', '127.0.0.1', '内网IP', '{\"gwparentId\":[\"4\"],\"gwName\":[\"hr\"],\"gwJb\":[\"三\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 15:03:18');
INSERT INTO `sys_oper_log` VALUES ('282', '岗位信息管理', '1', 'com.ruoyi.system.controller.UsergwBController.addSave()', 'POST', '1', 'admin', '研发', '/usergwsystem/c/add', '127.0.0.1', '内网IP', '{\"gwparentId\":[\"5\"],\"gwName\":[\"打工人\"],\"gwJb\":[\"四\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 15:03:39');
INSERT INTO `sys_oper_log` VALUES ('283', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2050\"],\"parentId\":[\"2025\"],\"menuType\":[\"C\"],\"menuName\":[\"岗位信息管理\"],\"url\":[\"/usergwsystem/c\"],\"target\":[\"menuItem\"],\"perms\":[\"usergwsystem:c:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 15:03:57');
INSERT INTO `sys_oper_log` VALUES ('284', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_user_role\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 17:03:21');
INSERT INTO `sys_oper_log` VALUES ('285', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:10:57');
INSERT INTO `sys_oper_log` VALUES ('286', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"userpz_a\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:11:08');
INSERT INTO `sys_oper_log` VALUES ('287', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:11:29');
INSERT INTO `sys_oper_log` VALUES ('288', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"userpz_a\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:11:59');
INSERT INTO `sys_oper_log` VALUES ('289', '员工配置管理', '1', 'com.ruoyi.system.controller.UserpzAController.addSave()', 'POST', '1', 'admin', '研发', '/userpzsystem/a/add', '127.0.0.1', '内网IP', '{\"ygName\":[\"22\"],\"ygGw\":[\"销售\"],\"bm\":[\"光子\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'bm\' in \'field list\'\r\n### The error may exist in file [D:\\RuoYi-master\\ruoyi-admin\\target\\classes\\mapper\\system\\userpzsystem\\UserpzAMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UserpzAMapper.insertUserpzA-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into userpz_a          ( yg_name,             yg_gw,             bm )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'bm\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'bm\' in \'field list\'', '2022-07-26 19:12:49');
INSERT INTO `sys_oper_log` VALUES ('290', '员工配置管理', '1', 'com.ruoyi.system.controller.UserpzAController.addSave()', 'POST', '1', 'admin', '研发', '/userpzsystem/a/add', '127.0.0.1', '内网IP', '{\"ygName\":[\"22\"],\"ygGw\":[\"销售\"],\"bm\":[\"光子\"]}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'bm\' in \'field list\'\r\n### The error may exist in file [D:\\RuoYi-master\\ruoyi-admin\\target\\classes\\mapper\\system\\userpzsystem\\UserpzAMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.UserpzAMapper.insertUserpzA-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into userpz_a          ( yg_name,             yg_gw,             bm )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'bm\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'bm\' in \'field list\'', '2022-07-26 19:12:56');
INSERT INTO `sys_oper_log` VALUES ('291', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"15\"],\"tableName\":[\"userpz_a\"],\"tableComment\":[\"员工信息表\"],\"className\":[\"UserpzA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"81\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"82\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"83\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工部门\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygBm\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"84\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工所在岗位\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygGw\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"userpzsystem\"],\"businessName\":[\"a\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:15:15');
INSERT INTO `sys_oper_log` VALUES ('292', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2045', '127.0.0.1', '内网IP', '2045', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:18:20');
INSERT INTO `sys_oper_log` VALUES ('293', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2046', '127.0.0.1', '内网IP', '2046', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:18:27');
INSERT INTO `sys_oper_log` VALUES ('294', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2047', '127.0.0.1', '内网IP', '2047', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:18:31');
INSERT INTO `sys_oper_log` VALUES ('295', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2048', '127.0.0.1', '内网IP', '2048', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:18:34');
INSERT INTO `sys_oper_log` VALUES ('296', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2049', '127.0.0.1', '内网IP', '2049', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:18:39');
INSERT INTO `sys_oper_log` VALUES ('297', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2044', '127.0.0.1', '内网IP', '2044', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:18:44');
INSERT INTO `sys_oper_log` VALUES ('298', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"15\"],\"tableName\":[\"userpz_a\"],\"tableComment\":[\"员工信息表\"],\"className\":[\"UserpzA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"81\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"82\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"83\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工部门\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygBm\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"84\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工所在岗位\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygGw\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"userpzsystem\"],\"businessName\":[\"a\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:19:36');
INSERT INTO `sys_oper_log` VALUES ('299', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_a', '127.0.0.1', '内网IP', '\"userpz_a\"', null, '0', null, '2022-07-26 19:19:49');
INSERT INTO `sys_oper_log` VALUES ('300', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/userpz_a', '127.0.0.1', '内网IP', '\"userpz_a\"', null, '0', null, '2022-07-26 19:20:00');
INSERT INTO `sys_oper_log` VALUES ('301', '员工配置管理', '2', 'com.ruoyi.system.controller.UserpzAController.editSave()', 'POST', '1', 'admin', '研发', '/userpzsystem/a/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygName\":[\"tom\"],\"ygBm\":[\"光\"],\"ygGw\":[\"\"]}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-07-26 19:23:32');
INSERT INTO `sys_oper_log` VALUES ('302', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2056\"],\"parentId\":[\"2025\"],\"menuType\":[\"C\"],\"menuName\":[\"员工配置管理\"],\"url\":[\"/userpzsystem/a\"],\"target\":[\"menuItem\"],\"perms\":[\"userpzsystem:a:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 19:54:42');
INSERT INTO `sys_oper_log` VALUES ('303', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2056', '127.0.0.1', '内网IP', '2056', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-26 20:24:08');
INSERT INTO `sys_oper_log` VALUES ('304', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2057', '127.0.0.1', '内网IP', '2057', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:24:12');
INSERT INTO `sys_oper_log` VALUES ('305', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2058', '127.0.0.1', '内网IP', '2058', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:24:18');
INSERT INTO `sys_oper_log` VALUES ('306', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2059', '127.0.0.1', '内网IP', '2059', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:24:22');
INSERT INTO `sys_oper_log` VALUES ('307', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2060', '127.0.0.1', '内网IP', '2060', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:24:26');
INSERT INTO `sys_oper_log` VALUES ('308', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2061', '127.0.0.1', '内网IP', '2061', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:24:30');
INSERT INTO `sys_oper_log` VALUES ('309', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2056', '127.0.0.1', '内网IP', '2056', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:24:35');
INSERT INTO `sys_oper_log` VALUES ('310', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"15\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:24:43');
INSERT INTO `sys_oper_log` VALUES ('311', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"pzuser\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:24:46');
INSERT INTO `sys_oper_log` VALUES ('312', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"pzuser\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"Pzuser\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"85\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"86\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"87\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工部门\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygBm\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"88\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工所在岗位\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygGw\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"pzusersystem\"],\"businessName\":[\"pzuser\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:36:36');
INSERT INTO `sys_oper_log` VALUES ('313', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"16\"],\"tableName\":[\"pzuser\"],\"tableComment\":[\"员工配置信息表\"],\"className\":[\"Pzuser\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"85\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"86\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"87\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工部门\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygBm\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"88\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"员工所在岗位\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"ygGw\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"pzusersystem\"],\"businessName\":[\"pzuser\"],\"functionName\":[\"员工配置管理\"],\"params[parentMenuId]\":[\"2025\"],\"params[parentMenuName]\":[\"人事管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:36:42');
INSERT INTO `sys_oper_log` VALUES ('314', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/pzuser', '127.0.0.1', '内网IP', '\"pzuser\"', null, '0', null, '2022-07-26 20:36:46');
INSERT INTO `sys_oper_log` VALUES ('315', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/pzuser', '127.0.0.1', '内网IP', '\"pzuser\"', null, '0', null, '2022-07-26 20:36:57');
INSERT INTO `sys_oper_log` VALUES ('316', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2062\"],\"parentId\":[\"2025\"],\"menuType\":[\"C\"],\"menuName\":[\"员工配置管理\"],\"url\":[\"/pzusersystem/pzuser\"],\"target\":[\"menuItem\"],\"perms\":[\"pzusersystem:pzuser:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 20:40:11');
INSERT INTO `sys_oper_log` VALUES ('317', '人员基本信息维护', '1', 'com.ruoyi.system.controller.UserBController.addSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"11\"],\"ygName\":[\"尼尔\"],\"ygBm\":[\"444\"],\"ygSfzh\":[\"4343434\"],\"ygHjdz\":[\"\"],\"ygGj\":[\"\"],\"ygMz\":[\"\"],\"ygCssj\":[\"\"],\"ygDw\":[\"\"],\"ygRzsj\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-26 21:44:39');
INSERT INTO `sys_oper_log` VALUES ('318', '员工配置管理', '2', 'com.ruoyi.system.controller.PzuserController.editSave()', 'POST', '1', 'admin', '研发', '/pzusersystem/pzuser/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygName\":[\"tom\"],\"ygBm\":[\"光子\"],\"ygGw\":[\"hr\"]}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-07-27 09:39:19');
INSERT INTO `sys_oper_log` VALUES ('319', '员工配置管理', '2', 'com.ruoyi.system.controller.PzuserController.editSave()', 'POST', '1', 'admin', '研发', '/pzusersystem/pzuser/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygName\":[\"tom\"],\"ygBm\":[\"光子\"],\"ygGw\":[\"\"]}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-07-27 09:39:30');
INSERT INTO `sys_oper_log` VALUES ('320', '员工配置管理', '1', 'com.ruoyi.system.controller.PzuserController.addSave()', 'POST', '1', 'admin', '研发', '/pzusersystem/pzuser/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"ygName\":[\"\"],\"ygBm\":[\"\"],\"ygGw\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 09:39:43');
INSERT INTO `sys_oper_log` VALUES ('321', '员工配置管理', '3', 'com.ruoyi.system.controller.PzuserController.remove()', 'POST', '1', 'admin', '研发', '/pzusersystem/pzuser/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 10:01:34');
INSERT INTO `sys_oper_log` VALUES ('322', '员工配置管理', '2', 'com.ruoyi.system.controller.PzuserController.editSave()', 'POST', '1', 'admin', '研发', '/pzusersystem/pzuser/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygName\":[\"tom\"],\"ygBm\":[\"光子\"],\"ygGw\":[\"副总经理\"]}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-07-27 10:04:49');
INSERT INTO `sys_oper_log` VALUES ('323', '员工配置管理', '1', 'com.ruoyi.system.controller.PzuserController.addSave()', 'POST', '1', 'admin', '研发', '/pzusersystem/pzuser/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"5\"],\"ygName\":[\"tom jack\"],\"ygBm\":[\"光子\"],\"ygGw\":[\"hr\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 10:05:11');
INSERT INTO `sys_oper_log` VALUES ('324', '人员基本信息维护', '1', 'com.ruoyi.system.controller.UserBController.addSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"7\"],\"ygName\":[\"爱丽丝\"],\"ygBm\":[\"软件2002班\"],\"ygSfzh\":[\"4564646464\"],\"ygHjdz\":[\"武汉市\"],\"ygGj\":[\"美国\"],\"ygMz\":[\"\"],\"ygCssj\":[\"2022-07-27\"],\"ygDw\":[\"\"],\"ygRzsj\":[\"2022-07-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 10:26:45');
INSERT INTO `sys_oper_log` VALUES ('325', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', '1', 'admin', '研发', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"考勤管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"fa fa-hand-grab-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 10:34:17');
INSERT INTO `sys_oper_log` VALUES ('326', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2068\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"考勤管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"fa fa-hand-grab-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 10:34:33');
INSERT INTO `sys_oper_log` VALUES ('327', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2068\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"考勤管理\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-hand-grab-o\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 10:34:44');
INSERT INTO `sys_oper_log` VALUES ('328', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"yg_qj_a\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:12:17');
INSERT INTO `sys_oper_log` VALUES ('329', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"休假类型\"],\"dictType\":[\"yg_xj_a\"],\"status\":[\"0\"],\"remark\":[\"休假类型（事假，年休，婚嫁，丧假，病假）\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:14:38');
INSERT INTO `sys_oper_log` VALUES ('330', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"17\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:15:34');
INSERT INTO `sys_oper_log` VALUES ('331', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"事假\"],\"dictValue\":[\"0\"],\"dictType\":[\"yg_xj_a\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"事假\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:28:23');
INSERT INTO `sys_oper_log` VALUES ('332', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"年休\"],\"dictValue\":[\"1\"],\"dictType\":[\"yg_xj_a\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"年休\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:29:12');
INSERT INTO `sys_oper_log` VALUES ('333', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"yg_qj_a\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:29:25');
INSERT INTO `sys_oper_log` VALUES ('334', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"18\"],\"tableName\":[\"yg_qj_a\"],\"tableComment\":[\"员工请假信息表\"],\"className\":[\"YgQjA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"96\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工休假id\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"qjId\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"97\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"请假类型(0：事假，1：年休，2：婚嫁，3：丧假，4：病假)\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"qjLx\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"yg_xj_a\"],\"columns[2].columnId\":[\"98\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"请假开始时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"qjStart\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"99\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"请假结束时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"qjJs\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"100\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"请假时长\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"qjSc\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"101\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"请假事由\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"qjSy\"],\"columns[5].isInsert\":[', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:32:08');
INSERT INTO `sys_oper_log` VALUES ('335', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_qj_a', '127.0.0.1', '内网IP', '\"yg_qj_a\"', null, '0', null, '2022-07-27 14:32:13');
INSERT INTO `sys_oper_log` VALUES ('336', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_qj_a', '127.0.0.1', '内网IP', '\"yg_qj_a\"', null, '0', null, '2022-07-27 14:32:22');
INSERT INTO `sys_oper_log` VALUES ('337', '请休假管理', '1', 'com.ruoyi.system.controller.YgQjAController.addSave()', 'POST', '1', 'admin', '研发', '/ygqjsystem/e/add', '127.0.0.1', '内网IP', '{\"qjLx\":[\"1\"],\"qjStart\":[\"\"],\"qjJs\":[\"\"],\"qjSc\":[\"\"],\"qjSy\":[\"\"],\"qjDtr\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:35:19');
INSERT INTO `sys_oper_log` VALUES ('338', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2070', '127.0.0.1', '内网IP', '2070', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:37:59');
INSERT INTO `sys_oper_log` VALUES ('339', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2071', '127.0.0.1', '内网IP', '2071', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:38:03');
INSERT INTO `sys_oper_log` VALUES ('340', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2072', '127.0.0.1', '内网IP', '2072', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:38:07');
INSERT INTO `sys_oper_log` VALUES ('341', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2073', '127.0.0.1', '内网IP', '2073', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:38:11');
INSERT INTO `sys_oper_log` VALUES ('342', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2074', '127.0.0.1', '内网IP', '2074', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:38:14');
INSERT INTO `sys_oper_log` VALUES ('343', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2069', '127.0.0.1', '内网IP', '2069', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:38:18');
INSERT INTO `sys_oper_log` VALUES ('344', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"18\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:38:27');
INSERT INTO `sys_oper_log` VALUES ('345', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"yg_qj_a\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:38:34');
INSERT INTO `sys_oper_log` VALUES ('346', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"19\"],\"tableName\":[\"yg_qj_a\"],\"tableComment\":[\"员工请假信息表\"],\"className\":[\"YgQjA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"103\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工休假id\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"qjId\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"104\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"请假类型\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"qjLx\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"select\"],\"columns[1].dictType\":[\"yg_xj_a\"],\"columns[2].columnId\":[\"105\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"请假开始时间\"],\"columns[2].javaType\":[\"Date\"],\"columns[2].javaField\":[\"qjStart\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"datetime\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"106\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"请假结束时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"qjJs\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"107\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"请假时长\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"qjSc\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"108\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"请假事由\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"qjSy\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].isList\":[\"1\"],\"columns[5].queryTy', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:39:42');
INSERT INTO `sys_oper_log` VALUES ('347', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_qj_a', '127.0.0.1', '内网IP', '\"yg_qj_a\"', null, '0', null, '2022-07-27 14:39:45');
INSERT INTO `sys_oper_log` VALUES ('348', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_qj_a', '127.0.0.1', '内网IP', '\"yg_qj_a\"', null, '0', null, '2022-07-27 14:39:53');
INSERT INTO `sys_oper_log` VALUES ('349', '请休假管理', '3', 'com.ruoyi.system.controller.YgQjAController.remove()', 'POST', '1', 'admin', '研发', '/ygqjsystem/e/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:42:53');
INSERT INTO `sys_oper_log` VALUES ('350', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"婚嫁\"],\"dictValue\":[\"2\"],\"dictType\":[\"yg_xj_a\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"婚嫁\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:43:56');
INSERT INTO `sys_oper_log` VALUES ('351', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"丧假\"],\"dictValue\":[\"3\"],\"dictType\":[\"yg_xj_a\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"丧假\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:44:27');
INSERT INTO `sys_oper_log` VALUES ('352', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"病假\"],\"dictValue\":[\"4\"],\"dictType\":[\"yg_xj_a\"],\"cssClass\":[\"\"],\"dictSort\":[\"4\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"病假\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:44:53');
INSERT INTO `sys_oper_log` VALUES ('353', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2076', '127.0.0.1', '内网IP', '2076', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:48:02');
INSERT INTO `sys_oper_log` VALUES ('354', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2077', '127.0.0.1', '内网IP', '2077', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:48:06');
INSERT INTO `sys_oper_log` VALUES ('355', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2078', '127.0.0.1', '内网IP', '2078', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:48:09');
INSERT INTO `sys_oper_log` VALUES ('356', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2079', '127.0.0.1', '内网IP', '2079', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:48:13');
INSERT INTO `sys_oper_log` VALUES ('357', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2080', '127.0.0.1', '内网IP', '2080', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:48:17');
INSERT INTO `sys_oper_log` VALUES ('358', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/2075', '127.0.0.1', '内网IP', '2075', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:48:22');
INSERT INTO `sys_oper_log` VALUES ('359', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"19\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:48:28');
INSERT INTO `sys_oper_log` VALUES ('360', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"yg_qj_a\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:48:31');
INSERT INTO `sys_oper_log` VALUES ('361', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"13\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:48:34');
INSERT INTO `sys_oper_log` VALUES ('362', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"yg_qj_a\"],\"tableComment\":[\"员工请假信息表\"],\"className\":[\"YgQjA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"110\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工休假id\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"qjId\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"111\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"请假人姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"qjName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"112\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"请假类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"qjLx\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"yg_xj_a\"],\"columns[3].columnId\":[\"113\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"请假开始时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"qjStart\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"114\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"请假结束时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"qjJs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"115\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"请假时长\"],\"columns[5].javaType\":[\"Integer\"],\"columns[5].javaField\":[\"qjSc\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:50:09');
INSERT INTO `sys_oper_log` VALUES ('363', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_qj_a', '127.0.0.1', '内网IP', '\"yg_qj_a\"', null, '0', null, '2022-07-27 14:50:12');
INSERT INTO `sys_oper_log` VALUES ('364', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_qj_a', '127.0.0.1', '内网IP', '\"yg_qj_a\"', null, '0', null, '2022-07-27 14:50:21');
INSERT INTO `sys_oper_log` VALUES ('365', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"20\"],\"tableName\":[\"yg_qj_a\"],\"tableComment\":[\"员工请假信息表\"],\"className\":[\"YgQjA\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"110\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工休假id\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"qjId\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"111\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"请假人姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"qjName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"112\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"请假类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"qjLx\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"yg_xj_a\"],\"columns[3].columnId\":[\"113\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"请假开始时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"qjStart\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"114\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"请假结束时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"qjJs\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"115\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"请假时长\"],\"columns[5].javaType\":[\"Integer\"],\"columns[5].javaField\":[\"qjSc\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":[\"1\"],\"columns[5].i', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:52:35');
INSERT INTO `sys_oper_log` VALUES ('366', '请休假管理', '1', 'com.ruoyi.system.controller.YgQjAController.addSave()', 'POST', '1', 'admin', '研发', '/ygqjsystem/e/add', '127.0.0.1', '内网IP', '{\"qjName\":[\"王志远\"],\"qjLx\":[\"0\"],\"qjStart\":[\"2022-07-27\"],\"qjJs\":[\"2022-07-29\"],\"qjSc\":[\"2\"],\"qjSy\":[\"过生日\"],\"qjDtr\":[\"张三\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 14:53:38');
INSERT INTO `sys_oper_log` VALUES ('367', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"yg_cc_b\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:09:58');
INSERT INTO `sys_oper_log` VALUES ('368', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"21\"],\"tableName\":[\"yg_cc_b\"],\"tableComment\":[\"员工出差信息表\"],\"className\":[\"YgCcB\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"118\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"出差人员id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ccId\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"119\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"出差人员姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ccName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"120\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"出差目的地\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ccMdd\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"121\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"出差时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"ccSj\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"122\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"出差开始时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"ccStart\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"123\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"出差结束时间\"],\"columns[5].javaType\":[\"Date\"],\"columns[5].javaField\":[\"ccFinal\"],\"columns[5].isInsert\":[\"1\"],\"columns[5].isEdit\":', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:12:12');
INSERT INTO `sys_oper_log` VALUES ('369', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_cc_b', '127.0.0.1', '内网IP', '\"yg_cc_b\"', null, '0', null, '2022-07-27 15:12:19');
INSERT INTO `sys_oper_log` VALUES ('370', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_cc_b', '127.0.0.1', '内网IP', '\"yg_cc_b\"', null, '0', null, '2022-07-27 15:12:29');
INSERT INTO `sys_oper_log` VALUES ('371', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', '0', null, '2022-07-27 15:15:34');
INSERT INTO `sys_oper_log` VALUES ('372', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', '0', null, '2022-07-27 15:15:40');
INSERT INTO `sys_oper_log` VALUES ('373', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/4', '127.0.0.1', '内网IP', '4', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', '0', null, '2022-07-27 15:15:56');
INSERT INTO `sys_oper_log` VALUES ('374', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/109', '127.0.0.1', '内网IP', '109', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-27 15:16:16');
INSERT INTO `sys_oper_log` VALUES ('375', '出差管理', '1', 'com.ruoyi.system.controller.YgCcBController.addSave()', 'POST', '1', 'admin', '研发', '/ygccsystem/f/add', '127.0.0.1', '内网IP', '{\"ccName\":[\"王志远\"],\"ccMdd\":[\"美国\"],\"ccSj\":[\"2022-07-27\"],\"ccStart\":[\"2022-07-30\"],\"ccFinal\":[\"2022-08-26\"],\"ccSy\":[\"工作\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:16:56');
INSERT INTO `sys_oper_log` VALUES ('376', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"yg_kq_c\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:29:28');
INSERT INTO `sys_oper_log` VALUES ('377', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"异常类型\"],\"dictType\":[\"yg_kq_c\"],\"status\":[\"0\"],\"remark\":[\"异常类型（矿工，迟到，早退）\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:31:20');
INSERT INTO `sys_oper_log` VALUES ('378', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"旷工\"],\"dictValue\":[\"0\"],\"dictType\":[\"yg_kq_c\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"旷工\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:32:35');
INSERT INTO `sys_oper_log` VALUES ('379', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"迟到\"],\"dictValue\":[\"1\"],\"dictType\":[\"yg_kq_c\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"迟到\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:32:53');
INSERT INTO `sys_oper_log` VALUES ('380', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"早退\"],\"dictValue\":[\"2\"],\"dictType\":[\"yg_kq_c\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"早退\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:33:24');
INSERT INTO `sys_oper_log` VALUES ('381', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.editSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"37\"],\"dictLabel\":[\"早退\"],\"dictValue\":[\"2\"],\"dictType\":[\"yg_kq_c\"],\"cssClass\":[\"\"],\"dictSort\":[\"3\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"早退\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:33:32');
INSERT INTO `sys_oper_log` VALUES ('382', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"22\"],\"tableName\":[\"yg_kq_c\"],\"tableComment\":[\"员工考勤异常表\"],\"className\":[\"YgKqC\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"125\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工id\"],\"columns[0].javaType\":[\"Integer\"],\"columns[0].javaField\":[\"ygycId\"],\"columns[0].isList\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"126\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygycName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"127\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"员工异常类型\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ygycLeix\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"select\"],\"columns[2].dictType\":[\"yg_kq_c\"],\"columns[3].columnId\":[\"128\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"异常时间\"],\"columns[3].javaType\":[\"Date\"],\"columns[3].javaField\":[\"ygycTime\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"datetime\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"ygkqsystem\"],\"businessName\":[\"g\"],\"functionName\":[\"异常考勤管理\"],\"params[parentMenuId]\":[\"2068\"],\"params[parentMenuName]\":[\"考勤管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:34:46');
INSERT INTO `sys_oper_log` VALUES ('383', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_kq_c', '127.0.0.1', '内网IP', '\"yg_kq_c\"', null, '0', null, '2022-07-27 15:34:50');
INSERT INTO `sys_oper_log` VALUES ('384', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/yg_kq_c', '127.0.0.1', '内网IP', '\"yg_kq_c\"', null, '0', null, '2022-07-27 15:34:59');
INSERT INTO `sys_oper_log` VALUES ('385', '异常考勤管理', '1', 'com.ruoyi.system.controller.YgKqCController.addSave()', 'POST', '1', 'admin', '研发', '/ygkqsystem/g/add', '127.0.0.1', '内网IP', '{\"ygycName\":[\"王志远\"],\"ygycLeix\":[\"0\"],\"ygycTime\":[\"2022-07-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:36:58');
INSERT INTO `sys_oper_log` VALUES ('386', '异常考勤管理', '1', 'com.ruoyi.system.controller.YgKqCController.addSave()', 'POST', '1', 'admin', '研发', '/ygkqsystem/g/add', '127.0.0.1', '内网IP', '{\"ygycName\":[\"王志远\"],\"ygycLeix\":[\"1\"],\"ygycTime\":[\"2022-07-28\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 15:37:16');
INSERT INTO `sys_oper_log` VALUES ('387', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', '1', 'admin', '研发', '/system/menu/remove/100', '127.0.0.1', '内网IP', '100', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', '0', null, '2022-07-27 15:38:03');
INSERT INTO `sys_oper_log` VALUES ('388', '异常考勤管理', '5', 'com.ruoyi.system.controller.YgKqCController.export()', 'POST', '1', 'admin', '研发', '/ygkqsystem/g/export', '127.0.0.1', '内网IP', '{\"ygycName\":[\"\"],\"ygycLeix\":[\"1\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"de6a21c0-f08b-4d56-ab27-a13cecbcd598_异常考勤管理数据.xlsx\",\"code\":0}', '0', null, '2022-07-27 15:52:53');
INSERT INTO `sys_oper_log` VALUES ('389', '请休假管理', '2', 'com.ruoyi.system.controller.YgQjAController.editSave()', 'POST', '1', 'admin', '研发', '/ygqjsystem/e/edit', '127.0.0.1', '内网IP', '{\"qjId\":[\"2\"],\"qjName\":[\"张三\"],\"qjLx\":[\"0\"],\"qjStart\":[\"2022-07-27\"],\"qjJs\":[\"2022-07-29\"],\"qjSc\":[\"2\"],\"qjSy\":[\"过生日\"],\"qjDtr\":[\"张三\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 18:46:34');
INSERT INTO `sys_oper_log` VALUES ('390', '出差管理', '2', 'com.ruoyi.system.controller.YgCcBController.editSave()', 'POST', '1', 'admin', '研发', '/ygccsystem/f/edit', '127.0.0.1', '内网IP', '{\"ccId\":[\"1\"],\"ccName\":[\"张三\"],\"ccMdd\":[\"美国\"],\"ccSj\":[\"2022-07-27\"],\"ccStart\":[\"2022-07-30\"],\"ccFinal\":[\"2022-08-26\"],\"ccSy\":[\"工作\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 18:46:41');
INSERT INTO `sys_oper_log` VALUES ('391', '异常考勤管理', '2', 'com.ruoyi.system.controller.YgKqCController.editSave()', 'POST', '1', 'admin', '研发', '/ygkqsystem/g/edit', '127.0.0.1', '内网IP', '{\"ygycId\":[\"1\"],\"ygycName\":[\"张三\"],\"ygycLeix\":[\"0\"],\"ygycTime\":[\"2022-07-27\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 18:46:47');
INSERT INTO `sys_oper_log` VALUES ('392', '异常考勤管理', '2', 'com.ruoyi.system.controller.YgKqCController.editSave()', 'POST', '1', 'admin', '研发', '/ygkqsystem/g/edit', '127.0.0.1', '内网IP', '{\"ygycId\":[\"2\"],\"ygycName\":[\"张三\"],\"ygycLeix\":[\"1\"],\"ygycTime\":[\"2022-07-28\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 18:46:54');
INSERT INTO `sys_oper_log` VALUES ('393', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"user_lz\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 19:52:20');
INSERT INTO `sys_oper_log` VALUES ('394', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"23\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 19:53:03');
INSERT INTO `sys_oper_log` VALUES ('395', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"user_lz\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 19:53:40');
INSERT INTO `sys_oper_log` VALUES ('396', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"离职类型\"],\"dictType\":[\"yg_lzlx\"],\"status\":[\"0\"],\"remark\":[\"员工离职类型\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 19:55:11');
INSERT INTO `sys_oper_log` VALUES ('397', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"长期\"],\"dictValue\":[\"0\"],\"dictType\":[\"yg_lzlx\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"长期离职\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 19:55:58');
INSERT INTO `sys_oper_log` VALUES ('398', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.addSave()', 'POST', '1', 'admin', '研发', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"短期\"],\"dictValue\":[\"1\"],\"dictType\":[\"yg_lzlx\"],\"cssClass\":[\"\"],\"dictSort\":[\"2\"],\"listClass\":[\"primary\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"短期离职\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 19:56:23');
INSERT INTO `sys_oper_log` VALUES ('399', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"24\"],\"tableName\":[\"user_lz\"],\"tableComment\":[\"员工离职信息表\"],\"className\":[\"UserLz\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"134\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"员工工号\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"ygId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].isList\":[\"1\"],\"columns[0].isQuery\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"135\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"员工姓名\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"ygName\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"LIKE\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"136\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"离职岗位\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"yglzGw\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"137\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"离职类型\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"yglzLx\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"select\"],\"columns[3].dictType\":[\"yg_lzlx\"],\"columns[4].columnId\":[\"138\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"确认离职时间\"],\"columns[4].javaType\":[\"Date\"],\"columns[4].javaField\":[\"yglzTime\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"datetime\"],\"columns[4].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.ruoyi.system\"],\"moduleName\":[\"user_lz_system\"],\"businessName\":[\"lz\"],\"functionName\":[\"员工离职功能\"],\"param', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 19:57:42');
INSERT INTO `sys_oper_log` VALUES ('400', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/user_lz', '127.0.0.1', '内网IP', '\"user_lz\"', null, '0', null, '2022-07-27 19:57:47');
INSERT INTO `sys_oper_log` VALUES ('401', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.download()', 'GET', '1', 'admin', '研发', '/tool/gen/download/user_lz', '127.0.0.1', '内网IP', '\"user_lz\"', null, '0', null, '2022-07-27 19:58:10');
INSERT INTO `sys_oper_log` VALUES ('402', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', '1', 'admin', '研发', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2099\"],\"parentId\":[\"2025\"],\"menuType\":[\"C\"],\"menuName\":[\"员工离职功能\"],\"url\":[\"/user_lz_system/lz\"],\"target\":[\"menuItem\"],\"perms\":[\"user_lz_system:lz:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 20:02:21');
INSERT INTO `sys_oper_log` VALUES ('403', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"deptId\":[\"\"],\"ygBm\":[\"光子\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"\"],\"ygMz\":[\"呜哩呱啦\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"武汉宝信软件公司\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 20:03:26');
INSERT INTO `sys_oper_log` VALUES ('404', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"deptId\":[\"\"],\"ygBm\":[\"光子\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"\"],\"ygMz\":[\"呜哩呱啦\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"武汉宝信软件公司\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 20:03:32');
INSERT INTO `sys_oper_log` VALUES ('405', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"deptId\":[\"\"],\"ygBm\":[\"光子\"],\"ygName\":[\"tom\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"\"],\"ygMz\":[\"\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"武汉宝信软件公司\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 20:03:35');
INSERT INTO `sys_oper_log` VALUES ('406', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"2\"],\"deptId\":[\"\"],\"ygBm\":[\"机电学院\"],\"ygName\":[\"王志远\"],\"ygSfzh\":[\"3154616161\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"\"],\"ygCssj\":[\"2022-07-26\"],\"ygDw\":[\"武汉宝信\"],\"ygRzsj\":[\"2022-07-26\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 20:03:41');
INSERT INTO `sys_oper_log` VALUES ('407', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"deptId\":[\"\"],\"ygBm\":[\"光子\"],\"ygName\":[\"王志远\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"无\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 20:04:06');
INSERT INTO `sys_oper_log` VALUES ('408', '人员基本信息维护', '2', 'com.ruoyi.system.controller.UserBController.editSave()', 'POST', '1', 'admin', '研发', '/usersystem/b/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"deptId\":[\"\"],\"ygBm\":[\"光子\"],\"ygName\":[\"王志远\"],\"ygSfzh\":[\"123456789789456123\"],\"ygHjdz\":[\"山西省长治市\"],\"ygGj\":[\"中国\"],\"ygMz\":[\"汉\"],\"ygCssj\":[\"2002-06-01\"],\"ygDw\":[\"无\"],\"ygRzsj\":[\"2022-07-24\"]}', '{\"msg\":\"操作成功\",\"code\":0}', '0', null, '2022-07-27 20:04:13');
INSERT INTO `sys_oper_log` VALUES ('409', '员工配置管理', '2', 'com.ruoyi.system.controller.PzuserController.editSave()', 'POST', '1', 'admin', '研发', '/pzusersystem/pzuser/edit', '127.0.0.1', '内网IP', '{\"ygId\":[\"1\"],\"ygName\":[\"王志\"],\"ygBm\":[\"光子\"],\"ygGw\":[\"\"]}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2022-07-27 20:04:51');

-- ----------------------------
-- Table structure for `sys_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2022-07-23 14:17:41', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2022-07-23 14:17:41', '', null, '');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '0', '0', 'admin', '2022-07-23 14:17:41', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2022-07-23 14:17:41', '', null, '普通角色');

-- ----------------------------
-- Table structure for `sys_role_dept`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '105');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '101');
INSERT INTO `sys_role_menu` VALUES ('2', '102');
INSERT INTO `sys_role_menu` VALUES ('2', '103');
INSERT INTO `sys_role_menu` VALUES ('2', '104');
INSERT INTO `sys_role_menu` VALUES ('2', '105');
INSERT INTO `sys_role_menu` VALUES ('2', '106');
INSERT INTO `sys_role_menu` VALUES ('2', '107');
INSERT INTO `sys_role_menu` VALUES ('2', '108');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
INSERT INTO `sys_role_menu` VALUES ('2', '116');
INSERT INTO `sys_role_menu` VALUES ('2', '500');
INSERT INTO `sys_role_menu` VALUES ('2', '501');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('2', '1007');
INSERT INTO `sys_role_menu` VALUES ('2', '1008');
INSERT INTO `sys_role_menu` VALUES ('2', '1009');
INSERT INTO `sys_role_menu` VALUES ('2', '1010');
INSERT INTO `sys_role_menu` VALUES ('2', '1011');
INSERT INTO `sys_role_menu` VALUES ('2', '1012');
INSERT INTO `sys_role_menu` VALUES ('2', '1013');
INSERT INTO `sys_role_menu` VALUES ('2', '1014');
INSERT INTO `sys_role_menu` VALUES ('2', '1015');
INSERT INTO `sys_role_menu` VALUES ('2', '1016');
INSERT INTO `sys_role_menu` VALUES ('2', '1017');
INSERT INTO `sys_role_menu` VALUES ('2', '1018');
INSERT INTO `sys_role_menu` VALUES ('2', '1019');
INSERT INTO `sys_role_menu` VALUES ('2', '1020');
INSERT INTO `sys_role_menu` VALUES ('2', '1021');
INSERT INTO `sys_role_menu` VALUES ('2', '1022');
INSERT INTO `sys_role_menu` VALUES ('2', '1023');
INSERT INTO `sys_role_menu` VALUES ('2', '1024');
INSERT INTO `sys_role_menu` VALUES ('2', '1025');
INSERT INTO `sys_role_menu` VALUES ('2', '1026');
INSERT INTO `sys_role_menu` VALUES ('2', '1027');
INSERT INTO `sys_role_menu` VALUES ('2', '1028');
INSERT INTO `sys_role_menu` VALUES ('2', '1029');
INSERT INTO `sys_role_menu` VALUES ('2', '1030');
INSERT INTO `sys_role_menu` VALUES ('2', '1031');
INSERT INTO `sys_role_menu` VALUES ('2', '1032');
INSERT INTO `sys_role_menu` VALUES ('2', '1033');
INSERT INTO `sys_role_menu` VALUES ('2', '1034');
INSERT INTO `sys_role_menu` VALUES ('2', '1035');
INSERT INTO `sys_role_menu` VALUES ('2', '1036');
INSERT INTO `sys_role_menu` VALUES ('2', '1037');
INSERT INTO `sys_role_menu` VALUES ('2', '1038');
INSERT INTO `sys_role_menu` VALUES ('2', '1039');
INSERT INTO `sys_role_menu` VALUES ('2', '1040');
INSERT INTO `sys_role_menu` VALUES ('2', '1041');
INSERT INTO `sys_role_menu` VALUES ('2', '1042');
INSERT INTO `sys_role_menu` VALUES ('2', '1043');
INSERT INTO `sys_role_menu` VALUES ('2', '1044');
INSERT INTO `sys_role_menu` VALUES ('2', '1045');
INSERT INTO `sys_role_menu` VALUES ('2', '1046');
INSERT INTO `sys_role_menu` VALUES ('2', '1047');
INSERT INTO `sys_role_menu` VALUES ('2', '1048');
INSERT INTO `sys_role_menu` VALUES ('2', '1049');
INSERT INTO `sys_role_menu` VALUES ('2', '1050');
INSERT INTO `sys_role_menu` VALUES ('2', '1051');
INSERT INTO `sys_role_menu` VALUES ('2', '1052');
INSERT INTO `sys_role_menu` VALUES ('2', '1053');
INSERT INTO `sys_role_menu` VALUES ('2', '1054');
INSERT INTO `sys_role_menu` VALUES ('2', '1055');
INSERT INTO `sys_role_menu` VALUES ('2', '1056');
INSERT INTO `sys_role_menu` VALUES ('2', '1057');
INSERT INTO `sys_role_menu` VALUES ('2', '1058');
INSERT INTO `sys_role_menu` VALUES ('2', '1059');
INSERT INTO `sys_role_menu` VALUES ('2', '1060');
INSERT INTO `sys_role_menu` VALUES ('2', '1061');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2022-07-27 20:02:01', '2022-07-23 14:17:41', 'admin', '2022-07-23 14:17:41', '', '2022-07-27 20:02:01', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2022-07-23 14:17:41', '2022-07-23 14:17:41', 'admin', '2022-07-23 14:17:41', '', null, '测试员');

-- ----------------------------
-- Table structure for `sys_user_online`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('c5c63b77-5dce-498a-86a9-a9ffdd1fcb39', 'admin', '研发', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', 'on_line', '2022-07-27 19:51:57', '2022-07-27 20:07:32', '1800000');

-- ----------------------------
-- Table structure for `sys_user_post`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');
INSERT INTO `sys_user_post` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');

-- ----------------------------
-- Table structure for `usergw_b`
-- ----------------------------
DROP TABLE IF EXISTS `usergw_b`;
CREATE TABLE `usergw_b` (
  `gw_id` bigint(40) NOT NULL AUTO_INCREMENT COMMENT '岗位序号',
  `gwparent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `gw_name` varchar(30) DEFAULT '' COMMENT '岗位名称',
  `gw_jb` varchar(50) DEFAULT '' COMMENT '岗位级别',
  PRIMARY KEY (`gw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergw_b
-- ----------------------------
INSERT INTO `usergw_b` VALUES ('3', '0', '总经理', '一');
INSERT INTO `usergw_b` VALUES ('4', '3', '副总经理', '二');
INSERT INTO `usergw_b` VALUES ('5', '4', 'hr', '三');
INSERT INTO `usergw_b` VALUES ('6', '5', '打工人', '四');

-- ----------------------------
-- Table structure for `user_b`
-- ----------------------------
DROP TABLE IF EXISTS `user_b`;
CREATE TABLE `user_b` (
  `yg_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '员工工号',
  `yg_bm` varchar(20) DEFAULT NULL COMMENT '员工部门',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `yg_name` varchar(30) DEFAULT '' COMMENT '员工姓名',
  `yg_sfzh` varchar(18) DEFAULT NULL COMMENT '员工身份证号',
  `yg_hjdz` varchar(100) DEFAULT NULL COMMENT '员工户籍地址',
  `yg_gj` varchar(20) DEFAULT NULL COMMENT '员工国籍',
  `yg_mz` varchar(10) DEFAULT NULL COMMENT '民族',
  `yg_cssj` datetime DEFAULT NULL COMMENT '出生时间',
  `yg_dw` varchar(20) DEFAULT '' COMMENT '协力供应商单位',
  `yg_rzsj` datetime DEFAULT NULL COMMENT '员工入职时间',
  `yg_gw` varchar(10) DEFAULT NULL COMMENT '员工岗位',
  PRIMARY KEY (`yg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_b
-- ----------------------------
INSERT INTO `user_b` VALUES ('1', '光子', '6', '王志远', '123456789789456123', '山西省长治市', '中国', '汉', '2002-06-01 00:00:00', '无', '2022-07-24 00:00:00', null);
INSERT INTO `user_b` VALUES ('2', '机电学院', '3', '王志远', '3154616161', '山西省长治市', '中国', '', '2022-07-26 00:00:00', '武汉宝信', '2022-07-26 00:00:00', null);
INSERT INTO `user_b` VALUES ('5', '机电学院', '3', '测试', '', '', '', '', null, '', null, null);
INSERT INTO `user_b` VALUES ('6', '444', '11', '尼尔', '4343434', '', '', '', null, '', null, null);
INSERT INTO `user_b` VALUES ('7', '软件2002班', '7', '爱丽丝', '4564646464', '武汉市', '美国', '', '2022-07-27 00:00:00', '', '2022-07-27 00:00:00', null);

-- ----------------------------
-- Table structure for `user_lz`
-- ----------------------------
DROP TABLE IF EXISTS `user_lz`;
CREATE TABLE `user_lz` (
  `yg_id` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '员工工号',
  `yg_name` varchar(40) CHARACTER SET utf8 DEFAULT '' COMMENT '员工姓名',
  `yglz_gw` varchar(40) CHARACTER SET utf8 DEFAULT '' COMMENT '离职岗位',
  `yglz_lx` char(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '离职类型',
  `yglz_time` datetime DEFAULT NULL COMMENT '确认离职时间',
  PRIMARY KEY (`yg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_lz
-- ----------------------------

-- ----------------------------
-- Table structure for `yg_cc_b`
-- ----------------------------
DROP TABLE IF EXISTS `yg_cc_b`;
CREATE TABLE `yg_cc_b` (
  `cc_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '出差人员id',
  `cc_name` varchar(30) CHARACTER SET utf8 DEFAULT '' COMMENT '出差人员姓名',
  `cc_mdd` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '出差目的地',
  `cc_sj` datetime DEFAULT NULL COMMENT '出差时间',
  `cc_start` datetime DEFAULT NULL COMMENT '出差开始时间',
  `cc_final` datetime DEFAULT NULL COMMENT '出差结束时间',
  `cc_sy` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '出差事由',
  PRIMARY KEY (`cc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yg_cc_b
-- ----------------------------
INSERT INTO `yg_cc_b` VALUES ('1', '张三', '美国', '2022-07-27 00:00:00', '2022-07-30 00:00:00', '2022-08-26 00:00:00', '工作');

-- ----------------------------
-- Table structure for `yg_kq_c`
-- ----------------------------
DROP TABLE IF EXISTS `yg_kq_c`;
CREATE TABLE `yg_kq_c` (
  `ygyc_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `ygyc_name` varchar(30) CHARACTER SET utf8 DEFAULT '' COMMENT '员工姓名',
  `ygyc_leix` char(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '员工异常类型',
  `ygyc_time` datetime DEFAULT NULL COMMENT '异常时间',
  PRIMARY KEY (`ygyc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yg_kq_c
-- ----------------------------
INSERT INTO `yg_kq_c` VALUES ('1', '张三', '0', '2022-07-27 00:00:00');
INSERT INTO `yg_kq_c` VALUES ('2', '张三', '1', '2022-07-28 00:00:00');

-- ----------------------------
-- Table structure for `yg_qj_a`
-- ----------------------------
DROP TABLE IF EXISTS `yg_qj_a`;
CREATE TABLE `yg_qj_a` (
  `qj_id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '员工休假id',
  `qj_name` varchar(30) CHARACTER SET utf8 DEFAULT '' COMMENT '请假人姓名',
  `qj_lx` char(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '请假类型',
  `qj_start` datetime DEFAULT NULL COMMENT '请假开始时间',
  `qj_js` datetime DEFAULT NULL COMMENT '请假结束时间',
  `qj_sc` int(10) DEFAULT NULL COMMENT '请假时长',
  `qj_sy` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '请假事由',
  `qj_dtr` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '工作代替人',
  PRIMARY KEY (`qj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of yg_qj_a
-- ----------------------------
INSERT INTO `yg_qj_a` VALUES ('2', '张三', '0', '2022-07-27 00:00:00', '2022-07-29 00:00:00', '2', '过生日', '张三');
