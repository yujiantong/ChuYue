/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : chuyue

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-10-10 11:32:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'sys_user_post', '用户与岗位关联表', 'SysUserPost', 'crud', 'com.ruoyi.system', 'system', 'post', '用户与岗位关联', 'ruoyi', null, 'admin', '2019-09-27 21:00:41', '', null, null);

-- ----------------------------
-- Table structure for gen_table_column
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'user_id', '用户ID', 'bigint(20)', 'Long', 'userId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2019-09-27 21:00:41', '', null);
INSERT INTO `gen_table_column` VALUES ('2', '1', 'post_id', '岗位ID', 'bigint(20)', 'Long', 'postId', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '2', 'admin', '2019-09-27 21:00:41', '', null);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('chuyueScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('chuyueScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('chuyueScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
INSERT INTO `qrtz_fired_triggers` VALUES ('chuyueScheduler', 'DESKTOP-VOAS7VO15706782842871570678284270', 'TASK_CLASS_NAME2', 'DEFAULT', 'DESKTOP-VOAS7VO1570678284287', '1570678365026', '1570678380000', '5', 'ACQUIRED', null, null, '0', '0');
INSERT INTO `qrtz_fired_triggers` VALUES ('RuoyiScheduler', 'DESKTOP-VOAS7VO15706747670501570674767033', 'TASK_CLASS_NAME2', 'DEFAULT', 'DESKTOP-VOAS7VO1570674767050', '1570674810044', '1570674825000', '5', 'ACQUIRED', null, null, '0', '0');

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('chuyueScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.chuyue.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E6368757975652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E6368757975652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('chuyueScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.chuyue.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E6368757975652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E6368757975652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001307800);
INSERT INTO `qrtz_job_details` VALUES ('chuyueScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.chuyue.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E6368757975652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E6368757975652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001307800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('chuyueScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('chuyueScheduler', 'TRIGGER_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('chuyueScheduler', 'DESKTOP-VOAS7VO1570678284287', '1570678363038', '15000');
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-VOAS7VO1570674767050', '1570674815100', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('chuyueScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1570678290000', '-1', '5', 'PAUSED', 'CRON', '1570678284000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('chuyueScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1570678380000', '1570678365000', '5', 'ACQUIRED', 'CRON', '1570678284000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('chuyueScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1570678300000', '-1', '5', 'PAUSED', 'CRON', '1570678284000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1570674770000', '-1', '5', 'PAUSED', 'CRON', '1570674767000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1570674825000', '1570674810000', '5', 'ACQUIRED', 'CRON', '1570674767000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1570674780000', '-1', '5', 'PAUSED', 'CRON', '1570674767000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
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
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');

-- ----------------------------
-- Table structure for sys_dict_data
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
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
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2019-09-27 20:57:30', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
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
) ENGINE=InnoDB AUTO_INCREMENT=4834 DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('1', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-09-27 20:57:40');
INSERT INTO `sys_job_log` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 20:57:45');
INSERT INTO `sys_job_log` VALUES ('3', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 20:58:00');
INSERT INTO `sys_job_log` VALUES ('4', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 20:58:15');
INSERT INTO `sys_job_log` VALUES ('5', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 20:58:30');
INSERT INTO `sys_job_log` VALUES ('6', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 20:58:45');
INSERT INTO `sys_job_log` VALUES ('7', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 20:59:00');
INSERT INTO `sys_job_log` VALUES ('8', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 20:59:15');
INSERT INTO `sys_job_log` VALUES ('9', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 20:59:30');
INSERT INTO `sys_job_log` VALUES ('10', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 20:59:45');
INSERT INTO `sys_job_log` VALUES ('11', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:00:00');
INSERT INTO `sys_job_log` VALUES ('12', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:00:15');
INSERT INTO `sys_job_log` VALUES ('13', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 21:00:30');
INSERT INTO `sys_job_log` VALUES ('14', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:00:45');
INSERT INTO `sys_job_log` VALUES ('15', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 21:01:00');
INSERT INTO `sys_job_log` VALUES ('16', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:01:15');
INSERT INTO `sys_job_log` VALUES ('17', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 21:01:30');
INSERT INTO `sys_job_log` VALUES ('18', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:01:45');
INSERT INTO `sys_job_log` VALUES ('19', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:02:00');
INSERT INTO `sys_job_log` VALUES ('20', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:02:15');
INSERT INTO `sys_job_log` VALUES ('21', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:02:30');
INSERT INTO `sys_job_log` VALUES ('22', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:02:45');
INSERT INTO `sys_job_log` VALUES ('23', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:03:00');
INSERT INTO `sys_job_log` VALUES ('24', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:03:15');
INSERT INTO `sys_job_log` VALUES ('25', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:03:30');
INSERT INTO `sys_job_log` VALUES ('26', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:03:45');
INSERT INTO `sys_job_log` VALUES ('27', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 21:04:00');
INSERT INTO `sys_job_log` VALUES ('28', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:04:15');
INSERT INTO `sys_job_log` VALUES ('29', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:04:30');
INSERT INTO `sys_job_log` VALUES ('30', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:04:45');
INSERT INTO `sys_job_log` VALUES ('31', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:05:00');
INSERT INTO `sys_job_log` VALUES ('32', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:05:15');
INSERT INTO `sys_job_log` VALUES ('33', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:05:30');
INSERT INTO `sys_job_log` VALUES ('34', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:05:45');
INSERT INTO `sys_job_log` VALUES ('35', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:06:00');
INSERT INTO `sys_job_log` VALUES ('36', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:06:15');
INSERT INTO `sys_job_log` VALUES ('37', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:06:30');
INSERT INTO `sys_job_log` VALUES ('38', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:06:45');
INSERT INTO `sys_job_log` VALUES ('39', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:07:00');
INSERT INTO `sys_job_log` VALUES ('40', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:07:15');
INSERT INTO `sys_job_log` VALUES ('41', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:07:30');
INSERT INTO `sys_job_log` VALUES ('42', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:07:45');
INSERT INTO `sys_job_log` VALUES ('43', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 21:08:00');
INSERT INTO `sys_job_log` VALUES ('44', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:08:15');
INSERT INTO `sys_job_log` VALUES ('45', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:08:30');
INSERT INTO `sys_job_log` VALUES ('46', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:08:45');
INSERT INTO `sys_job_log` VALUES ('47', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:09:00');
INSERT INTO `sys_job_log` VALUES ('48', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:09:15');
INSERT INTO `sys_job_log` VALUES ('49', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:09:30');
INSERT INTO `sys_job_log` VALUES ('50', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:09:45');
INSERT INTO `sys_job_log` VALUES ('51', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:10:00');
INSERT INTO `sys_job_log` VALUES ('52', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:10:15');
INSERT INTO `sys_job_log` VALUES ('53', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:10:30');
INSERT INTO `sys_job_log` VALUES ('54', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:10:45');
INSERT INTO `sys_job_log` VALUES ('55', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:11:00');
INSERT INTO `sys_job_log` VALUES ('56', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:11:15');
INSERT INTO `sys_job_log` VALUES ('57', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:11:30');
INSERT INTO `sys_job_log` VALUES ('58', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:11:45');
INSERT INTO `sys_job_log` VALUES ('59', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:12:00');
INSERT INTO `sys_job_log` VALUES ('60', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:12:15');
INSERT INTO `sys_job_log` VALUES ('61', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 21:12:30');
INSERT INTO `sys_job_log` VALUES ('62', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:12:45');
INSERT INTO `sys_job_log` VALUES ('63', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:13:00');
INSERT INTO `sys_job_log` VALUES ('64', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:13:15');
INSERT INTO `sys_job_log` VALUES ('65', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:13:30');
INSERT INTO `sys_job_log` VALUES ('66', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:13:45');
INSERT INTO `sys_job_log` VALUES ('67', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:14:00');
INSERT INTO `sys_job_log` VALUES ('68', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:14:15');
INSERT INTO `sys_job_log` VALUES ('69', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:14:30');
INSERT INTO `sys_job_log` VALUES ('70', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:14:45');
INSERT INTO `sys_job_log` VALUES ('71', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:15:00');
INSERT INTO `sys_job_log` VALUES ('72', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:15:15');
INSERT INTO `sys_job_log` VALUES ('73', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:15:30');
INSERT INTO `sys_job_log` VALUES ('74', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:15:45');
INSERT INTO `sys_job_log` VALUES ('75', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:16:00');
INSERT INTO `sys_job_log` VALUES ('76', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:16:15');
INSERT INTO `sys_job_log` VALUES ('77', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:16:30');
INSERT INTO `sys_job_log` VALUES ('78', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:16:45');
INSERT INTO `sys_job_log` VALUES ('79', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:17:00');
INSERT INTO `sys_job_log` VALUES ('80', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:17:15');
INSERT INTO `sys_job_log` VALUES ('81', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:17:30');
INSERT INTO `sys_job_log` VALUES ('82', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:17:45');
INSERT INTO `sys_job_log` VALUES ('83', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:18:00');
INSERT INTO `sys_job_log` VALUES ('84', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:18:15');
INSERT INTO `sys_job_log` VALUES ('85', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:18:30');
INSERT INTO `sys_job_log` VALUES ('86', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:18:45');
INSERT INTO `sys_job_log` VALUES ('87', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:19:00');
INSERT INTO `sys_job_log` VALUES ('88', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:19:15');
INSERT INTO `sys_job_log` VALUES ('89', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 21:19:30');
INSERT INTO `sys_job_log` VALUES ('90', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:19:45');
INSERT INTO `sys_job_log` VALUES ('91', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:20:00');
INSERT INTO `sys_job_log` VALUES ('92', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:20:15');
INSERT INTO `sys_job_log` VALUES ('93', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:20:30');
INSERT INTO `sys_job_log` VALUES ('94', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:20:45');
INSERT INTO `sys_job_log` VALUES ('95', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:21:00');
INSERT INTO `sys_job_log` VALUES ('96', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 21:21:15');
INSERT INTO `sys_job_log` VALUES ('97', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:21:30');
INSERT INTO `sys_job_log` VALUES ('98', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:21:45');
INSERT INTO `sys_job_log` VALUES ('99', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:22:00');
INSERT INTO `sys_job_log` VALUES ('100', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:22:15');
INSERT INTO `sys_job_log` VALUES ('101', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:22:30');
INSERT INTO `sys_job_log` VALUES ('102', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:22:45');
INSERT INTO `sys_job_log` VALUES ('103', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:23:00');
INSERT INTO `sys_job_log` VALUES ('104', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:23:15');
INSERT INTO `sys_job_log` VALUES ('105', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:23:30');
INSERT INTO `sys_job_log` VALUES ('106', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:23:45');
INSERT INTO `sys_job_log` VALUES ('107', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:24:00');
INSERT INTO `sys_job_log` VALUES ('108', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:24:15');
INSERT INTO `sys_job_log` VALUES ('109', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:24:30');
INSERT INTO `sys_job_log` VALUES ('110', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:24:45');
INSERT INTO `sys_job_log` VALUES ('111', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:25:00');
INSERT INTO `sys_job_log` VALUES ('112', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:25:15');
INSERT INTO `sys_job_log` VALUES ('113', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:25:30');
INSERT INTO `sys_job_log` VALUES ('114', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:25:45');
INSERT INTO `sys_job_log` VALUES ('115', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-09-27 21:26:00');
INSERT INTO `sys_job_log` VALUES ('116', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:26:15');
INSERT INTO `sys_job_log` VALUES ('117', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:26:30');
INSERT INTO `sys_job_log` VALUES ('118', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:26:45');
INSERT INTO `sys_job_log` VALUES ('119', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-09-27 21:27:00');
INSERT INTO `sys_job_log` VALUES ('120', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 14:34:00');
INSERT INTO `sys_job_log` VALUES ('121', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:34:15');
INSERT INTO `sys_job_log` VALUES ('122', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 14:34:30');
INSERT INTO `sys_job_log` VALUES ('123', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:34:45');
INSERT INTO `sys_job_log` VALUES ('124', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:35:00');
INSERT INTO `sys_job_log` VALUES ('125', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:35:15');
INSERT INTO `sys_job_log` VALUES ('126', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:35:30');
INSERT INTO `sys_job_log` VALUES ('127', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:35:45');
INSERT INTO `sys_job_log` VALUES ('128', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:36:00');
INSERT INTO `sys_job_log` VALUES ('129', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:36:15');
INSERT INTO `sys_job_log` VALUES ('130', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:36:30');
INSERT INTO `sys_job_log` VALUES ('131', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:36:45');
INSERT INTO `sys_job_log` VALUES ('132', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:37:00');
INSERT INTO `sys_job_log` VALUES ('133', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:37:15');
INSERT INTO `sys_job_log` VALUES ('134', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:37:30');
INSERT INTO `sys_job_log` VALUES ('135', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:37:45');
INSERT INTO `sys_job_log` VALUES ('136', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:38:00');
INSERT INTO `sys_job_log` VALUES ('137', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:38:15');
INSERT INTO `sys_job_log` VALUES ('138', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:38:30');
INSERT INTO `sys_job_log` VALUES ('139', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:38:45');
INSERT INTO `sys_job_log` VALUES ('140', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:39:00');
INSERT INTO `sys_job_log` VALUES ('141', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:39:15');
INSERT INTO `sys_job_log` VALUES ('142', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:39:30');
INSERT INTO `sys_job_log` VALUES ('143', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:39:45');
INSERT INTO `sys_job_log` VALUES ('144', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:40:00');
INSERT INTO `sys_job_log` VALUES ('145', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:40:15');
INSERT INTO `sys_job_log` VALUES ('146', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:40:30');
INSERT INTO `sys_job_log` VALUES ('147', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:40:45');
INSERT INTO `sys_job_log` VALUES ('148', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 14:41:00');
INSERT INTO `sys_job_log` VALUES ('149', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:41:15');
INSERT INTO `sys_job_log` VALUES ('150', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:41:30');
INSERT INTO `sys_job_log` VALUES ('151', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:41:45');
INSERT INTO `sys_job_log` VALUES ('152', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:42:00');
INSERT INTO `sys_job_log` VALUES ('153', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:42:15');
INSERT INTO `sys_job_log` VALUES ('154', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:42:30');
INSERT INTO `sys_job_log` VALUES ('155', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:42:45');
INSERT INTO `sys_job_log` VALUES ('156', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:43:00');
INSERT INTO `sys_job_log` VALUES ('157', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:43:15');
INSERT INTO `sys_job_log` VALUES ('158', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:43:30');
INSERT INTO `sys_job_log` VALUES ('159', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:43:45');
INSERT INTO `sys_job_log` VALUES ('160', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:44:00');
INSERT INTO `sys_job_log` VALUES ('161', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:44:15');
INSERT INTO `sys_job_log` VALUES ('162', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:44:30');
INSERT INTO `sys_job_log` VALUES ('163', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:44:45');
INSERT INTO `sys_job_log` VALUES ('164', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 14:45:00');
INSERT INTO `sys_job_log` VALUES ('165', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:45:15');
INSERT INTO `sys_job_log` VALUES ('166', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:45:30');
INSERT INTO `sys_job_log` VALUES ('167', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:45:45');
INSERT INTO `sys_job_log` VALUES ('168', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:46:00');
INSERT INTO `sys_job_log` VALUES ('169', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:46:15');
INSERT INTO `sys_job_log` VALUES ('170', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:46:30');
INSERT INTO `sys_job_log` VALUES ('171', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-09 14:46:46');
INSERT INTO `sys_job_log` VALUES ('172', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:47:00');
INSERT INTO `sys_job_log` VALUES ('173', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:47:15');
INSERT INTO `sys_job_log` VALUES ('174', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:47:30');
INSERT INTO `sys_job_log` VALUES ('175', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:47:45');
INSERT INTO `sys_job_log` VALUES ('176', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:48:00');
INSERT INTO `sys_job_log` VALUES ('177', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:48:15');
INSERT INTO `sys_job_log` VALUES ('178', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:48:30');
INSERT INTO `sys_job_log` VALUES ('179', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:48:45');
INSERT INTO `sys_job_log` VALUES ('180', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:49:00');
INSERT INTO `sys_job_log` VALUES ('181', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:49:15');
INSERT INTO `sys_job_log` VALUES ('182', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:49:30');
INSERT INTO `sys_job_log` VALUES ('183', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:49:45');
INSERT INTO `sys_job_log` VALUES ('184', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 14:50:00');
INSERT INTO `sys_job_log` VALUES ('185', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:50:15');
INSERT INTO `sys_job_log` VALUES ('186', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:50:30');
INSERT INTO `sys_job_log` VALUES ('187', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:50:45');
INSERT INTO `sys_job_log` VALUES ('188', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:51:00');
INSERT INTO `sys_job_log` VALUES ('189', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:51:15');
INSERT INTO `sys_job_log` VALUES ('190', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:51:30');
INSERT INTO `sys_job_log` VALUES ('191', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:51:45');
INSERT INTO `sys_job_log` VALUES ('192', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 14:52:00');
INSERT INTO `sys_job_log` VALUES ('193', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:52:15');
INSERT INTO `sys_job_log` VALUES ('194', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:52:30');
INSERT INTO `sys_job_log` VALUES ('195', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:52:45');
INSERT INTO `sys_job_log` VALUES ('196', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:53:00');
INSERT INTO `sys_job_log` VALUES ('197', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:53:15');
INSERT INTO `sys_job_log` VALUES ('198', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:53:30');
INSERT INTO `sys_job_log` VALUES ('199', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:53:45');
INSERT INTO `sys_job_log` VALUES ('200', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:54:00');
INSERT INTO `sys_job_log` VALUES ('201', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:54:15');
INSERT INTO `sys_job_log` VALUES ('202', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:54:30');
INSERT INTO `sys_job_log` VALUES ('203', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:54:45');
INSERT INTO `sys_job_log` VALUES ('204', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:55:00');
INSERT INTO `sys_job_log` VALUES ('205', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:55:15');
INSERT INTO `sys_job_log` VALUES ('206', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:55:30');
INSERT INTO `sys_job_log` VALUES ('207', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:55:45');
INSERT INTO `sys_job_log` VALUES ('208', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:56:00');
INSERT INTO `sys_job_log` VALUES ('209', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:56:15');
INSERT INTO `sys_job_log` VALUES ('210', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 14:56:30');
INSERT INTO `sys_job_log` VALUES ('211', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:56:45');
INSERT INTO `sys_job_log` VALUES ('212', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:57:00');
INSERT INTO `sys_job_log` VALUES ('213', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:57:15');
INSERT INTO `sys_job_log` VALUES ('214', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:57:30');
INSERT INTO `sys_job_log` VALUES ('215', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:57:45');
INSERT INTO `sys_job_log` VALUES ('216', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:58:00');
INSERT INTO `sys_job_log` VALUES ('217', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:58:15');
INSERT INTO `sys_job_log` VALUES ('218', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:58:30');
INSERT INTO `sys_job_log` VALUES ('219', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 14:58:45');
INSERT INTO `sys_job_log` VALUES ('220', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:59:00');
INSERT INTO `sys_job_log` VALUES ('221', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:59:15');
INSERT INTO `sys_job_log` VALUES ('222', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 14:59:30');
INSERT INTO `sys_job_log` VALUES ('223', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 14:59:45');
INSERT INTO `sys_job_log` VALUES ('224', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:00:00');
INSERT INTO `sys_job_log` VALUES ('225', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:00:15');
INSERT INTO `sys_job_log` VALUES ('226', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:00:30');
INSERT INTO `sys_job_log` VALUES ('227', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:00:45');
INSERT INTO `sys_job_log` VALUES ('228', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:01:00');
INSERT INTO `sys_job_log` VALUES ('229', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:01:15');
INSERT INTO `sys_job_log` VALUES ('230', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:01:30');
INSERT INTO `sys_job_log` VALUES ('231', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:01:45');
INSERT INTO `sys_job_log` VALUES ('232', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:02:00');
INSERT INTO `sys_job_log` VALUES ('233', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:02:15');
INSERT INTO `sys_job_log` VALUES ('234', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:02:30');
INSERT INTO `sys_job_log` VALUES ('235', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:02:45');
INSERT INTO `sys_job_log` VALUES ('236', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:03:00');
INSERT INTO `sys_job_log` VALUES ('237', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:03:15');
INSERT INTO `sys_job_log` VALUES ('238', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:03:30');
INSERT INTO `sys_job_log` VALUES ('239', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:03:45');
INSERT INTO `sys_job_log` VALUES ('240', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:04:00');
INSERT INTO `sys_job_log` VALUES ('241', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:04:15');
INSERT INTO `sys_job_log` VALUES ('242', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:04:30');
INSERT INTO `sys_job_log` VALUES ('243', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:04:45');
INSERT INTO `sys_job_log` VALUES ('244', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:05:00');
INSERT INTO `sys_job_log` VALUES ('245', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:05:15');
INSERT INTO `sys_job_log` VALUES ('246', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:05:30');
INSERT INTO `sys_job_log` VALUES ('247', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:05:45');
INSERT INTO `sys_job_log` VALUES ('248', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:06:00');
INSERT INTO `sys_job_log` VALUES ('249', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:06:15');
INSERT INTO `sys_job_log` VALUES ('250', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:06:30');
INSERT INTO `sys_job_log` VALUES ('251', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:06:45');
INSERT INTO `sys_job_log` VALUES ('252', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:07:00');
INSERT INTO `sys_job_log` VALUES ('253', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:07:15');
INSERT INTO `sys_job_log` VALUES ('254', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:07:30');
INSERT INTO `sys_job_log` VALUES ('255', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:07:45');
INSERT INTO `sys_job_log` VALUES ('256', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:08:00');
INSERT INTO `sys_job_log` VALUES ('257', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:08:15');
INSERT INTO `sys_job_log` VALUES ('258', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:08:30');
INSERT INTO `sys_job_log` VALUES ('259', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:08:45');
INSERT INTO `sys_job_log` VALUES ('260', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:09:00');
INSERT INTO `sys_job_log` VALUES ('261', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:09:15');
INSERT INTO `sys_job_log` VALUES ('262', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:09:30');
INSERT INTO `sys_job_log` VALUES ('263', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:09:45');
INSERT INTO `sys_job_log` VALUES ('264', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:10:00');
INSERT INTO `sys_job_log` VALUES ('265', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:10:15');
INSERT INTO `sys_job_log` VALUES ('266', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:10:30');
INSERT INTO `sys_job_log` VALUES ('267', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:10:45');
INSERT INTO `sys_job_log` VALUES ('268', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:11:00');
INSERT INTO `sys_job_log` VALUES ('269', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:11:15');
INSERT INTO `sys_job_log` VALUES ('270', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:11:30');
INSERT INTO `sys_job_log` VALUES ('271', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:11:45');
INSERT INTO `sys_job_log` VALUES ('272', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:12:00');
INSERT INTO `sys_job_log` VALUES ('273', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:12:15');
INSERT INTO `sys_job_log` VALUES ('274', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:12:30');
INSERT INTO `sys_job_log` VALUES ('275', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:12:45');
INSERT INTO `sys_job_log` VALUES ('276', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:13:00');
INSERT INTO `sys_job_log` VALUES ('277', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:13:15');
INSERT INTO `sys_job_log` VALUES ('278', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:13:30');
INSERT INTO `sys_job_log` VALUES ('279', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:13:45');
INSERT INTO `sys_job_log` VALUES ('280', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:14:00');
INSERT INTO `sys_job_log` VALUES ('281', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:14:15');
INSERT INTO `sys_job_log` VALUES ('282', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:14:30');
INSERT INTO `sys_job_log` VALUES ('283', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:14:45');
INSERT INTO `sys_job_log` VALUES ('284', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:15:00');
INSERT INTO `sys_job_log` VALUES ('285', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:15:15');
INSERT INTO `sys_job_log` VALUES ('286', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:15:30');
INSERT INTO `sys_job_log` VALUES ('287', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:15:45');
INSERT INTO `sys_job_log` VALUES ('288', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:16:00');
INSERT INTO `sys_job_log` VALUES ('289', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:16:15');
INSERT INTO `sys_job_log` VALUES ('290', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:16:30');
INSERT INTO `sys_job_log` VALUES ('291', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:16:45');
INSERT INTO `sys_job_log` VALUES ('292', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:17:00');
INSERT INTO `sys_job_log` VALUES ('293', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:17:15');
INSERT INTO `sys_job_log` VALUES ('294', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:17:30');
INSERT INTO `sys_job_log` VALUES ('295', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:17:45');
INSERT INTO `sys_job_log` VALUES ('296', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:18:00');
INSERT INTO `sys_job_log` VALUES ('297', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:18:15');
INSERT INTO `sys_job_log` VALUES ('298', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:18:30');
INSERT INTO `sys_job_log` VALUES ('299', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:18:45');
INSERT INTO `sys_job_log` VALUES ('300', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:19:00');
INSERT INTO `sys_job_log` VALUES ('301', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:19:15');
INSERT INTO `sys_job_log` VALUES ('302', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:19:30');
INSERT INTO `sys_job_log` VALUES ('303', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:19:45');
INSERT INTO `sys_job_log` VALUES ('304', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:20:00');
INSERT INTO `sys_job_log` VALUES ('305', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:20:15');
INSERT INTO `sys_job_log` VALUES ('306', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:20:30');
INSERT INTO `sys_job_log` VALUES ('307', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:20:45');
INSERT INTO `sys_job_log` VALUES ('308', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:21:00');
INSERT INTO `sys_job_log` VALUES ('309', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:21:15');
INSERT INTO `sys_job_log` VALUES ('310', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:21:30');
INSERT INTO `sys_job_log` VALUES ('311', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:21:45');
INSERT INTO `sys_job_log` VALUES ('312', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:22:00');
INSERT INTO `sys_job_log` VALUES ('313', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:22:15');
INSERT INTO `sys_job_log` VALUES ('314', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:22:30');
INSERT INTO `sys_job_log` VALUES ('315', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:22:45');
INSERT INTO `sys_job_log` VALUES ('316', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:23:00');
INSERT INTO `sys_job_log` VALUES ('317', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:23:15');
INSERT INTO `sys_job_log` VALUES ('318', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:23:30');
INSERT INTO `sys_job_log` VALUES ('319', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:23:45');
INSERT INTO `sys_job_log` VALUES ('320', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:24:00');
INSERT INTO `sys_job_log` VALUES ('321', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:24:15');
INSERT INTO `sys_job_log` VALUES ('322', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:24:30');
INSERT INTO `sys_job_log` VALUES ('323', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:24:45');
INSERT INTO `sys_job_log` VALUES ('324', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:25:00');
INSERT INTO `sys_job_log` VALUES ('325', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:25:15');
INSERT INTO `sys_job_log` VALUES ('326', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:25:30');
INSERT INTO `sys_job_log` VALUES ('327', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:25:45');
INSERT INTO `sys_job_log` VALUES ('328', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:26:00');
INSERT INTO `sys_job_log` VALUES ('329', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:26:15');
INSERT INTO `sys_job_log` VALUES ('330', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:26:30');
INSERT INTO `sys_job_log` VALUES ('331', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:26:45');
INSERT INTO `sys_job_log` VALUES ('332', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:27:00');
INSERT INTO `sys_job_log` VALUES ('333', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:27:15');
INSERT INTO `sys_job_log` VALUES ('334', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:27:30');
INSERT INTO `sys_job_log` VALUES ('335', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:27:45');
INSERT INTO `sys_job_log` VALUES ('336', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:28:00');
INSERT INTO `sys_job_log` VALUES ('337', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:28:15');
INSERT INTO `sys_job_log` VALUES ('338', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:28:30');
INSERT INTO `sys_job_log` VALUES ('339', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:28:45');
INSERT INTO `sys_job_log` VALUES ('340', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:29:00');
INSERT INTO `sys_job_log` VALUES ('341', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:29:15');
INSERT INTO `sys_job_log` VALUES ('342', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:29:30');
INSERT INTO `sys_job_log` VALUES ('343', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:29:45');
INSERT INTO `sys_job_log` VALUES ('344', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:30:00');
INSERT INTO `sys_job_log` VALUES ('345', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:30:15');
INSERT INTO `sys_job_log` VALUES ('346', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:30:30');
INSERT INTO `sys_job_log` VALUES ('347', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:30:45');
INSERT INTO `sys_job_log` VALUES ('348', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:31:00');
INSERT INTO `sys_job_log` VALUES ('349', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:31:15');
INSERT INTO `sys_job_log` VALUES ('350', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:31:30');
INSERT INTO `sys_job_log` VALUES ('351', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:31:45');
INSERT INTO `sys_job_log` VALUES ('352', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:32:00');
INSERT INTO `sys_job_log` VALUES ('353', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:32:15');
INSERT INTO `sys_job_log` VALUES ('354', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:32:30');
INSERT INTO `sys_job_log` VALUES ('355', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:32:45');
INSERT INTO `sys_job_log` VALUES ('356', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:33:00');
INSERT INTO `sys_job_log` VALUES ('357', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:33:15');
INSERT INTO `sys_job_log` VALUES ('358', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:33:30');
INSERT INTO `sys_job_log` VALUES ('359', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:33:45');
INSERT INTO `sys_job_log` VALUES ('360', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:34:00');
INSERT INTO `sys_job_log` VALUES ('361', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:34:15');
INSERT INTO `sys_job_log` VALUES ('362', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:34:30');
INSERT INTO `sys_job_log` VALUES ('363', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:34:45');
INSERT INTO `sys_job_log` VALUES ('364', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:35:00');
INSERT INTO `sys_job_log` VALUES ('365', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:35:15');
INSERT INTO `sys_job_log` VALUES ('366', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:35:30');
INSERT INTO `sys_job_log` VALUES ('367', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:35:45');
INSERT INTO `sys_job_log` VALUES ('368', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:36:00');
INSERT INTO `sys_job_log` VALUES ('369', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:36:15');
INSERT INTO `sys_job_log` VALUES ('370', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:36:30');
INSERT INTO `sys_job_log` VALUES ('371', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:36:45');
INSERT INTO `sys_job_log` VALUES ('372', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:37:00');
INSERT INTO `sys_job_log` VALUES ('373', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:37:15');
INSERT INTO `sys_job_log` VALUES ('374', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:37:30');
INSERT INTO `sys_job_log` VALUES ('375', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:37:45');
INSERT INTO `sys_job_log` VALUES ('376', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:38:00');
INSERT INTO `sys_job_log` VALUES ('377', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:38:15');
INSERT INTO `sys_job_log` VALUES ('378', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:38:30');
INSERT INTO `sys_job_log` VALUES ('379', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:38:45');
INSERT INTO `sys_job_log` VALUES ('380', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:39:00');
INSERT INTO `sys_job_log` VALUES ('381', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:39:15');
INSERT INTO `sys_job_log` VALUES ('382', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:39:30');
INSERT INTO `sys_job_log` VALUES ('383', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:39:45');
INSERT INTO `sys_job_log` VALUES ('384', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:40:00');
INSERT INTO `sys_job_log` VALUES ('385', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:40:15');
INSERT INTO `sys_job_log` VALUES ('386', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:40:30');
INSERT INTO `sys_job_log` VALUES ('387', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:40:45');
INSERT INTO `sys_job_log` VALUES ('388', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:41:00');
INSERT INTO `sys_job_log` VALUES ('389', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:41:15');
INSERT INTO `sys_job_log` VALUES ('390', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:41:30');
INSERT INTO `sys_job_log` VALUES ('391', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:41:45');
INSERT INTO `sys_job_log` VALUES ('392', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:42:00');
INSERT INTO `sys_job_log` VALUES ('393', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:42:15');
INSERT INTO `sys_job_log` VALUES ('394', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:42:30');
INSERT INTO `sys_job_log` VALUES ('395', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:42:45');
INSERT INTO `sys_job_log` VALUES ('396', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:43:00');
INSERT INTO `sys_job_log` VALUES ('397', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:43:15');
INSERT INTO `sys_job_log` VALUES ('398', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:43:30');
INSERT INTO `sys_job_log` VALUES ('399', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:43:45');
INSERT INTO `sys_job_log` VALUES ('400', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:44:00');
INSERT INTO `sys_job_log` VALUES ('401', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:44:15');
INSERT INTO `sys_job_log` VALUES ('402', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:44:30');
INSERT INTO `sys_job_log` VALUES ('403', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:44:45');
INSERT INTO `sys_job_log` VALUES ('404', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:45:00');
INSERT INTO `sys_job_log` VALUES ('405', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:45:15');
INSERT INTO `sys_job_log` VALUES ('406', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:45:30');
INSERT INTO `sys_job_log` VALUES ('407', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:45:45');
INSERT INTO `sys_job_log` VALUES ('408', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:46:00');
INSERT INTO `sys_job_log` VALUES ('409', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:46:15');
INSERT INTO `sys_job_log` VALUES ('410', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:46:30');
INSERT INTO `sys_job_log` VALUES ('411', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:46:45');
INSERT INTO `sys_job_log` VALUES ('412', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:47:00');
INSERT INTO `sys_job_log` VALUES ('413', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:47:15');
INSERT INTO `sys_job_log` VALUES ('414', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:47:30');
INSERT INTO `sys_job_log` VALUES ('415', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:47:45');
INSERT INTO `sys_job_log` VALUES ('416', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:48:00');
INSERT INTO `sys_job_log` VALUES ('417', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:48:15');
INSERT INTO `sys_job_log` VALUES ('418', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:48:30');
INSERT INTO `sys_job_log` VALUES ('419', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:48:45');
INSERT INTO `sys_job_log` VALUES ('420', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:49:00');
INSERT INTO `sys_job_log` VALUES ('421', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:49:15');
INSERT INTO `sys_job_log` VALUES ('422', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:49:30');
INSERT INTO `sys_job_log` VALUES ('423', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:49:45');
INSERT INTO `sys_job_log` VALUES ('424', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:50:00');
INSERT INTO `sys_job_log` VALUES ('425', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:50:15');
INSERT INTO `sys_job_log` VALUES ('426', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:50:30');
INSERT INTO `sys_job_log` VALUES ('427', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:50:45');
INSERT INTO `sys_job_log` VALUES ('428', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:51:00');
INSERT INTO `sys_job_log` VALUES ('429', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:51:15');
INSERT INTO `sys_job_log` VALUES ('430', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:51:30');
INSERT INTO `sys_job_log` VALUES ('431', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 15:51:45');
INSERT INTO `sys_job_log` VALUES ('432', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:52:00');
INSERT INTO `sys_job_log` VALUES ('433', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:52:15');
INSERT INTO `sys_job_log` VALUES ('434', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 15:53:00');
INSERT INTO `sys_job_log` VALUES ('435', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:53:53');
INSERT INTO `sys_job_log` VALUES ('436', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:54:00');
INSERT INTO `sys_job_log` VALUES ('437', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:55:07');
INSERT INTO `sys_job_log` VALUES ('438', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:56:45');
INSERT INTO `sys_job_log` VALUES ('439', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:57:48');
INSERT INTO `sys_job_log` VALUES ('440', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:58:30');
INSERT INTO `sys_job_log` VALUES ('441', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:58:45');
INSERT INTO `sys_job_log` VALUES ('442', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:59:00');
INSERT INTO `sys_job_log` VALUES ('443', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:59:15');
INSERT INTO `sys_job_log` VALUES ('444', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:59:30');
INSERT INTO `sys_job_log` VALUES ('445', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 15:59:45');
INSERT INTO `sys_job_log` VALUES ('446', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:00:00');
INSERT INTO `sys_job_log` VALUES ('447', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:00:15');
INSERT INTO `sys_job_log` VALUES ('448', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:02:00');
INSERT INTO `sys_job_log` VALUES ('449', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-09 16:19:09');
INSERT INTO `sys_job_log` VALUES ('450', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:19:09');
INSERT INTO `sys_job_log` VALUES ('451', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:19:15');
INSERT INTO `sys_job_log` VALUES ('452', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:19:30');
INSERT INTO `sys_job_log` VALUES ('453', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:19:45');
INSERT INTO `sys_job_log` VALUES ('454', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:20:00');
INSERT INTO `sys_job_log` VALUES ('455', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:20:15');
INSERT INTO `sys_job_log` VALUES ('456', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:20:30');
INSERT INTO `sys_job_log` VALUES ('457', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:20:45');
INSERT INTO `sys_job_log` VALUES ('458', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:21:00');
INSERT INTO `sys_job_log` VALUES ('459', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:21:15');
INSERT INTO `sys_job_log` VALUES ('460', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:21:30');
INSERT INTO `sys_job_log` VALUES ('461', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:21:45');
INSERT INTO `sys_job_log` VALUES ('462', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:22:00');
INSERT INTO `sys_job_log` VALUES ('463', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:22:15');
INSERT INTO `sys_job_log` VALUES ('464', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:22:30');
INSERT INTO `sys_job_log` VALUES ('465', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:22:45');
INSERT INTO `sys_job_log` VALUES ('466', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:23:00');
INSERT INTO `sys_job_log` VALUES ('467', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:23:15');
INSERT INTO `sys_job_log` VALUES ('468', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:23:30');
INSERT INTO `sys_job_log` VALUES ('469', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:23:45');
INSERT INTO `sys_job_log` VALUES ('470', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:24:00');
INSERT INTO `sys_job_log` VALUES ('471', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:24:15');
INSERT INTO `sys_job_log` VALUES ('472', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:25:06');
INSERT INTO `sys_job_log` VALUES ('473', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:25:30');
INSERT INTO `sys_job_log` VALUES ('474', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:25:45');
INSERT INTO `sys_job_log` VALUES ('475', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:26:00');
INSERT INTO `sys_job_log` VALUES ('476', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:26:15');
INSERT INTO `sys_job_log` VALUES ('477', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:26:30');
INSERT INTO `sys_job_log` VALUES ('478', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 16:27:00');
INSERT INTO `sys_job_log` VALUES ('479', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:27:15');
INSERT INTO `sys_job_log` VALUES ('480', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:27:30');
INSERT INTO `sys_job_log` VALUES ('481', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:27:45');
INSERT INTO `sys_job_log` VALUES ('482', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:28:00');
INSERT INTO `sys_job_log` VALUES ('483', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:28:15');
INSERT INTO `sys_job_log` VALUES ('484', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:28:30');
INSERT INTO `sys_job_log` VALUES ('485', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:29:00');
INSERT INTO `sys_job_log` VALUES ('486', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:29:15');
INSERT INTO `sys_job_log` VALUES ('487', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:29:30');
INSERT INTO `sys_job_log` VALUES ('488', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:29:45');
INSERT INTO `sys_job_log` VALUES ('489', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:30:00');
INSERT INTO `sys_job_log` VALUES ('490', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:30:15');
INSERT INTO `sys_job_log` VALUES ('491', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:30:37');
INSERT INTO `sys_job_log` VALUES ('492', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:30:45');
INSERT INTO `sys_job_log` VALUES ('493', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:31:03');
INSERT INTO `sys_job_log` VALUES ('494', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:31:15');
INSERT INTO `sys_job_log` VALUES ('495', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:31:30');
INSERT INTO `sys_job_log` VALUES ('496', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:31:45');
INSERT INTO `sys_job_log` VALUES ('497', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:32:00');
INSERT INTO `sys_job_log` VALUES ('498', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:32:15');
INSERT INTO `sys_job_log` VALUES ('499', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:32:30');
INSERT INTO `sys_job_log` VALUES ('500', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:32:45');
INSERT INTO `sys_job_log` VALUES ('501', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:33:00');
INSERT INTO `sys_job_log` VALUES ('502', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 16:33:30');
INSERT INTO `sys_job_log` VALUES ('503', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:33:45');
INSERT INTO `sys_job_log` VALUES ('504', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:34:00');
INSERT INTO `sys_job_log` VALUES ('505', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:34:15');
INSERT INTO `sys_job_log` VALUES ('506', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:34:30');
INSERT INTO `sys_job_log` VALUES ('507', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:34:45');
INSERT INTO `sys_job_log` VALUES ('508', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:35:00');
INSERT INTO `sys_job_log` VALUES ('509', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:35:15');
INSERT INTO `sys_job_log` VALUES ('510', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:35:30');
INSERT INTO `sys_job_log` VALUES ('511', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:35:45');
INSERT INTO `sys_job_log` VALUES ('512', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:36:00');
INSERT INTO `sys_job_log` VALUES ('513', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:36:15');
INSERT INTO `sys_job_log` VALUES ('514', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:36:30');
INSERT INTO `sys_job_log` VALUES ('515', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:36:45');
INSERT INTO `sys_job_log` VALUES ('516', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:37:00');
INSERT INTO `sys_job_log` VALUES ('517', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:37:15');
INSERT INTO `sys_job_log` VALUES ('518', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:37:30');
INSERT INTO `sys_job_log` VALUES ('519', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:37:45');
INSERT INTO `sys_job_log` VALUES ('520', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:38:00');
INSERT INTO `sys_job_log` VALUES ('521', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:38:15');
INSERT INTO `sys_job_log` VALUES ('522', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:38:30');
INSERT INTO `sys_job_log` VALUES ('523', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:38:45');
INSERT INTO `sys_job_log` VALUES ('524', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:39:00');
INSERT INTO `sys_job_log` VALUES ('525', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:39:15');
INSERT INTO `sys_job_log` VALUES ('526', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:39:30');
INSERT INTO `sys_job_log` VALUES ('527', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:39:45');
INSERT INTO `sys_job_log` VALUES ('528', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:40:00');
INSERT INTO `sys_job_log` VALUES ('529', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:40:15');
INSERT INTO `sys_job_log` VALUES ('530', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:40:30');
INSERT INTO `sys_job_log` VALUES ('531', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:40:45');
INSERT INTO `sys_job_log` VALUES ('532', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:41:00');
INSERT INTO `sys_job_log` VALUES ('533', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:41:15');
INSERT INTO `sys_job_log` VALUES ('534', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:41:30');
INSERT INTO `sys_job_log` VALUES ('535', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:41:45');
INSERT INTO `sys_job_log` VALUES ('536', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:42:15');
INSERT INTO `sys_job_log` VALUES ('537', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:42:30');
INSERT INTO `sys_job_log` VALUES ('538', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:42:45');
INSERT INTO `sys_job_log` VALUES ('539', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:43:00');
INSERT INTO `sys_job_log` VALUES ('540', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-09 16:44:32');
INSERT INTO `sys_job_log` VALUES ('541', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:44:45');
INSERT INTO `sys_job_log` VALUES ('542', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:45:00');
INSERT INTO `sys_job_log` VALUES ('543', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 16:45:30');
INSERT INTO `sys_job_log` VALUES ('544', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:45:45');
INSERT INTO `sys_job_log` VALUES ('545', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:46:00');
INSERT INTO `sys_job_log` VALUES ('546', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:46:15');
INSERT INTO `sys_job_log` VALUES ('547', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:46:30');
INSERT INTO `sys_job_log` VALUES ('548', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:47:00');
INSERT INTO `sys_job_log` VALUES ('549', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:47:15');
INSERT INTO `sys_job_log` VALUES ('550', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:47:30');
INSERT INTO `sys_job_log` VALUES ('551', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:47:45');
INSERT INTO `sys_job_log` VALUES ('552', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:48:15');
INSERT INTO `sys_job_log` VALUES ('553', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:48:30');
INSERT INTO `sys_job_log` VALUES ('554', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:48:45');
INSERT INTO `sys_job_log` VALUES ('555', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 16:49:30');
INSERT INTO `sys_job_log` VALUES ('556', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:49:45');
INSERT INTO `sys_job_log` VALUES ('557', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:50:00');
INSERT INTO `sys_job_log` VALUES ('558', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:50:15');
INSERT INTO `sys_job_log` VALUES ('559', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:50:30');
INSERT INTO `sys_job_log` VALUES ('560', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:50:45');
INSERT INTO `sys_job_log` VALUES ('561', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:51:00');
INSERT INTO `sys_job_log` VALUES ('562', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:51:15');
INSERT INTO `sys_job_log` VALUES ('563', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:51:30');
INSERT INTO `sys_job_log` VALUES ('564', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:51:45');
INSERT INTO `sys_job_log` VALUES ('565', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-09 16:52:15');
INSERT INTO `sys_job_log` VALUES ('566', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:52:30');
INSERT INTO `sys_job_log` VALUES ('567', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:52:45');
INSERT INTO `sys_job_log` VALUES ('568', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:53:15');
INSERT INTO `sys_job_log` VALUES ('569', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:53:30');
INSERT INTO `sys_job_log` VALUES ('570', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:53:45');
INSERT INTO `sys_job_log` VALUES ('571', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:54:00');
INSERT INTO `sys_job_log` VALUES ('572', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:54:15');
INSERT INTO `sys_job_log` VALUES ('573', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:54:30');
INSERT INTO `sys_job_log` VALUES ('574', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:54:45');
INSERT INTO `sys_job_log` VALUES ('575', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:55:00');
INSERT INTO `sys_job_log` VALUES ('576', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:55:15');
INSERT INTO `sys_job_log` VALUES ('577', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:55:30');
INSERT INTO `sys_job_log` VALUES ('578', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:55:45');
INSERT INTO `sys_job_log` VALUES ('579', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:56:00');
INSERT INTO `sys_job_log` VALUES ('580', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:56:15');
INSERT INTO `sys_job_log` VALUES ('581', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:56:30');
INSERT INTO `sys_job_log` VALUES ('582', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:56:45');
INSERT INTO `sys_job_log` VALUES ('583', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:57:00');
INSERT INTO `sys_job_log` VALUES ('584', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:57:15');
INSERT INTO `sys_job_log` VALUES ('585', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:57:30');
INSERT INTO `sys_job_log` VALUES ('586', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:57:45');
INSERT INTO `sys_job_log` VALUES ('587', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:58:00');
INSERT INTO `sys_job_log` VALUES ('588', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 16:58:15');
INSERT INTO `sys_job_log` VALUES ('589', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:58:30');
INSERT INTO `sys_job_log` VALUES ('590', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:58:45');
INSERT INTO `sys_job_log` VALUES ('591', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:59:00');
INSERT INTO `sys_job_log` VALUES ('592', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 16:59:15');
INSERT INTO `sys_job_log` VALUES ('593', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 16:59:45');
INSERT INTO `sys_job_log` VALUES ('594', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:00:00');
INSERT INTO `sys_job_log` VALUES ('595', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:00:15');
INSERT INTO `sys_job_log` VALUES ('596', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:00:30');
INSERT INTO `sys_job_log` VALUES ('597', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:00:45');
INSERT INTO `sys_job_log` VALUES ('598', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:01:00');
INSERT INTO `sys_job_log` VALUES ('599', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:01:15');
INSERT INTO `sys_job_log` VALUES ('600', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:01:30');
INSERT INTO `sys_job_log` VALUES ('601', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:01:45');
INSERT INTO `sys_job_log` VALUES ('602', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:02:00');
INSERT INTO `sys_job_log` VALUES ('603', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:02:15');
INSERT INTO `sys_job_log` VALUES ('604', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:02:30');
INSERT INTO `sys_job_log` VALUES ('605', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:02:47');
INSERT INTO `sys_job_log` VALUES ('606', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:03:00');
INSERT INTO `sys_job_log` VALUES ('607', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:03:15');
INSERT INTO `sys_job_log` VALUES ('608', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:03:30');
INSERT INTO `sys_job_log` VALUES ('609', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:03:45');
INSERT INTO `sys_job_log` VALUES ('610', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:04:00');
INSERT INTO `sys_job_log` VALUES ('611', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:04:15');
INSERT INTO `sys_job_log` VALUES ('612', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:04:30');
INSERT INTO `sys_job_log` VALUES ('613', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:04:45');
INSERT INTO `sys_job_log` VALUES ('614', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:05:00');
INSERT INTO `sys_job_log` VALUES ('615', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:05:15');
INSERT INTO `sys_job_log` VALUES ('616', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:05:30');
INSERT INTO `sys_job_log` VALUES ('617', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:05:45');
INSERT INTO `sys_job_log` VALUES ('618', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:06:00');
INSERT INTO `sys_job_log` VALUES ('619', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:06:15');
INSERT INTO `sys_job_log` VALUES ('620', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:06:30');
INSERT INTO `sys_job_log` VALUES ('621', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:06:45');
INSERT INTO `sys_job_log` VALUES ('622', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:07:00');
INSERT INTO `sys_job_log` VALUES ('623', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:07:15');
INSERT INTO `sys_job_log` VALUES ('624', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:07:30');
INSERT INTO `sys_job_log` VALUES ('625', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:07:45');
INSERT INTO `sys_job_log` VALUES ('626', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:08:00');
INSERT INTO `sys_job_log` VALUES ('627', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:08:15');
INSERT INTO `sys_job_log` VALUES ('628', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:08:30');
INSERT INTO `sys_job_log` VALUES ('629', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:08:45');
INSERT INTO `sys_job_log` VALUES ('630', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:09:00');
INSERT INTO `sys_job_log` VALUES ('631', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:09:15');
INSERT INTO `sys_job_log` VALUES ('632', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:09:30');
INSERT INTO `sys_job_log` VALUES ('633', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:09:45');
INSERT INTO `sys_job_log` VALUES ('634', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:10:00');
INSERT INTO `sys_job_log` VALUES ('635', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:10:15');
INSERT INTO `sys_job_log` VALUES ('636', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:10:30');
INSERT INTO `sys_job_log` VALUES ('637', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:10:45');
INSERT INTO `sys_job_log` VALUES ('638', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:11:00');
INSERT INTO `sys_job_log` VALUES ('639', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:11:15');
INSERT INTO `sys_job_log` VALUES ('640', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:11:30');
INSERT INTO `sys_job_log` VALUES ('641', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:11:45');
INSERT INTO `sys_job_log` VALUES ('642', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:12:00');
INSERT INTO `sys_job_log` VALUES ('643', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:12:15');
INSERT INTO `sys_job_log` VALUES ('644', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:12:30');
INSERT INTO `sys_job_log` VALUES ('645', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:12:45');
INSERT INTO `sys_job_log` VALUES ('646', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:13:00');
INSERT INTO `sys_job_log` VALUES ('647', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:13:15');
INSERT INTO `sys_job_log` VALUES ('648', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:13:30');
INSERT INTO `sys_job_log` VALUES ('649', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:13:45');
INSERT INTO `sys_job_log` VALUES ('650', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:14:00');
INSERT INTO `sys_job_log` VALUES ('651', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-09 17:14:32');
INSERT INTO `sys_job_log` VALUES ('652', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:14:45');
INSERT INTO `sys_job_log` VALUES ('653', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-09 17:15:30');
INSERT INTO `sys_job_log` VALUES ('654', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:15:45');
INSERT INTO `sys_job_log` VALUES ('655', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:16:00');
INSERT INTO `sys_job_log` VALUES ('656', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:16:15');
INSERT INTO `sys_job_log` VALUES ('657', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:16:30');
INSERT INTO `sys_job_log` VALUES ('658', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:16:45');
INSERT INTO `sys_job_log` VALUES ('659', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 17:18:00');
INSERT INTO `sys_job_log` VALUES ('660', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:18:15');
INSERT INTO `sys_job_log` VALUES ('661', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:18:30');
INSERT INTO `sys_job_log` VALUES ('662', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:18:45');
INSERT INTO `sys_job_log` VALUES ('663', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:19:00');
INSERT INTO `sys_job_log` VALUES ('664', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:19:15');
INSERT INTO `sys_job_log` VALUES ('665', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:19:30');
INSERT INTO `sys_job_log` VALUES ('666', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:19:45');
INSERT INTO `sys_job_log` VALUES ('667', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 17:20:01');
INSERT INTO `sys_job_log` VALUES ('668', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:20:15');
INSERT INTO `sys_job_log` VALUES ('669', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:20:30');
INSERT INTO `sys_job_log` VALUES ('670', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:20:45');
INSERT INTO `sys_job_log` VALUES ('671', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:28:30');
INSERT INTO `sys_job_log` VALUES ('672', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:28:45');
INSERT INTO `sys_job_log` VALUES ('673', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:29:00');
INSERT INTO `sys_job_log` VALUES ('674', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:29:15');
INSERT INTO `sys_job_log` VALUES ('675', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:29:30');
INSERT INTO `sys_job_log` VALUES ('676', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:29:45');
INSERT INTO `sys_job_log` VALUES ('677', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:30:00');
INSERT INTO `sys_job_log` VALUES ('678', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:30:15');
INSERT INTO `sys_job_log` VALUES ('679', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:30:30');
INSERT INTO `sys_job_log` VALUES ('680', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:30:45');
INSERT INTO `sys_job_log` VALUES ('681', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:31:00');
INSERT INTO `sys_job_log` VALUES ('682', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:31:15');
INSERT INTO `sys_job_log` VALUES ('683', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:31:30');
INSERT INTO `sys_job_log` VALUES ('684', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:31:45');
INSERT INTO `sys_job_log` VALUES ('685', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:32:00');
INSERT INTO `sys_job_log` VALUES ('686', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:32:15');
INSERT INTO `sys_job_log` VALUES ('687', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:32:30');
INSERT INTO `sys_job_log` VALUES ('688', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:32:45');
INSERT INTO `sys_job_log` VALUES ('689', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:33:00');
INSERT INTO `sys_job_log` VALUES ('690', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:33:15');
INSERT INTO `sys_job_log` VALUES ('691', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:33:30');
INSERT INTO `sys_job_log` VALUES ('692', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:33:45');
INSERT INTO `sys_job_log` VALUES ('693', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:34:00');
INSERT INTO `sys_job_log` VALUES ('694', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:34:15');
INSERT INTO `sys_job_log` VALUES ('695', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:34:30');
INSERT INTO `sys_job_log` VALUES ('696', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:34:45');
INSERT INTO `sys_job_log` VALUES ('697', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:35:00');
INSERT INTO `sys_job_log` VALUES ('698', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:35:15');
INSERT INTO `sys_job_log` VALUES ('699', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:35:30');
INSERT INTO `sys_job_log` VALUES ('700', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:35:45');
INSERT INTO `sys_job_log` VALUES ('701', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:36:00');
INSERT INTO `sys_job_log` VALUES ('702', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:36:15');
INSERT INTO `sys_job_log` VALUES ('703', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:36:30');
INSERT INTO `sys_job_log` VALUES ('704', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:36:45');
INSERT INTO `sys_job_log` VALUES ('705', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:37:00');
INSERT INTO `sys_job_log` VALUES ('706', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:37:15');
INSERT INTO `sys_job_log` VALUES ('707', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:37:30');
INSERT INTO `sys_job_log` VALUES ('708', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:38:00');
INSERT INTO `sys_job_log` VALUES ('709', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:38:15');
INSERT INTO `sys_job_log` VALUES ('710', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:38:30');
INSERT INTO `sys_job_log` VALUES ('711', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:38:45');
INSERT INTO `sys_job_log` VALUES ('712', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:39:00');
INSERT INTO `sys_job_log` VALUES ('713', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:39:15');
INSERT INTO `sys_job_log` VALUES ('714', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:39:30');
INSERT INTO `sys_job_log` VALUES ('715', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:39:45');
INSERT INTO `sys_job_log` VALUES ('716', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:40:00');
INSERT INTO `sys_job_log` VALUES ('717', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:40:15');
INSERT INTO `sys_job_log` VALUES ('718', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:40:30');
INSERT INTO `sys_job_log` VALUES ('719', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:40:45');
INSERT INTO `sys_job_log` VALUES ('720', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:41:00');
INSERT INTO `sys_job_log` VALUES ('721', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:41:15');
INSERT INTO `sys_job_log` VALUES ('722', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:41:30');
INSERT INTO `sys_job_log` VALUES ('723', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:41:45');
INSERT INTO `sys_job_log` VALUES ('724', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:42:00');
INSERT INTO `sys_job_log` VALUES ('725', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:42:15');
INSERT INTO `sys_job_log` VALUES ('726', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:42:30');
INSERT INTO `sys_job_log` VALUES ('727', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:42:45');
INSERT INTO `sys_job_log` VALUES ('728', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:43:00');
INSERT INTO `sys_job_log` VALUES ('729', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:43:15');
INSERT INTO `sys_job_log` VALUES ('730', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:43:30');
INSERT INTO `sys_job_log` VALUES ('731', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:43:45');
INSERT INTO `sys_job_log` VALUES ('732', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:44:00');
INSERT INTO `sys_job_log` VALUES ('733', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:44:15');
INSERT INTO `sys_job_log` VALUES ('734', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:44:30');
INSERT INTO `sys_job_log` VALUES ('735', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:44:45');
INSERT INTO `sys_job_log` VALUES ('736', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:45:00');
INSERT INTO `sys_job_log` VALUES ('737', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:45:15');
INSERT INTO `sys_job_log` VALUES ('738', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:45:30');
INSERT INTO `sys_job_log` VALUES ('739', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:45:45');
INSERT INTO `sys_job_log` VALUES ('740', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:46:00');
INSERT INTO `sys_job_log` VALUES ('741', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:46:15');
INSERT INTO `sys_job_log` VALUES ('742', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:46:30');
INSERT INTO `sys_job_log` VALUES ('743', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:46:45');
INSERT INTO `sys_job_log` VALUES ('744', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:47:00');
INSERT INTO `sys_job_log` VALUES ('745', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:47:15');
INSERT INTO `sys_job_log` VALUES ('746', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:47:30');
INSERT INTO `sys_job_log` VALUES ('747', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:47:45');
INSERT INTO `sys_job_log` VALUES ('748', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:48:00');
INSERT INTO `sys_job_log` VALUES ('749', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:48:15');
INSERT INTO `sys_job_log` VALUES ('750', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:48:30');
INSERT INTO `sys_job_log` VALUES ('751', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:48:45');
INSERT INTO `sys_job_log` VALUES ('752', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:49:00');
INSERT INTO `sys_job_log` VALUES ('753', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:49:15');
INSERT INTO `sys_job_log` VALUES ('754', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:49:30');
INSERT INTO `sys_job_log` VALUES ('755', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:49:45');
INSERT INTO `sys_job_log` VALUES ('756', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:50:00');
INSERT INTO `sys_job_log` VALUES ('757', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:50:15');
INSERT INTO `sys_job_log` VALUES ('758', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:50:30');
INSERT INTO `sys_job_log` VALUES ('759', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:50:45');
INSERT INTO `sys_job_log` VALUES ('760', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:51:00');
INSERT INTO `sys_job_log` VALUES ('761', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:51:15');
INSERT INTO `sys_job_log` VALUES ('762', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:51:30');
INSERT INTO `sys_job_log` VALUES ('763', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:51:45');
INSERT INTO `sys_job_log` VALUES ('764', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:52:00');
INSERT INTO `sys_job_log` VALUES ('765', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:52:15');
INSERT INTO `sys_job_log` VALUES ('766', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:52:30');
INSERT INTO `sys_job_log` VALUES ('767', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:52:45');
INSERT INTO `sys_job_log` VALUES ('768', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:53:00');
INSERT INTO `sys_job_log` VALUES ('769', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:53:15');
INSERT INTO `sys_job_log` VALUES ('770', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:53:30');
INSERT INTO `sys_job_log` VALUES ('771', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:53:45');
INSERT INTO `sys_job_log` VALUES ('772', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:54:00');
INSERT INTO `sys_job_log` VALUES ('773', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:54:15');
INSERT INTO `sys_job_log` VALUES ('774', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:54:30');
INSERT INTO `sys_job_log` VALUES ('775', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:54:45');
INSERT INTO `sys_job_log` VALUES ('776', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:55:00');
INSERT INTO `sys_job_log` VALUES ('777', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:55:15');
INSERT INTO `sys_job_log` VALUES ('778', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:55:30');
INSERT INTO `sys_job_log` VALUES ('779', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:55:45');
INSERT INTO `sys_job_log` VALUES ('780', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:56:00');
INSERT INTO `sys_job_log` VALUES ('781', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:56:15');
INSERT INTO `sys_job_log` VALUES ('782', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:56:30');
INSERT INTO `sys_job_log` VALUES ('783', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:56:45');
INSERT INTO `sys_job_log` VALUES ('784', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:57:00');
INSERT INTO `sys_job_log` VALUES ('785', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:57:15');
INSERT INTO `sys_job_log` VALUES ('786', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:57:30');
INSERT INTO `sys_job_log` VALUES ('787', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:57:45');
INSERT INTO `sys_job_log` VALUES ('788', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:58:00');
INSERT INTO `sys_job_log` VALUES ('789', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:58:15');
INSERT INTO `sys_job_log` VALUES ('790', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:58:30');
INSERT INTO `sys_job_log` VALUES ('791', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 17:58:45');
INSERT INTO `sys_job_log` VALUES ('792', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:59:00');
INSERT INTO `sys_job_log` VALUES ('793', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:59:15');
INSERT INTO `sys_job_log` VALUES ('794', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:59:30');
INSERT INTO `sys_job_log` VALUES ('795', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 17:59:45');
INSERT INTO `sys_job_log` VALUES ('796', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:00:00');
INSERT INTO `sys_job_log` VALUES ('797', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:00:15');
INSERT INTO `sys_job_log` VALUES ('798', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:00:30');
INSERT INTO `sys_job_log` VALUES ('799', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:00:45');
INSERT INTO `sys_job_log` VALUES ('800', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:01:00');
INSERT INTO `sys_job_log` VALUES ('801', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:01:15');
INSERT INTO `sys_job_log` VALUES ('802', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:01:30');
INSERT INTO `sys_job_log` VALUES ('803', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:01:45');
INSERT INTO `sys_job_log` VALUES ('804', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:02:00');
INSERT INTO `sys_job_log` VALUES ('805', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:02:15');
INSERT INTO `sys_job_log` VALUES ('806', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:02:30');
INSERT INTO `sys_job_log` VALUES ('807', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:02:45');
INSERT INTO `sys_job_log` VALUES ('808', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:03:00');
INSERT INTO `sys_job_log` VALUES ('809', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:03:15');
INSERT INTO `sys_job_log` VALUES ('810', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:03:30');
INSERT INTO `sys_job_log` VALUES ('811', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:03:45');
INSERT INTO `sys_job_log` VALUES ('812', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:04:00');
INSERT INTO `sys_job_log` VALUES ('813', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:04:15');
INSERT INTO `sys_job_log` VALUES ('814', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:04:30');
INSERT INTO `sys_job_log` VALUES ('815', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:04:45');
INSERT INTO `sys_job_log` VALUES ('816', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:05:00');
INSERT INTO `sys_job_log` VALUES ('817', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:05:15');
INSERT INTO `sys_job_log` VALUES ('818', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:05:30');
INSERT INTO `sys_job_log` VALUES ('819', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:05:45');
INSERT INTO `sys_job_log` VALUES ('820', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:06:00');
INSERT INTO `sys_job_log` VALUES ('821', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:06:15');
INSERT INTO `sys_job_log` VALUES ('822', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:06:30');
INSERT INTO `sys_job_log` VALUES ('823', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:06:45');
INSERT INTO `sys_job_log` VALUES ('824', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:07:00');
INSERT INTO `sys_job_log` VALUES ('825', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:07:15');
INSERT INTO `sys_job_log` VALUES ('826', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:07:30');
INSERT INTO `sys_job_log` VALUES ('827', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:07:45');
INSERT INTO `sys_job_log` VALUES ('828', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:08:00');
INSERT INTO `sys_job_log` VALUES ('829', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:08:15');
INSERT INTO `sys_job_log` VALUES ('830', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:08:30');
INSERT INTO `sys_job_log` VALUES ('831', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:08:45');
INSERT INTO `sys_job_log` VALUES ('832', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:09:00');
INSERT INTO `sys_job_log` VALUES ('833', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:09:15');
INSERT INTO `sys_job_log` VALUES ('834', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:09:30');
INSERT INTO `sys_job_log` VALUES ('835', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:09:45');
INSERT INTO `sys_job_log` VALUES ('836', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:10:00');
INSERT INTO `sys_job_log` VALUES ('837', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:10:15');
INSERT INTO `sys_job_log` VALUES ('838', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:10:30');
INSERT INTO `sys_job_log` VALUES ('839', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:10:45');
INSERT INTO `sys_job_log` VALUES ('840', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:11:00');
INSERT INTO `sys_job_log` VALUES ('841', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:11:15');
INSERT INTO `sys_job_log` VALUES ('842', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:11:30');
INSERT INTO `sys_job_log` VALUES ('843', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:11:45');
INSERT INTO `sys_job_log` VALUES ('844', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:12:00');
INSERT INTO `sys_job_log` VALUES ('845', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:12:15');
INSERT INTO `sys_job_log` VALUES ('846', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:12:30');
INSERT INTO `sys_job_log` VALUES ('847', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:12:45');
INSERT INTO `sys_job_log` VALUES ('848', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 18:13:30');
INSERT INTO `sys_job_log` VALUES ('849', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:13:45');
INSERT INTO `sys_job_log` VALUES ('850', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:14:00');
INSERT INTO `sys_job_log` VALUES ('851', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:14:15');
INSERT INTO `sys_job_log` VALUES ('852', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:14:30');
INSERT INTO `sys_job_log` VALUES ('853', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:14:45');
INSERT INTO `sys_job_log` VALUES ('854', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:15:00');
INSERT INTO `sys_job_log` VALUES ('855', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:15:15');
INSERT INTO `sys_job_log` VALUES ('856', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:15:30');
INSERT INTO `sys_job_log` VALUES ('857', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:15:45');
INSERT INTO `sys_job_log` VALUES ('858', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:16:00');
INSERT INTO `sys_job_log` VALUES ('859', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:16:15');
INSERT INTO `sys_job_log` VALUES ('860', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:16:30');
INSERT INTO `sys_job_log` VALUES ('861', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:16:45');
INSERT INTO `sys_job_log` VALUES ('862', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:17:01');
INSERT INTO `sys_job_log` VALUES ('863', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:17:15');
INSERT INTO `sys_job_log` VALUES ('864', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:17:30');
INSERT INTO `sys_job_log` VALUES ('865', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:17:45');
INSERT INTO `sys_job_log` VALUES ('866', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:18:00');
INSERT INTO `sys_job_log` VALUES ('867', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:18:15');
INSERT INTO `sys_job_log` VALUES ('868', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:18:30');
INSERT INTO `sys_job_log` VALUES ('869', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-09 18:19:00');
INSERT INTO `sys_job_log` VALUES ('870', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:19:15');
INSERT INTO `sys_job_log` VALUES ('871', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:19:30');
INSERT INTO `sys_job_log` VALUES ('872', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:20:00');
INSERT INTO `sys_job_log` VALUES ('873', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:20:15');
INSERT INTO `sys_job_log` VALUES ('874', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:20:30');
INSERT INTO `sys_job_log` VALUES ('875', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:20:45');
INSERT INTO `sys_job_log` VALUES ('876', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:21:00');
INSERT INTO `sys_job_log` VALUES ('877', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:21:15');
INSERT INTO `sys_job_log` VALUES ('878', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:21:30');
INSERT INTO `sys_job_log` VALUES ('879', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:21:45');
INSERT INTO `sys_job_log` VALUES ('880', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:22:00');
INSERT INTO `sys_job_log` VALUES ('881', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:22:15');
INSERT INTO `sys_job_log` VALUES ('882', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:22:30');
INSERT INTO `sys_job_log` VALUES ('883', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 18:23:00');
INSERT INTO `sys_job_log` VALUES ('884', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:23:15');
INSERT INTO `sys_job_log` VALUES ('885', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:23:30');
INSERT INTO `sys_job_log` VALUES ('886', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:23:45');
INSERT INTO `sys_job_log` VALUES ('887', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:24:00');
INSERT INTO `sys_job_log` VALUES ('888', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:24:15');
INSERT INTO `sys_job_log` VALUES ('889', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:24:30');
INSERT INTO `sys_job_log` VALUES ('890', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:24:45');
INSERT INTO `sys_job_log` VALUES ('891', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:25:00');
INSERT INTO `sys_job_log` VALUES ('892', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:25:15');
INSERT INTO `sys_job_log` VALUES ('893', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:25:30');
INSERT INTO `sys_job_log` VALUES ('894', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:25:45');
INSERT INTO `sys_job_log` VALUES ('895', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:26:00');
INSERT INTO `sys_job_log` VALUES ('896', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:26:15');
INSERT INTO `sys_job_log` VALUES ('897', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:26:30');
INSERT INTO `sys_job_log` VALUES ('898', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:26:45');
INSERT INTO `sys_job_log` VALUES ('899', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:27:00');
INSERT INTO `sys_job_log` VALUES ('900', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:27:15');
INSERT INTO `sys_job_log` VALUES ('901', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:27:30');
INSERT INTO `sys_job_log` VALUES ('902', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:27:45');
INSERT INTO `sys_job_log` VALUES ('903', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:28:00');
INSERT INTO `sys_job_log` VALUES ('904', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:28:15');
INSERT INTO `sys_job_log` VALUES ('905', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:28:30');
INSERT INTO `sys_job_log` VALUES ('906', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:28:45');
INSERT INTO `sys_job_log` VALUES ('907', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:29:00');
INSERT INTO `sys_job_log` VALUES ('908', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:29:15');
INSERT INTO `sys_job_log` VALUES ('909', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:29:30');
INSERT INTO `sys_job_log` VALUES ('910', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:29:45');
INSERT INTO `sys_job_log` VALUES ('911', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:30:00');
INSERT INTO `sys_job_log` VALUES ('912', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:30:15');
INSERT INTO `sys_job_log` VALUES ('913', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:30:30');
INSERT INTO `sys_job_log` VALUES ('914', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:30:45');
INSERT INTO `sys_job_log` VALUES ('915', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:31:00');
INSERT INTO `sys_job_log` VALUES ('916', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:31:15');
INSERT INTO `sys_job_log` VALUES ('917', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:31:30');
INSERT INTO `sys_job_log` VALUES ('918', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:31:45');
INSERT INTO `sys_job_log` VALUES ('919', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:32:00');
INSERT INTO `sys_job_log` VALUES ('920', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:32:15');
INSERT INTO `sys_job_log` VALUES ('921', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:32:30');
INSERT INTO `sys_job_log` VALUES ('922', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:32:45');
INSERT INTO `sys_job_log` VALUES ('923', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:33:00');
INSERT INTO `sys_job_log` VALUES ('924', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:33:15');
INSERT INTO `sys_job_log` VALUES ('925', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:33:30');
INSERT INTO `sys_job_log` VALUES ('926', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:33:45');
INSERT INTO `sys_job_log` VALUES ('927', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:34:00');
INSERT INTO `sys_job_log` VALUES ('928', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-09 18:34:30');
INSERT INTO `sys_job_log` VALUES ('929', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:34:45');
INSERT INTO `sys_job_log` VALUES ('930', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:35:00');
INSERT INTO `sys_job_log` VALUES ('931', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:35:15');
INSERT INTO `sys_job_log` VALUES ('932', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:35:30');
INSERT INTO `sys_job_log` VALUES ('933', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:35:45');
INSERT INTO `sys_job_log` VALUES ('934', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:36:00');
INSERT INTO `sys_job_log` VALUES ('935', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:36:30');
INSERT INTO `sys_job_log` VALUES ('936', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:36:45');
INSERT INTO `sys_job_log` VALUES ('937', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:37:00');
INSERT INTO `sys_job_log` VALUES ('938', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:37:15');
INSERT INTO `sys_job_log` VALUES ('939', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:37:30');
INSERT INTO `sys_job_log` VALUES ('940', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:37:45');
INSERT INTO `sys_job_log` VALUES ('941', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:38:00');
INSERT INTO `sys_job_log` VALUES ('942', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:38:15');
INSERT INTO `sys_job_log` VALUES ('943', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:38:30');
INSERT INTO `sys_job_log` VALUES ('944', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:38:45');
INSERT INTO `sys_job_log` VALUES ('945', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:39:00');
INSERT INTO `sys_job_log` VALUES ('946', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:39:15');
INSERT INTO `sys_job_log` VALUES ('947', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:39:30');
INSERT INTO `sys_job_log` VALUES ('948', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:39:45');
INSERT INTO `sys_job_log` VALUES ('949', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:40:00');
INSERT INTO `sys_job_log` VALUES ('950', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:40:15');
INSERT INTO `sys_job_log` VALUES ('951', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:40:30');
INSERT INTO `sys_job_log` VALUES ('952', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:40:45');
INSERT INTO `sys_job_log` VALUES ('953', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:41:00');
INSERT INTO `sys_job_log` VALUES ('954', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:41:15');
INSERT INTO `sys_job_log` VALUES ('955', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:41:30');
INSERT INTO `sys_job_log` VALUES ('956', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:41:45');
INSERT INTO `sys_job_log` VALUES ('957', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:42:00');
INSERT INTO `sys_job_log` VALUES ('958', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:42:15');
INSERT INTO `sys_job_log` VALUES ('959', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:42:30');
INSERT INTO `sys_job_log` VALUES ('960', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 18:43:00');
INSERT INTO `sys_job_log` VALUES ('961', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:43:15');
INSERT INTO `sys_job_log` VALUES ('962', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:43:30');
INSERT INTO `sys_job_log` VALUES ('963', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:43:45');
INSERT INTO `sys_job_log` VALUES ('964', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:44:00');
INSERT INTO `sys_job_log` VALUES ('965', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:44:15');
INSERT INTO `sys_job_log` VALUES ('966', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:44:30');
INSERT INTO `sys_job_log` VALUES ('967', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:44:45');
INSERT INTO `sys_job_log` VALUES ('968', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:45:00');
INSERT INTO `sys_job_log` VALUES ('969', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:45:15');
INSERT INTO `sys_job_log` VALUES ('970', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:45:30');
INSERT INTO `sys_job_log` VALUES ('971', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:45:45');
INSERT INTO `sys_job_log` VALUES ('972', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:46:00');
INSERT INTO `sys_job_log` VALUES ('973', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:46:15');
INSERT INTO `sys_job_log` VALUES ('974', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:46:30');
INSERT INTO `sys_job_log` VALUES ('975', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:46:45');
INSERT INTO `sys_job_log` VALUES ('976', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:47:00');
INSERT INTO `sys_job_log` VALUES ('977', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:47:15');
INSERT INTO `sys_job_log` VALUES ('978', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:47:30');
INSERT INTO `sys_job_log` VALUES ('979', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-09 18:48:00');
INSERT INTO `sys_job_log` VALUES ('980', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:48:15');
INSERT INTO `sys_job_log` VALUES ('981', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:48:30');
INSERT INTO `sys_job_log` VALUES ('982', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:48:45');
INSERT INTO `sys_job_log` VALUES ('983', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:49:00');
INSERT INTO `sys_job_log` VALUES ('984', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:49:15');
INSERT INTO `sys_job_log` VALUES ('985', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:49:30');
INSERT INTO `sys_job_log` VALUES ('986', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:49:45');
INSERT INTO `sys_job_log` VALUES ('987', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:50:00');
INSERT INTO `sys_job_log` VALUES ('988', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:50:15');
INSERT INTO `sys_job_log` VALUES ('989', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:50:30');
INSERT INTO `sys_job_log` VALUES ('990', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:50:45');
INSERT INTO `sys_job_log` VALUES ('991', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:51:00');
INSERT INTO `sys_job_log` VALUES ('992', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:51:15');
INSERT INTO `sys_job_log` VALUES ('993', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:51:30');
INSERT INTO `sys_job_log` VALUES ('994', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:51:45');
INSERT INTO `sys_job_log` VALUES ('995', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:52:00');
INSERT INTO `sys_job_log` VALUES ('996', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:52:15');
INSERT INTO `sys_job_log` VALUES ('997', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:52:30');
INSERT INTO `sys_job_log` VALUES ('998', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:52:45');
INSERT INTO `sys_job_log` VALUES ('999', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:53:00');
INSERT INTO `sys_job_log` VALUES ('1000', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:53:15');
INSERT INTO `sys_job_log` VALUES ('1001', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:53:30');
INSERT INTO `sys_job_log` VALUES ('1002', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:53:45');
INSERT INTO `sys_job_log` VALUES ('1003', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:54:00');
INSERT INTO `sys_job_log` VALUES ('1004', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:54:15');
INSERT INTO `sys_job_log` VALUES ('1005', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:54:30');
INSERT INTO `sys_job_log` VALUES ('1006', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:54:45');
INSERT INTO `sys_job_log` VALUES ('1007', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:55:00');
INSERT INTO `sys_job_log` VALUES ('1008', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:55:15');
INSERT INTO `sys_job_log` VALUES ('1009', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:55:30');
INSERT INTO `sys_job_log` VALUES ('1010', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:55:45');
INSERT INTO `sys_job_log` VALUES ('1011', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:56:00');
INSERT INTO `sys_job_log` VALUES ('1012', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:56:15');
INSERT INTO `sys_job_log` VALUES ('1013', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:56:30');
INSERT INTO `sys_job_log` VALUES ('1014', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:56:45');
INSERT INTO `sys_job_log` VALUES ('1015', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:57:00');
INSERT INTO `sys_job_log` VALUES ('1016', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:57:15');
INSERT INTO `sys_job_log` VALUES ('1017', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:57:30');
INSERT INTO `sys_job_log` VALUES ('1018', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:57:45');
INSERT INTO `sys_job_log` VALUES ('1019', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:58:00');
INSERT INTO `sys_job_log` VALUES ('1020', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:58:15');
INSERT INTO `sys_job_log` VALUES ('1021', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:58:30');
INSERT INTO `sys_job_log` VALUES ('1022', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:58:45');
INSERT INTO `sys_job_log` VALUES ('1023', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:59:00');
INSERT INTO `sys_job_log` VALUES ('1024', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:59:15');
INSERT INTO `sys_job_log` VALUES ('1025', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:59:30');
INSERT INTO `sys_job_log` VALUES ('1026', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 18:59:45');
INSERT INTO `sys_job_log` VALUES ('1027', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:00:00');
INSERT INTO `sys_job_log` VALUES ('1028', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:00:15');
INSERT INTO `sys_job_log` VALUES ('1029', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:00:30');
INSERT INTO `sys_job_log` VALUES ('1030', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:00:45');
INSERT INTO `sys_job_log` VALUES ('1031', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:01:00');
INSERT INTO `sys_job_log` VALUES ('1032', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:01:15');
INSERT INTO `sys_job_log` VALUES ('1033', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:01:30');
INSERT INTO `sys_job_log` VALUES ('1034', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:01:45');
INSERT INTO `sys_job_log` VALUES ('1035', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:02:00');
INSERT INTO `sys_job_log` VALUES ('1036', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:02:15');
INSERT INTO `sys_job_log` VALUES ('1037', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:02:30');
INSERT INTO `sys_job_log` VALUES ('1038', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:02:45');
INSERT INTO `sys_job_log` VALUES ('1039', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:03:00');
INSERT INTO `sys_job_log` VALUES ('1040', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:03:15');
INSERT INTO `sys_job_log` VALUES ('1041', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:03:30');
INSERT INTO `sys_job_log` VALUES ('1042', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:03:45');
INSERT INTO `sys_job_log` VALUES ('1043', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:04:00');
INSERT INTO `sys_job_log` VALUES ('1044', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:04:15');
INSERT INTO `sys_job_log` VALUES ('1045', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:04:30');
INSERT INTO `sys_job_log` VALUES ('1046', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:04:45');
INSERT INTO `sys_job_log` VALUES ('1047', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:05:00');
INSERT INTO `sys_job_log` VALUES ('1048', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:05:15');
INSERT INTO `sys_job_log` VALUES ('1049', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:05:30');
INSERT INTO `sys_job_log` VALUES ('1050', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:05:45');
INSERT INTO `sys_job_log` VALUES ('1051', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:06:00');
INSERT INTO `sys_job_log` VALUES ('1052', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:06:15');
INSERT INTO `sys_job_log` VALUES ('1053', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:06:30');
INSERT INTO `sys_job_log` VALUES ('1054', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:06:45');
INSERT INTO `sys_job_log` VALUES ('1055', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:07:00');
INSERT INTO `sys_job_log` VALUES ('1056', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:07:15');
INSERT INTO `sys_job_log` VALUES ('1057', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:07:30');
INSERT INTO `sys_job_log` VALUES ('1058', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:07:45');
INSERT INTO `sys_job_log` VALUES ('1059', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:08:00');
INSERT INTO `sys_job_log` VALUES ('1060', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:08:15');
INSERT INTO `sys_job_log` VALUES ('1061', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:08:30');
INSERT INTO `sys_job_log` VALUES ('1062', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:08:45');
INSERT INTO `sys_job_log` VALUES ('1063', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:09:00');
INSERT INTO `sys_job_log` VALUES ('1064', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:09:15');
INSERT INTO `sys_job_log` VALUES ('1065', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:09:30');
INSERT INTO `sys_job_log` VALUES ('1066', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:09:45');
INSERT INTO `sys_job_log` VALUES ('1067', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:10:00');
INSERT INTO `sys_job_log` VALUES ('1068', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:10:15');
INSERT INTO `sys_job_log` VALUES ('1069', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:10:30');
INSERT INTO `sys_job_log` VALUES ('1070', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:10:45');
INSERT INTO `sys_job_log` VALUES ('1071', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:11:00');
INSERT INTO `sys_job_log` VALUES ('1072', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:11:15');
INSERT INTO `sys_job_log` VALUES ('1073', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:11:30');
INSERT INTO `sys_job_log` VALUES ('1074', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:11:45');
INSERT INTO `sys_job_log` VALUES ('1075', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:12:00');
INSERT INTO `sys_job_log` VALUES ('1076', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:12:15');
INSERT INTO `sys_job_log` VALUES ('1077', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:12:30');
INSERT INTO `sys_job_log` VALUES ('1078', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:12:45');
INSERT INTO `sys_job_log` VALUES ('1079', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:13:00');
INSERT INTO `sys_job_log` VALUES ('1080', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:13:15');
INSERT INTO `sys_job_log` VALUES ('1081', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:13:30');
INSERT INTO `sys_job_log` VALUES ('1082', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:13:45');
INSERT INTO `sys_job_log` VALUES ('1083', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:14:00');
INSERT INTO `sys_job_log` VALUES ('1084', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:14:15');
INSERT INTO `sys_job_log` VALUES ('1085', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:14:30');
INSERT INTO `sys_job_log` VALUES ('1086', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:14:45');
INSERT INTO `sys_job_log` VALUES ('1087', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:15:00');
INSERT INTO `sys_job_log` VALUES ('1088', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:15:15');
INSERT INTO `sys_job_log` VALUES ('1089', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:15:30');
INSERT INTO `sys_job_log` VALUES ('1090', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:15:45');
INSERT INTO `sys_job_log` VALUES ('1091', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:16:00');
INSERT INTO `sys_job_log` VALUES ('1092', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:16:15');
INSERT INTO `sys_job_log` VALUES ('1093', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:16:30');
INSERT INTO `sys_job_log` VALUES ('1094', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:16:45');
INSERT INTO `sys_job_log` VALUES ('1095', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:17:00');
INSERT INTO `sys_job_log` VALUES ('1096', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:17:15');
INSERT INTO `sys_job_log` VALUES ('1097', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:17:30');
INSERT INTO `sys_job_log` VALUES ('1098', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:17:45');
INSERT INTO `sys_job_log` VALUES ('1099', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:18:00');
INSERT INTO `sys_job_log` VALUES ('1100', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:18:15');
INSERT INTO `sys_job_log` VALUES ('1101', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:18:30');
INSERT INTO `sys_job_log` VALUES ('1102', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:18:45');
INSERT INTO `sys_job_log` VALUES ('1103', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:19:00');
INSERT INTO `sys_job_log` VALUES ('1104', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:19:15');
INSERT INTO `sys_job_log` VALUES ('1105', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:19:30');
INSERT INTO `sys_job_log` VALUES ('1106', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:19:45');
INSERT INTO `sys_job_log` VALUES ('1107', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:20:00');
INSERT INTO `sys_job_log` VALUES ('1108', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:20:15');
INSERT INTO `sys_job_log` VALUES ('1109', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:20:30');
INSERT INTO `sys_job_log` VALUES ('1110', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:20:45');
INSERT INTO `sys_job_log` VALUES ('1111', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:21:00');
INSERT INTO `sys_job_log` VALUES ('1112', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:21:15');
INSERT INTO `sys_job_log` VALUES ('1113', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:21:30');
INSERT INTO `sys_job_log` VALUES ('1114', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:21:45');
INSERT INTO `sys_job_log` VALUES ('1115', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:22:00');
INSERT INTO `sys_job_log` VALUES ('1116', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:22:15');
INSERT INTO `sys_job_log` VALUES ('1117', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:22:30');
INSERT INTO `sys_job_log` VALUES ('1118', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:22:45');
INSERT INTO `sys_job_log` VALUES ('1119', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:23:00');
INSERT INTO `sys_job_log` VALUES ('1120', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:23:15');
INSERT INTO `sys_job_log` VALUES ('1121', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:23:30');
INSERT INTO `sys_job_log` VALUES ('1122', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:23:45');
INSERT INTO `sys_job_log` VALUES ('1123', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:24:00');
INSERT INTO `sys_job_log` VALUES ('1124', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:24:15');
INSERT INTO `sys_job_log` VALUES ('1125', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:24:30');
INSERT INTO `sys_job_log` VALUES ('1126', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:24:45');
INSERT INTO `sys_job_log` VALUES ('1127', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:25:00');
INSERT INTO `sys_job_log` VALUES ('1128', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:25:15');
INSERT INTO `sys_job_log` VALUES ('1129', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:25:30');
INSERT INTO `sys_job_log` VALUES ('1130', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:25:45');
INSERT INTO `sys_job_log` VALUES ('1131', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:26:00');
INSERT INTO `sys_job_log` VALUES ('1132', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:26:15');
INSERT INTO `sys_job_log` VALUES ('1133', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:26:30');
INSERT INTO `sys_job_log` VALUES ('1134', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:26:45');
INSERT INTO `sys_job_log` VALUES ('1135', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:27:00');
INSERT INTO `sys_job_log` VALUES ('1136', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:27:15');
INSERT INTO `sys_job_log` VALUES ('1137', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:27:30');
INSERT INTO `sys_job_log` VALUES ('1138', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:27:45');
INSERT INTO `sys_job_log` VALUES ('1139', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:28:00');
INSERT INTO `sys_job_log` VALUES ('1140', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:28:15');
INSERT INTO `sys_job_log` VALUES ('1141', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:28:30');
INSERT INTO `sys_job_log` VALUES ('1142', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:28:45');
INSERT INTO `sys_job_log` VALUES ('1143', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:29:00');
INSERT INTO `sys_job_log` VALUES ('1144', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:29:15');
INSERT INTO `sys_job_log` VALUES ('1145', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:29:30');
INSERT INTO `sys_job_log` VALUES ('1146', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:29:45');
INSERT INTO `sys_job_log` VALUES ('1147', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:30:00');
INSERT INTO `sys_job_log` VALUES ('1148', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:30:15');
INSERT INTO `sys_job_log` VALUES ('1149', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:30:30');
INSERT INTO `sys_job_log` VALUES ('1150', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:30:45');
INSERT INTO `sys_job_log` VALUES ('1151', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:31:00');
INSERT INTO `sys_job_log` VALUES ('1152', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:31:15');
INSERT INTO `sys_job_log` VALUES ('1153', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:31:30');
INSERT INTO `sys_job_log` VALUES ('1154', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:31:45');
INSERT INTO `sys_job_log` VALUES ('1155', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:32:00');
INSERT INTO `sys_job_log` VALUES ('1156', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:32:15');
INSERT INTO `sys_job_log` VALUES ('1157', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:32:30');
INSERT INTO `sys_job_log` VALUES ('1158', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:32:45');
INSERT INTO `sys_job_log` VALUES ('1159', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:33:00');
INSERT INTO `sys_job_log` VALUES ('1160', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:33:15');
INSERT INTO `sys_job_log` VALUES ('1161', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:33:30');
INSERT INTO `sys_job_log` VALUES ('1162', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:33:45');
INSERT INTO `sys_job_log` VALUES ('1163', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:34:00');
INSERT INTO `sys_job_log` VALUES ('1164', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:34:15');
INSERT INTO `sys_job_log` VALUES ('1165', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:34:30');
INSERT INTO `sys_job_log` VALUES ('1166', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:34:45');
INSERT INTO `sys_job_log` VALUES ('1167', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:35:00');
INSERT INTO `sys_job_log` VALUES ('1168', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:35:15');
INSERT INTO `sys_job_log` VALUES ('1169', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:35:30');
INSERT INTO `sys_job_log` VALUES ('1170', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:35:45');
INSERT INTO `sys_job_log` VALUES ('1171', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:36:00');
INSERT INTO `sys_job_log` VALUES ('1172', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:36:15');
INSERT INTO `sys_job_log` VALUES ('1173', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:36:30');
INSERT INTO `sys_job_log` VALUES ('1174', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:36:45');
INSERT INTO `sys_job_log` VALUES ('1175', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:37:00');
INSERT INTO `sys_job_log` VALUES ('1176', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:37:15');
INSERT INTO `sys_job_log` VALUES ('1177', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:37:30');
INSERT INTO `sys_job_log` VALUES ('1178', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:37:45');
INSERT INTO `sys_job_log` VALUES ('1179', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:38:00');
INSERT INTO `sys_job_log` VALUES ('1180', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:38:15');
INSERT INTO `sys_job_log` VALUES ('1181', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:38:30');
INSERT INTO `sys_job_log` VALUES ('1182', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:38:45');
INSERT INTO `sys_job_log` VALUES ('1183', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:39:00');
INSERT INTO `sys_job_log` VALUES ('1184', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:39:15');
INSERT INTO `sys_job_log` VALUES ('1185', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:39:30');
INSERT INTO `sys_job_log` VALUES ('1186', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:39:45');
INSERT INTO `sys_job_log` VALUES ('1187', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:40:00');
INSERT INTO `sys_job_log` VALUES ('1188', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:40:15');
INSERT INTO `sys_job_log` VALUES ('1189', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:40:30');
INSERT INTO `sys_job_log` VALUES ('1190', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:40:45');
INSERT INTO `sys_job_log` VALUES ('1191', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:41:00');
INSERT INTO `sys_job_log` VALUES ('1192', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:41:15');
INSERT INTO `sys_job_log` VALUES ('1193', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:41:30');
INSERT INTO `sys_job_log` VALUES ('1194', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:41:45');
INSERT INTO `sys_job_log` VALUES ('1195', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:42:00');
INSERT INTO `sys_job_log` VALUES ('1196', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:42:15');
INSERT INTO `sys_job_log` VALUES ('1197', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:42:30');
INSERT INTO `sys_job_log` VALUES ('1198', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:42:45');
INSERT INTO `sys_job_log` VALUES ('1199', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:43:00');
INSERT INTO `sys_job_log` VALUES ('1200', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:43:15');
INSERT INTO `sys_job_log` VALUES ('1201', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:43:30');
INSERT INTO `sys_job_log` VALUES ('1202', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:43:45');
INSERT INTO `sys_job_log` VALUES ('1203', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:44:00');
INSERT INTO `sys_job_log` VALUES ('1204', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:44:15');
INSERT INTO `sys_job_log` VALUES ('1205', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:44:30');
INSERT INTO `sys_job_log` VALUES ('1206', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:44:45');
INSERT INTO `sys_job_log` VALUES ('1207', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:45:00');
INSERT INTO `sys_job_log` VALUES ('1208', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:45:15');
INSERT INTO `sys_job_log` VALUES ('1209', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:45:30');
INSERT INTO `sys_job_log` VALUES ('1210', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:45:45');
INSERT INTO `sys_job_log` VALUES ('1211', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:46:00');
INSERT INTO `sys_job_log` VALUES ('1212', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:46:15');
INSERT INTO `sys_job_log` VALUES ('1213', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:46:30');
INSERT INTO `sys_job_log` VALUES ('1214', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:46:45');
INSERT INTO `sys_job_log` VALUES ('1215', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:47:00');
INSERT INTO `sys_job_log` VALUES ('1216', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:47:15');
INSERT INTO `sys_job_log` VALUES ('1217', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:47:30');
INSERT INTO `sys_job_log` VALUES ('1218', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:47:45');
INSERT INTO `sys_job_log` VALUES ('1219', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:48:00');
INSERT INTO `sys_job_log` VALUES ('1220', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:48:15');
INSERT INTO `sys_job_log` VALUES ('1221', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:48:30');
INSERT INTO `sys_job_log` VALUES ('1222', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:48:45');
INSERT INTO `sys_job_log` VALUES ('1223', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:49:00');
INSERT INTO `sys_job_log` VALUES ('1224', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:49:15');
INSERT INTO `sys_job_log` VALUES ('1225', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:49:30');
INSERT INTO `sys_job_log` VALUES ('1226', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:49:45');
INSERT INTO `sys_job_log` VALUES ('1227', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:50:00');
INSERT INTO `sys_job_log` VALUES ('1228', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:50:15');
INSERT INTO `sys_job_log` VALUES ('1229', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:50:30');
INSERT INTO `sys_job_log` VALUES ('1230', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:50:45');
INSERT INTO `sys_job_log` VALUES ('1231', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:51:00');
INSERT INTO `sys_job_log` VALUES ('1232', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:51:15');
INSERT INTO `sys_job_log` VALUES ('1233', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:51:30');
INSERT INTO `sys_job_log` VALUES ('1234', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:51:45');
INSERT INTO `sys_job_log` VALUES ('1235', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:52:00');
INSERT INTO `sys_job_log` VALUES ('1236', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:52:15');
INSERT INTO `sys_job_log` VALUES ('1237', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:52:30');
INSERT INTO `sys_job_log` VALUES ('1238', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:52:45');
INSERT INTO `sys_job_log` VALUES ('1239', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:53:00');
INSERT INTO `sys_job_log` VALUES ('1240', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:53:15');
INSERT INTO `sys_job_log` VALUES ('1241', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:53:30');
INSERT INTO `sys_job_log` VALUES ('1242', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:53:45');
INSERT INTO `sys_job_log` VALUES ('1243', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:54:00');
INSERT INTO `sys_job_log` VALUES ('1244', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:54:15');
INSERT INTO `sys_job_log` VALUES ('1245', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:54:30');
INSERT INTO `sys_job_log` VALUES ('1246', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:54:45');
INSERT INTO `sys_job_log` VALUES ('1247', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:55:00');
INSERT INTO `sys_job_log` VALUES ('1248', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:55:15');
INSERT INTO `sys_job_log` VALUES ('1249', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:55:30');
INSERT INTO `sys_job_log` VALUES ('1250', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:55:45');
INSERT INTO `sys_job_log` VALUES ('1251', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:56:00');
INSERT INTO `sys_job_log` VALUES ('1252', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:56:15');
INSERT INTO `sys_job_log` VALUES ('1253', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:56:30');
INSERT INTO `sys_job_log` VALUES ('1254', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:56:45');
INSERT INTO `sys_job_log` VALUES ('1255', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:57:00');
INSERT INTO `sys_job_log` VALUES ('1256', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:57:15');
INSERT INTO `sys_job_log` VALUES ('1257', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:57:30');
INSERT INTO `sys_job_log` VALUES ('1258', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 19:57:45');
INSERT INTO `sys_job_log` VALUES ('1259', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:58:00');
INSERT INTO `sys_job_log` VALUES ('1260', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:58:15');
INSERT INTO `sys_job_log` VALUES ('1261', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:58:30');
INSERT INTO `sys_job_log` VALUES ('1262', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:58:45');
INSERT INTO `sys_job_log` VALUES ('1263', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:59:00');
INSERT INTO `sys_job_log` VALUES ('1264', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:59:15');
INSERT INTO `sys_job_log` VALUES ('1265', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:59:30');
INSERT INTO `sys_job_log` VALUES ('1266', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 19:59:45');
INSERT INTO `sys_job_log` VALUES ('1267', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:00:00');
INSERT INTO `sys_job_log` VALUES ('1268', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:00:15');
INSERT INTO `sys_job_log` VALUES ('1269', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:00:30');
INSERT INTO `sys_job_log` VALUES ('1270', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:00:45');
INSERT INTO `sys_job_log` VALUES ('1271', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:01:00');
INSERT INTO `sys_job_log` VALUES ('1272', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:01:15');
INSERT INTO `sys_job_log` VALUES ('1273', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:01:30');
INSERT INTO `sys_job_log` VALUES ('1274', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:01:45');
INSERT INTO `sys_job_log` VALUES ('1275', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:02:00');
INSERT INTO `sys_job_log` VALUES ('1276', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:02:15');
INSERT INTO `sys_job_log` VALUES ('1277', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:02:30');
INSERT INTO `sys_job_log` VALUES ('1278', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:02:45');
INSERT INTO `sys_job_log` VALUES ('1279', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:03:00');
INSERT INTO `sys_job_log` VALUES ('1280', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:03:15');
INSERT INTO `sys_job_log` VALUES ('1281', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:03:30');
INSERT INTO `sys_job_log` VALUES ('1282', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:03:45');
INSERT INTO `sys_job_log` VALUES ('1283', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:04:00');
INSERT INTO `sys_job_log` VALUES ('1284', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:04:15');
INSERT INTO `sys_job_log` VALUES ('1285', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:04:30');
INSERT INTO `sys_job_log` VALUES ('1286', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:04:45');
INSERT INTO `sys_job_log` VALUES ('1287', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:05:00');
INSERT INTO `sys_job_log` VALUES ('1288', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:05:15');
INSERT INTO `sys_job_log` VALUES ('1289', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:05:30');
INSERT INTO `sys_job_log` VALUES ('1290', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:05:45');
INSERT INTO `sys_job_log` VALUES ('1291', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:06:00');
INSERT INTO `sys_job_log` VALUES ('1292', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:06:15');
INSERT INTO `sys_job_log` VALUES ('1293', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:06:30');
INSERT INTO `sys_job_log` VALUES ('1294', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:06:45');
INSERT INTO `sys_job_log` VALUES ('1295', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:07:00');
INSERT INTO `sys_job_log` VALUES ('1296', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:07:15');
INSERT INTO `sys_job_log` VALUES ('1297', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:07:30');
INSERT INTO `sys_job_log` VALUES ('1298', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:07:45');
INSERT INTO `sys_job_log` VALUES ('1299', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:08:00');
INSERT INTO `sys_job_log` VALUES ('1300', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:08:15');
INSERT INTO `sys_job_log` VALUES ('1301', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:08:30');
INSERT INTO `sys_job_log` VALUES ('1302', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:08:45');
INSERT INTO `sys_job_log` VALUES ('1303', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:09:00');
INSERT INTO `sys_job_log` VALUES ('1304', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:09:15');
INSERT INTO `sys_job_log` VALUES ('1305', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:09:30');
INSERT INTO `sys_job_log` VALUES ('1306', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:09:45');
INSERT INTO `sys_job_log` VALUES ('1307', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:10:00');
INSERT INTO `sys_job_log` VALUES ('1308', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:10:15');
INSERT INTO `sys_job_log` VALUES ('1309', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:10:30');
INSERT INTO `sys_job_log` VALUES ('1310', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:10:45');
INSERT INTO `sys_job_log` VALUES ('1311', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:11:00');
INSERT INTO `sys_job_log` VALUES ('1312', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:11:15');
INSERT INTO `sys_job_log` VALUES ('1313', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:11:30');
INSERT INTO `sys_job_log` VALUES ('1314', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:11:45');
INSERT INTO `sys_job_log` VALUES ('1315', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:12:00');
INSERT INTO `sys_job_log` VALUES ('1316', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:12:15');
INSERT INTO `sys_job_log` VALUES ('1317', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:12:30');
INSERT INTO `sys_job_log` VALUES ('1318', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:12:45');
INSERT INTO `sys_job_log` VALUES ('1319', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:13:00');
INSERT INTO `sys_job_log` VALUES ('1320', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:13:15');
INSERT INTO `sys_job_log` VALUES ('1321', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:13:30');
INSERT INTO `sys_job_log` VALUES ('1322', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:13:45');
INSERT INTO `sys_job_log` VALUES ('1323', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:14:00');
INSERT INTO `sys_job_log` VALUES ('1324', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:14:15');
INSERT INTO `sys_job_log` VALUES ('1325', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:14:30');
INSERT INTO `sys_job_log` VALUES ('1326', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:14:45');
INSERT INTO `sys_job_log` VALUES ('1327', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:15:00');
INSERT INTO `sys_job_log` VALUES ('1328', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:15:15');
INSERT INTO `sys_job_log` VALUES ('1329', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:15:30');
INSERT INTO `sys_job_log` VALUES ('1330', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:15:45');
INSERT INTO `sys_job_log` VALUES ('1331', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:16:00');
INSERT INTO `sys_job_log` VALUES ('1332', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:16:15');
INSERT INTO `sys_job_log` VALUES ('1333', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:16:30');
INSERT INTO `sys_job_log` VALUES ('1334', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:16:45');
INSERT INTO `sys_job_log` VALUES ('1335', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:17:00');
INSERT INTO `sys_job_log` VALUES ('1336', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:17:15');
INSERT INTO `sys_job_log` VALUES ('1337', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:17:30');
INSERT INTO `sys_job_log` VALUES ('1338', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:17:45');
INSERT INTO `sys_job_log` VALUES ('1339', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:18:00');
INSERT INTO `sys_job_log` VALUES ('1340', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:18:15');
INSERT INTO `sys_job_log` VALUES ('1341', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:18:30');
INSERT INTO `sys_job_log` VALUES ('1342', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:18:45');
INSERT INTO `sys_job_log` VALUES ('1343', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:19:00');
INSERT INTO `sys_job_log` VALUES ('1344', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:19:15');
INSERT INTO `sys_job_log` VALUES ('1345', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:19:30');
INSERT INTO `sys_job_log` VALUES ('1346', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:19:45');
INSERT INTO `sys_job_log` VALUES ('1347', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:20:00');
INSERT INTO `sys_job_log` VALUES ('1348', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:20:15');
INSERT INTO `sys_job_log` VALUES ('1349', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:20:30');
INSERT INTO `sys_job_log` VALUES ('1350', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:20:45');
INSERT INTO `sys_job_log` VALUES ('1351', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:21:00');
INSERT INTO `sys_job_log` VALUES ('1352', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:21:15');
INSERT INTO `sys_job_log` VALUES ('1353', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:21:30');
INSERT INTO `sys_job_log` VALUES ('1354', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:21:45');
INSERT INTO `sys_job_log` VALUES ('1355', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:22:00');
INSERT INTO `sys_job_log` VALUES ('1356', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:22:15');
INSERT INTO `sys_job_log` VALUES ('1357', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:22:30');
INSERT INTO `sys_job_log` VALUES ('1358', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:22:45');
INSERT INTO `sys_job_log` VALUES ('1359', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:23:00');
INSERT INTO `sys_job_log` VALUES ('1360', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:23:15');
INSERT INTO `sys_job_log` VALUES ('1361', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:23:30');
INSERT INTO `sys_job_log` VALUES ('1362', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:23:45');
INSERT INTO `sys_job_log` VALUES ('1363', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:24:00');
INSERT INTO `sys_job_log` VALUES ('1364', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:24:15');
INSERT INTO `sys_job_log` VALUES ('1365', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:24:30');
INSERT INTO `sys_job_log` VALUES ('1366', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:24:45');
INSERT INTO `sys_job_log` VALUES ('1367', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:25:00');
INSERT INTO `sys_job_log` VALUES ('1368', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:25:15');
INSERT INTO `sys_job_log` VALUES ('1369', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:25:30');
INSERT INTO `sys_job_log` VALUES ('1370', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:25:45');
INSERT INTO `sys_job_log` VALUES ('1371', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:26:00');
INSERT INTO `sys_job_log` VALUES ('1372', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:26:15');
INSERT INTO `sys_job_log` VALUES ('1373', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:26:30');
INSERT INTO `sys_job_log` VALUES ('1374', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:26:45');
INSERT INTO `sys_job_log` VALUES ('1375', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:27:00');
INSERT INTO `sys_job_log` VALUES ('1376', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:27:15');
INSERT INTO `sys_job_log` VALUES ('1377', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:27:30');
INSERT INTO `sys_job_log` VALUES ('1378', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:27:45');
INSERT INTO `sys_job_log` VALUES ('1379', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:28:00');
INSERT INTO `sys_job_log` VALUES ('1380', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:28:15');
INSERT INTO `sys_job_log` VALUES ('1381', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:28:30');
INSERT INTO `sys_job_log` VALUES ('1382', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:28:45');
INSERT INTO `sys_job_log` VALUES ('1383', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:29:00');
INSERT INTO `sys_job_log` VALUES ('1384', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:29:15');
INSERT INTO `sys_job_log` VALUES ('1385', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:29:30');
INSERT INTO `sys_job_log` VALUES ('1386', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:29:45');
INSERT INTO `sys_job_log` VALUES ('1387', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:30:00');
INSERT INTO `sys_job_log` VALUES ('1388', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:30:15');
INSERT INTO `sys_job_log` VALUES ('1389', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:30:30');
INSERT INTO `sys_job_log` VALUES ('1390', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:30:45');
INSERT INTO `sys_job_log` VALUES ('1391', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:31:00');
INSERT INTO `sys_job_log` VALUES ('1392', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:31:15');
INSERT INTO `sys_job_log` VALUES ('1393', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:31:30');
INSERT INTO `sys_job_log` VALUES ('1394', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:31:45');
INSERT INTO `sys_job_log` VALUES ('1395', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:32:00');
INSERT INTO `sys_job_log` VALUES ('1396', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:32:15');
INSERT INTO `sys_job_log` VALUES ('1397', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:32:30');
INSERT INTO `sys_job_log` VALUES ('1398', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:32:45');
INSERT INTO `sys_job_log` VALUES ('1399', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:33:00');
INSERT INTO `sys_job_log` VALUES ('1400', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:33:15');
INSERT INTO `sys_job_log` VALUES ('1401', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:33:30');
INSERT INTO `sys_job_log` VALUES ('1402', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:33:45');
INSERT INTO `sys_job_log` VALUES ('1403', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:34:00');
INSERT INTO `sys_job_log` VALUES ('1404', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:34:15');
INSERT INTO `sys_job_log` VALUES ('1405', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:34:30');
INSERT INTO `sys_job_log` VALUES ('1406', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:34:45');
INSERT INTO `sys_job_log` VALUES ('1407', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:35:00');
INSERT INTO `sys_job_log` VALUES ('1408', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:35:15');
INSERT INTO `sys_job_log` VALUES ('1409', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:35:30');
INSERT INTO `sys_job_log` VALUES ('1410', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:35:45');
INSERT INTO `sys_job_log` VALUES ('1411', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:36:00');
INSERT INTO `sys_job_log` VALUES ('1412', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:36:15');
INSERT INTO `sys_job_log` VALUES ('1413', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:36:30');
INSERT INTO `sys_job_log` VALUES ('1414', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:36:45');
INSERT INTO `sys_job_log` VALUES ('1415', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:37:00');
INSERT INTO `sys_job_log` VALUES ('1416', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:37:15');
INSERT INTO `sys_job_log` VALUES ('1417', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:37:30');
INSERT INTO `sys_job_log` VALUES ('1418', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:37:45');
INSERT INTO `sys_job_log` VALUES ('1419', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:38:00');
INSERT INTO `sys_job_log` VALUES ('1420', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:38:15');
INSERT INTO `sys_job_log` VALUES ('1421', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:38:30');
INSERT INTO `sys_job_log` VALUES ('1422', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:38:45');
INSERT INTO `sys_job_log` VALUES ('1423', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:39:00');
INSERT INTO `sys_job_log` VALUES ('1424', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:39:15');
INSERT INTO `sys_job_log` VALUES ('1425', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:39:30');
INSERT INTO `sys_job_log` VALUES ('1426', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:39:45');
INSERT INTO `sys_job_log` VALUES ('1427', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:40:00');
INSERT INTO `sys_job_log` VALUES ('1428', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:40:15');
INSERT INTO `sys_job_log` VALUES ('1429', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:40:30');
INSERT INTO `sys_job_log` VALUES ('1430', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:40:45');
INSERT INTO `sys_job_log` VALUES ('1431', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:41:00');
INSERT INTO `sys_job_log` VALUES ('1432', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:41:15');
INSERT INTO `sys_job_log` VALUES ('1433', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:41:30');
INSERT INTO `sys_job_log` VALUES ('1434', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:41:45');
INSERT INTO `sys_job_log` VALUES ('1435', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:42:00');
INSERT INTO `sys_job_log` VALUES ('1436', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:42:15');
INSERT INTO `sys_job_log` VALUES ('1437', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:42:30');
INSERT INTO `sys_job_log` VALUES ('1438', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:42:45');
INSERT INTO `sys_job_log` VALUES ('1439', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:43:00');
INSERT INTO `sys_job_log` VALUES ('1440', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:43:15');
INSERT INTO `sys_job_log` VALUES ('1441', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:43:30');
INSERT INTO `sys_job_log` VALUES ('1442', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:43:45');
INSERT INTO `sys_job_log` VALUES ('1443', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:44:00');
INSERT INTO `sys_job_log` VALUES ('1444', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:44:15');
INSERT INTO `sys_job_log` VALUES ('1445', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:44:30');
INSERT INTO `sys_job_log` VALUES ('1446', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:44:45');
INSERT INTO `sys_job_log` VALUES ('1447', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:45:00');
INSERT INTO `sys_job_log` VALUES ('1448', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:45:15');
INSERT INTO `sys_job_log` VALUES ('1449', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:45:30');
INSERT INTO `sys_job_log` VALUES ('1450', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:45:45');
INSERT INTO `sys_job_log` VALUES ('1451', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:46:00');
INSERT INTO `sys_job_log` VALUES ('1452', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:46:15');
INSERT INTO `sys_job_log` VALUES ('1453', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:46:30');
INSERT INTO `sys_job_log` VALUES ('1454', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:46:45');
INSERT INTO `sys_job_log` VALUES ('1455', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:47:00');
INSERT INTO `sys_job_log` VALUES ('1456', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:47:15');
INSERT INTO `sys_job_log` VALUES ('1457', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:47:30');
INSERT INTO `sys_job_log` VALUES ('1458', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:47:45');
INSERT INTO `sys_job_log` VALUES ('1459', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:48:00');
INSERT INTO `sys_job_log` VALUES ('1460', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:48:15');
INSERT INTO `sys_job_log` VALUES ('1461', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:48:30');
INSERT INTO `sys_job_log` VALUES ('1462', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:48:45');
INSERT INTO `sys_job_log` VALUES ('1463', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:49:00');
INSERT INTO `sys_job_log` VALUES ('1464', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:49:15');
INSERT INTO `sys_job_log` VALUES ('1465', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:49:30');
INSERT INTO `sys_job_log` VALUES ('1466', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:49:45');
INSERT INTO `sys_job_log` VALUES ('1467', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:50:00');
INSERT INTO `sys_job_log` VALUES ('1468', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:50:15');
INSERT INTO `sys_job_log` VALUES ('1469', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:50:30');
INSERT INTO `sys_job_log` VALUES ('1470', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:50:45');
INSERT INTO `sys_job_log` VALUES ('1471', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:51:00');
INSERT INTO `sys_job_log` VALUES ('1472', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:51:15');
INSERT INTO `sys_job_log` VALUES ('1473', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:51:30');
INSERT INTO `sys_job_log` VALUES ('1474', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:51:45');
INSERT INTO `sys_job_log` VALUES ('1475', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 20:52:00');
INSERT INTO `sys_job_log` VALUES ('1476', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:52:15');
INSERT INTO `sys_job_log` VALUES ('1477', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:52:30');
INSERT INTO `sys_job_log` VALUES ('1478', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:52:45');
INSERT INTO `sys_job_log` VALUES ('1479', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:53:00');
INSERT INTO `sys_job_log` VALUES ('1480', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:53:15');
INSERT INTO `sys_job_log` VALUES ('1481', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:53:30');
INSERT INTO `sys_job_log` VALUES ('1482', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:53:45');
INSERT INTO `sys_job_log` VALUES ('1483', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:54:00');
INSERT INTO `sys_job_log` VALUES ('1484', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:54:15');
INSERT INTO `sys_job_log` VALUES ('1485', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:54:30');
INSERT INTO `sys_job_log` VALUES ('1486', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:54:45');
INSERT INTO `sys_job_log` VALUES ('1487', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:55:00');
INSERT INTO `sys_job_log` VALUES ('1488', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:55:15');
INSERT INTO `sys_job_log` VALUES ('1489', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:55:30');
INSERT INTO `sys_job_log` VALUES ('1490', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:55:45');
INSERT INTO `sys_job_log` VALUES ('1491', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:56:00');
INSERT INTO `sys_job_log` VALUES ('1492', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:56:15');
INSERT INTO `sys_job_log` VALUES ('1493', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:56:30');
INSERT INTO `sys_job_log` VALUES ('1494', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:56:45');
INSERT INTO `sys_job_log` VALUES ('1495', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:57:00');
INSERT INTO `sys_job_log` VALUES ('1496', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:57:15');
INSERT INTO `sys_job_log` VALUES ('1497', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:57:30');
INSERT INTO `sys_job_log` VALUES ('1498', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:57:45');
INSERT INTO `sys_job_log` VALUES ('1499', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:58:00');
INSERT INTO `sys_job_log` VALUES ('1500', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:58:15');
INSERT INTO `sys_job_log` VALUES ('1501', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:58:30');
INSERT INTO `sys_job_log` VALUES ('1502', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:58:45');
INSERT INTO `sys_job_log` VALUES ('1503', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:59:00');
INSERT INTO `sys_job_log` VALUES ('1504', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:59:15');
INSERT INTO `sys_job_log` VALUES ('1505', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:59:30');
INSERT INTO `sys_job_log` VALUES ('1506', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 20:59:45');
INSERT INTO `sys_job_log` VALUES ('1507', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:00:00');
INSERT INTO `sys_job_log` VALUES ('1508', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:00:15');
INSERT INTO `sys_job_log` VALUES ('1509', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:00:30');
INSERT INTO `sys_job_log` VALUES ('1510', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:00:45');
INSERT INTO `sys_job_log` VALUES ('1511', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:01:00');
INSERT INTO `sys_job_log` VALUES ('1512', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:01:15');
INSERT INTO `sys_job_log` VALUES ('1513', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:01:30');
INSERT INTO `sys_job_log` VALUES ('1514', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:01:45');
INSERT INTO `sys_job_log` VALUES ('1515', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:02:00');
INSERT INTO `sys_job_log` VALUES ('1516', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:02:15');
INSERT INTO `sys_job_log` VALUES ('1517', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:02:30');
INSERT INTO `sys_job_log` VALUES ('1518', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:02:45');
INSERT INTO `sys_job_log` VALUES ('1519', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:03:00');
INSERT INTO `sys_job_log` VALUES ('1520', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:03:15');
INSERT INTO `sys_job_log` VALUES ('1521', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:03:30');
INSERT INTO `sys_job_log` VALUES ('1522', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:03:45');
INSERT INTO `sys_job_log` VALUES ('1523', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:04:00');
INSERT INTO `sys_job_log` VALUES ('1524', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:04:15');
INSERT INTO `sys_job_log` VALUES ('1525', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:04:30');
INSERT INTO `sys_job_log` VALUES ('1526', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:04:45');
INSERT INTO `sys_job_log` VALUES ('1527', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:05:00');
INSERT INTO `sys_job_log` VALUES ('1528', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:05:15');
INSERT INTO `sys_job_log` VALUES ('1529', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:05:30');
INSERT INTO `sys_job_log` VALUES ('1530', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:05:45');
INSERT INTO `sys_job_log` VALUES ('1531', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:06:00');
INSERT INTO `sys_job_log` VALUES ('1532', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:06:15');
INSERT INTO `sys_job_log` VALUES ('1533', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:06:30');
INSERT INTO `sys_job_log` VALUES ('1534', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:06:45');
INSERT INTO `sys_job_log` VALUES ('1535', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:07:00');
INSERT INTO `sys_job_log` VALUES ('1536', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:07:15');
INSERT INTO `sys_job_log` VALUES ('1537', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:07:30');
INSERT INTO `sys_job_log` VALUES ('1538', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:07:45');
INSERT INTO `sys_job_log` VALUES ('1539', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:08:00');
INSERT INTO `sys_job_log` VALUES ('1540', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:08:15');
INSERT INTO `sys_job_log` VALUES ('1541', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:08:30');
INSERT INTO `sys_job_log` VALUES ('1542', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:08:45');
INSERT INTO `sys_job_log` VALUES ('1543', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:09:00');
INSERT INTO `sys_job_log` VALUES ('1544', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:09:15');
INSERT INTO `sys_job_log` VALUES ('1545', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:09:30');
INSERT INTO `sys_job_log` VALUES ('1546', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:09:45');
INSERT INTO `sys_job_log` VALUES ('1547', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:10:00');
INSERT INTO `sys_job_log` VALUES ('1548', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:10:15');
INSERT INTO `sys_job_log` VALUES ('1549', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:10:30');
INSERT INTO `sys_job_log` VALUES ('1550', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:10:45');
INSERT INTO `sys_job_log` VALUES ('1551', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:11:00');
INSERT INTO `sys_job_log` VALUES ('1552', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:11:15');
INSERT INTO `sys_job_log` VALUES ('1553', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:11:30');
INSERT INTO `sys_job_log` VALUES ('1554', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:11:45');
INSERT INTO `sys_job_log` VALUES ('1555', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:12:00');
INSERT INTO `sys_job_log` VALUES ('1556', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:12:15');
INSERT INTO `sys_job_log` VALUES ('1557', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:12:30');
INSERT INTO `sys_job_log` VALUES ('1558', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:12:45');
INSERT INTO `sys_job_log` VALUES ('1559', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:13:00');
INSERT INTO `sys_job_log` VALUES ('1560', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:13:15');
INSERT INTO `sys_job_log` VALUES ('1561', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:13:30');
INSERT INTO `sys_job_log` VALUES ('1562', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:13:45');
INSERT INTO `sys_job_log` VALUES ('1563', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:14:00');
INSERT INTO `sys_job_log` VALUES ('1564', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:14:15');
INSERT INTO `sys_job_log` VALUES ('1565', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:14:30');
INSERT INTO `sys_job_log` VALUES ('1566', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:14:45');
INSERT INTO `sys_job_log` VALUES ('1567', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:15:00');
INSERT INTO `sys_job_log` VALUES ('1568', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:15:15');
INSERT INTO `sys_job_log` VALUES ('1569', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:15:30');
INSERT INTO `sys_job_log` VALUES ('1570', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:15:45');
INSERT INTO `sys_job_log` VALUES ('1571', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:16:00');
INSERT INTO `sys_job_log` VALUES ('1572', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:16:15');
INSERT INTO `sys_job_log` VALUES ('1573', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:16:30');
INSERT INTO `sys_job_log` VALUES ('1574', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:16:45');
INSERT INTO `sys_job_log` VALUES ('1575', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:17:00');
INSERT INTO `sys_job_log` VALUES ('1576', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:17:15');
INSERT INTO `sys_job_log` VALUES ('1577', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:17:30');
INSERT INTO `sys_job_log` VALUES ('1578', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:17:45');
INSERT INTO `sys_job_log` VALUES ('1579', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:18:00');
INSERT INTO `sys_job_log` VALUES ('1580', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:18:15');
INSERT INTO `sys_job_log` VALUES ('1581', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:18:30');
INSERT INTO `sys_job_log` VALUES ('1582', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:18:45');
INSERT INTO `sys_job_log` VALUES ('1583', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:19:00');
INSERT INTO `sys_job_log` VALUES ('1584', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:19:15');
INSERT INTO `sys_job_log` VALUES ('1585', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:19:30');
INSERT INTO `sys_job_log` VALUES ('1586', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:19:45');
INSERT INTO `sys_job_log` VALUES ('1587', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:20:00');
INSERT INTO `sys_job_log` VALUES ('1588', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:20:15');
INSERT INTO `sys_job_log` VALUES ('1589', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:20:30');
INSERT INTO `sys_job_log` VALUES ('1590', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:20:45');
INSERT INTO `sys_job_log` VALUES ('1591', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:21:00');
INSERT INTO `sys_job_log` VALUES ('1592', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:21:15');
INSERT INTO `sys_job_log` VALUES ('1593', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:21:30');
INSERT INTO `sys_job_log` VALUES ('1594', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:21:45');
INSERT INTO `sys_job_log` VALUES ('1595', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:22:00');
INSERT INTO `sys_job_log` VALUES ('1596', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:22:15');
INSERT INTO `sys_job_log` VALUES ('1597', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:22:30');
INSERT INTO `sys_job_log` VALUES ('1598', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:22:45');
INSERT INTO `sys_job_log` VALUES ('1599', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:23:00');
INSERT INTO `sys_job_log` VALUES ('1600', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:23:15');
INSERT INTO `sys_job_log` VALUES ('1601', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:23:30');
INSERT INTO `sys_job_log` VALUES ('1602', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:23:45');
INSERT INTO `sys_job_log` VALUES ('1603', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:24:00');
INSERT INTO `sys_job_log` VALUES ('1604', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:24:15');
INSERT INTO `sys_job_log` VALUES ('1605', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:24:30');
INSERT INTO `sys_job_log` VALUES ('1606', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:24:45');
INSERT INTO `sys_job_log` VALUES ('1607', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:25:00');
INSERT INTO `sys_job_log` VALUES ('1608', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:25:15');
INSERT INTO `sys_job_log` VALUES ('1609', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:25:30');
INSERT INTO `sys_job_log` VALUES ('1610', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:25:45');
INSERT INTO `sys_job_log` VALUES ('1611', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:26:00');
INSERT INTO `sys_job_log` VALUES ('1612', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:26:15');
INSERT INTO `sys_job_log` VALUES ('1613', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:26:30');
INSERT INTO `sys_job_log` VALUES ('1614', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:26:45');
INSERT INTO `sys_job_log` VALUES ('1615', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:27:00');
INSERT INTO `sys_job_log` VALUES ('1616', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:27:15');
INSERT INTO `sys_job_log` VALUES ('1617', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:27:30');
INSERT INTO `sys_job_log` VALUES ('1618', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:27:45');
INSERT INTO `sys_job_log` VALUES ('1619', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:28:00');
INSERT INTO `sys_job_log` VALUES ('1620', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:28:15');
INSERT INTO `sys_job_log` VALUES ('1621', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:28:30');
INSERT INTO `sys_job_log` VALUES ('1622', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:28:45');
INSERT INTO `sys_job_log` VALUES ('1623', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:29:00');
INSERT INTO `sys_job_log` VALUES ('1624', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:29:15');
INSERT INTO `sys_job_log` VALUES ('1625', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:29:30');
INSERT INTO `sys_job_log` VALUES ('1626', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:29:45');
INSERT INTO `sys_job_log` VALUES ('1627', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:30:00');
INSERT INTO `sys_job_log` VALUES ('1628', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:30:15');
INSERT INTO `sys_job_log` VALUES ('1629', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:30:30');
INSERT INTO `sys_job_log` VALUES ('1630', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:30:45');
INSERT INTO `sys_job_log` VALUES ('1631', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:31:00');
INSERT INTO `sys_job_log` VALUES ('1632', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:31:15');
INSERT INTO `sys_job_log` VALUES ('1633', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:31:30');
INSERT INTO `sys_job_log` VALUES ('1634', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:31:45');
INSERT INTO `sys_job_log` VALUES ('1635', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:32:00');
INSERT INTO `sys_job_log` VALUES ('1636', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:32:15');
INSERT INTO `sys_job_log` VALUES ('1637', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:32:30');
INSERT INTO `sys_job_log` VALUES ('1638', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:32:45');
INSERT INTO `sys_job_log` VALUES ('1639', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:33:00');
INSERT INTO `sys_job_log` VALUES ('1640', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:33:15');
INSERT INTO `sys_job_log` VALUES ('1641', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:33:30');
INSERT INTO `sys_job_log` VALUES ('1642', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:33:45');
INSERT INTO `sys_job_log` VALUES ('1643', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:34:00');
INSERT INTO `sys_job_log` VALUES ('1644', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:34:15');
INSERT INTO `sys_job_log` VALUES ('1645', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:34:30');
INSERT INTO `sys_job_log` VALUES ('1646', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:34:45');
INSERT INTO `sys_job_log` VALUES ('1647', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:35:00');
INSERT INTO `sys_job_log` VALUES ('1648', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:35:15');
INSERT INTO `sys_job_log` VALUES ('1649', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:35:30');
INSERT INTO `sys_job_log` VALUES ('1650', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:35:45');
INSERT INTO `sys_job_log` VALUES ('1651', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:36:00');
INSERT INTO `sys_job_log` VALUES ('1652', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:36:15');
INSERT INTO `sys_job_log` VALUES ('1653', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:36:30');
INSERT INTO `sys_job_log` VALUES ('1654', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:36:45');
INSERT INTO `sys_job_log` VALUES ('1655', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:37:00');
INSERT INTO `sys_job_log` VALUES ('1656', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:37:15');
INSERT INTO `sys_job_log` VALUES ('1657', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:37:30');
INSERT INTO `sys_job_log` VALUES ('1658', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:37:45');
INSERT INTO `sys_job_log` VALUES ('1659', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:38:00');
INSERT INTO `sys_job_log` VALUES ('1660', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:38:15');
INSERT INTO `sys_job_log` VALUES ('1661', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:38:30');
INSERT INTO `sys_job_log` VALUES ('1662', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:38:45');
INSERT INTO `sys_job_log` VALUES ('1663', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:39:00');
INSERT INTO `sys_job_log` VALUES ('1664', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:39:15');
INSERT INTO `sys_job_log` VALUES ('1665', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:39:30');
INSERT INTO `sys_job_log` VALUES ('1666', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:39:45');
INSERT INTO `sys_job_log` VALUES ('1667', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:40:00');
INSERT INTO `sys_job_log` VALUES ('1668', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:40:15');
INSERT INTO `sys_job_log` VALUES ('1669', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:40:30');
INSERT INTO `sys_job_log` VALUES ('1670', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:40:45');
INSERT INTO `sys_job_log` VALUES ('1671', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:41:00');
INSERT INTO `sys_job_log` VALUES ('1672', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:41:15');
INSERT INTO `sys_job_log` VALUES ('1673', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:41:30');
INSERT INTO `sys_job_log` VALUES ('1674', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:41:45');
INSERT INTO `sys_job_log` VALUES ('1675', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:42:00');
INSERT INTO `sys_job_log` VALUES ('1676', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:42:15');
INSERT INTO `sys_job_log` VALUES ('1677', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:42:30');
INSERT INTO `sys_job_log` VALUES ('1678', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:42:45');
INSERT INTO `sys_job_log` VALUES ('1679', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:43:00');
INSERT INTO `sys_job_log` VALUES ('1680', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:43:15');
INSERT INTO `sys_job_log` VALUES ('1681', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:43:30');
INSERT INTO `sys_job_log` VALUES ('1682', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:43:45');
INSERT INTO `sys_job_log` VALUES ('1683', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:44:00');
INSERT INTO `sys_job_log` VALUES ('1684', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:44:15');
INSERT INTO `sys_job_log` VALUES ('1685', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:44:30');
INSERT INTO `sys_job_log` VALUES ('1686', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:44:45');
INSERT INTO `sys_job_log` VALUES ('1687', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:45:00');
INSERT INTO `sys_job_log` VALUES ('1688', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:45:15');
INSERT INTO `sys_job_log` VALUES ('1689', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:45:30');
INSERT INTO `sys_job_log` VALUES ('1690', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:45:45');
INSERT INTO `sys_job_log` VALUES ('1691', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:46:00');
INSERT INTO `sys_job_log` VALUES ('1692', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:46:15');
INSERT INTO `sys_job_log` VALUES ('1693', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:46:30');
INSERT INTO `sys_job_log` VALUES ('1694', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:46:45');
INSERT INTO `sys_job_log` VALUES ('1695', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:47:00');
INSERT INTO `sys_job_log` VALUES ('1696', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:47:15');
INSERT INTO `sys_job_log` VALUES ('1697', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:47:30');
INSERT INTO `sys_job_log` VALUES ('1698', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:47:45');
INSERT INTO `sys_job_log` VALUES ('1699', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:48:00');
INSERT INTO `sys_job_log` VALUES ('1700', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:48:15');
INSERT INTO `sys_job_log` VALUES ('1701', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:48:30');
INSERT INTO `sys_job_log` VALUES ('1702', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:48:45');
INSERT INTO `sys_job_log` VALUES ('1703', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:49:00');
INSERT INTO `sys_job_log` VALUES ('1704', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:49:15');
INSERT INTO `sys_job_log` VALUES ('1705', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:49:30');
INSERT INTO `sys_job_log` VALUES ('1706', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:49:45');
INSERT INTO `sys_job_log` VALUES ('1707', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:50:00');
INSERT INTO `sys_job_log` VALUES ('1708', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:50:15');
INSERT INTO `sys_job_log` VALUES ('1709', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:50:30');
INSERT INTO `sys_job_log` VALUES ('1710', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:50:45');
INSERT INTO `sys_job_log` VALUES ('1711', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:51:00');
INSERT INTO `sys_job_log` VALUES ('1712', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:51:15');
INSERT INTO `sys_job_log` VALUES ('1713', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:51:30');
INSERT INTO `sys_job_log` VALUES ('1714', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:51:45');
INSERT INTO `sys_job_log` VALUES ('1715', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:52:00');
INSERT INTO `sys_job_log` VALUES ('1716', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:52:15');
INSERT INTO `sys_job_log` VALUES ('1717', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:52:30');
INSERT INTO `sys_job_log` VALUES ('1718', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:52:45');
INSERT INTO `sys_job_log` VALUES ('1719', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:53:00');
INSERT INTO `sys_job_log` VALUES ('1720', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:53:15');
INSERT INTO `sys_job_log` VALUES ('1721', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:53:30');
INSERT INTO `sys_job_log` VALUES ('1722', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:53:45');
INSERT INTO `sys_job_log` VALUES ('1723', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:54:00');
INSERT INTO `sys_job_log` VALUES ('1724', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:54:15');
INSERT INTO `sys_job_log` VALUES ('1725', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:54:30');
INSERT INTO `sys_job_log` VALUES ('1726', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:54:45');
INSERT INTO `sys_job_log` VALUES ('1727', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:55:00');
INSERT INTO `sys_job_log` VALUES ('1728', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:55:15');
INSERT INTO `sys_job_log` VALUES ('1729', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:55:30');
INSERT INTO `sys_job_log` VALUES ('1730', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:55:45');
INSERT INTO `sys_job_log` VALUES ('1731', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:56:00');
INSERT INTO `sys_job_log` VALUES ('1732', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:56:15');
INSERT INTO `sys_job_log` VALUES ('1733', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:56:30');
INSERT INTO `sys_job_log` VALUES ('1734', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:56:45');
INSERT INTO `sys_job_log` VALUES ('1735', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:57:00');
INSERT INTO `sys_job_log` VALUES ('1736', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:57:15');
INSERT INTO `sys_job_log` VALUES ('1737', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:57:30');
INSERT INTO `sys_job_log` VALUES ('1738', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:57:45');
INSERT INTO `sys_job_log` VALUES ('1739', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 21:58:00');
INSERT INTO `sys_job_log` VALUES ('1740', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:58:15');
INSERT INTO `sys_job_log` VALUES ('1741', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:58:30');
INSERT INTO `sys_job_log` VALUES ('1742', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:58:45');
INSERT INTO `sys_job_log` VALUES ('1743', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:59:00');
INSERT INTO `sys_job_log` VALUES ('1744', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:59:15');
INSERT INTO `sys_job_log` VALUES ('1745', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:59:30');
INSERT INTO `sys_job_log` VALUES ('1746', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 21:59:45');
INSERT INTO `sys_job_log` VALUES ('1747', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:00:00');
INSERT INTO `sys_job_log` VALUES ('1748', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:00:15');
INSERT INTO `sys_job_log` VALUES ('1749', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:00:30');
INSERT INTO `sys_job_log` VALUES ('1750', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:00:45');
INSERT INTO `sys_job_log` VALUES ('1751', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:01:00');
INSERT INTO `sys_job_log` VALUES ('1752', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:01:15');
INSERT INTO `sys_job_log` VALUES ('1753', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:01:30');
INSERT INTO `sys_job_log` VALUES ('1754', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:01:45');
INSERT INTO `sys_job_log` VALUES ('1755', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:02:00');
INSERT INTO `sys_job_log` VALUES ('1756', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:02:15');
INSERT INTO `sys_job_log` VALUES ('1757', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:02:30');
INSERT INTO `sys_job_log` VALUES ('1758', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:02:45');
INSERT INTO `sys_job_log` VALUES ('1759', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 22:03:00');
INSERT INTO `sys_job_log` VALUES ('1760', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:03:15');
INSERT INTO `sys_job_log` VALUES ('1761', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:03:30');
INSERT INTO `sys_job_log` VALUES ('1762', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:03:45');
INSERT INTO `sys_job_log` VALUES ('1763', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:04:00');
INSERT INTO `sys_job_log` VALUES ('1764', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:04:15');
INSERT INTO `sys_job_log` VALUES ('1765', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:04:30');
INSERT INTO `sys_job_log` VALUES ('1766', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 22:04:45');
INSERT INTO `sys_job_log` VALUES ('1767', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:05:00');
INSERT INTO `sys_job_log` VALUES ('1768', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:05:15');
INSERT INTO `sys_job_log` VALUES ('1769', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:05:30');
INSERT INTO `sys_job_log` VALUES ('1770', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:05:45');
INSERT INTO `sys_job_log` VALUES ('1771', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:06:00');
INSERT INTO `sys_job_log` VALUES ('1772', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:06:15');
INSERT INTO `sys_job_log` VALUES ('1773', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:06:30');
INSERT INTO `sys_job_log` VALUES ('1774', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:06:45');
INSERT INTO `sys_job_log` VALUES ('1775', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:07:00');
INSERT INTO `sys_job_log` VALUES ('1776', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:07:15');
INSERT INTO `sys_job_log` VALUES ('1777', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:07:30');
INSERT INTO `sys_job_log` VALUES ('1778', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:07:45');
INSERT INTO `sys_job_log` VALUES ('1779', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:08:00');
INSERT INTO `sys_job_log` VALUES ('1780', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:08:15');
INSERT INTO `sys_job_log` VALUES ('1781', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:08:30');
INSERT INTO `sys_job_log` VALUES ('1782', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 22:08:45');
INSERT INTO `sys_job_log` VALUES ('1783', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:09:00');
INSERT INTO `sys_job_log` VALUES ('1784', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:09:15');
INSERT INTO `sys_job_log` VALUES ('1785', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:09:30');
INSERT INTO `sys_job_log` VALUES ('1786', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:09:45');
INSERT INTO `sys_job_log` VALUES ('1787', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:10:00');
INSERT INTO `sys_job_log` VALUES ('1788', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:10:15');
INSERT INTO `sys_job_log` VALUES ('1789', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:10:30');
INSERT INTO `sys_job_log` VALUES ('1790', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:10:45');
INSERT INTO `sys_job_log` VALUES ('1791', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:11:00');
INSERT INTO `sys_job_log` VALUES ('1792', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:11:15');
INSERT INTO `sys_job_log` VALUES ('1793', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:11:30');
INSERT INTO `sys_job_log` VALUES ('1794', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:11:45');
INSERT INTO `sys_job_log` VALUES ('1795', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:12:00');
INSERT INTO `sys_job_log` VALUES ('1796', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:12:15');
INSERT INTO `sys_job_log` VALUES ('1797', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:12:30');
INSERT INTO `sys_job_log` VALUES ('1798', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:12:45');
INSERT INTO `sys_job_log` VALUES ('1799', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:13:00');
INSERT INTO `sys_job_log` VALUES ('1800', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:13:15');
INSERT INTO `sys_job_log` VALUES ('1801', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:13:30');
INSERT INTO `sys_job_log` VALUES ('1802', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:13:45');
INSERT INTO `sys_job_log` VALUES ('1803', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:14:00');
INSERT INTO `sys_job_log` VALUES ('1804', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:14:15');
INSERT INTO `sys_job_log` VALUES ('1805', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:14:30');
INSERT INTO `sys_job_log` VALUES ('1806', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:14:45');
INSERT INTO `sys_job_log` VALUES ('1807', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:15:00');
INSERT INTO `sys_job_log` VALUES ('1808', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:15:15');
INSERT INTO `sys_job_log` VALUES ('1809', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:15:30');
INSERT INTO `sys_job_log` VALUES ('1810', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:15:45');
INSERT INTO `sys_job_log` VALUES ('1811', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:16:00');
INSERT INTO `sys_job_log` VALUES ('1812', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:16:15');
INSERT INTO `sys_job_log` VALUES ('1813', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:16:30');
INSERT INTO `sys_job_log` VALUES ('1814', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:16:45');
INSERT INTO `sys_job_log` VALUES ('1815', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:17:00');
INSERT INTO `sys_job_log` VALUES ('1816', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:17:15');
INSERT INTO `sys_job_log` VALUES ('1817', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:17:30');
INSERT INTO `sys_job_log` VALUES ('1818', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:17:45');
INSERT INTO `sys_job_log` VALUES ('1819', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:18:00');
INSERT INTO `sys_job_log` VALUES ('1820', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:18:15');
INSERT INTO `sys_job_log` VALUES ('1821', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:18:30');
INSERT INTO `sys_job_log` VALUES ('1822', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:18:45');
INSERT INTO `sys_job_log` VALUES ('1823', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:19:00');
INSERT INTO `sys_job_log` VALUES ('1824', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:19:15');
INSERT INTO `sys_job_log` VALUES ('1825', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:19:30');
INSERT INTO `sys_job_log` VALUES ('1826', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:19:45');
INSERT INTO `sys_job_log` VALUES ('1827', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:20:00');
INSERT INTO `sys_job_log` VALUES ('1828', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:20:15');
INSERT INTO `sys_job_log` VALUES ('1829', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:20:30');
INSERT INTO `sys_job_log` VALUES ('1830', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:20:45');
INSERT INTO `sys_job_log` VALUES ('1831', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:21:00');
INSERT INTO `sys_job_log` VALUES ('1832', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:21:15');
INSERT INTO `sys_job_log` VALUES ('1833', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:21:30');
INSERT INTO `sys_job_log` VALUES ('1834', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:21:45');
INSERT INTO `sys_job_log` VALUES ('1835', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:22:00');
INSERT INTO `sys_job_log` VALUES ('1836', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:22:15');
INSERT INTO `sys_job_log` VALUES ('1837', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:22:30');
INSERT INTO `sys_job_log` VALUES ('1838', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:22:45');
INSERT INTO `sys_job_log` VALUES ('1839', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:23:00');
INSERT INTO `sys_job_log` VALUES ('1840', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:23:15');
INSERT INTO `sys_job_log` VALUES ('1841', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:23:30');
INSERT INTO `sys_job_log` VALUES ('1842', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:23:45');
INSERT INTO `sys_job_log` VALUES ('1843', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:24:00');
INSERT INTO `sys_job_log` VALUES ('1844', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:24:15');
INSERT INTO `sys_job_log` VALUES ('1845', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:24:30');
INSERT INTO `sys_job_log` VALUES ('1846', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:24:45');
INSERT INTO `sys_job_log` VALUES ('1847', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:25:00');
INSERT INTO `sys_job_log` VALUES ('1848', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:25:15');
INSERT INTO `sys_job_log` VALUES ('1849', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:25:30');
INSERT INTO `sys_job_log` VALUES ('1850', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:25:45');
INSERT INTO `sys_job_log` VALUES ('1851', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:26:00');
INSERT INTO `sys_job_log` VALUES ('1852', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:26:15');
INSERT INTO `sys_job_log` VALUES ('1853', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:26:30');
INSERT INTO `sys_job_log` VALUES ('1854', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:26:45');
INSERT INTO `sys_job_log` VALUES ('1855', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:27:00');
INSERT INTO `sys_job_log` VALUES ('1856', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:27:15');
INSERT INTO `sys_job_log` VALUES ('1857', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:27:30');
INSERT INTO `sys_job_log` VALUES ('1858', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:27:45');
INSERT INTO `sys_job_log` VALUES ('1859', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:28:00');
INSERT INTO `sys_job_log` VALUES ('1860', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:28:15');
INSERT INTO `sys_job_log` VALUES ('1861', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:28:30');
INSERT INTO `sys_job_log` VALUES ('1862', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:28:45');
INSERT INTO `sys_job_log` VALUES ('1863', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:29:00');
INSERT INTO `sys_job_log` VALUES ('1864', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:29:15');
INSERT INTO `sys_job_log` VALUES ('1865', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:29:30');
INSERT INTO `sys_job_log` VALUES ('1866', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:29:45');
INSERT INTO `sys_job_log` VALUES ('1867', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:30:00');
INSERT INTO `sys_job_log` VALUES ('1868', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:30:15');
INSERT INTO `sys_job_log` VALUES ('1869', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:30:30');
INSERT INTO `sys_job_log` VALUES ('1870', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:30:45');
INSERT INTO `sys_job_log` VALUES ('1871', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:31:00');
INSERT INTO `sys_job_log` VALUES ('1872', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:31:15');
INSERT INTO `sys_job_log` VALUES ('1873', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:31:30');
INSERT INTO `sys_job_log` VALUES ('1874', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:31:45');
INSERT INTO `sys_job_log` VALUES ('1875', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:32:00');
INSERT INTO `sys_job_log` VALUES ('1876', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:32:15');
INSERT INTO `sys_job_log` VALUES ('1877', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:32:30');
INSERT INTO `sys_job_log` VALUES ('1878', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:32:45');
INSERT INTO `sys_job_log` VALUES ('1879', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:33:00');
INSERT INTO `sys_job_log` VALUES ('1880', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:33:15');
INSERT INTO `sys_job_log` VALUES ('1881', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:33:30');
INSERT INTO `sys_job_log` VALUES ('1882', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:33:45');
INSERT INTO `sys_job_log` VALUES ('1883', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:34:00');
INSERT INTO `sys_job_log` VALUES ('1884', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 22:34:15');
INSERT INTO `sys_job_log` VALUES ('1885', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:34:30');
INSERT INTO `sys_job_log` VALUES ('1886', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:34:45');
INSERT INTO `sys_job_log` VALUES ('1887', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:35:00');
INSERT INTO `sys_job_log` VALUES ('1888', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 22:35:15');
INSERT INTO `sys_job_log` VALUES ('1889', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:35:30');
INSERT INTO `sys_job_log` VALUES ('1890', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:35:45');
INSERT INTO `sys_job_log` VALUES ('1891', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:36:00');
INSERT INTO `sys_job_log` VALUES ('1892', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:36:15');
INSERT INTO `sys_job_log` VALUES ('1893', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:36:30');
INSERT INTO `sys_job_log` VALUES ('1894', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:36:45');
INSERT INTO `sys_job_log` VALUES ('1895', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:37:00');
INSERT INTO `sys_job_log` VALUES ('1896', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:37:15');
INSERT INTO `sys_job_log` VALUES ('1897', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:37:30');
INSERT INTO `sys_job_log` VALUES ('1898', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:37:45');
INSERT INTO `sys_job_log` VALUES ('1899', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:38:00');
INSERT INTO `sys_job_log` VALUES ('1900', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:38:15');
INSERT INTO `sys_job_log` VALUES ('1901', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:38:30');
INSERT INTO `sys_job_log` VALUES ('1902', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:38:45');
INSERT INTO `sys_job_log` VALUES ('1903', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:39:00');
INSERT INTO `sys_job_log` VALUES ('1904', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:39:15');
INSERT INTO `sys_job_log` VALUES ('1905', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:39:30');
INSERT INTO `sys_job_log` VALUES ('1906', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:39:45');
INSERT INTO `sys_job_log` VALUES ('1907', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:40:00');
INSERT INTO `sys_job_log` VALUES ('1908', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:40:15');
INSERT INTO `sys_job_log` VALUES ('1909', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:40:30');
INSERT INTO `sys_job_log` VALUES ('1910', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:40:45');
INSERT INTO `sys_job_log` VALUES ('1911', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:41:00');
INSERT INTO `sys_job_log` VALUES ('1912', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:41:15');
INSERT INTO `sys_job_log` VALUES ('1913', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:41:30');
INSERT INTO `sys_job_log` VALUES ('1914', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:41:45');
INSERT INTO `sys_job_log` VALUES ('1915', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:42:00');
INSERT INTO `sys_job_log` VALUES ('1916', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:42:15');
INSERT INTO `sys_job_log` VALUES ('1917', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:42:30');
INSERT INTO `sys_job_log` VALUES ('1918', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:42:45');
INSERT INTO `sys_job_log` VALUES ('1919', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:43:00');
INSERT INTO `sys_job_log` VALUES ('1920', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:43:15');
INSERT INTO `sys_job_log` VALUES ('1921', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:43:30');
INSERT INTO `sys_job_log` VALUES ('1922', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:43:45');
INSERT INTO `sys_job_log` VALUES ('1923', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:44:00');
INSERT INTO `sys_job_log` VALUES ('1924', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:44:15');
INSERT INTO `sys_job_log` VALUES ('1925', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:44:30');
INSERT INTO `sys_job_log` VALUES ('1926', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:44:45');
INSERT INTO `sys_job_log` VALUES ('1927', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:45:00');
INSERT INTO `sys_job_log` VALUES ('1928', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:45:15');
INSERT INTO `sys_job_log` VALUES ('1929', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:45:30');
INSERT INTO `sys_job_log` VALUES ('1930', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:45:45');
INSERT INTO `sys_job_log` VALUES ('1931', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:46:00');
INSERT INTO `sys_job_log` VALUES ('1932', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:46:15');
INSERT INTO `sys_job_log` VALUES ('1933', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:46:30');
INSERT INTO `sys_job_log` VALUES ('1934', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:46:45');
INSERT INTO `sys_job_log` VALUES ('1935', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:47:00');
INSERT INTO `sys_job_log` VALUES ('1936', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 22:47:15');
INSERT INTO `sys_job_log` VALUES ('1937', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:47:30');
INSERT INTO `sys_job_log` VALUES ('1938', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:47:45');
INSERT INTO `sys_job_log` VALUES ('1939', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:48:00');
INSERT INTO `sys_job_log` VALUES ('1940', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:48:15');
INSERT INTO `sys_job_log` VALUES ('1941', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:48:30');
INSERT INTO `sys_job_log` VALUES ('1942', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:48:45');
INSERT INTO `sys_job_log` VALUES ('1943', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:49:00');
INSERT INTO `sys_job_log` VALUES ('1944', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:49:15');
INSERT INTO `sys_job_log` VALUES ('1945', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:49:30');
INSERT INTO `sys_job_log` VALUES ('1946', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:49:45');
INSERT INTO `sys_job_log` VALUES ('1947', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:50:00');
INSERT INTO `sys_job_log` VALUES ('1948', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:50:15');
INSERT INTO `sys_job_log` VALUES ('1949', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:50:30');
INSERT INTO `sys_job_log` VALUES ('1950', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:50:45');
INSERT INTO `sys_job_log` VALUES ('1951', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:51:00');
INSERT INTO `sys_job_log` VALUES ('1952', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:51:15');
INSERT INTO `sys_job_log` VALUES ('1953', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:51:30');
INSERT INTO `sys_job_log` VALUES ('1954', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:51:45');
INSERT INTO `sys_job_log` VALUES ('1955', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:52:00');
INSERT INTO `sys_job_log` VALUES ('1956', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:52:15');
INSERT INTO `sys_job_log` VALUES ('1957', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:52:30');
INSERT INTO `sys_job_log` VALUES ('1958', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:52:45');
INSERT INTO `sys_job_log` VALUES ('1959', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:53:00');
INSERT INTO `sys_job_log` VALUES ('1960', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:53:15');
INSERT INTO `sys_job_log` VALUES ('1961', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:53:30');
INSERT INTO `sys_job_log` VALUES ('1962', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:53:45');
INSERT INTO `sys_job_log` VALUES ('1963', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:54:00');
INSERT INTO `sys_job_log` VALUES ('1964', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:54:15');
INSERT INTO `sys_job_log` VALUES ('1965', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:54:30');
INSERT INTO `sys_job_log` VALUES ('1966', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:54:45');
INSERT INTO `sys_job_log` VALUES ('1967', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:55:00');
INSERT INTO `sys_job_log` VALUES ('1968', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:55:15');
INSERT INTO `sys_job_log` VALUES ('1969', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:55:30');
INSERT INTO `sys_job_log` VALUES ('1970', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:55:45');
INSERT INTO `sys_job_log` VALUES ('1971', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:56:00');
INSERT INTO `sys_job_log` VALUES ('1972', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:56:15');
INSERT INTO `sys_job_log` VALUES ('1973', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:56:30');
INSERT INTO `sys_job_log` VALUES ('1974', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:56:45');
INSERT INTO `sys_job_log` VALUES ('1975', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:57:00');
INSERT INTO `sys_job_log` VALUES ('1976', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:57:15');
INSERT INTO `sys_job_log` VALUES ('1977', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:57:30');
INSERT INTO `sys_job_log` VALUES ('1978', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:57:45');
INSERT INTO `sys_job_log` VALUES ('1979', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:58:00');
INSERT INTO `sys_job_log` VALUES ('1980', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:58:15');
INSERT INTO `sys_job_log` VALUES ('1981', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:58:30');
INSERT INTO `sys_job_log` VALUES ('1982', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:58:45');
INSERT INTO `sys_job_log` VALUES ('1983', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:59:00');
INSERT INTO `sys_job_log` VALUES ('1984', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:59:15');
INSERT INTO `sys_job_log` VALUES ('1985', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:59:30');
INSERT INTO `sys_job_log` VALUES ('1986', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 22:59:45');
INSERT INTO `sys_job_log` VALUES ('1987', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:00:00');
INSERT INTO `sys_job_log` VALUES ('1988', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:00:15');
INSERT INTO `sys_job_log` VALUES ('1989', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:00:30');
INSERT INTO `sys_job_log` VALUES ('1990', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:00:45');
INSERT INTO `sys_job_log` VALUES ('1991', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:01:00');
INSERT INTO `sys_job_log` VALUES ('1992', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:01:15');
INSERT INTO `sys_job_log` VALUES ('1993', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:01:30');
INSERT INTO `sys_job_log` VALUES ('1994', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:01:45');
INSERT INTO `sys_job_log` VALUES ('1995', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:02:00');
INSERT INTO `sys_job_log` VALUES ('1996', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:02:15');
INSERT INTO `sys_job_log` VALUES ('1997', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:02:30');
INSERT INTO `sys_job_log` VALUES ('1998', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:02:45');
INSERT INTO `sys_job_log` VALUES ('1999', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:03:00');
INSERT INTO `sys_job_log` VALUES ('2000', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:03:15');
INSERT INTO `sys_job_log` VALUES ('2001', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:03:30');
INSERT INTO `sys_job_log` VALUES ('2002', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:03:45');
INSERT INTO `sys_job_log` VALUES ('2003', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:04:00');
INSERT INTO `sys_job_log` VALUES ('2004', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:04:15');
INSERT INTO `sys_job_log` VALUES ('2005', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:04:30');
INSERT INTO `sys_job_log` VALUES ('2006', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:04:45');
INSERT INTO `sys_job_log` VALUES ('2007', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:05:00');
INSERT INTO `sys_job_log` VALUES ('2008', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:05:15');
INSERT INTO `sys_job_log` VALUES ('2009', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:05:30');
INSERT INTO `sys_job_log` VALUES ('2010', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:05:45');
INSERT INTO `sys_job_log` VALUES ('2011', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:06:00');
INSERT INTO `sys_job_log` VALUES ('2012', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:06:15');
INSERT INTO `sys_job_log` VALUES ('2013', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:06:30');
INSERT INTO `sys_job_log` VALUES ('2014', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:06:45');
INSERT INTO `sys_job_log` VALUES ('2015', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:07:00');
INSERT INTO `sys_job_log` VALUES ('2016', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:07:15');
INSERT INTO `sys_job_log` VALUES ('2017', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:07:30');
INSERT INTO `sys_job_log` VALUES ('2018', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:07:45');
INSERT INTO `sys_job_log` VALUES ('2019', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:08:00');
INSERT INTO `sys_job_log` VALUES ('2020', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:08:15');
INSERT INTO `sys_job_log` VALUES ('2021', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:08:30');
INSERT INTO `sys_job_log` VALUES ('2022', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:08:45');
INSERT INTO `sys_job_log` VALUES ('2023', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:09:00');
INSERT INTO `sys_job_log` VALUES ('2024', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:09:15');
INSERT INTO `sys_job_log` VALUES ('2025', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:09:30');
INSERT INTO `sys_job_log` VALUES ('2026', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:09:45');
INSERT INTO `sys_job_log` VALUES ('2027', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:10:00');
INSERT INTO `sys_job_log` VALUES ('2028', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:10:15');
INSERT INTO `sys_job_log` VALUES ('2029', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:10:30');
INSERT INTO `sys_job_log` VALUES ('2030', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:10:45');
INSERT INTO `sys_job_log` VALUES ('2031', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:11:00');
INSERT INTO `sys_job_log` VALUES ('2032', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:11:15');
INSERT INTO `sys_job_log` VALUES ('2033', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:11:30');
INSERT INTO `sys_job_log` VALUES ('2034', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:11:45');
INSERT INTO `sys_job_log` VALUES ('2035', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:12:00');
INSERT INTO `sys_job_log` VALUES ('2036', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:12:15');
INSERT INTO `sys_job_log` VALUES ('2037', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:12:30');
INSERT INTO `sys_job_log` VALUES ('2038', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:12:45');
INSERT INTO `sys_job_log` VALUES ('2039', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:13:00');
INSERT INTO `sys_job_log` VALUES ('2040', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:13:15');
INSERT INTO `sys_job_log` VALUES ('2041', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:13:30');
INSERT INTO `sys_job_log` VALUES ('2042', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:13:45');
INSERT INTO `sys_job_log` VALUES ('2043', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:14:00');
INSERT INTO `sys_job_log` VALUES ('2044', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:14:15');
INSERT INTO `sys_job_log` VALUES ('2045', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:14:30');
INSERT INTO `sys_job_log` VALUES ('2046', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:14:45');
INSERT INTO `sys_job_log` VALUES ('2047', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:15:00');
INSERT INTO `sys_job_log` VALUES ('2048', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:15:15');
INSERT INTO `sys_job_log` VALUES ('2049', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:15:30');
INSERT INTO `sys_job_log` VALUES ('2050', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:15:45');
INSERT INTO `sys_job_log` VALUES ('2051', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:16:00');
INSERT INTO `sys_job_log` VALUES ('2052', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:16:15');
INSERT INTO `sys_job_log` VALUES ('2053', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:16:30');
INSERT INTO `sys_job_log` VALUES ('2054', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:16:45');
INSERT INTO `sys_job_log` VALUES ('2055', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:17:00');
INSERT INTO `sys_job_log` VALUES ('2056', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:17:15');
INSERT INTO `sys_job_log` VALUES ('2057', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:17:30');
INSERT INTO `sys_job_log` VALUES ('2058', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:17:45');
INSERT INTO `sys_job_log` VALUES ('2059', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:18:00');
INSERT INTO `sys_job_log` VALUES ('2060', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:18:15');
INSERT INTO `sys_job_log` VALUES ('2061', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:18:30');
INSERT INTO `sys_job_log` VALUES ('2062', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:18:45');
INSERT INTO `sys_job_log` VALUES ('2063', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:19:00');
INSERT INTO `sys_job_log` VALUES ('2064', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:19:15');
INSERT INTO `sys_job_log` VALUES ('2065', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:19:30');
INSERT INTO `sys_job_log` VALUES ('2066', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:19:45');
INSERT INTO `sys_job_log` VALUES ('2067', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:20:00');
INSERT INTO `sys_job_log` VALUES ('2068', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:20:15');
INSERT INTO `sys_job_log` VALUES ('2069', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:20:30');
INSERT INTO `sys_job_log` VALUES ('2070', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:20:45');
INSERT INTO `sys_job_log` VALUES ('2071', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:21:00');
INSERT INTO `sys_job_log` VALUES ('2072', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:21:15');
INSERT INTO `sys_job_log` VALUES ('2073', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:21:30');
INSERT INTO `sys_job_log` VALUES ('2074', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:21:45');
INSERT INTO `sys_job_log` VALUES ('2075', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:22:00');
INSERT INTO `sys_job_log` VALUES ('2076', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:22:15');
INSERT INTO `sys_job_log` VALUES ('2077', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:22:30');
INSERT INTO `sys_job_log` VALUES ('2078', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:22:45');
INSERT INTO `sys_job_log` VALUES ('2079', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:23:00');
INSERT INTO `sys_job_log` VALUES ('2080', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:23:15');
INSERT INTO `sys_job_log` VALUES ('2081', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:23:30');
INSERT INTO `sys_job_log` VALUES ('2082', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:23:45');
INSERT INTO `sys_job_log` VALUES ('2083', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:24:00');
INSERT INTO `sys_job_log` VALUES ('2084', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:24:15');
INSERT INTO `sys_job_log` VALUES ('2085', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:24:30');
INSERT INTO `sys_job_log` VALUES ('2086', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:24:45');
INSERT INTO `sys_job_log` VALUES ('2087', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:25:00');
INSERT INTO `sys_job_log` VALUES ('2088', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:25:15');
INSERT INTO `sys_job_log` VALUES ('2089', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:25:30');
INSERT INTO `sys_job_log` VALUES ('2090', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:25:45');
INSERT INTO `sys_job_log` VALUES ('2091', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:26:00');
INSERT INTO `sys_job_log` VALUES ('2092', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:26:15');
INSERT INTO `sys_job_log` VALUES ('2093', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:26:30');
INSERT INTO `sys_job_log` VALUES ('2094', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:26:45');
INSERT INTO `sys_job_log` VALUES ('2095', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:27:00');
INSERT INTO `sys_job_log` VALUES ('2096', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:27:15');
INSERT INTO `sys_job_log` VALUES ('2097', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:27:30');
INSERT INTO `sys_job_log` VALUES ('2098', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:27:45');
INSERT INTO `sys_job_log` VALUES ('2099', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:28:00');
INSERT INTO `sys_job_log` VALUES ('2100', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:28:15');
INSERT INTO `sys_job_log` VALUES ('2101', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:28:30');
INSERT INTO `sys_job_log` VALUES ('2102', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:28:45');
INSERT INTO `sys_job_log` VALUES ('2103', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:29:00');
INSERT INTO `sys_job_log` VALUES ('2104', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:29:15');
INSERT INTO `sys_job_log` VALUES ('2105', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:29:30');
INSERT INTO `sys_job_log` VALUES ('2106', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:29:45');
INSERT INTO `sys_job_log` VALUES ('2107', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:30:00');
INSERT INTO `sys_job_log` VALUES ('2108', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:30:15');
INSERT INTO `sys_job_log` VALUES ('2109', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:30:30');
INSERT INTO `sys_job_log` VALUES ('2110', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:30:45');
INSERT INTO `sys_job_log` VALUES ('2111', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:31:00');
INSERT INTO `sys_job_log` VALUES ('2112', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:31:15');
INSERT INTO `sys_job_log` VALUES ('2113', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:31:30');
INSERT INTO `sys_job_log` VALUES ('2114', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:31:45');
INSERT INTO `sys_job_log` VALUES ('2115', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:32:00');
INSERT INTO `sys_job_log` VALUES ('2116', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:32:15');
INSERT INTO `sys_job_log` VALUES ('2117', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:32:30');
INSERT INTO `sys_job_log` VALUES ('2118', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:32:45');
INSERT INTO `sys_job_log` VALUES ('2119', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:33:00');
INSERT INTO `sys_job_log` VALUES ('2120', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:33:15');
INSERT INTO `sys_job_log` VALUES ('2121', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:33:30');
INSERT INTO `sys_job_log` VALUES ('2122', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:33:45');
INSERT INTO `sys_job_log` VALUES ('2123', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:34:00');
INSERT INTO `sys_job_log` VALUES ('2124', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:34:15');
INSERT INTO `sys_job_log` VALUES ('2125', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:34:30');
INSERT INTO `sys_job_log` VALUES ('2126', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:34:45');
INSERT INTO `sys_job_log` VALUES ('2127', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:35:00');
INSERT INTO `sys_job_log` VALUES ('2128', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:35:15');
INSERT INTO `sys_job_log` VALUES ('2129', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:35:30');
INSERT INTO `sys_job_log` VALUES ('2130', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:35:45');
INSERT INTO `sys_job_log` VALUES ('2131', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:36:00');
INSERT INTO `sys_job_log` VALUES ('2132', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:36:15');
INSERT INTO `sys_job_log` VALUES ('2133', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:36:30');
INSERT INTO `sys_job_log` VALUES ('2134', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:36:45');
INSERT INTO `sys_job_log` VALUES ('2135', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:37:00');
INSERT INTO `sys_job_log` VALUES ('2136', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:37:15');
INSERT INTO `sys_job_log` VALUES ('2137', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:37:30');
INSERT INTO `sys_job_log` VALUES ('2138', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:37:45');
INSERT INTO `sys_job_log` VALUES ('2139', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:38:00');
INSERT INTO `sys_job_log` VALUES ('2140', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:38:15');
INSERT INTO `sys_job_log` VALUES ('2141', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:38:30');
INSERT INTO `sys_job_log` VALUES ('2142', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:38:45');
INSERT INTO `sys_job_log` VALUES ('2143', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:39:00');
INSERT INTO `sys_job_log` VALUES ('2144', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:39:15');
INSERT INTO `sys_job_log` VALUES ('2145', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:39:30');
INSERT INTO `sys_job_log` VALUES ('2146', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:39:45');
INSERT INTO `sys_job_log` VALUES ('2147', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:40:00');
INSERT INTO `sys_job_log` VALUES ('2148', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:40:15');
INSERT INTO `sys_job_log` VALUES ('2149', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:40:30');
INSERT INTO `sys_job_log` VALUES ('2150', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:40:45');
INSERT INTO `sys_job_log` VALUES ('2151', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:41:00');
INSERT INTO `sys_job_log` VALUES ('2152', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:41:15');
INSERT INTO `sys_job_log` VALUES ('2153', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:41:30');
INSERT INTO `sys_job_log` VALUES ('2154', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:41:45');
INSERT INTO `sys_job_log` VALUES ('2155', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:42:00');
INSERT INTO `sys_job_log` VALUES ('2156', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:42:15');
INSERT INTO `sys_job_log` VALUES ('2157', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:42:30');
INSERT INTO `sys_job_log` VALUES ('2158', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:42:45');
INSERT INTO `sys_job_log` VALUES ('2159', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:43:00');
INSERT INTO `sys_job_log` VALUES ('2160', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:43:15');
INSERT INTO `sys_job_log` VALUES ('2161', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:43:30');
INSERT INTO `sys_job_log` VALUES ('2162', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:43:45');
INSERT INTO `sys_job_log` VALUES ('2163', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:44:00');
INSERT INTO `sys_job_log` VALUES ('2164', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:44:15');
INSERT INTO `sys_job_log` VALUES ('2165', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:44:30');
INSERT INTO `sys_job_log` VALUES ('2166', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:44:45');
INSERT INTO `sys_job_log` VALUES ('2167', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:45:00');
INSERT INTO `sys_job_log` VALUES ('2168', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:45:15');
INSERT INTO `sys_job_log` VALUES ('2169', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:45:30');
INSERT INTO `sys_job_log` VALUES ('2170', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:45:45');
INSERT INTO `sys_job_log` VALUES ('2171', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:46:00');
INSERT INTO `sys_job_log` VALUES ('2172', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:46:15');
INSERT INTO `sys_job_log` VALUES ('2173', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:46:30');
INSERT INTO `sys_job_log` VALUES ('2174', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:46:45');
INSERT INTO `sys_job_log` VALUES ('2175', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:47:00');
INSERT INTO `sys_job_log` VALUES ('2176', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:47:15');
INSERT INTO `sys_job_log` VALUES ('2177', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:47:30');
INSERT INTO `sys_job_log` VALUES ('2178', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:47:45');
INSERT INTO `sys_job_log` VALUES ('2179', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:48:00');
INSERT INTO `sys_job_log` VALUES ('2180', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:48:15');
INSERT INTO `sys_job_log` VALUES ('2181', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:48:30');
INSERT INTO `sys_job_log` VALUES ('2182', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:48:45');
INSERT INTO `sys_job_log` VALUES ('2183', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:49:00');
INSERT INTO `sys_job_log` VALUES ('2184', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:49:15');
INSERT INTO `sys_job_log` VALUES ('2185', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:49:30');
INSERT INTO `sys_job_log` VALUES ('2186', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:49:45');
INSERT INTO `sys_job_log` VALUES ('2187', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:50:00');
INSERT INTO `sys_job_log` VALUES ('2188', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:50:15');
INSERT INTO `sys_job_log` VALUES ('2189', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:50:30');
INSERT INTO `sys_job_log` VALUES ('2190', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:50:45');
INSERT INTO `sys_job_log` VALUES ('2191', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:51:00');
INSERT INTO `sys_job_log` VALUES ('2192', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:51:15');
INSERT INTO `sys_job_log` VALUES ('2193', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:51:30');
INSERT INTO `sys_job_log` VALUES ('2194', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:51:45');
INSERT INTO `sys_job_log` VALUES ('2195', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:52:00');
INSERT INTO `sys_job_log` VALUES ('2196', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:52:15');
INSERT INTO `sys_job_log` VALUES ('2197', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:52:30');
INSERT INTO `sys_job_log` VALUES ('2198', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:52:45');
INSERT INTO `sys_job_log` VALUES ('2199', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:53:00');
INSERT INTO `sys_job_log` VALUES ('2200', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:53:15');
INSERT INTO `sys_job_log` VALUES ('2201', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:53:30');
INSERT INTO `sys_job_log` VALUES ('2202', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-09 23:53:45');
INSERT INTO `sys_job_log` VALUES ('2203', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:54:00');
INSERT INTO `sys_job_log` VALUES ('2204', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:54:15');
INSERT INTO `sys_job_log` VALUES ('2205', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:54:30');
INSERT INTO `sys_job_log` VALUES ('2206', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:54:45');
INSERT INTO `sys_job_log` VALUES ('2207', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:55:00');
INSERT INTO `sys_job_log` VALUES ('2208', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:55:15');
INSERT INTO `sys_job_log` VALUES ('2209', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:55:30');
INSERT INTO `sys_job_log` VALUES ('2210', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:55:45');
INSERT INTO `sys_job_log` VALUES ('2211', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:56:00');
INSERT INTO `sys_job_log` VALUES ('2212', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:56:15');
INSERT INTO `sys_job_log` VALUES ('2213', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:56:30');
INSERT INTO `sys_job_log` VALUES ('2214', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:56:45');
INSERT INTO `sys_job_log` VALUES ('2215', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:57:00');
INSERT INTO `sys_job_log` VALUES ('2216', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:57:15');
INSERT INTO `sys_job_log` VALUES ('2217', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:57:30');
INSERT INTO `sys_job_log` VALUES ('2218', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:57:45');
INSERT INTO `sys_job_log` VALUES ('2219', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:58:00');
INSERT INTO `sys_job_log` VALUES ('2220', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:58:15');
INSERT INTO `sys_job_log` VALUES ('2221', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:58:30');
INSERT INTO `sys_job_log` VALUES ('2222', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:58:45');
INSERT INTO `sys_job_log` VALUES ('2223', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:59:00');
INSERT INTO `sys_job_log` VALUES ('2224', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:59:15');
INSERT INTO `sys_job_log` VALUES ('2225', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:59:30');
INSERT INTO `sys_job_log` VALUES ('2226', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-09 23:59:45');
INSERT INTO `sys_job_log` VALUES ('2227', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:00:00');
INSERT INTO `sys_job_log` VALUES ('2228', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:00:15');
INSERT INTO `sys_job_log` VALUES ('2229', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:00:30');
INSERT INTO `sys_job_log` VALUES ('2230', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:00:45');
INSERT INTO `sys_job_log` VALUES ('2231', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:01:00');
INSERT INTO `sys_job_log` VALUES ('2232', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:01:15');
INSERT INTO `sys_job_log` VALUES ('2233', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:01:30');
INSERT INTO `sys_job_log` VALUES ('2234', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:01:45');
INSERT INTO `sys_job_log` VALUES ('2235', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:02:00');
INSERT INTO `sys_job_log` VALUES ('2236', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:02:15');
INSERT INTO `sys_job_log` VALUES ('2237', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:02:30');
INSERT INTO `sys_job_log` VALUES ('2238', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:02:45');
INSERT INTO `sys_job_log` VALUES ('2239', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:03:00');
INSERT INTO `sys_job_log` VALUES ('2240', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:03:15');
INSERT INTO `sys_job_log` VALUES ('2241', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:03:30');
INSERT INTO `sys_job_log` VALUES ('2242', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:03:45');
INSERT INTO `sys_job_log` VALUES ('2243', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:04:00');
INSERT INTO `sys_job_log` VALUES ('2244', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:04:15');
INSERT INTO `sys_job_log` VALUES ('2245', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:04:30');
INSERT INTO `sys_job_log` VALUES ('2246', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:04:45');
INSERT INTO `sys_job_log` VALUES ('2247', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:05:00');
INSERT INTO `sys_job_log` VALUES ('2248', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:05:15');
INSERT INTO `sys_job_log` VALUES ('2249', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:05:30');
INSERT INTO `sys_job_log` VALUES ('2250', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:05:45');
INSERT INTO `sys_job_log` VALUES ('2251', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:06:00');
INSERT INTO `sys_job_log` VALUES ('2252', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:06:15');
INSERT INTO `sys_job_log` VALUES ('2253', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:06:30');
INSERT INTO `sys_job_log` VALUES ('2254', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:06:45');
INSERT INTO `sys_job_log` VALUES ('2255', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:07:00');
INSERT INTO `sys_job_log` VALUES ('2256', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:07:15');
INSERT INTO `sys_job_log` VALUES ('2257', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:07:30');
INSERT INTO `sys_job_log` VALUES ('2258', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:07:45');
INSERT INTO `sys_job_log` VALUES ('2259', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:08:00');
INSERT INTO `sys_job_log` VALUES ('2260', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:08:15');
INSERT INTO `sys_job_log` VALUES ('2261', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:08:30');
INSERT INTO `sys_job_log` VALUES ('2262', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:08:45');
INSERT INTO `sys_job_log` VALUES ('2263', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:09:00');
INSERT INTO `sys_job_log` VALUES ('2264', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:09:15');
INSERT INTO `sys_job_log` VALUES ('2265', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:09:30');
INSERT INTO `sys_job_log` VALUES ('2266', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:09:45');
INSERT INTO `sys_job_log` VALUES ('2267', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:10:00');
INSERT INTO `sys_job_log` VALUES ('2268', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:10:15');
INSERT INTO `sys_job_log` VALUES ('2269', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:10:30');
INSERT INTO `sys_job_log` VALUES ('2270', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:10:45');
INSERT INTO `sys_job_log` VALUES ('2271', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:11:00');
INSERT INTO `sys_job_log` VALUES ('2272', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:11:15');
INSERT INTO `sys_job_log` VALUES ('2273', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:11:30');
INSERT INTO `sys_job_log` VALUES ('2274', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:11:45');
INSERT INTO `sys_job_log` VALUES ('2275', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:12:00');
INSERT INTO `sys_job_log` VALUES ('2276', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:12:15');
INSERT INTO `sys_job_log` VALUES ('2277', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:12:30');
INSERT INTO `sys_job_log` VALUES ('2278', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:12:45');
INSERT INTO `sys_job_log` VALUES ('2279', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:13:00');
INSERT INTO `sys_job_log` VALUES ('2280', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:13:15');
INSERT INTO `sys_job_log` VALUES ('2281', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:13:30');
INSERT INTO `sys_job_log` VALUES ('2282', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:13:45');
INSERT INTO `sys_job_log` VALUES ('2283', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:14:00');
INSERT INTO `sys_job_log` VALUES ('2284', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:14:15');
INSERT INTO `sys_job_log` VALUES ('2285', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:14:30');
INSERT INTO `sys_job_log` VALUES ('2286', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:14:45');
INSERT INTO `sys_job_log` VALUES ('2287', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:15:00');
INSERT INTO `sys_job_log` VALUES ('2288', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:15:15');
INSERT INTO `sys_job_log` VALUES ('2289', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:15:30');
INSERT INTO `sys_job_log` VALUES ('2290', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:15:45');
INSERT INTO `sys_job_log` VALUES ('2291', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:16:00');
INSERT INTO `sys_job_log` VALUES ('2292', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:16:15');
INSERT INTO `sys_job_log` VALUES ('2293', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:16:30');
INSERT INTO `sys_job_log` VALUES ('2294', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:16:45');
INSERT INTO `sys_job_log` VALUES ('2295', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:17:00');
INSERT INTO `sys_job_log` VALUES ('2296', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:17:15');
INSERT INTO `sys_job_log` VALUES ('2297', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:17:30');
INSERT INTO `sys_job_log` VALUES ('2298', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:17:45');
INSERT INTO `sys_job_log` VALUES ('2299', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:18:00');
INSERT INTO `sys_job_log` VALUES ('2300', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:18:15');
INSERT INTO `sys_job_log` VALUES ('2301', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:18:30');
INSERT INTO `sys_job_log` VALUES ('2302', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:18:45');
INSERT INTO `sys_job_log` VALUES ('2303', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:19:00');
INSERT INTO `sys_job_log` VALUES ('2304', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:19:15');
INSERT INTO `sys_job_log` VALUES ('2305', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:19:30');
INSERT INTO `sys_job_log` VALUES ('2306', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:19:45');
INSERT INTO `sys_job_log` VALUES ('2307', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:20:00');
INSERT INTO `sys_job_log` VALUES ('2308', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:20:15');
INSERT INTO `sys_job_log` VALUES ('2309', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:20:30');
INSERT INTO `sys_job_log` VALUES ('2310', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:20:45');
INSERT INTO `sys_job_log` VALUES ('2311', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:21:00');
INSERT INTO `sys_job_log` VALUES ('2312', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:21:15');
INSERT INTO `sys_job_log` VALUES ('2313', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:21:30');
INSERT INTO `sys_job_log` VALUES ('2314', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:21:45');
INSERT INTO `sys_job_log` VALUES ('2315', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:22:00');
INSERT INTO `sys_job_log` VALUES ('2316', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:22:15');
INSERT INTO `sys_job_log` VALUES ('2317', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:22:30');
INSERT INTO `sys_job_log` VALUES ('2318', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:22:45');
INSERT INTO `sys_job_log` VALUES ('2319', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:23:00');
INSERT INTO `sys_job_log` VALUES ('2320', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:23:15');
INSERT INTO `sys_job_log` VALUES ('2321', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:23:30');
INSERT INTO `sys_job_log` VALUES ('2322', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:23:45');
INSERT INTO `sys_job_log` VALUES ('2323', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:24:00');
INSERT INTO `sys_job_log` VALUES ('2324', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:24:15');
INSERT INTO `sys_job_log` VALUES ('2325', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:24:30');
INSERT INTO `sys_job_log` VALUES ('2326', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:24:45');
INSERT INTO `sys_job_log` VALUES ('2327', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:25:00');
INSERT INTO `sys_job_log` VALUES ('2328', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:25:15');
INSERT INTO `sys_job_log` VALUES ('2329', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:25:30');
INSERT INTO `sys_job_log` VALUES ('2330', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:25:45');
INSERT INTO `sys_job_log` VALUES ('2331', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:26:00');
INSERT INTO `sys_job_log` VALUES ('2332', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:26:15');
INSERT INTO `sys_job_log` VALUES ('2333', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:26:30');
INSERT INTO `sys_job_log` VALUES ('2334', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:26:45');
INSERT INTO `sys_job_log` VALUES ('2335', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:27:00');
INSERT INTO `sys_job_log` VALUES ('2336', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:27:15');
INSERT INTO `sys_job_log` VALUES ('2337', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:27:30');
INSERT INTO `sys_job_log` VALUES ('2338', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:27:45');
INSERT INTO `sys_job_log` VALUES ('2339', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:28:00');
INSERT INTO `sys_job_log` VALUES ('2340', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:28:15');
INSERT INTO `sys_job_log` VALUES ('2341', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:28:30');
INSERT INTO `sys_job_log` VALUES ('2342', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:28:45');
INSERT INTO `sys_job_log` VALUES ('2343', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:29:00');
INSERT INTO `sys_job_log` VALUES ('2344', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:29:15');
INSERT INTO `sys_job_log` VALUES ('2345', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:29:30');
INSERT INTO `sys_job_log` VALUES ('2346', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:29:45');
INSERT INTO `sys_job_log` VALUES ('2347', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:30:00');
INSERT INTO `sys_job_log` VALUES ('2348', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:30:15');
INSERT INTO `sys_job_log` VALUES ('2349', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:30:30');
INSERT INTO `sys_job_log` VALUES ('2350', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:30:45');
INSERT INTO `sys_job_log` VALUES ('2351', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:31:00');
INSERT INTO `sys_job_log` VALUES ('2352', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:31:15');
INSERT INTO `sys_job_log` VALUES ('2353', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:31:30');
INSERT INTO `sys_job_log` VALUES ('2354', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:31:45');
INSERT INTO `sys_job_log` VALUES ('2355', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:32:00');
INSERT INTO `sys_job_log` VALUES ('2356', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:32:15');
INSERT INTO `sys_job_log` VALUES ('2357', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:32:30');
INSERT INTO `sys_job_log` VALUES ('2358', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:32:45');
INSERT INTO `sys_job_log` VALUES ('2359', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:33:00');
INSERT INTO `sys_job_log` VALUES ('2360', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:33:15');
INSERT INTO `sys_job_log` VALUES ('2361', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:33:30');
INSERT INTO `sys_job_log` VALUES ('2362', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:33:45');
INSERT INTO `sys_job_log` VALUES ('2363', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:34:00');
INSERT INTO `sys_job_log` VALUES ('2364', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:34:15');
INSERT INTO `sys_job_log` VALUES ('2365', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:34:30');
INSERT INTO `sys_job_log` VALUES ('2366', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:34:45');
INSERT INTO `sys_job_log` VALUES ('2367', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:35:00');
INSERT INTO `sys_job_log` VALUES ('2368', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:35:15');
INSERT INTO `sys_job_log` VALUES ('2369', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:35:30');
INSERT INTO `sys_job_log` VALUES ('2370', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:35:45');
INSERT INTO `sys_job_log` VALUES ('2371', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:36:00');
INSERT INTO `sys_job_log` VALUES ('2372', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:36:15');
INSERT INTO `sys_job_log` VALUES ('2373', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:36:30');
INSERT INTO `sys_job_log` VALUES ('2374', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:36:45');
INSERT INTO `sys_job_log` VALUES ('2375', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:37:00');
INSERT INTO `sys_job_log` VALUES ('2376', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:37:15');
INSERT INTO `sys_job_log` VALUES ('2377', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:37:30');
INSERT INTO `sys_job_log` VALUES ('2378', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:37:45');
INSERT INTO `sys_job_log` VALUES ('2379', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:38:00');
INSERT INTO `sys_job_log` VALUES ('2380', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:38:15');
INSERT INTO `sys_job_log` VALUES ('2381', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:38:30');
INSERT INTO `sys_job_log` VALUES ('2382', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:38:45');
INSERT INTO `sys_job_log` VALUES ('2383', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:39:00');
INSERT INTO `sys_job_log` VALUES ('2384', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:39:15');
INSERT INTO `sys_job_log` VALUES ('2385', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:39:30');
INSERT INTO `sys_job_log` VALUES ('2386', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:39:45');
INSERT INTO `sys_job_log` VALUES ('2387', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:40:00');
INSERT INTO `sys_job_log` VALUES ('2388', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:40:15');
INSERT INTO `sys_job_log` VALUES ('2389', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:40:30');
INSERT INTO `sys_job_log` VALUES ('2390', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:40:45');
INSERT INTO `sys_job_log` VALUES ('2391', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:41:00');
INSERT INTO `sys_job_log` VALUES ('2392', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:41:15');
INSERT INTO `sys_job_log` VALUES ('2393', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:41:30');
INSERT INTO `sys_job_log` VALUES ('2394', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:41:45');
INSERT INTO `sys_job_log` VALUES ('2395', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:42:00');
INSERT INTO `sys_job_log` VALUES ('2396', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:42:15');
INSERT INTO `sys_job_log` VALUES ('2397', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:42:30');
INSERT INTO `sys_job_log` VALUES ('2398', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:42:45');
INSERT INTO `sys_job_log` VALUES ('2399', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:43:00');
INSERT INTO `sys_job_log` VALUES ('2400', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:43:15');
INSERT INTO `sys_job_log` VALUES ('2401', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:43:30');
INSERT INTO `sys_job_log` VALUES ('2402', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:43:45');
INSERT INTO `sys_job_log` VALUES ('2403', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:44:00');
INSERT INTO `sys_job_log` VALUES ('2404', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:44:15');
INSERT INTO `sys_job_log` VALUES ('2405', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:44:30');
INSERT INTO `sys_job_log` VALUES ('2406', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:44:45');
INSERT INTO `sys_job_log` VALUES ('2407', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:45:00');
INSERT INTO `sys_job_log` VALUES ('2408', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:45:15');
INSERT INTO `sys_job_log` VALUES ('2409', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:45:30');
INSERT INTO `sys_job_log` VALUES ('2410', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:45:45');
INSERT INTO `sys_job_log` VALUES ('2411', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:46:00');
INSERT INTO `sys_job_log` VALUES ('2412', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:46:15');
INSERT INTO `sys_job_log` VALUES ('2413', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:46:30');
INSERT INTO `sys_job_log` VALUES ('2414', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:46:45');
INSERT INTO `sys_job_log` VALUES ('2415', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:47:00');
INSERT INTO `sys_job_log` VALUES ('2416', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:47:15');
INSERT INTO `sys_job_log` VALUES ('2417', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:47:30');
INSERT INTO `sys_job_log` VALUES ('2418', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:47:45');
INSERT INTO `sys_job_log` VALUES ('2419', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:48:00');
INSERT INTO `sys_job_log` VALUES ('2420', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:48:15');
INSERT INTO `sys_job_log` VALUES ('2421', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:48:30');
INSERT INTO `sys_job_log` VALUES ('2422', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:48:45');
INSERT INTO `sys_job_log` VALUES ('2423', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:49:00');
INSERT INTO `sys_job_log` VALUES ('2424', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:49:15');
INSERT INTO `sys_job_log` VALUES ('2425', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:49:30');
INSERT INTO `sys_job_log` VALUES ('2426', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:49:45');
INSERT INTO `sys_job_log` VALUES ('2427', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:50:00');
INSERT INTO `sys_job_log` VALUES ('2428', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:50:15');
INSERT INTO `sys_job_log` VALUES ('2429', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:50:30');
INSERT INTO `sys_job_log` VALUES ('2430', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:50:45');
INSERT INTO `sys_job_log` VALUES ('2431', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:51:00');
INSERT INTO `sys_job_log` VALUES ('2432', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 00:51:15');
INSERT INTO `sys_job_log` VALUES ('2433', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:51:30');
INSERT INTO `sys_job_log` VALUES ('2434', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:51:45');
INSERT INTO `sys_job_log` VALUES ('2435', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:52:00');
INSERT INTO `sys_job_log` VALUES ('2436', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:52:15');
INSERT INTO `sys_job_log` VALUES ('2437', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:52:30');
INSERT INTO `sys_job_log` VALUES ('2438', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:52:45');
INSERT INTO `sys_job_log` VALUES ('2439', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:53:00');
INSERT INTO `sys_job_log` VALUES ('2440', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:53:15');
INSERT INTO `sys_job_log` VALUES ('2441', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:53:30');
INSERT INTO `sys_job_log` VALUES ('2442', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:53:45');
INSERT INTO `sys_job_log` VALUES ('2443', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:54:00');
INSERT INTO `sys_job_log` VALUES ('2444', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:54:15');
INSERT INTO `sys_job_log` VALUES ('2445', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:54:30');
INSERT INTO `sys_job_log` VALUES ('2446', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:54:45');
INSERT INTO `sys_job_log` VALUES ('2447', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:55:00');
INSERT INTO `sys_job_log` VALUES ('2448', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:55:15');
INSERT INTO `sys_job_log` VALUES ('2449', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:55:30');
INSERT INTO `sys_job_log` VALUES ('2450', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:55:45');
INSERT INTO `sys_job_log` VALUES ('2451', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:56:00');
INSERT INTO `sys_job_log` VALUES ('2452', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:56:15');
INSERT INTO `sys_job_log` VALUES ('2453', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:56:30');
INSERT INTO `sys_job_log` VALUES ('2454', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:56:45');
INSERT INTO `sys_job_log` VALUES ('2455', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:57:00');
INSERT INTO `sys_job_log` VALUES ('2456', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:57:15');
INSERT INTO `sys_job_log` VALUES ('2457', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:57:30');
INSERT INTO `sys_job_log` VALUES ('2458', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:57:45');
INSERT INTO `sys_job_log` VALUES ('2459', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:58:00');
INSERT INTO `sys_job_log` VALUES ('2460', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:58:15');
INSERT INTO `sys_job_log` VALUES ('2461', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:58:30');
INSERT INTO `sys_job_log` VALUES ('2462', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:58:45');
INSERT INTO `sys_job_log` VALUES ('2463', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:59:00');
INSERT INTO `sys_job_log` VALUES ('2464', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:59:15');
INSERT INTO `sys_job_log` VALUES ('2465', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:59:30');
INSERT INTO `sys_job_log` VALUES ('2466', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 00:59:45');
INSERT INTO `sys_job_log` VALUES ('2467', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:00:00');
INSERT INTO `sys_job_log` VALUES ('2468', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:00:15');
INSERT INTO `sys_job_log` VALUES ('2469', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:00:30');
INSERT INTO `sys_job_log` VALUES ('2470', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:00:45');
INSERT INTO `sys_job_log` VALUES ('2471', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:01:00');
INSERT INTO `sys_job_log` VALUES ('2472', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:01:15');
INSERT INTO `sys_job_log` VALUES ('2473', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:01:30');
INSERT INTO `sys_job_log` VALUES ('2474', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:01:45');
INSERT INTO `sys_job_log` VALUES ('2475', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:02:00');
INSERT INTO `sys_job_log` VALUES ('2476', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:02:15');
INSERT INTO `sys_job_log` VALUES ('2477', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:02:30');
INSERT INTO `sys_job_log` VALUES ('2478', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:02:45');
INSERT INTO `sys_job_log` VALUES ('2479', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:03:00');
INSERT INTO `sys_job_log` VALUES ('2480', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:03:15');
INSERT INTO `sys_job_log` VALUES ('2481', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:03:30');
INSERT INTO `sys_job_log` VALUES ('2482', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:03:45');
INSERT INTO `sys_job_log` VALUES ('2483', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:04:00');
INSERT INTO `sys_job_log` VALUES ('2484', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:04:15');
INSERT INTO `sys_job_log` VALUES ('2485', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:04:30');
INSERT INTO `sys_job_log` VALUES ('2486', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:04:45');
INSERT INTO `sys_job_log` VALUES ('2487', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:05:00');
INSERT INTO `sys_job_log` VALUES ('2488', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:05:15');
INSERT INTO `sys_job_log` VALUES ('2489', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:05:30');
INSERT INTO `sys_job_log` VALUES ('2490', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:05:45');
INSERT INTO `sys_job_log` VALUES ('2491', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:06:00');
INSERT INTO `sys_job_log` VALUES ('2492', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:06:15');
INSERT INTO `sys_job_log` VALUES ('2493', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:06:30');
INSERT INTO `sys_job_log` VALUES ('2494', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:06:45');
INSERT INTO `sys_job_log` VALUES ('2495', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:07:00');
INSERT INTO `sys_job_log` VALUES ('2496', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:07:15');
INSERT INTO `sys_job_log` VALUES ('2497', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:07:30');
INSERT INTO `sys_job_log` VALUES ('2498', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:07:45');
INSERT INTO `sys_job_log` VALUES ('2499', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:08:00');
INSERT INTO `sys_job_log` VALUES ('2500', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:08:15');
INSERT INTO `sys_job_log` VALUES ('2501', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:08:30');
INSERT INTO `sys_job_log` VALUES ('2502', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:08:45');
INSERT INTO `sys_job_log` VALUES ('2503', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:09:00');
INSERT INTO `sys_job_log` VALUES ('2504', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:09:15');
INSERT INTO `sys_job_log` VALUES ('2505', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:09:30');
INSERT INTO `sys_job_log` VALUES ('2506', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:09:45');
INSERT INTO `sys_job_log` VALUES ('2507', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:10:00');
INSERT INTO `sys_job_log` VALUES ('2508', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:10:15');
INSERT INTO `sys_job_log` VALUES ('2509', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:10:30');
INSERT INTO `sys_job_log` VALUES ('2510', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:10:45');
INSERT INTO `sys_job_log` VALUES ('2511', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:11:00');
INSERT INTO `sys_job_log` VALUES ('2512', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:11:15');
INSERT INTO `sys_job_log` VALUES ('2513', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:11:30');
INSERT INTO `sys_job_log` VALUES ('2514', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:11:45');
INSERT INTO `sys_job_log` VALUES ('2515', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:12:00');
INSERT INTO `sys_job_log` VALUES ('2516', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:12:15');
INSERT INTO `sys_job_log` VALUES ('2517', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:12:30');
INSERT INTO `sys_job_log` VALUES ('2518', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:12:45');
INSERT INTO `sys_job_log` VALUES ('2519', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:13:00');
INSERT INTO `sys_job_log` VALUES ('2520', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:13:15');
INSERT INTO `sys_job_log` VALUES ('2521', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:13:30');
INSERT INTO `sys_job_log` VALUES ('2522', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:13:45');
INSERT INTO `sys_job_log` VALUES ('2523', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:14:00');
INSERT INTO `sys_job_log` VALUES ('2524', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:14:15');
INSERT INTO `sys_job_log` VALUES ('2525', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:14:30');
INSERT INTO `sys_job_log` VALUES ('2526', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:14:45');
INSERT INTO `sys_job_log` VALUES ('2527', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:15:00');
INSERT INTO `sys_job_log` VALUES ('2528', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:15:15');
INSERT INTO `sys_job_log` VALUES ('2529', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:15:30');
INSERT INTO `sys_job_log` VALUES ('2530', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:15:45');
INSERT INTO `sys_job_log` VALUES ('2531', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:16:00');
INSERT INTO `sys_job_log` VALUES ('2532', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:16:15');
INSERT INTO `sys_job_log` VALUES ('2533', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:16:30');
INSERT INTO `sys_job_log` VALUES ('2534', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:16:45');
INSERT INTO `sys_job_log` VALUES ('2535', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:17:00');
INSERT INTO `sys_job_log` VALUES ('2536', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:17:15');
INSERT INTO `sys_job_log` VALUES ('2537', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:17:30');
INSERT INTO `sys_job_log` VALUES ('2538', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:17:45');
INSERT INTO `sys_job_log` VALUES ('2539', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:18:00');
INSERT INTO `sys_job_log` VALUES ('2540', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:18:15');
INSERT INTO `sys_job_log` VALUES ('2541', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:18:30');
INSERT INTO `sys_job_log` VALUES ('2542', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:18:45');
INSERT INTO `sys_job_log` VALUES ('2543', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:19:00');
INSERT INTO `sys_job_log` VALUES ('2544', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:19:15');
INSERT INTO `sys_job_log` VALUES ('2545', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:19:30');
INSERT INTO `sys_job_log` VALUES ('2546', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:19:45');
INSERT INTO `sys_job_log` VALUES ('2547', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:20:00');
INSERT INTO `sys_job_log` VALUES ('2548', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:20:15');
INSERT INTO `sys_job_log` VALUES ('2549', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:20:30');
INSERT INTO `sys_job_log` VALUES ('2550', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:20:45');
INSERT INTO `sys_job_log` VALUES ('2551', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:21:00');
INSERT INTO `sys_job_log` VALUES ('2552', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:21:15');
INSERT INTO `sys_job_log` VALUES ('2553', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:21:30');
INSERT INTO `sys_job_log` VALUES ('2554', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:21:45');
INSERT INTO `sys_job_log` VALUES ('2555', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:22:00');
INSERT INTO `sys_job_log` VALUES ('2556', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:22:15');
INSERT INTO `sys_job_log` VALUES ('2557', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 01:22:30');
INSERT INTO `sys_job_log` VALUES ('2558', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:22:45');
INSERT INTO `sys_job_log` VALUES ('2559', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:23:00');
INSERT INTO `sys_job_log` VALUES ('2560', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:23:15');
INSERT INTO `sys_job_log` VALUES ('2561', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:23:30');
INSERT INTO `sys_job_log` VALUES ('2562', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:23:45');
INSERT INTO `sys_job_log` VALUES ('2563', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:24:00');
INSERT INTO `sys_job_log` VALUES ('2564', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:24:15');
INSERT INTO `sys_job_log` VALUES ('2565', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:24:30');
INSERT INTO `sys_job_log` VALUES ('2566', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:24:45');
INSERT INTO `sys_job_log` VALUES ('2567', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:25:00');
INSERT INTO `sys_job_log` VALUES ('2568', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:25:15');
INSERT INTO `sys_job_log` VALUES ('2569', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:25:30');
INSERT INTO `sys_job_log` VALUES ('2570', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:25:45');
INSERT INTO `sys_job_log` VALUES ('2571', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:26:00');
INSERT INTO `sys_job_log` VALUES ('2572', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:26:15');
INSERT INTO `sys_job_log` VALUES ('2573', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:26:30');
INSERT INTO `sys_job_log` VALUES ('2574', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:26:45');
INSERT INTO `sys_job_log` VALUES ('2575', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:27:00');
INSERT INTO `sys_job_log` VALUES ('2576', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:27:15');
INSERT INTO `sys_job_log` VALUES ('2577', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:27:30');
INSERT INTO `sys_job_log` VALUES ('2578', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:27:45');
INSERT INTO `sys_job_log` VALUES ('2579', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:28:00');
INSERT INTO `sys_job_log` VALUES ('2580', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:28:15');
INSERT INTO `sys_job_log` VALUES ('2581', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:28:30');
INSERT INTO `sys_job_log` VALUES ('2582', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:28:45');
INSERT INTO `sys_job_log` VALUES ('2583', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:29:00');
INSERT INTO `sys_job_log` VALUES ('2584', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:29:15');
INSERT INTO `sys_job_log` VALUES ('2585', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:29:30');
INSERT INTO `sys_job_log` VALUES ('2586', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:29:45');
INSERT INTO `sys_job_log` VALUES ('2587', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:30:00');
INSERT INTO `sys_job_log` VALUES ('2588', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:30:15');
INSERT INTO `sys_job_log` VALUES ('2589', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:30:30');
INSERT INTO `sys_job_log` VALUES ('2590', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:30:45');
INSERT INTO `sys_job_log` VALUES ('2591', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:31:00');
INSERT INTO `sys_job_log` VALUES ('2592', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:31:15');
INSERT INTO `sys_job_log` VALUES ('2593', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:31:30');
INSERT INTO `sys_job_log` VALUES ('2594', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:31:45');
INSERT INTO `sys_job_log` VALUES ('2595', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:32:00');
INSERT INTO `sys_job_log` VALUES ('2596', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:32:15');
INSERT INTO `sys_job_log` VALUES ('2597', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:32:30');
INSERT INTO `sys_job_log` VALUES ('2598', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:32:45');
INSERT INTO `sys_job_log` VALUES ('2599', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:33:00');
INSERT INTO `sys_job_log` VALUES ('2600', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:33:15');
INSERT INTO `sys_job_log` VALUES ('2601', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:33:30');
INSERT INTO `sys_job_log` VALUES ('2602', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:33:45');
INSERT INTO `sys_job_log` VALUES ('2603', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:34:00');
INSERT INTO `sys_job_log` VALUES ('2604', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:34:15');
INSERT INTO `sys_job_log` VALUES ('2605', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:34:30');
INSERT INTO `sys_job_log` VALUES ('2606', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:34:45');
INSERT INTO `sys_job_log` VALUES ('2607', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:35:00');
INSERT INTO `sys_job_log` VALUES ('2608', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:35:15');
INSERT INTO `sys_job_log` VALUES ('2609', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:35:30');
INSERT INTO `sys_job_log` VALUES ('2610', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:35:45');
INSERT INTO `sys_job_log` VALUES ('2611', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:36:00');
INSERT INTO `sys_job_log` VALUES ('2612', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:36:15');
INSERT INTO `sys_job_log` VALUES ('2613', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:36:30');
INSERT INTO `sys_job_log` VALUES ('2614', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:36:45');
INSERT INTO `sys_job_log` VALUES ('2615', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:37:00');
INSERT INTO `sys_job_log` VALUES ('2616', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:37:15');
INSERT INTO `sys_job_log` VALUES ('2617', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 01:37:30');
INSERT INTO `sys_job_log` VALUES ('2618', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:37:45');
INSERT INTO `sys_job_log` VALUES ('2619', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:38:00');
INSERT INTO `sys_job_log` VALUES ('2620', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:38:15');
INSERT INTO `sys_job_log` VALUES ('2621', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:38:30');
INSERT INTO `sys_job_log` VALUES ('2622', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:38:45');
INSERT INTO `sys_job_log` VALUES ('2623', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:39:00');
INSERT INTO `sys_job_log` VALUES ('2624', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:39:15');
INSERT INTO `sys_job_log` VALUES ('2625', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:39:30');
INSERT INTO `sys_job_log` VALUES ('2626', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:39:45');
INSERT INTO `sys_job_log` VALUES ('2627', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:40:00');
INSERT INTO `sys_job_log` VALUES ('2628', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:40:15');
INSERT INTO `sys_job_log` VALUES ('2629', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:40:30');
INSERT INTO `sys_job_log` VALUES ('2630', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:40:45');
INSERT INTO `sys_job_log` VALUES ('2631', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:41:00');
INSERT INTO `sys_job_log` VALUES ('2632', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:41:15');
INSERT INTO `sys_job_log` VALUES ('2633', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:41:30');
INSERT INTO `sys_job_log` VALUES ('2634', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:41:45');
INSERT INTO `sys_job_log` VALUES ('2635', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:42:00');
INSERT INTO `sys_job_log` VALUES ('2636', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:42:15');
INSERT INTO `sys_job_log` VALUES ('2637', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:42:30');
INSERT INTO `sys_job_log` VALUES ('2638', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:42:45');
INSERT INTO `sys_job_log` VALUES ('2639', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:43:00');
INSERT INTO `sys_job_log` VALUES ('2640', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:43:15');
INSERT INTO `sys_job_log` VALUES ('2641', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:43:30');
INSERT INTO `sys_job_log` VALUES ('2642', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:43:45');
INSERT INTO `sys_job_log` VALUES ('2643', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:44:00');
INSERT INTO `sys_job_log` VALUES ('2644', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:44:15');
INSERT INTO `sys_job_log` VALUES ('2645', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:44:30');
INSERT INTO `sys_job_log` VALUES ('2646', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:44:45');
INSERT INTO `sys_job_log` VALUES ('2647', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:45:00');
INSERT INTO `sys_job_log` VALUES ('2648', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:45:15');
INSERT INTO `sys_job_log` VALUES ('2649', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:45:30');
INSERT INTO `sys_job_log` VALUES ('2650', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:45:45');
INSERT INTO `sys_job_log` VALUES ('2651', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:46:00');
INSERT INTO `sys_job_log` VALUES ('2652', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:46:15');
INSERT INTO `sys_job_log` VALUES ('2653', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:46:30');
INSERT INTO `sys_job_log` VALUES ('2654', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:46:45');
INSERT INTO `sys_job_log` VALUES ('2655', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:47:00');
INSERT INTO `sys_job_log` VALUES ('2656', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:47:15');
INSERT INTO `sys_job_log` VALUES ('2657', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:47:30');
INSERT INTO `sys_job_log` VALUES ('2658', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:47:45');
INSERT INTO `sys_job_log` VALUES ('2659', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:48:00');
INSERT INTO `sys_job_log` VALUES ('2660', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:48:15');
INSERT INTO `sys_job_log` VALUES ('2661', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:48:30');
INSERT INTO `sys_job_log` VALUES ('2662', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:48:45');
INSERT INTO `sys_job_log` VALUES ('2663', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:49:00');
INSERT INTO `sys_job_log` VALUES ('2664', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:49:15');
INSERT INTO `sys_job_log` VALUES ('2665', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:49:30');
INSERT INTO `sys_job_log` VALUES ('2666', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:49:45');
INSERT INTO `sys_job_log` VALUES ('2667', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:50:00');
INSERT INTO `sys_job_log` VALUES ('2668', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:50:15');
INSERT INTO `sys_job_log` VALUES ('2669', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:50:30');
INSERT INTO `sys_job_log` VALUES ('2670', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:50:45');
INSERT INTO `sys_job_log` VALUES ('2671', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:51:00');
INSERT INTO `sys_job_log` VALUES ('2672', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:51:15');
INSERT INTO `sys_job_log` VALUES ('2673', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:51:30');
INSERT INTO `sys_job_log` VALUES ('2674', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:51:45');
INSERT INTO `sys_job_log` VALUES ('2675', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:52:00');
INSERT INTO `sys_job_log` VALUES ('2676', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:52:15');
INSERT INTO `sys_job_log` VALUES ('2677', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:52:30');
INSERT INTO `sys_job_log` VALUES ('2678', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:52:45');
INSERT INTO `sys_job_log` VALUES ('2679', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:53:00');
INSERT INTO `sys_job_log` VALUES ('2680', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:53:15');
INSERT INTO `sys_job_log` VALUES ('2681', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:53:30');
INSERT INTO `sys_job_log` VALUES ('2682', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:53:45');
INSERT INTO `sys_job_log` VALUES ('2683', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:54:00');
INSERT INTO `sys_job_log` VALUES ('2684', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 01:54:15');
INSERT INTO `sys_job_log` VALUES ('2685', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:54:30');
INSERT INTO `sys_job_log` VALUES ('2686', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:54:45');
INSERT INTO `sys_job_log` VALUES ('2687', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:55:00');
INSERT INTO `sys_job_log` VALUES ('2688', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:55:15');
INSERT INTO `sys_job_log` VALUES ('2689', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:55:30');
INSERT INTO `sys_job_log` VALUES ('2690', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:55:45');
INSERT INTO `sys_job_log` VALUES ('2691', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 01:56:00');
INSERT INTO `sys_job_log` VALUES ('2692', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:56:15');
INSERT INTO `sys_job_log` VALUES ('2693', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:56:30');
INSERT INTO `sys_job_log` VALUES ('2694', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 01:56:45');
INSERT INTO `sys_job_log` VALUES ('2695', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:57:00');
INSERT INTO `sys_job_log` VALUES ('2696', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:57:15');
INSERT INTO `sys_job_log` VALUES ('2697', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:57:30');
INSERT INTO `sys_job_log` VALUES ('2698', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:57:45');
INSERT INTO `sys_job_log` VALUES ('2699', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:58:00');
INSERT INTO `sys_job_log` VALUES ('2700', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:58:15');
INSERT INTO `sys_job_log` VALUES ('2701', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:58:30');
INSERT INTO `sys_job_log` VALUES ('2702', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:58:45');
INSERT INTO `sys_job_log` VALUES ('2703', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:59:00');
INSERT INTO `sys_job_log` VALUES ('2704', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:59:15');
INSERT INTO `sys_job_log` VALUES ('2705', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:59:30');
INSERT INTO `sys_job_log` VALUES ('2706', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 01:59:45');
INSERT INTO `sys_job_log` VALUES ('2707', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:00:00');
INSERT INTO `sys_job_log` VALUES ('2708', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:00:15');
INSERT INTO `sys_job_log` VALUES ('2709', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:00:30');
INSERT INTO `sys_job_log` VALUES ('2710', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:00:45');
INSERT INTO `sys_job_log` VALUES ('2711', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:01:00');
INSERT INTO `sys_job_log` VALUES ('2712', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:01:15');
INSERT INTO `sys_job_log` VALUES ('2713', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:01:30');
INSERT INTO `sys_job_log` VALUES ('2714', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:01:45');
INSERT INTO `sys_job_log` VALUES ('2715', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:02:00');
INSERT INTO `sys_job_log` VALUES ('2716', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:02:15');
INSERT INTO `sys_job_log` VALUES ('2717', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:02:30');
INSERT INTO `sys_job_log` VALUES ('2718', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 02:02:45');
INSERT INTO `sys_job_log` VALUES ('2719', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:03:00');
INSERT INTO `sys_job_log` VALUES ('2720', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:03:15');
INSERT INTO `sys_job_log` VALUES ('2721', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:03:30');
INSERT INTO `sys_job_log` VALUES ('2722', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:03:45');
INSERT INTO `sys_job_log` VALUES ('2723', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:04:00');
INSERT INTO `sys_job_log` VALUES ('2724', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:04:15');
INSERT INTO `sys_job_log` VALUES ('2725', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:04:30');
INSERT INTO `sys_job_log` VALUES ('2726', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:04:45');
INSERT INTO `sys_job_log` VALUES ('2727', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:05:00');
INSERT INTO `sys_job_log` VALUES ('2728', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:05:15');
INSERT INTO `sys_job_log` VALUES ('2729', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:05:30');
INSERT INTO `sys_job_log` VALUES ('2730', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:05:45');
INSERT INTO `sys_job_log` VALUES ('2731', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:06:00');
INSERT INTO `sys_job_log` VALUES ('2732', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:06:15');
INSERT INTO `sys_job_log` VALUES ('2733', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:06:30');
INSERT INTO `sys_job_log` VALUES ('2734', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:06:45');
INSERT INTO `sys_job_log` VALUES ('2735', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:07:00');
INSERT INTO `sys_job_log` VALUES ('2736', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:07:15');
INSERT INTO `sys_job_log` VALUES ('2737', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:07:30');
INSERT INTO `sys_job_log` VALUES ('2738', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:07:45');
INSERT INTO `sys_job_log` VALUES ('2739', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:08:00');
INSERT INTO `sys_job_log` VALUES ('2740', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:08:15');
INSERT INTO `sys_job_log` VALUES ('2741', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:08:30');
INSERT INTO `sys_job_log` VALUES ('2742', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:08:45');
INSERT INTO `sys_job_log` VALUES ('2743', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:09:00');
INSERT INTO `sys_job_log` VALUES ('2744', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:09:15');
INSERT INTO `sys_job_log` VALUES ('2745', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:09:30');
INSERT INTO `sys_job_log` VALUES ('2746', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:09:45');
INSERT INTO `sys_job_log` VALUES ('2747', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:10:00');
INSERT INTO `sys_job_log` VALUES ('2748', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:10:15');
INSERT INTO `sys_job_log` VALUES ('2749', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 02:10:30');
INSERT INTO `sys_job_log` VALUES ('2750', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:10:45');
INSERT INTO `sys_job_log` VALUES ('2751', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 02:11:00');
INSERT INTO `sys_job_log` VALUES ('2752', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:11:15');
INSERT INTO `sys_job_log` VALUES ('2753', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:11:30');
INSERT INTO `sys_job_log` VALUES ('2754', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 02:11:45');
INSERT INTO `sys_job_log` VALUES ('2755', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:12:00');
INSERT INTO `sys_job_log` VALUES ('2756', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:12:15');
INSERT INTO `sys_job_log` VALUES ('2757', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:12:30');
INSERT INTO `sys_job_log` VALUES ('2758', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:12:45');
INSERT INTO `sys_job_log` VALUES ('2759', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:13:00');
INSERT INTO `sys_job_log` VALUES ('2760', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:13:15');
INSERT INTO `sys_job_log` VALUES ('2761', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:13:30');
INSERT INTO `sys_job_log` VALUES ('2762', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:13:45');
INSERT INTO `sys_job_log` VALUES ('2763', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:14:00');
INSERT INTO `sys_job_log` VALUES ('2764', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:14:15');
INSERT INTO `sys_job_log` VALUES ('2765', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:14:30');
INSERT INTO `sys_job_log` VALUES ('2766', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:14:45');
INSERT INTO `sys_job_log` VALUES ('2767', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:15:00');
INSERT INTO `sys_job_log` VALUES ('2768', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:15:15');
INSERT INTO `sys_job_log` VALUES ('2769', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:15:30');
INSERT INTO `sys_job_log` VALUES ('2770', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:15:45');
INSERT INTO `sys_job_log` VALUES ('2771', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:16:00');
INSERT INTO `sys_job_log` VALUES ('2772', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:16:15');
INSERT INTO `sys_job_log` VALUES ('2773', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:16:30');
INSERT INTO `sys_job_log` VALUES ('2774', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:16:45');
INSERT INTO `sys_job_log` VALUES ('2775', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:17:00');
INSERT INTO `sys_job_log` VALUES ('2776', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:17:15');
INSERT INTO `sys_job_log` VALUES ('2777', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:17:30');
INSERT INTO `sys_job_log` VALUES ('2778', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:17:45');
INSERT INTO `sys_job_log` VALUES ('2779', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:18:00');
INSERT INTO `sys_job_log` VALUES ('2780', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:18:15');
INSERT INTO `sys_job_log` VALUES ('2781', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:18:30');
INSERT INTO `sys_job_log` VALUES ('2782', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:18:45');
INSERT INTO `sys_job_log` VALUES ('2783', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:19:00');
INSERT INTO `sys_job_log` VALUES ('2784', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:19:15');
INSERT INTO `sys_job_log` VALUES ('2785', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:19:30');
INSERT INTO `sys_job_log` VALUES ('2786', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:19:45');
INSERT INTO `sys_job_log` VALUES ('2787', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:20:00');
INSERT INTO `sys_job_log` VALUES ('2788', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:20:15');
INSERT INTO `sys_job_log` VALUES ('2789', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:20:30');
INSERT INTO `sys_job_log` VALUES ('2790', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:20:45');
INSERT INTO `sys_job_log` VALUES ('2791', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:21:00');
INSERT INTO `sys_job_log` VALUES ('2792', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:21:15');
INSERT INTO `sys_job_log` VALUES ('2793', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:21:30');
INSERT INTO `sys_job_log` VALUES ('2794', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:21:45');
INSERT INTO `sys_job_log` VALUES ('2795', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:22:00');
INSERT INTO `sys_job_log` VALUES ('2796', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:22:15');
INSERT INTO `sys_job_log` VALUES ('2797', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:22:30');
INSERT INTO `sys_job_log` VALUES ('2798', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:22:45');
INSERT INTO `sys_job_log` VALUES ('2799', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:23:00');
INSERT INTO `sys_job_log` VALUES ('2800', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:23:15');
INSERT INTO `sys_job_log` VALUES ('2801', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:23:30');
INSERT INTO `sys_job_log` VALUES ('2802', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:23:45');
INSERT INTO `sys_job_log` VALUES ('2803', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:24:00');
INSERT INTO `sys_job_log` VALUES ('2804', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:24:15');
INSERT INTO `sys_job_log` VALUES ('2805', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:24:30');
INSERT INTO `sys_job_log` VALUES ('2806', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:24:45');
INSERT INTO `sys_job_log` VALUES ('2807', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:25:00');
INSERT INTO `sys_job_log` VALUES ('2808', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:25:15');
INSERT INTO `sys_job_log` VALUES ('2809', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:25:30');
INSERT INTO `sys_job_log` VALUES ('2810', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:25:45');
INSERT INTO `sys_job_log` VALUES ('2811', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:26:00');
INSERT INTO `sys_job_log` VALUES ('2812', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:26:15');
INSERT INTO `sys_job_log` VALUES ('2813', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:26:30');
INSERT INTO `sys_job_log` VALUES ('2814', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:26:45');
INSERT INTO `sys_job_log` VALUES ('2815', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:27:00');
INSERT INTO `sys_job_log` VALUES ('2816', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:27:15');
INSERT INTO `sys_job_log` VALUES ('2817', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:27:30');
INSERT INTO `sys_job_log` VALUES ('2818', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:27:45');
INSERT INTO `sys_job_log` VALUES ('2819', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:28:00');
INSERT INTO `sys_job_log` VALUES ('2820', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:28:15');
INSERT INTO `sys_job_log` VALUES ('2821', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:28:30');
INSERT INTO `sys_job_log` VALUES ('2822', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:28:45');
INSERT INTO `sys_job_log` VALUES ('2823', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:29:00');
INSERT INTO `sys_job_log` VALUES ('2824', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:29:15');
INSERT INTO `sys_job_log` VALUES ('2825', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:29:30');
INSERT INTO `sys_job_log` VALUES ('2826', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:29:45');
INSERT INTO `sys_job_log` VALUES ('2827', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:30:00');
INSERT INTO `sys_job_log` VALUES ('2828', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:30:15');
INSERT INTO `sys_job_log` VALUES ('2829', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:30:30');
INSERT INTO `sys_job_log` VALUES ('2830', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:30:45');
INSERT INTO `sys_job_log` VALUES ('2831', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:31:00');
INSERT INTO `sys_job_log` VALUES ('2832', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:31:15');
INSERT INTO `sys_job_log` VALUES ('2833', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:31:30');
INSERT INTO `sys_job_log` VALUES ('2834', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:31:45');
INSERT INTO `sys_job_log` VALUES ('2835', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:32:00');
INSERT INTO `sys_job_log` VALUES ('2836', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:32:15');
INSERT INTO `sys_job_log` VALUES ('2837', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:32:30');
INSERT INTO `sys_job_log` VALUES ('2838', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:32:45');
INSERT INTO `sys_job_log` VALUES ('2839', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:33:00');
INSERT INTO `sys_job_log` VALUES ('2840', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:33:15');
INSERT INTO `sys_job_log` VALUES ('2841', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:33:30');
INSERT INTO `sys_job_log` VALUES ('2842', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:33:45');
INSERT INTO `sys_job_log` VALUES ('2843', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:34:00');
INSERT INTO `sys_job_log` VALUES ('2844', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:34:15');
INSERT INTO `sys_job_log` VALUES ('2845', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:34:30');
INSERT INTO `sys_job_log` VALUES ('2846', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:34:45');
INSERT INTO `sys_job_log` VALUES ('2847', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:35:00');
INSERT INTO `sys_job_log` VALUES ('2848', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:35:15');
INSERT INTO `sys_job_log` VALUES ('2849', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:35:30');
INSERT INTO `sys_job_log` VALUES ('2850', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:35:45');
INSERT INTO `sys_job_log` VALUES ('2851', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:36:00');
INSERT INTO `sys_job_log` VALUES ('2852', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:36:15');
INSERT INTO `sys_job_log` VALUES ('2853', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:36:30');
INSERT INTO `sys_job_log` VALUES ('2854', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:36:45');
INSERT INTO `sys_job_log` VALUES ('2855', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:37:00');
INSERT INTO `sys_job_log` VALUES ('2856', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:37:15');
INSERT INTO `sys_job_log` VALUES ('2857', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:37:30');
INSERT INTO `sys_job_log` VALUES ('2858', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:37:45');
INSERT INTO `sys_job_log` VALUES ('2859', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:38:00');
INSERT INTO `sys_job_log` VALUES ('2860', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:38:15');
INSERT INTO `sys_job_log` VALUES ('2861', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:38:30');
INSERT INTO `sys_job_log` VALUES ('2862', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:38:45');
INSERT INTO `sys_job_log` VALUES ('2863', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:39:00');
INSERT INTO `sys_job_log` VALUES ('2864', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:39:15');
INSERT INTO `sys_job_log` VALUES ('2865', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:39:30');
INSERT INTO `sys_job_log` VALUES ('2866', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:39:45');
INSERT INTO `sys_job_log` VALUES ('2867', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:40:00');
INSERT INTO `sys_job_log` VALUES ('2868', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:40:15');
INSERT INTO `sys_job_log` VALUES ('2869', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:40:30');
INSERT INTO `sys_job_log` VALUES ('2870', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:40:45');
INSERT INTO `sys_job_log` VALUES ('2871', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:41:00');
INSERT INTO `sys_job_log` VALUES ('2872', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:41:15');
INSERT INTO `sys_job_log` VALUES ('2873', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:41:30');
INSERT INTO `sys_job_log` VALUES ('2874', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:41:45');
INSERT INTO `sys_job_log` VALUES ('2875', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:42:00');
INSERT INTO `sys_job_log` VALUES ('2876', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:42:15');
INSERT INTO `sys_job_log` VALUES ('2877', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:42:30');
INSERT INTO `sys_job_log` VALUES ('2878', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:42:45');
INSERT INTO `sys_job_log` VALUES ('2879', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:43:00');
INSERT INTO `sys_job_log` VALUES ('2880', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:43:15');
INSERT INTO `sys_job_log` VALUES ('2881', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:43:30');
INSERT INTO `sys_job_log` VALUES ('2882', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:43:45');
INSERT INTO `sys_job_log` VALUES ('2883', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:44:00');
INSERT INTO `sys_job_log` VALUES ('2884', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:44:15');
INSERT INTO `sys_job_log` VALUES ('2885', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:44:30');
INSERT INTO `sys_job_log` VALUES ('2886', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:44:45');
INSERT INTO `sys_job_log` VALUES ('2887', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:45:00');
INSERT INTO `sys_job_log` VALUES ('2888', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:45:15');
INSERT INTO `sys_job_log` VALUES ('2889', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:45:30');
INSERT INTO `sys_job_log` VALUES ('2890', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:45:45');
INSERT INTO `sys_job_log` VALUES ('2891', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:46:00');
INSERT INTO `sys_job_log` VALUES ('2892', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:46:15');
INSERT INTO `sys_job_log` VALUES ('2893', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:46:30');
INSERT INTO `sys_job_log` VALUES ('2894', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:46:45');
INSERT INTO `sys_job_log` VALUES ('2895', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:47:00');
INSERT INTO `sys_job_log` VALUES ('2896', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:47:15');
INSERT INTO `sys_job_log` VALUES ('2897', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:47:30');
INSERT INTO `sys_job_log` VALUES ('2898', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:47:45');
INSERT INTO `sys_job_log` VALUES ('2899', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:48:00');
INSERT INTO `sys_job_log` VALUES ('2900', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:48:15');
INSERT INTO `sys_job_log` VALUES ('2901', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:48:30');
INSERT INTO `sys_job_log` VALUES ('2902', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:48:45');
INSERT INTO `sys_job_log` VALUES ('2903', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:49:00');
INSERT INTO `sys_job_log` VALUES ('2904', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:49:15');
INSERT INTO `sys_job_log` VALUES ('2905', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:49:30');
INSERT INTO `sys_job_log` VALUES ('2906', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:49:45');
INSERT INTO `sys_job_log` VALUES ('2907', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:50:00');
INSERT INTO `sys_job_log` VALUES ('2908', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:50:15');
INSERT INTO `sys_job_log` VALUES ('2909', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:50:30');
INSERT INTO `sys_job_log` VALUES ('2910', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:50:45');
INSERT INTO `sys_job_log` VALUES ('2911', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 02:51:00');
INSERT INTO `sys_job_log` VALUES ('2912', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:51:15');
INSERT INTO `sys_job_log` VALUES ('2913', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:51:30');
INSERT INTO `sys_job_log` VALUES ('2914', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:51:45');
INSERT INTO `sys_job_log` VALUES ('2915', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:52:00');
INSERT INTO `sys_job_log` VALUES ('2916', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:52:15');
INSERT INTO `sys_job_log` VALUES ('2917', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:52:30');
INSERT INTO `sys_job_log` VALUES ('2918', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:52:45');
INSERT INTO `sys_job_log` VALUES ('2919', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:53:00');
INSERT INTO `sys_job_log` VALUES ('2920', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:53:15');
INSERT INTO `sys_job_log` VALUES ('2921', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:53:30');
INSERT INTO `sys_job_log` VALUES ('2922', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:53:45');
INSERT INTO `sys_job_log` VALUES ('2923', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 02:54:00');
INSERT INTO `sys_job_log` VALUES ('2924', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:54:15');
INSERT INTO `sys_job_log` VALUES ('2925', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 02:54:30');
INSERT INTO `sys_job_log` VALUES ('2926', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:54:45');
INSERT INTO `sys_job_log` VALUES ('2927', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:55:00');
INSERT INTO `sys_job_log` VALUES ('2928', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:55:15');
INSERT INTO `sys_job_log` VALUES ('2929', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:55:30');
INSERT INTO `sys_job_log` VALUES ('2930', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:55:45');
INSERT INTO `sys_job_log` VALUES ('2931', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:56:00');
INSERT INTO `sys_job_log` VALUES ('2932', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:56:15');
INSERT INTO `sys_job_log` VALUES ('2933', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:56:30');
INSERT INTO `sys_job_log` VALUES ('2934', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:56:45');
INSERT INTO `sys_job_log` VALUES ('2935', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:57:00');
INSERT INTO `sys_job_log` VALUES ('2936', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:57:15');
INSERT INTO `sys_job_log` VALUES ('2937', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:57:30');
INSERT INTO `sys_job_log` VALUES ('2938', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:57:45');
INSERT INTO `sys_job_log` VALUES ('2939', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:58:00');
INSERT INTO `sys_job_log` VALUES ('2940', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:58:15');
INSERT INTO `sys_job_log` VALUES ('2941', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:58:30');
INSERT INTO `sys_job_log` VALUES ('2942', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:58:45');
INSERT INTO `sys_job_log` VALUES ('2943', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:59:00');
INSERT INTO `sys_job_log` VALUES ('2944', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:59:15');
INSERT INTO `sys_job_log` VALUES ('2945', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:59:30');
INSERT INTO `sys_job_log` VALUES ('2946', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 02:59:45');
INSERT INTO `sys_job_log` VALUES ('2947', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:00:00');
INSERT INTO `sys_job_log` VALUES ('2948', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:00:15');
INSERT INTO `sys_job_log` VALUES ('2949', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:00:30');
INSERT INTO `sys_job_log` VALUES ('2950', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:00:45');
INSERT INTO `sys_job_log` VALUES ('2951', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:01:00');
INSERT INTO `sys_job_log` VALUES ('2952', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:01:15');
INSERT INTO `sys_job_log` VALUES ('2953', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:01:30');
INSERT INTO `sys_job_log` VALUES ('2954', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:01:45');
INSERT INTO `sys_job_log` VALUES ('2955', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:02:00');
INSERT INTO `sys_job_log` VALUES ('2956', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:02:15');
INSERT INTO `sys_job_log` VALUES ('2957', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:02:30');
INSERT INTO `sys_job_log` VALUES ('2958', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:02:45');
INSERT INTO `sys_job_log` VALUES ('2959', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:03:00');
INSERT INTO `sys_job_log` VALUES ('2960', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:03:15');
INSERT INTO `sys_job_log` VALUES ('2961', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:03:30');
INSERT INTO `sys_job_log` VALUES ('2962', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:03:45');
INSERT INTO `sys_job_log` VALUES ('2963', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:04:00');
INSERT INTO `sys_job_log` VALUES ('2964', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:04:15');
INSERT INTO `sys_job_log` VALUES ('2965', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:04:30');
INSERT INTO `sys_job_log` VALUES ('2966', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:04:45');
INSERT INTO `sys_job_log` VALUES ('2967', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:05:00');
INSERT INTO `sys_job_log` VALUES ('2968', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:05:15');
INSERT INTO `sys_job_log` VALUES ('2969', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:05:30');
INSERT INTO `sys_job_log` VALUES ('2970', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:05:45');
INSERT INTO `sys_job_log` VALUES ('2971', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:06:00');
INSERT INTO `sys_job_log` VALUES ('2972', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:06:15');
INSERT INTO `sys_job_log` VALUES ('2973', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:06:30');
INSERT INTO `sys_job_log` VALUES ('2974', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:06:45');
INSERT INTO `sys_job_log` VALUES ('2975', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:07:00');
INSERT INTO `sys_job_log` VALUES ('2976', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:07:15');
INSERT INTO `sys_job_log` VALUES ('2977', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:07:30');
INSERT INTO `sys_job_log` VALUES ('2978', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:07:45');
INSERT INTO `sys_job_log` VALUES ('2979', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:08:00');
INSERT INTO `sys_job_log` VALUES ('2980', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:08:15');
INSERT INTO `sys_job_log` VALUES ('2981', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:08:30');
INSERT INTO `sys_job_log` VALUES ('2982', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:08:45');
INSERT INTO `sys_job_log` VALUES ('2983', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:09:00');
INSERT INTO `sys_job_log` VALUES ('2984', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:09:15');
INSERT INTO `sys_job_log` VALUES ('2985', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:09:30');
INSERT INTO `sys_job_log` VALUES ('2986', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:09:45');
INSERT INTO `sys_job_log` VALUES ('2987', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:10:00');
INSERT INTO `sys_job_log` VALUES ('2988', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:10:15');
INSERT INTO `sys_job_log` VALUES ('2989', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:10:30');
INSERT INTO `sys_job_log` VALUES ('2990', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:10:45');
INSERT INTO `sys_job_log` VALUES ('2991', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:11:00');
INSERT INTO `sys_job_log` VALUES ('2992', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:11:15');
INSERT INTO `sys_job_log` VALUES ('2993', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:11:30');
INSERT INTO `sys_job_log` VALUES ('2994', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:11:45');
INSERT INTO `sys_job_log` VALUES ('2995', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:12:00');
INSERT INTO `sys_job_log` VALUES ('2996', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:12:15');
INSERT INTO `sys_job_log` VALUES ('2997', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:12:30');
INSERT INTO `sys_job_log` VALUES ('2998', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:12:45');
INSERT INTO `sys_job_log` VALUES ('2999', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:13:00');
INSERT INTO `sys_job_log` VALUES ('3000', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:13:15');
INSERT INTO `sys_job_log` VALUES ('3001', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:13:30');
INSERT INTO `sys_job_log` VALUES ('3002', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:13:45');
INSERT INTO `sys_job_log` VALUES ('3003', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:14:00');
INSERT INTO `sys_job_log` VALUES ('3004', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:14:15');
INSERT INTO `sys_job_log` VALUES ('3005', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:14:30');
INSERT INTO `sys_job_log` VALUES ('3006', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:14:45');
INSERT INTO `sys_job_log` VALUES ('3007', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:15:00');
INSERT INTO `sys_job_log` VALUES ('3008', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:15:15');
INSERT INTO `sys_job_log` VALUES ('3009', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:15:30');
INSERT INTO `sys_job_log` VALUES ('3010', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:15:45');
INSERT INTO `sys_job_log` VALUES ('3011', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:16:00');
INSERT INTO `sys_job_log` VALUES ('3012', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:16:15');
INSERT INTO `sys_job_log` VALUES ('3013', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:16:30');
INSERT INTO `sys_job_log` VALUES ('3014', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:16:45');
INSERT INTO `sys_job_log` VALUES ('3015', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:17:00');
INSERT INTO `sys_job_log` VALUES ('3016', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:17:15');
INSERT INTO `sys_job_log` VALUES ('3017', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:17:30');
INSERT INTO `sys_job_log` VALUES ('3018', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:17:45');
INSERT INTO `sys_job_log` VALUES ('3019', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:18:00');
INSERT INTO `sys_job_log` VALUES ('3020', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:18:15');
INSERT INTO `sys_job_log` VALUES ('3021', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:18:30');
INSERT INTO `sys_job_log` VALUES ('3022', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:18:45');
INSERT INTO `sys_job_log` VALUES ('3023', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:19:00');
INSERT INTO `sys_job_log` VALUES ('3024', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:19:15');
INSERT INTO `sys_job_log` VALUES ('3025', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:19:30');
INSERT INTO `sys_job_log` VALUES ('3026', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:19:45');
INSERT INTO `sys_job_log` VALUES ('3027', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:20:00');
INSERT INTO `sys_job_log` VALUES ('3028', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:20:15');
INSERT INTO `sys_job_log` VALUES ('3029', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:20:30');
INSERT INTO `sys_job_log` VALUES ('3030', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:20:45');
INSERT INTO `sys_job_log` VALUES ('3031', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:21:00');
INSERT INTO `sys_job_log` VALUES ('3032', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:21:15');
INSERT INTO `sys_job_log` VALUES ('3033', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:21:30');
INSERT INTO `sys_job_log` VALUES ('3034', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:21:45');
INSERT INTO `sys_job_log` VALUES ('3035', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:22:00');
INSERT INTO `sys_job_log` VALUES ('3036', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:22:15');
INSERT INTO `sys_job_log` VALUES ('3037', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:22:30');
INSERT INTO `sys_job_log` VALUES ('3038', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:22:45');
INSERT INTO `sys_job_log` VALUES ('3039', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:23:00');
INSERT INTO `sys_job_log` VALUES ('3040', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:23:15');
INSERT INTO `sys_job_log` VALUES ('3041', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:23:30');
INSERT INTO `sys_job_log` VALUES ('3042', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:23:45');
INSERT INTO `sys_job_log` VALUES ('3043', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:24:00');
INSERT INTO `sys_job_log` VALUES ('3044', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:24:15');
INSERT INTO `sys_job_log` VALUES ('3045', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:24:30');
INSERT INTO `sys_job_log` VALUES ('3046', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:24:45');
INSERT INTO `sys_job_log` VALUES ('3047', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:25:00');
INSERT INTO `sys_job_log` VALUES ('3048', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:25:15');
INSERT INTO `sys_job_log` VALUES ('3049', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:25:30');
INSERT INTO `sys_job_log` VALUES ('3050', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:25:45');
INSERT INTO `sys_job_log` VALUES ('3051', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:26:00');
INSERT INTO `sys_job_log` VALUES ('3052', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:26:15');
INSERT INTO `sys_job_log` VALUES ('3053', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:26:30');
INSERT INTO `sys_job_log` VALUES ('3054', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:26:45');
INSERT INTO `sys_job_log` VALUES ('3055', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:27:00');
INSERT INTO `sys_job_log` VALUES ('3056', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:27:15');
INSERT INTO `sys_job_log` VALUES ('3057', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:27:30');
INSERT INTO `sys_job_log` VALUES ('3058', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:27:45');
INSERT INTO `sys_job_log` VALUES ('3059', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:28:00');
INSERT INTO `sys_job_log` VALUES ('3060', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:28:15');
INSERT INTO `sys_job_log` VALUES ('3061', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:28:30');
INSERT INTO `sys_job_log` VALUES ('3062', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:28:45');
INSERT INTO `sys_job_log` VALUES ('3063', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:29:00');
INSERT INTO `sys_job_log` VALUES ('3064', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:29:15');
INSERT INTO `sys_job_log` VALUES ('3065', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:29:30');
INSERT INTO `sys_job_log` VALUES ('3066', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:29:45');
INSERT INTO `sys_job_log` VALUES ('3067', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:30:00');
INSERT INTO `sys_job_log` VALUES ('3068', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:30:15');
INSERT INTO `sys_job_log` VALUES ('3069', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:30:30');
INSERT INTO `sys_job_log` VALUES ('3070', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:30:45');
INSERT INTO `sys_job_log` VALUES ('3071', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:31:00');
INSERT INTO `sys_job_log` VALUES ('3072', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:31:15');
INSERT INTO `sys_job_log` VALUES ('3073', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:31:30');
INSERT INTO `sys_job_log` VALUES ('3074', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:31:45');
INSERT INTO `sys_job_log` VALUES ('3075', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:32:00');
INSERT INTO `sys_job_log` VALUES ('3076', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:32:15');
INSERT INTO `sys_job_log` VALUES ('3077', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:32:30');
INSERT INTO `sys_job_log` VALUES ('3078', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:32:45');
INSERT INTO `sys_job_log` VALUES ('3079', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:33:00');
INSERT INTO `sys_job_log` VALUES ('3080', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:33:15');
INSERT INTO `sys_job_log` VALUES ('3081', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:33:30');
INSERT INTO `sys_job_log` VALUES ('3082', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:33:45');
INSERT INTO `sys_job_log` VALUES ('3083', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:34:00');
INSERT INTO `sys_job_log` VALUES ('3084', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:34:15');
INSERT INTO `sys_job_log` VALUES ('3085', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:34:30');
INSERT INTO `sys_job_log` VALUES ('3086', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:34:45');
INSERT INTO `sys_job_log` VALUES ('3087', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:35:00');
INSERT INTO `sys_job_log` VALUES ('3088', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:35:15');
INSERT INTO `sys_job_log` VALUES ('3089', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:35:30');
INSERT INTO `sys_job_log` VALUES ('3090', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:35:45');
INSERT INTO `sys_job_log` VALUES ('3091', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:36:00');
INSERT INTO `sys_job_log` VALUES ('3092', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:36:15');
INSERT INTO `sys_job_log` VALUES ('3093', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:36:30');
INSERT INTO `sys_job_log` VALUES ('3094', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:36:45');
INSERT INTO `sys_job_log` VALUES ('3095', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:37:00');
INSERT INTO `sys_job_log` VALUES ('3096', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:37:15');
INSERT INTO `sys_job_log` VALUES ('3097', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:37:30');
INSERT INTO `sys_job_log` VALUES ('3098', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:37:45');
INSERT INTO `sys_job_log` VALUES ('3099', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:38:00');
INSERT INTO `sys_job_log` VALUES ('3100', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:38:15');
INSERT INTO `sys_job_log` VALUES ('3101', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:38:30');
INSERT INTO `sys_job_log` VALUES ('3102', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:38:45');
INSERT INTO `sys_job_log` VALUES ('3103', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:39:00');
INSERT INTO `sys_job_log` VALUES ('3104', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:39:15');
INSERT INTO `sys_job_log` VALUES ('3105', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:39:30');
INSERT INTO `sys_job_log` VALUES ('3106', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:39:45');
INSERT INTO `sys_job_log` VALUES ('3107', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:40:00');
INSERT INTO `sys_job_log` VALUES ('3108', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:40:15');
INSERT INTO `sys_job_log` VALUES ('3109', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:40:30');
INSERT INTO `sys_job_log` VALUES ('3110', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:40:45');
INSERT INTO `sys_job_log` VALUES ('3111', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:41:00');
INSERT INTO `sys_job_log` VALUES ('3112', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:41:15');
INSERT INTO `sys_job_log` VALUES ('3113', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:41:30');
INSERT INTO `sys_job_log` VALUES ('3114', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:41:45');
INSERT INTO `sys_job_log` VALUES ('3115', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:42:00');
INSERT INTO `sys_job_log` VALUES ('3116', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:42:15');
INSERT INTO `sys_job_log` VALUES ('3117', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:42:30');
INSERT INTO `sys_job_log` VALUES ('3118', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:42:45');
INSERT INTO `sys_job_log` VALUES ('3119', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:43:00');
INSERT INTO `sys_job_log` VALUES ('3120', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:43:15');
INSERT INTO `sys_job_log` VALUES ('3121', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:43:30');
INSERT INTO `sys_job_log` VALUES ('3122', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:43:45');
INSERT INTO `sys_job_log` VALUES ('3123', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:44:00');
INSERT INTO `sys_job_log` VALUES ('3124', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:44:15');
INSERT INTO `sys_job_log` VALUES ('3125', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:44:30');
INSERT INTO `sys_job_log` VALUES ('3126', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:44:45');
INSERT INTO `sys_job_log` VALUES ('3127', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:45:00');
INSERT INTO `sys_job_log` VALUES ('3128', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:45:15');
INSERT INTO `sys_job_log` VALUES ('3129', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:45:30');
INSERT INTO `sys_job_log` VALUES ('3130', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:45:45');
INSERT INTO `sys_job_log` VALUES ('3131', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:46:00');
INSERT INTO `sys_job_log` VALUES ('3132', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:46:15');
INSERT INTO `sys_job_log` VALUES ('3133', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:46:30');
INSERT INTO `sys_job_log` VALUES ('3134', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:46:45');
INSERT INTO `sys_job_log` VALUES ('3135', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:47:00');
INSERT INTO `sys_job_log` VALUES ('3136', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:47:15');
INSERT INTO `sys_job_log` VALUES ('3137', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:47:30');
INSERT INTO `sys_job_log` VALUES ('3138', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:47:45');
INSERT INTO `sys_job_log` VALUES ('3139', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:48:00');
INSERT INTO `sys_job_log` VALUES ('3140', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:48:15');
INSERT INTO `sys_job_log` VALUES ('3141', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:48:30');
INSERT INTO `sys_job_log` VALUES ('3142', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:48:45');
INSERT INTO `sys_job_log` VALUES ('3143', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:49:00');
INSERT INTO `sys_job_log` VALUES ('3144', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:49:15');
INSERT INTO `sys_job_log` VALUES ('3145', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:49:30');
INSERT INTO `sys_job_log` VALUES ('3146', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:49:45');
INSERT INTO `sys_job_log` VALUES ('3147', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:50:00');
INSERT INTO `sys_job_log` VALUES ('3148', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:50:15');
INSERT INTO `sys_job_log` VALUES ('3149', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:50:30');
INSERT INTO `sys_job_log` VALUES ('3150', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:50:45');
INSERT INTO `sys_job_log` VALUES ('3151', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:51:00');
INSERT INTO `sys_job_log` VALUES ('3152', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:51:15');
INSERT INTO `sys_job_log` VALUES ('3153', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:51:30');
INSERT INTO `sys_job_log` VALUES ('3154', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:51:45');
INSERT INTO `sys_job_log` VALUES ('3155', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:52:00');
INSERT INTO `sys_job_log` VALUES ('3156', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:52:15');
INSERT INTO `sys_job_log` VALUES ('3157', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:52:30');
INSERT INTO `sys_job_log` VALUES ('3158', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:52:45');
INSERT INTO `sys_job_log` VALUES ('3159', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:53:00');
INSERT INTO `sys_job_log` VALUES ('3160', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:53:15');
INSERT INTO `sys_job_log` VALUES ('3161', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 03:53:30');
INSERT INTO `sys_job_log` VALUES ('3162', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:53:45');
INSERT INTO `sys_job_log` VALUES ('3163', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:54:00');
INSERT INTO `sys_job_log` VALUES ('3164', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:54:15');
INSERT INTO `sys_job_log` VALUES ('3165', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:54:30');
INSERT INTO `sys_job_log` VALUES ('3166', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:54:45');
INSERT INTO `sys_job_log` VALUES ('3167', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:55:00');
INSERT INTO `sys_job_log` VALUES ('3168', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:55:15');
INSERT INTO `sys_job_log` VALUES ('3169', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:55:30');
INSERT INTO `sys_job_log` VALUES ('3170', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:55:45');
INSERT INTO `sys_job_log` VALUES ('3171', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:56:00');
INSERT INTO `sys_job_log` VALUES ('3172', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:56:15');
INSERT INTO `sys_job_log` VALUES ('3173', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:56:30');
INSERT INTO `sys_job_log` VALUES ('3174', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:56:45');
INSERT INTO `sys_job_log` VALUES ('3175', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:57:00');
INSERT INTO `sys_job_log` VALUES ('3176', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:57:15');
INSERT INTO `sys_job_log` VALUES ('3177', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:57:30');
INSERT INTO `sys_job_log` VALUES ('3178', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:57:45');
INSERT INTO `sys_job_log` VALUES ('3179', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:58:00');
INSERT INTO `sys_job_log` VALUES ('3180', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:58:15');
INSERT INTO `sys_job_log` VALUES ('3181', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:58:30');
INSERT INTO `sys_job_log` VALUES ('3182', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:58:45');
INSERT INTO `sys_job_log` VALUES ('3183', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:59:00');
INSERT INTO `sys_job_log` VALUES ('3184', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:59:15');
INSERT INTO `sys_job_log` VALUES ('3185', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:59:30');
INSERT INTO `sys_job_log` VALUES ('3186', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 03:59:45');
INSERT INTO `sys_job_log` VALUES ('3187', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:00:00');
INSERT INTO `sys_job_log` VALUES ('3188', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:00:15');
INSERT INTO `sys_job_log` VALUES ('3189', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:00:30');
INSERT INTO `sys_job_log` VALUES ('3190', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:00:45');
INSERT INTO `sys_job_log` VALUES ('3191', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:01:00');
INSERT INTO `sys_job_log` VALUES ('3192', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:01:15');
INSERT INTO `sys_job_log` VALUES ('3193', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:01:30');
INSERT INTO `sys_job_log` VALUES ('3194', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:01:45');
INSERT INTO `sys_job_log` VALUES ('3195', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:02:00');
INSERT INTO `sys_job_log` VALUES ('3196', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:02:15');
INSERT INTO `sys_job_log` VALUES ('3197', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:02:30');
INSERT INTO `sys_job_log` VALUES ('3198', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:02:45');
INSERT INTO `sys_job_log` VALUES ('3199', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:03:00');
INSERT INTO `sys_job_log` VALUES ('3200', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:03:15');
INSERT INTO `sys_job_log` VALUES ('3201', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:03:30');
INSERT INTO `sys_job_log` VALUES ('3202', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:03:45');
INSERT INTO `sys_job_log` VALUES ('3203', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:04:00');
INSERT INTO `sys_job_log` VALUES ('3204', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:04:15');
INSERT INTO `sys_job_log` VALUES ('3205', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:04:30');
INSERT INTO `sys_job_log` VALUES ('3206', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:04:45');
INSERT INTO `sys_job_log` VALUES ('3207', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:05:00');
INSERT INTO `sys_job_log` VALUES ('3208', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:05:15');
INSERT INTO `sys_job_log` VALUES ('3209', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:05:30');
INSERT INTO `sys_job_log` VALUES ('3210', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:05:45');
INSERT INTO `sys_job_log` VALUES ('3211', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:06:00');
INSERT INTO `sys_job_log` VALUES ('3212', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:06:15');
INSERT INTO `sys_job_log` VALUES ('3213', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:06:30');
INSERT INTO `sys_job_log` VALUES ('3214', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:06:45');
INSERT INTO `sys_job_log` VALUES ('3215', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:07:00');
INSERT INTO `sys_job_log` VALUES ('3216', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:07:15');
INSERT INTO `sys_job_log` VALUES ('3217', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:07:30');
INSERT INTO `sys_job_log` VALUES ('3218', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:07:45');
INSERT INTO `sys_job_log` VALUES ('3219', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:08:00');
INSERT INTO `sys_job_log` VALUES ('3220', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:08:15');
INSERT INTO `sys_job_log` VALUES ('3221', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:08:30');
INSERT INTO `sys_job_log` VALUES ('3222', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:08:45');
INSERT INTO `sys_job_log` VALUES ('3223', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:09:00');
INSERT INTO `sys_job_log` VALUES ('3224', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:09:15');
INSERT INTO `sys_job_log` VALUES ('3225', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:09:30');
INSERT INTO `sys_job_log` VALUES ('3226', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:09:45');
INSERT INTO `sys_job_log` VALUES ('3227', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:10:00');
INSERT INTO `sys_job_log` VALUES ('3228', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:10:15');
INSERT INTO `sys_job_log` VALUES ('3229', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:10:30');
INSERT INTO `sys_job_log` VALUES ('3230', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:10:45');
INSERT INTO `sys_job_log` VALUES ('3231', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:11:00');
INSERT INTO `sys_job_log` VALUES ('3232', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:11:15');
INSERT INTO `sys_job_log` VALUES ('3233', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:11:30');
INSERT INTO `sys_job_log` VALUES ('3234', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:11:45');
INSERT INTO `sys_job_log` VALUES ('3235', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:12:00');
INSERT INTO `sys_job_log` VALUES ('3236', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:12:15');
INSERT INTO `sys_job_log` VALUES ('3237', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:12:30');
INSERT INTO `sys_job_log` VALUES ('3238', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:12:45');
INSERT INTO `sys_job_log` VALUES ('3239', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:13:00');
INSERT INTO `sys_job_log` VALUES ('3240', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:13:15');
INSERT INTO `sys_job_log` VALUES ('3241', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:13:30');
INSERT INTO `sys_job_log` VALUES ('3242', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:13:45');
INSERT INTO `sys_job_log` VALUES ('3243', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:14:00');
INSERT INTO `sys_job_log` VALUES ('3244', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:14:15');
INSERT INTO `sys_job_log` VALUES ('3245', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:14:30');
INSERT INTO `sys_job_log` VALUES ('3246', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:14:45');
INSERT INTO `sys_job_log` VALUES ('3247', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:15:00');
INSERT INTO `sys_job_log` VALUES ('3248', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:15:15');
INSERT INTO `sys_job_log` VALUES ('3249', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:15:30');
INSERT INTO `sys_job_log` VALUES ('3250', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:15:45');
INSERT INTO `sys_job_log` VALUES ('3251', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:16:00');
INSERT INTO `sys_job_log` VALUES ('3252', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:16:15');
INSERT INTO `sys_job_log` VALUES ('3253', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:16:30');
INSERT INTO `sys_job_log` VALUES ('3254', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:16:45');
INSERT INTO `sys_job_log` VALUES ('3255', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:17:00');
INSERT INTO `sys_job_log` VALUES ('3256', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:17:15');
INSERT INTO `sys_job_log` VALUES ('3257', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:17:30');
INSERT INTO `sys_job_log` VALUES ('3258', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:17:45');
INSERT INTO `sys_job_log` VALUES ('3259', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:18:00');
INSERT INTO `sys_job_log` VALUES ('3260', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:18:15');
INSERT INTO `sys_job_log` VALUES ('3261', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:18:30');
INSERT INTO `sys_job_log` VALUES ('3262', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:18:45');
INSERT INTO `sys_job_log` VALUES ('3263', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:19:00');
INSERT INTO `sys_job_log` VALUES ('3264', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:19:15');
INSERT INTO `sys_job_log` VALUES ('3265', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:19:30');
INSERT INTO `sys_job_log` VALUES ('3266', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:19:45');
INSERT INTO `sys_job_log` VALUES ('3267', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:20:00');
INSERT INTO `sys_job_log` VALUES ('3268', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:20:15');
INSERT INTO `sys_job_log` VALUES ('3269', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:20:30');
INSERT INTO `sys_job_log` VALUES ('3270', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:20:45');
INSERT INTO `sys_job_log` VALUES ('3271', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:21:00');
INSERT INTO `sys_job_log` VALUES ('3272', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:21:15');
INSERT INTO `sys_job_log` VALUES ('3273', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:21:30');
INSERT INTO `sys_job_log` VALUES ('3274', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:21:45');
INSERT INTO `sys_job_log` VALUES ('3275', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:22:00');
INSERT INTO `sys_job_log` VALUES ('3276', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:22:15');
INSERT INTO `sys_job_log` VALUES ('3277', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:22:30');
INSERT INTO `sys_job_log` VALUES ('3278', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:22:45');
INSERT INTO `sys_job_log` VALUES ('3279', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:23:00');
INSERT INTO `sys_job_log` VALUES ('3280', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:23:15');
INSERT INTO `sys_job_log` VALUES ('3281', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:23:30');
INSERT INTO `sys_job_log` VALUES ('3282', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:23:45');
INSERT INTO `sys_job_log` VALUES ('3283', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:24:00');
INSERT INTO `sys_job_log` VALUES ('3284', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:24:15');
INSERT INTO `sys_job_log` VALUES ('3285', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:24:30');
INSERT INTO `sys_job_log` VALUES ('3286', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:24:45');
INSERT INTO `sys_job_log` VALUES ('3287', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:25:00');
INSERT INTO `sys_job_log` VALUES ('3288', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:25:15');
INSERT INTO `sys_job_log` VALUES ('3289', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:25:30');
INSERT INTO `sys_job_log` VALUES ('3290', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:25:45');
INSERT INTO `sys_job_log` VALUES ('3291', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:26:00');
INSERT INTO `sys_job_log` VALUES ('3292', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:26:15');
INSERT INTO `sys_job_log` VALUES ('3293', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:26:30');
INSERT INTO `sys_job_log` VALUES ('3294', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:26:45');
INSERT INTO `sys_job_log` VALUES ('3295', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:27:00');
INSERT INTO `sys_job_log` VALUES ('3296', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:27:15');
INSERT INTO `sys_job_log` VALUES ('3297', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:27:30');
INSERT INTO `sys_job_log` VALUES ('3298', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:27:45');
INSERT INTO `sys_job_log` VALUES ('3299', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:28:00');
INSERT INTO `sys_job_log` VALUES ('3300', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:28:15');
INSERT INTO `sys_job_log` VALUES ('3301', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:28:30');
INSERT INTO `sys_job_log` VALUES ('3302', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:28:45');
INSERT INTO `sys_job_log` VALUES ('3303', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:29:00');
INSERT INTO `sys_job_log` VALUES ('3304', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:29:15');
INSERT INTO `sys_job_log` VALUES ('3305', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:29:30');
INSERT INTO `sys_job_log` VALUES ('3306', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:29:45');
INSERT INTO `sys_job_log` VALUES ('3307', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:30:00');
INSERT INTO `sys_job_log` VALUES ('3308', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:30:15');
INSERT INTO `sys_job_log` VALUES ('3309', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:30:30');
INSERT INTO `sys_job_log` VALUES ('3310', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:30:45');
INSERT INTO `sys_job_log` VALUES ('3311', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:31:00');
INSERT INTO `sys_job_log` VALUES ('3312', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:31:15');
INSERT INTO `sys_job_log` VALUES ('3313', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:31:30');
INSERT INTO `sys_job_log` VALUES ('3314', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:31:45');
INSERT INTO `sys_job_log` VALUES ('3315', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:32:00');
INSERT INTO `sys_job_log` VALUES ('3316', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:32:15');
INSERT INTO `sys_job_log` VALUES ('3317', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:32:30');
INSERT INTO `sys_job_log` VALUES ('3318', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:32:45');
INSERT INTO `sys_job_log` VALUES ('3319', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:33:00');
INSERT INTO `sys_job_log` VALUES ('3320', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:33:15');
INSERT INTO `sys_job_log` VALUES ('3321', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:33:30');
INSERT INTO `sys_job_log` VALUES ('3322', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:33:45');
INSERT INTO `sys_job_log` VALUES ('3323', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:34:00');
INSERT INTO `sys_job_log` VALUES ('3324', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:34:15');
INSERT INTO `sys_job_log` VALUES ('3325', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:34:30');
INSERT INTO `sys_job_log` VALUES ('3326', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:34:45');
INSERT INTO `sys_job_log` VALUES ('3327', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:35:00');
INSERT INTO `sys_job_log` VALUES ('3328', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:35:15');
INSERT INTO `sys_job_log` VALUES ('3329', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:35:30');
INSERT INTO `sys_job_log` VALUES ('3330', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:35:45');
INSERT INTO `sys_job_log` VALUES ('3331', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:36:00');
INSERT INTO `sys_job_log` VALUES ('3332', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:36:15');
INSERT INTO `sys_job_log` VALUES ('3333', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:36:30');
INSERT INTO `sys_job_log` VALUES ('3334', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:36:45');
INSERT INTO `sys_job_log` VALUES ('3335', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:37:00');
INSERT INTO `sys_job_log` VALUES ('3336', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:37:15');
INSERT INTO `sys_job_log` VALUES ('3337', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:37:30');
INSERT INTO `sys_job_log` VALUES ('3338', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:37:45');
INSERT INTO `sys_job_log` VALUES ('3339', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:38:00');
INSERT INTO `sys_job_log` VALUES ('3340', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:38:15');
INSERT INTO `sys_job_log` VALUES ('3341', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:38:30');
INSERT INTO `sys_job_log` VALUES ('3342', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:38:45');
INSERT INTO `sys_job_log` VALUES ('3343', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:39:00');
INSERT INTO `sys_job_log` VALUES ('3344', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:39:15');
INSERT INTO `sys_job_log` VALUES ('3345', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:39:30');
INSERT INTO `sys_job_log` VALUES ('3346', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:39:45');
INSERT INTO `sys_job_log` VALUES ('3347', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:40:00');
INSERT INTO `sys_job_log` VALUES ('3348', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:40:15');
INSERT INTO `sys_job_log` VALUES ('3349', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:40:30');
INSERT INTO `sys_job_log` VALUES ('3350', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:40:45');
INSERT INTO `sys_job_log` VALUES ('3351', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:41:00');
INSERT INTO `sys_job_log` VALUES ('3352', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:41:15');
INSERT INTO `sys_job_log` VALUES ('3353', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:41:30');
INSERT INTO `sys_job_log` VALUES ('3354', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:41:45');
INSERT INTO `sys_job_log` VALUES ('3355', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:42:00');
INSERT INTO `sys_job_log` VALUES ('3356', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:42:15');
INSERT INTO `sys_job_log` VALUES ('3357', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:42:30');
INSERT INTO `sys_job_log` VALUES ('3358', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:42:45');
INSERT INTO `sys_job_log` VALUES ('3359', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:43:00');
INSERT INTO `sys_job_log` VALUES ('3360', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:43:15');
INSERT INTO `sys_job_log` VALUES ('3361', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:43:30');
INSERT INTO `sys_job_log` VALUES ('3362', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:43:45');
INSERT INTO `sys_job_log` VALUES ('3363', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:44:00');
INSERT INTO `sys_job_log` VALUES ('3364', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:44:15');
INSERT INTO `sys_job_log` VALUES ('3365', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:44:30');
INSERT INTO `sys_job_log` VALUES ('3366', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:44:45');
INSERT INTO `sys_job_log` VALUES ('3367', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:45:00');
INSERT INTO `sys_job_log` VALUES ('3368', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:45:15');
INSERT INTO `sys_job_log` VALUES ('3369', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:45:30');
INSERT INTO `sys_job_log` VALUES ('3370', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:45:45');
INSERT INTO `sys_job_log` VALUES ('3371', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:46:00');
INSERT INTO `sys_job_log` VALUES ('3372', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:46:15');
INSERT INTO `sys_job_log` VALUES ('3373', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:46:30');
INSERT INTO `sys_job_log` VALUES ('3374', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:46:45');
INSERT INTO `sys_job_log` VALUES ('3375', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:47:00');
INSERT INTO `sys_job_log` VALUES ('3376', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:47:15');
INSERT INTO `sys_job_log` VALUES ('3377', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:47:30');
INSERT INTO `sys_job_log` VALUES ('3378', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:47:45');
INSERT INTO `sys_job_log` VALUES ('3379', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:48:00');
INSERT INTO `sys_job_log` VALUES ('3380', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:48:15');
INSERT INTO `sys_job_log` VALUES ('3381', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:48:30');
INSERT INTO `sys_job_log` VALUES ('3382', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:48:45');
INSERT INTO `sys_job_log` VALUES ('3383', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:49:00');
INSERT INTO `sys_job_log` VALUES ('3384', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:49:15');
INSERT INTO `sys_job_log` VALUES ('3385', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:49:30');
INSERT INTO `sys_job_log` VALUES ('3386', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:49:45');
INSERT INTO `sys_job_log` VALUES ('3387', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:50:00');
INSERT INTO `sys_job_log` VALUES ('3388', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:50:15');
INSERT INTO `sys_job_log` VALUES ('3389', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:50:30');
INSERT INTO `sys_job_log` VALUES ('3390', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:50:45');
INSERT INTO `sys_job_log` VALUES ('3391', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:51:00');
INSERT INTO `sys_job_log` VALUES ('3392', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:51:15');
INSERT INTO `sys_job_log` VALUES ('3393', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:51:30');
INSERT INTO `sys_job_log` VALUES ('3394', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:51:45');
INSERT INTO `sys_job_log` VALUES ('3395', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:52:00');
INSERT INTO `sys_job_log` VALUES ('3396', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:52:15');
INSERT INTO `sys_job_log` VALUES ('3397', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:52:30');
INSERT INTO `sys_job_log` VALUES ('3398', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:52:45');
INSERT INTO `sys_job_log` VALUES ('3399', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:53:00');
INSERT INTO `sys_job_log` VALUES ('3400', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:53:15');
INSERT INTO `sys_job_log` VALUES ('3401', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:53:30');
INSERT INTO `sys_job_log` VALUES ('3402', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:53:45');
INSERT INTO `sys_job_log` VALUES ('3403', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:54:00');
INSERT INTO `sys_job_log` VALUES ('3404', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:54:15');
INSERT INTO `sys_job_log` VALUES ('3405', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:54:30');
INSERT INTO `sys_job_log` VALUES ('3406', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:54:45');
INSERT INTO `sys_job_log` VALUES ('3407', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:55:00');
INSERT INTO `sys_job_log` VALUES ('3408', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:55:15');
INSERT INTO `sys_job_log` VALUES ('3409', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:55:30');
INSERT INTO `sys_job_log` VALUES ('3410', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:55:45');
INSERT INTO `sys_job_log` VALUES ('3411', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:56:00');
INSERT INTO `sys_job_log` VALUES ('3412', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:56:15');
INSERT INTO `sys_job_log` VALUES ('3413', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:56:30');
INSERT INTO `sys_job_log` VALUES ('3414', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:56:45');
INSERT INTO `sys_job_log` VALUES ('3415', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:57:00');
INSERT INTO `sys_job_log` VALUES ('3416', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:57:15');
INSERT INTO `sys_job_log` VALUES ('3417', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:57:30');
INSERT INTO `sys_job_log` VALUES ('3418', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:57:45');
INSERT INTO `sys_job_log` VALUES ('3419', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:58:00');
INSERT INTO `sys_job_log` VALUES ('3420', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 04:58:15');
INSERT INTO `sys_job_log` VALUES ('3421', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:58:30');
INSERT INTO `sys_job_log` VALUES ('3422', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:58:45');
INSERT INTO `sys_job_log` VALUES ('3423', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:59:00');
INSERT INTO `sys_job_log` VALUES ('3424', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:59:15');
INSERT INTO `sys_job_log` VALUES ('3425', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:59:30');
INSERT INTO `sys_job_log` VALUES ('3426', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 04:59:45');
INSERT INTO `sys_job_log` VALUES ('3427', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:00:00');
INSERT INTO `sys_job_log` VALUES ('3428', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:00:15');
INSERT INTO `sys_job_log` VALUES ('3429', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:00:30');
INSERT INTO `sys_job_log` VALUES ('3430', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:00:45');
INSERT INTO `sys_job_log` VALUES ('3431', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:01:00');
INSERT INTO `sys_job_log` VALUES ('3432', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:01:15');
INSERT INTO `sys_job_log` VALUES ('3433', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:01:30');
INSERT INTO `sys_job_log` VALUES ('3434', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:01:45');
INSERT INTO `sys_job_log` VALUES ('3435', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:02:00');
INSERT INTO `sys_job_log` VALUES ('3436', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:02:15');
INSERT INTO `sys_job_log` VALUES ('3437', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:02:30');
INSERT INTO `sys_job_log` VALUES ('3438', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:02:45');
INSERT INTO `sys_job_log` VALUES ('3439', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:03:00');
INSERT INTO `sys_job_log` VALUES ('3440', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:03:15');
INSERT INTO `sys_job_log` VALUES ('3441', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:03:30');
INSERT INTO `sys_job_log` VALUES ('3442', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:03:45');
INSERT INTO `sys_job_log` VALUES ('3443', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:04:00');
INSERT INTO `sys_job_log` VALUES ('3444', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:04:15');
INSERT INTO `sys_job_log` VALUES ('3445', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:04:30');
INSERT INTO `sys_job_log` VALUES ('3446', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:04:45');
INSERT INTO `sys_job_log` VALUES ('3447', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:05:00');
INSERT INTO `sys_job_log` VALUES ('3448', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:05:15');
INSERT INTO `sys_job_log` VALUES ('3449', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:05:30');
INSERT INTO `sys_job_log` VALUES ('3450', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:05:45');
INSERT INTO `sys_job_log` VALUES ('3451', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:06:00');
INSERT INTO `sys_job_log` VALUES ('3452', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:06:15');
INSERT INTO `sys_job_log` VALUES ('3453', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:06:30');
INSERT INTO `sys_job_log` VALUES ('3454', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:06:45');
INSERT INTO `sys_job_log` VALUES ('3455', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:07:00');
INSERT INTO `sys_job_log` VALUES ('3456', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:07:15');
INSERT INTO `sys_job_log` VALUES ('3457', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:07:30');
INSERT INTO `sys_job_log` VALUES ('3458', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:07:45');
INSERT INTO `sys_job_log` VALUES ('3459', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:08:00');
INSERT INTO `sys_job_log` VALUES ('3460', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:08:15');
INSERT INTO `sys_job_log` VALUES ('3461', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:08:30');
INSERT INTO `sys_job_log` VALUES ('3462', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 05:08:45');
INSERT INTO `sys_job_log` VALUES ('3463', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:09:00');
INSERT INTO `sys_job_log` VALUES ('3464', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:09:15');
INSERT INTO `sys_job_log` VALUES ('3465', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:09:30');
INSERT INTO `sys_job_log` VALUES ('3466', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:09:45');
INSERT INTO `sys_job_log` VALUES ('3467', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:10:00');
INSERT INTO `sys_job_log` VALUES ('3468', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:10:15');
INSERT INTO `sys_job_log` VALUES ('3469', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:10:30');
INSERT INTO `sys_job_log` VALUES ('3470', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:10:45');
INSERT INTO `sys_job_log` VALUES ('3471', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:11:00');
INSERT INTO `sys_job_log` VALUES ('3472', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:11:15');
INSERT INTO `sys_job_log` VALUES ('3473', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:11:30');
INSERT INTO `sys_job_log` VALUES ('3474', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:11:45');
INSERT INTO `sys_job_log` VALUES ('3475', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:12:00');
INSERT INTO `sys_job_log` VALUES ('3476', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:12:15');
INSERT INTO `sys_job_log` VALUES ('3477', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:12:30');
INSERT INTO `sys_job_log` VALUES ('3478', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:12:45');
INSERT INTO `sys_job_log` VALUES ('3479', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:13:00');
INSERT INTO `sys_job_log` VALUES ('3480', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:13:15');
INSERT INTO `sys_job_log` VALUES ('3481', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:13:30');
INSERT INTO `sys_job_log` VALUES ('3482', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:13:45');
INSERT INTO `sys_job_log` VALUES ('3483', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:14:00');
INSERT INTO `sys_job_log` VALUES ('3484', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:14:15');
INSERT INTO `sys_job_log` VALUES ('3485', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:14:30');
INSERT INTO `sys_job_log` VALUES ('3486', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:14:45');
INSERT INTO `sys_job_log` VALUES ('3487', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:15:00');
INSERT INTO `sys_job_log` VALUES ('3488', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:15:15');
INSERT INTO `sys_job_log` VALUES ('3489', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:15:30');
INSERT INTO `sys_job_log` VALUES ('3490', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:15:45');
INSERT INTO `sys_job_log` VALUES ('3491', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:16:00');
INSERT INTO `sys_job_log` VALUES ('3492', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:16:15');
INSERT INTO `sys_job_log` VALUES ('3493', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:16:30');
INSERT INTO `sys_job_log` VALUES ('3494', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:16:45');
INSERT INTO `sys_job_log` VALUES ('3495', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:17:00');
INSERT INTO `sys_job_log` VALUES ('3496', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:17:15');
INSERT INTO `sys_job_log` VALUES ('3497', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:17:30');
INSERT INTO `sys_job_log` VALUES ('3498', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:17:45');
INSERT INTO `sys_job_log` VALUES ('3499', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:18:00');
INSERT INTO `sys_job_log` VALUES ('3500', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:18:15');
INSERT INTO `sys_job_log` VALUES ('3501', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 05:18:30');
INSERT INTO `sys_job_log` VALUES ('3502', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:18:45');
INSERT INTO `sys_job_log` VALUES ('3503', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:19:00');
INSERT INTO `sys_job_log` VALUES ('3504', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:19:15');
INSERT INTO `sys_job_log` VALUES ('3505', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:19:30');
INSERT INTO `sys_job_log` VALUES ('3506', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:19:45');
INSERT INTO `sys_job_log` VALUES ('3507', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:20:00');
INSERT INTO `sys_job_log` VALUES ('3508', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:20:15');
INSERT INTO `sys_job_log` VALUES ('3509', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:20:30');
INSERT INTO `sys_job_log` VALUES ('3510', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:20:45');
INSERT INTO `sys_job_log` VALUES ('3511', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:21:00');
INSERT INTO `sys_job_log` VALUES ('3512', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:21:15');
INSERT INTO `sys_job_log` VALUES ('3513', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:21:30');
INSERT INTO `sys_job_log` VALUES ('3514', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 05:21:45');
INSERT INTO `sys_job_log` VALUES ('3515', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:22:00');
INSERT INTO `sys_job_log` VALUES ('3516', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:22:15');
INSERT INTO `sys_job_log` VALUES ('3517', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:22:30');
INSERT INTO `sys_job_log` VALUES ('3518', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:22:45');
INSERT INTO `sys_job_log` VALUES ('3519', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:23:00');
INSERT INTO `sys_job_log` VALUES ('3520', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:23:15');
INSERT INTO `sys_job_log` VALUES ('3521', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:23:30');
INSERT INTO `sys_job_log` VALUES ('3522', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:23:45');
INSERT INTO `sys_job_log` VALUES ('3523', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:24:00');
INSERT INTO `sys_job_log` VALUES ('3524', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:24:15');
INSERT INTO `sys_job_log` VALUES ('3525', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:24:30');
INSERT INTO `sys_job_log` VALUES ('3526', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:24:45');
INSERT INTO `sys_job_log` VALUES ('3527', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:25:00');
INSERT INTO `sys_job_log` VALUES ('3528', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:25:15');
INSERT INTO `sys_job_log` VALUES ('3529', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:25:30');
INSERT INTO `sys_job_log` VALUES ('3530', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 05:25:45');
INSERT INTO `sys_job_log` VALUES ('3531', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:26:00');
INSERT INTO `sys_job_log` VALUES ('3532', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:26:15');
INSERT INTO `sys_job_log` VALUES ('3533', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 05:26:30');
INSERT INTO `sys_job_log` VALUES ('3534', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:26:45');
INSERT INTO `sys_job_log` VALUES ('3535', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:27:00');
INSERT INTO `sys_job_log` VALUES ('3536', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:27:15');
INSERT INTO `sys_job_log` VALUES ('3537', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:27:30');
INSERT INTO `sys_job_log` VALUES ('3538', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:27:45');
INSERT INTO `sys_job_log` VALUES ('3539', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:28:00');
INSERT INTO `sys_job_log` VALUES ('3540', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:28:15');
INSERT INTO `sys_job_log` VALUES ('3541', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:28:30');
INSERT INTO `sys_job_log` VALUES ('3542', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:28:45');
INSERT INTO `sys_job_log` VALUES ('3543', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:29:00');
INSERT INTO `sys_job_log` VALUES ('3544', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:29:15');
INSERT INTO `sys_job_log` VALUES ('3545', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:29:30');
INSERT INTO `sys_job_log` VALUES ('3546', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:29:45');
INSERT INTO `sys_job_log` VALUES ('3547', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:30:00');
INSERT INTO `sys_job_log` VALUES ('3548', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:30:15');
INSERT INTO `sys_job_log` VALUES ('3549', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:30:30');
INSERT INTO `sys_job_log` VALUES ('3550', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:30:45');
INSERT INTO `sys_job_log` VALUES ('3551', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:31:00');
INSERT INTO `sys_job_log` VALUES ('3552', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:31:15');
INSERT INTO `sys_job_log` VALUES ('3553', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:31:30');
INSERT INTO `sys_job_log` VALUES ('3554', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:31:45');
INSERT INTO `sys_job_log` VALUES ('3555', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:32:00');
INSERT INTO `sys_job_log` VALUES ('3556', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:32:15');
INSERT INTO `sys_job_log` VALUES ('3557', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:32:30');
INSERT INTO `sys_job_log` VALUES ('3558', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:32:45');
INSERT INTO `sys_job_log` VALUES ('3559', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:33:00');
INSERT INTO `sys_job_log` VALUES ('3560', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:33:15');
INSERT INTO `sys_job_log` VALUES ('3561', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:33:30');
INSERT INTO `sys_job_log` VALUES ('3562', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:33:45');
INSERT INTO `sys_job_log` VALUES ('3563', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:34:00');
INSERT INTO `sys_job_log` VALUES ('3564', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:34:15');
INSERT INTO `sys_job_log` VALUES ('3565', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:34:30');
INSERT INTO `sys_job_log` VALUES ('3566', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:34:45');
INSERT INTO `sys_job_log` VALUES ('3567', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:35:00');
INSERT INTO `sys_job_log` VALUES ('3568', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:35:15');
INSERT INTO `sys_job_log` VALUES ('3569', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:35:30');
INSERT INTO `sys_job_log` VALUES ('3570', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:35:45');
INSERT INTO `sys_job_log` VALUES ('3571', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:36:00');
INSERT INTO `sys_job_log` VALUES ('3572', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:36:15');
INSERT INTO `sys_job_log` VALUES ('3573', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:36:30');
INSERT INTO `sys_job_log` VALUES ('3574', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:36:45');
INSERT INTO `sys_job_log` VALUES ('3575', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:37:00');
INSERT INTO `sys_job_log` VALUES ('3576', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:37:15');
INSERT INTO `sys_job_log` VALUES ('3577', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:37:30');
INSERT INTO `sys_job_log` VALUES ('3578', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:37:45');
INSERT INTO `sys_job_log` VALUES ('3579', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:38:00');
INSERT INTO `sys_job_log` VALUES ('3580', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:38:15');
INSERT INTO `sys_job_log` VALUES ('3581', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:38:30');
INSERT INTO `sys_job_log` VALUES ('3582', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:38:45');
INSERT INTO `sys_job_log` VALUES ('3583', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:39:00');
INSERT INTO `sys_job_log` VALUES ('3584', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:39:15');
INSERT INTO `sys_job_log` VALUES ('3585', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:39:30');
INSERT INTO `sys_job_log` VALUES ('3586', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:39:45');
INSERT INTO `sys_job_log` VALUES ('3587', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:40:00');
INSERT INTO `sys_job_log` VALUES ('3588', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:40:15');
INSERT INTO `sys_job_log` VALUES ('3589', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:40:30');
INSERT INTO `sys_job_log` VALUES ('3590', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:40:45');
INSERT INTO `sys_job_log` VALUES ('3591', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:41:00');
INSERT INTO `sys_job_log` VALUES ('3592', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:41:15');
INSERT INTO `sys_job_log` VALUES ('3593', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:41:30');
INSERT INTO `sys_job_log` VALUES ('3594', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:41:45');
INSERT INTO `sys_job_log` VALUES ('3595', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:42:00');
INSERT INTO `sys_job_log` VALUES ('3596', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:42:15');
INSERT INTO `sys_job_log` VALUES ('3597', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 05:42:30');
INSERT INTO `sys_job_log` VALUES ('3598', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:42:45');
INSERT INTO `sys_job_log` VALUES ('3599', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:43:00');
INSERT INTO `sys_job_log` VALUES ('3600', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:43:15');
INSERT INTO `sys_job_log` VALUES ('3601', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:43:30');
INSERT INTO `sys_job_log` VALUES ('3602', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:43:45');
INSERT INTO `sys_job_log` VALUES ('3603', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:44:00');
INSERT INTO `sys_job_log` VALUES ('3604', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:44:15');
INSERT INTO `sys_job_log` VALUES ('3605', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:44:30');
INSERT INTO `sys_job_log` VALUES ('3606', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:44:45');
INSERT INTO `sys_job_log` VALUES ('3607', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:45:00');
INSERT INTO `sys_job_log` VALUES ('3608', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:45:15');
INSERT INTO `sys_job_log` VALUES ('3609', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:45:30');
INSERT INTO `sys_job_log` VALUES ('3610', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:45:45');
INSERT INTO `sys_job_log` VALUES ('3611', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:46:00');
INSERT INTO `sys_job_log` VALUES ('3612', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:46:15');
INSERT INTO `sys_job_log` VALUES ('3613', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:46:30');
INSERT INTO `sys_job_log` VALUES ('3614', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:46:45');
INSERT INTO `sys_job_log` VALUES ('3615', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:47:00');
INSERT INTO `sys_job_log` VALUES ('3616', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:47:15');
INSERT INTO `sys_job_log` VALUES ('3617', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:47:30');
INSERT INTO `sys_job_log` VALUES ('3618', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:47:45');
INSERT INTO `sys_job_log` VALUES ('3619', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:48:00');
INSERT INTO `sys_job_log` VALUES ('3620', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:48:15');
INSERT INTO `sys_job_log` VALUES ('3621', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:48:30');
INSERT INTO `sys_job_log` VALUES ('3622', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:48:45');
INSERT INTO `sys_job_log` VALUES ('3623', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:49:00');
INSERT INTO `sys_job_log` VALUES ('3624', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:49:15');
INSERT INTO `sys_job_log` VALUES ('3625', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:49:30');
INSERT INTO `sys_job_log` VALUES ('3626', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:49:45');
INSERT INTO `sys_job_log` VALUES ('3627', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:50:00');
INSERT INTO `sys_job_log` VALUES ('3628', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:50:15');
INSERT INTO `sys_job_log` VALUES ('3629', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:50:30');
INSERT INTO `sys_job_log` VALUES ('3630', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:50:45');
INSERT INTO `sys_job_log` VALUES ('3631', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:51:00');
INSERT INTO `sys_job_log` VALUES ('3632', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:51:15');
INSERT INTO `sys_job_log` VALUES ('3633', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:51:30');
INSERT INTO `sys_job_log` VALUES ('3634', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:51:45');
INSERT INTO `sys_job_log` VALUES ('3635', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:52:00');
INSERT INTO `sys_job_log` VALUES ('3636', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:52:15');
INSERT INTO `sys_job_log` VALUES ('3637', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:52:30');
INSERT INTO `sys_job_log` VALUES ('3638', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:52:45');
INSERT INTO `sys_job_log` VALUES ('3639', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:53:00');
INSERT INTO `sys_job_log` VALUES ('3640', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:53:15');
INSERT INTO `sys_job_log` VALUES ('3641', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:53:30');
INSERT INTO `sys_job_log` VALUES ('3642', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:53:45');
INSERT INTO `sys_job_log` VALUES ('3643', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:54:00');
INSERT INTO `sys_job_log` VALUES ('3644', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:54:15');
INSERT INTO `sys_job_log` VALUES ('3645', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:54:30');
INSERT INTO `sys_job_log` VALUES ('3646', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:54:45');
INSERT INTO `sys_job_log` VALUES ('3647', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:55:00');
INSERT INTO `sys_job_log` VALUES ('3648', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:55:15');
INSERT INTO `sys_job_log` VALUES ('3649', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:55:30');
INSERT INTO `sys_job_log` VALUES ('3650', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:55:45');
INSERT INTO `sys_job_log` VALUES ('3651', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:56:00');
INSERT INTO `sys_job_log` VALUES ('3652', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:56:15');
INSERT INTO `sys_job_log` VALUES ('3653', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:56:30');
INSERT INTO `sys_job_log` VALUES ('3654', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:56:45');
INSERT INTO `sys_job_log` VALUES ('3655', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:57:00');
INSERT INTO `sys_job_log` VALUES ('3656', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:57:15');
INSERT INTO `sys_job_log` VALUES ('3657', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:57:30');
INSERT INTO `sys_job_log` VALUES ('3658', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:57:45');
INSERT INTO `sys_job_log` VALUES ('3659', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:58:00');
INSERT INTO `sys_job_log` VALUES ('3660', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:58:15');
INSERT INTO `sys_job_log` VALUES ('3661', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:58:30');
INSERT INTO `sys_job_log` VALUES ('3662', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:58:45');
INSERT INTO `sys_job_log` VALUES ('3663', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:59:00');
INSERT INTO `sys_job_log` VALUES ('3664', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:59:15');
INSERT INTO `sys_job_log` VALUES ('3665', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:59:30');
INSERT INTO `sys_job_log` VALUES ('3666', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 05:59:45');
INSERT INTO `sys_job_log` VALUES ('3667', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:00:00');
INSERT INTO `sys_job_log` VALUES ('3668', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:00:15');
INSERT INTO `sys_job_log` VALUES ('3669', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:00:30');
INSERT INTO `sys_job_log` VALUES ('3670', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:00:45');
INSERT INTO `sys_job_log` VALUES ('3671', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:01:00');
INSERT INTO `sys_job_log` VALUES ('3672', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:01:15');
INSERT INTO `sys_job_log` VALUES ('3673', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:01:30');
INSERT INTO `sys_job_log` VALUES ('3674', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:01:45');
INSERT INTO `sys_job_log` VALUES ('3675', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 06:02:00');
INSERT INTO `sys_job_log` VALUES ('3676', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:02:15');
INSERT INTO `sys_job_log` VALUES ('3677', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:02:30');
INSERT INTO `sys_job_log` VALUES ('3678', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:02:45');
INSERT INTO `sys_job_log` VALUES ('3679', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:03:00');
INSERT INTO `sys_job_log` VALUES ('3680', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:03:15');
INSERT INTO `sys_job_log` VALUES ('3681', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:03:30');
INSERT INTO `sys_job_log` VALUES ('3682', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:03:45');
INSERT INTO `sys_job_log` VALUES ('3683', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:04:00');
INSERT INTO `sys_job_log` VALUES ('3684', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:04:15');
INSERT INTO `sys_job_log` VALUES ('3685', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 06:04:30');
INSERT INTO `sys_job_log` VALUES ('3686', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:04:45');
INSERT INTO `sys_job_log` VALUES ('3687', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:05:00');
INSERT INTO `sys_job_log` VALUES ('3688', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:05:15');
INSERT INTO `sys_job_log` VALUES ('3689', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:05:30');
INSERT INTO `sys_job_log` VALUES ('3690', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:05:45');
INSERT INTO `sys_job_log` VALUES ('3691', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:06:00');
INSERT INTO `sys_job_log` VALUES ('3692', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:06:15');
INSERT INTO `sys_job_log` VALUES ('3693', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:06:30');
INSERT INTO `sys_job_log` VALUES ('3694', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:06:45');
INSERT INTO `sys_job_log` VALUES ('3695', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:07:00');
INSERT INTO `sys_job_log` VALUES ('3696', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:07:15');
INSERT INTO `sys_job_log` VALUES ('3697', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:07:30');
INSERT INTO `sys_job_log` VALUES ('3698', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:07:45');
INSERT INTO `sys_job_log` VALUES ('3699', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:08:00');
INSERT INTO `sys_job_log` VALUES ('3700', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:08:15');
INSERT INTO `sys_job_log` VALUES ('3701', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:08:30');
INSERT INTO `sys_job_log` VALUES ('3702', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:08:45');
INSERT INTO `sys_job_log` VALUES ('3703', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 06:09:00');
INSERT INTO `sys_job_log` VALUES ('3704', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:09:15');
INSERT INTO `sys_job_log` VALUES ('3705', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:09:30');
INSERT INTO `sys_job_log` VALUES ('3706', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:09:45');
INSERT INTO `sys_job_log` VALUES ('3707', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:10:00');
INSERT INTO `sys_job_log` VALUES ('3708', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:10:15');
INSERT INTO `sys_job_log` VALUES ('3709', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:10:30');
INSERT INTO `sys_job_log` VALUES ('3710', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:10:45');
INSERT INTO `sys_job_log` VALUES ('3711', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:11:00');
INSERT INTO `sys_job_log` VALUES ('3712', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:11:15');
INSERT INTO `sys_job_log` VALUES ('3713', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:11:30');
INSERT INTO `sys_job_log` VALUES ('3714', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:11:45');
INSERT INTO `sys_job_log` VALUES ('3715', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:12:00');
INSERT INTO `sys_job_log` VALUES ('3716', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:12:15');
INSERT INTO `sys_job_log` VALUES ('3717', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:12:30');
INSERT INTO `sys_job_log` VALUES ('3718', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:12:45');
INSERT INTO `sys_job_log` VALUES ('3719', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:13:00');
INSERT INTO `sys_job_log` VALUES ('3720', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:13:15');
INSERT INTO `sys_job_log` VALUES ('3721', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:13:30');
INSERT INTO `sys_job_log` VALUES ('3722', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:13:45');
INSERT INTO `sys_job_log` VALUES ('3723', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:14:00');
INSERT INTO `sys_job_log` VALUES ('3724', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:14:15');
INSERT INTO `sys_job_log` VALUES ('3725', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:14:30');
INSERT INTO `sys_job_log` VALUES ('3726', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:14:45');
INSERT INTO `sys_job_log` VALUES ('3727', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:15:00');
INSERT INTO `sys_job_log` VALUES ('3728', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:15:15');
INSERT INTO `sys_job_log` VALUES ('3729', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 06:15:30');
INSERT INTO `sys_job_log` VALUES ('3730', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:15:45');
INSERT INTO `sys_job_log` VALUES ('3731', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:16:00');
INSERT INTO `sys_job_log` VALUES ('3732', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:16:15');
INSERT INTO `sys_job_log` VALUES ('3733', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:16:30');
INSERT INTO `sys_job_log` VALUES ('3734', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:16:45');
INSERT INTO `sys_job_log` VALUES ('3735', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:17:00');
INSERT INTO `sys_job_log` VALUES ('3736', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:17:15');
INSERT INTO `sys_job_log` VALUES ('3737', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:17:30');
INSERT INTO `sys_job_log` VALUES ('3738', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:17:45');
INSERT INTO `sys_job_log` VALUES ('3739', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:18:00');
INSERT INTO `sys_job_log` VALUES ('3740', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:18:15');
INSERT INTO `sys_job_log` VALUES ('3741', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:18:30');
INSERT INTO `sys_job_log` VALUES ('3742', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:18:45');
INSERT INTO `sys_job_log` VALUES ('3743', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:19:00');
INSERT INTO `sys_job_log` VALUES ('3744', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:19:15');
INSERT INTO `sys_job_log` VALUES ('3745', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:19:30');
INSERT INTO `sys_job_log` VALUES ('3746', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:19:45');
INSERT INTO `sys_job_log` VALUES ('3747', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:20:00');
INSERT INTO `sys_job_log` VALUES ('3748', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:20:15');
INSERT INTO `sys_job_log` VALUES ('3749', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:20:30');
INSERT INTO `sys_job_log` VALUES ('3750', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:20:45');
INSERT INTO `sys_job_log` VALUES ('3751', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:21:00');
INSERT INTO `sys_job_log` VALUES ('3752', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:21:15');
INSERT INTO `sys_job_log` VALUES ('3753', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:21:30');
INSERT INTO `sys_job_log` VALUES ('3754', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:21:45');
INSERT INTO `sys_job_log` VALUES ('3755', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:22:00');
INSERT INTO `sys_job_log` VALUES ('3756', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:22:15');
INSERT INTO `sys_job_log` VALUES ('3757', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:22:30');
INSERT INTO `sys_job_log` VALUES ('3758', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:22:45');
INSERT INTO `sys_job_log` VALUES ('3759', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:23:00');
INSERT INTO `sys_job_log` VALUES ('3760', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:23:15');
INSERT INTO `sys_job_log` VALUES ('3761', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:23:30');
INSERT INTO `sys_job_log` VALUES ('3762', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:23:45');
INSERT INTO `sys_job_log` VALUES ('3763', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:24:00');
INSERT INTO `sys_job_log` VALUES ('3764', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:24:15');
INSERT INTO `sys_job_log` VALUES ('3765', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:24:30');
INSERT INTO `sys_job_log` VALUES ('3766', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:24:45');
INSERT INTO `sys_job_log` VALUES ('3767', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:25:00');
INSERT INTO `sys_job_log` VALUES ('3768', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:25:15');
INSERT INTO `sys_job_log` VALUES ('3769', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:25:30');
INSERT INTO `sys_job_log` VALUES ('3770', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:25:45');
INSERT INTO `sys_job_log` VALUES ('3771', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:26:00');
INSERT INTO `sys_job_log` VALUES ('3772', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:26:15');
INSERT INTO `sys_job_log` VALUES ('3773', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:26:30');
INSERT INTO `sys_job_log` VALUES ('3774', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:26:45');
INSERT INTO `sys_job_log` VALUES ('3775', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:27:00');
INSERT INTO `sys_job_log` VALUES ('3776', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:27:15');
INSERT INTO `sys_job_log` VALUES ('3777', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:27:30');
INSERT INTO `sys_job_log` VALUES ('3778', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:27:45');
INSERT INTO `sys_job_log` VALUES ('3779', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:28:00');
INSERT INTO `sys_job_log` VALUES ('3780', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:28:15');
INSERT INTO `sys_job_log` VALUES ('3781', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:28:30');
INSERT INTO `sys_job_log` VALUES ('3782', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:28:45');
INSERT INTO `sys_job_log` VALUES ('3783', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:29:00');
INSERT INTO `sys_job_log` VALUES ('3784', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:29:15');
INSERT INTO `sys_job_log` VALUES ('3785', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:29:30');
INSERT INTO `sys_job_log` VALUES ('3786', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:29:45');
INSERT INTO `sys_job_log` VALUES ('3787', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:30:00');
INSERT INTO `sys_job_log` VALUES ('3788', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:30:15');
INSERT INTO `sys_job_log` VALUES ('3789', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:30:30');
INSERT INTO `sys_job_log` VALUES ('3790', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:30:45');
INSERT INTO `sys_job_log` VALUES ('3791', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:31:00');
INSERT INTO `sys_job_log` VALUES ('3792', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:31:15');
INSERT INTO `sys_job_log` VALUES ('3793', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:31:30');
INSERT INTO `sys_job_log` VALUES ('3794', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:31:45');
INSERT INTO `sys_job_log` VALUES ('3795', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:32:00');
INSERT INTO `sys_job_log` VALUES ('3796', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:32:15');
INSERT INTO `sys_job_log` VALUES ('3797', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:32:30');
INSERT INTO `sys_job_log` VALUES ('3798', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:32:45');
INSERT INTO `sys_job_log` VALUES ('3799', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:33:00');
INSERT INTO `sys_job_log` VALUES ('3800', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:33:15');
INSERT INTO `sys_job_log` VALUES ('3801', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:33:30');
INSERT INTO `sys_job_log` VALUES ('3802', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:33:45');
INSERT INTO `sys_job_log` VALUES ('3803', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:34:00');
INSERT INTO `sys_job_log` VALUES ('3804', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:34:15');
INSERT INTO `sys_job_log` VALUES ('3805', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:34:30');
INSERT INTO `sys_job_log` VALUES ('3806', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:34:45');
INSERT INTO `sys_job_log` VALUES ('3807', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:35:00');
INSERT INTO `sys_job_log` VALUES ('3808', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:35:15');
INSERT INTO `sys_job_log` VALUES ('3809', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:35:30');
INSERT INTO `sys_job_log` VALUES ('3810', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:35:45');
INSERT INTO `sys_job_log` VALUES ('3811', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:36:00');
INSERT INTO `sys_job_log` VALUES ('3812', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:36:15');
INSERT INTO `sys_job_log` VALUES ('3813', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:36:30');
INSERT INTO `sys_job_log` VALUES ('3814', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:36:45');
INSERT INTO `sys_job_log` VALUES ('3815', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:37:00');
INSERT INTO `sys_job_log` VALUES ('3816', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:37:15');
INSERT INTO `sys_job_log` VALUES ('3817', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:37:30');
INSERT INTO `sys_job_log` VALUES ('3818', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:37:45');
INSERT INTO `sys_job_log` VALUES ('3819', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:38:00');
INSERT INTO `sys_job_log` VALUES ('3820', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:38:15');
INSERT INTO `sys_job_log` VALUES ('3821', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:38:30');
INSERT INTO `sys_job_log` VALUES ('3822', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:38:45');
INSERT INTO `sys_job_log` VALUES ('3823', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:39:00');
INSERT INTO `sys_job_log` VALUES ('3824', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:39:15');
INSERT INTO `sys_job_log` VALUES ('3825', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:39:30');
INSERT INTO `sys_job_log` VALUES ('3826', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:39:45');
INSERT INTO `sys_job_log` VALUES ('3827', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:40:00');
INSERT INTO `sys_job_log` VALUES ('3828', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:40:15');
INSERT INTO `sys_job_log` VALUES ('3829', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:40:30');
INSERT INTO `sys_job_log` VALUES ('3830', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:40:45');
INSERT INTO `sys_job_log` VALUES ('3831', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:41:00');
INSERT INTO `sys_job_log` VALUES ('3832', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:41:15');
INSERT INTO `sys_job_log` VALUES ('3833', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:41:30');
INSERT INTO `sys_job_log` VALUES ('3834', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:41:45');
INSERT INTO `sys_job_log` VALUES ('3835', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:42:00');
INSERT INTO `sys_job_log` VALUES ('3836', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:42:15');
INSERT INTO `sys_job_log` VALUES ('3837', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:42:30');
INSERT INTO `sys_job_log` VALUES ('3838', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:42:45');
INSERT INTO `sys_job_log` VALUES ('3839', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:43:00');
INSERT INTO `sys_job_log` VALUES ('3840', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:43:15');
INSERT INTO `sys_job_log` VALUES ('3841', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:43:30');
INSERT INTO `sys_job_log` VALUES ('3842', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:43:45');
INSERT INTO `sys_job_log` VALUES ('3843', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:44:00');
INSERT INTO `sys_job_log` VALUES ('3844', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:44:15');
INSERT INTO `sys_job_log` VALUES ('3845', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:44:30');
INSERT INTO `sys_job_log` VALUES ('3846', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:44:45');
INSERT INTO `sys_job_log` VALUES ('3847', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:45:00');
INSERT INTO `sys_job_log` VALUES ('3848', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:45:15');
INSERT INTO `sys_job_log` VALUES ('3849', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:45:30');
INSERT INTO `sys_job_log` VALUES ('3850', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:45:45');
INSERT INTO `sys_job_log` VALUES ('3851', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:46:00');
INSERT INTO `sys_job_log` VALUES ('3852', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:46:15');
INSERT INTO `sys_job_log` VALUES ('3853', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:46:30');
INSERT INTO `sys_job_log` VALUES ('3854', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:46:45');
INSERT INTO `sys_job_log` VALUES ('3855', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:47:00');
INSERT INTO `sys_job_log` VALUES ('3856', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:47:15');
INSERT INTO `sys_job_log` VALUES ('3857', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:47:30');
INSERT INTO `sys_job_log` VALUES ('3858', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:47:45');
INSERT INTO `sys_job_log` VALUES ('3859', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:48:00');
INSERT INTO `sys_job_log` VALUES ('3860', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:48:15');
INSERT INTO `sys_job_log` VALUES ('3861', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:48:30');
INSERT INTO `sys_job_log` VALUES ('3862', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:48:45');
INSERT INTO `sys_job_log` VALUES ('3863', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:49:00');
INSERT INTO `sys_job_log` VALUES ('3864', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:49:15');
INSERT INTO `sys_job_log` VALUES ('3865', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:49:30');
INSERT INTO `sys_job_log` VALUES ('3866', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:49:45');
INSERT INTO `sys_job_log` VALUES ('3867', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:50:00');
INSERT INTO `sys_job_log` VALUES ('3868', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:50:15');
INSERT INTO `sys_job_log` VALUES ('3869', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:50:30');
INSERT INTO `sys_job_log` VALUES ('3870', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:50:45');
INSERT INTO `sys_job_log` VALUES ('3871', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:51:00');
INSERT INTO `sys_job_log` VALUES ('3872', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:51:15');
INSERT INTO `sys_job_log` VALUES ('3873', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:51:30');
INSERT INTO `sys_job_log` VALUES ('3874', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:51:45');
INSERT INTO `sys_job_log` VALUES ('3875', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:52:00');
INSERT INTO `sys_job_log` VALUES ('3876', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:52:15');
INSERT INTO `sys_job_log` VALUES ('3877', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:52:30');
INSERT INTO `sys_job_log` VALUES ('3878', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:52:45');
INSERT INTO `sys_job_log` VALUES ('3879', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:53:00');
INSERT INTO `sys_job_log` VALUES ('3880', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:53:15');
INSERT INTO `sys_job_log` VALUES ('3881', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:53:30');
INSERT INTO `sys_job_log` VALUES ('3882', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:53:45');
INSERT INTO `sys_job_log` VALUES ('3883', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:54:00');
INSERT INTO `sys_job_log` VALUES ('3884', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:54:15');
INSERT INTO `sys_job_log` VALUES ('3885', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:54:30');
INSERT INTO `sys_job_log` VALUES ('3886', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:54:45');
INSERT INTO `sys_job_log` VALUES ('3887', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:55:00');
INSERT INTO `sys_job_log` VALUES ('3888', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:55:15');
INSERT INTO `sys_job_log` VALUES ('3889', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:55:30');
INSERT INTO `sys_job_log` VALUES ('3890', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:55:45');
INSERT INTO `sys_job_log` VALUES ('3891', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:56:00');
INSERT INTO `sys_job_log` VALUES ('3892', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:56:15');
INSERT INTO `sys_job_log` VALUES ('3893', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:56:30');
INSERT INTO `sys_job_log` VALUES ('3894', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:56:45');
INSERT INTO `sys_job_log` VALUES ('3895', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:57:00');
INSERT INTO `sys_job_log` VALUES ('3896', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:57:15');
INSERT INTO `sys_job_log` VALUES ('3897', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:57:30');
INSERT INTO `sys_job_log` VALUES ('3898', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:57:45');
INSERT INTO `sys_job_log` VALUES ('3899', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:58:00');
INSERT INTO `sys_job_log` VALUES ('3900', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:58:15');
INSERT INTO `sys_job_log` VALUES ('3901', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:58:30');
INSERT INTO `sys_job_log` VALUES ('3902', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:58:45');
INSERT INTO `sys_job_log` VALUES ('3903', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:59:00');
INSERT INTO `sys_job_log` VALUES ('3904', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:59:15');
INSERT INTO `sys_job_log` VALUES ('3905', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:59:30');
INSERT INTO `sys_job_log` VALUES ('3906', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 06:59:45');
INSERT INTO `sys_job_log` VALUES ('3907', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:00:00');
INSERT INTO `sys_job_log` VALUES ('3908', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:00:15');
INSERT INTO `sys_job_log` VALUES ('3909', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:00:30');
INSERT INTO `sys_job_log` VALUES ('3910', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:00:45');
INSERT INTO `sys_job_log` VALUES ('3911', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:01:00');
INSERT INTO `sys_job_log` VALUES ('3912', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:01:15');
INSERT INTO `sys_job_log` VALUES ('3913', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:01:30');
INSERT INTO `sys_job_log` VALUES ('3914', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 07:01:45');
INSERT INTO `sys_job_log` VALUES ('3915', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:02:00');
INSERT INTO `sys_job_log` VALUES ('3916', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:02:15');
INSERT INTO `sys_job_log` VALUES ('3917', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:02:30');
INSERT INTO `sys_job_log` VALUES ('3918', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:02:45');
INSERT INTO `sys_job_log` VALUES ('3919', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:03:00');
INSERT INTO `sys_job_log` VALUES ('3920', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:03:15');
INSERT INTO `sys_job_log` VALUES ('3921', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:03:30');
INSERT INTO `sys_job_log` VALUES ('3922', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:03:45');
INSERT INTO `sys_job_log` VALUES ('3923', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:04:00');
INSERT INTO `sys_job_log` VALUES ('3924', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:04:15');
INSERT INTO `sys_job_log` VALUES ('3925', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:04:30');
INSERT INTO `sys_job_log` VALUES ('3926', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:04:45');
INSERT INTO `sys_job_log` VALUES ('3927', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:05:00');
INSERT INTO `sys_job_log` VALUES ('3928', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:05:15');
INSERT INTO `sys_job_log` VALUES ('3929', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:05:30');
INSERT INTO `sys_job_log` VALUES ('3930', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:05:45');
INSERT INTO `sys_job_log` VALUES ('3931', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:06:00');
INSERT INTO `sys_job_log` VALUES ('3932', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:06:15');
INSERT INTO `sys_job_log` VALUES ('3933', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:06:30');
INSERT INTO `sys_job_log` VALUES ('3934', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:06:45');
INSERT INTO `sys_job_log` VALUES ('3935', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:07:00');
INSERT INTO `sys_job_log` VALUES ('3936', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:07:15');
INSERT INTO `sys_job_log` VALUES ('3937', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:07:30');
INSERT INTO `sys_job_log` VALUES ('3938', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:07:45');
INSERT INTO `sys_job_log` VALUES ('3939', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:08:00');
INSERT INTO `sys_job_log` VALUES ('3940', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:08:15');
INSERT INTO `sys_job_log` VALUES ('3941', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:08:30');
INSERT INTO `sys_job_log` VALUES ('3942', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:08:45');
INSERT INTO `sys_job_log` VALUES ('3943', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:09:00');
INSERT INTO `sys_job_log` VALUES ('3944', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:09:15');
INSERT INTO `sys_job_log` VALUES ('3945', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:09:30');
INSERT INTO `sys_job_log` VALUES ('3946', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:09:45');
INSERT INTO `sys_job_log` VALUES ('3947', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:10:00');
INSERT INTO `sys_job_log` VALUES ('3948', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:10:15');
INSERT INTO `sys_job_log` VALUES ('3949', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:10:30');
INSERT INTO `sys_job_log` VALUES ('3950', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:10:45');
INSERT INTO `sys_job_log` VALUES ('3951', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:11:00');
INSERT INTO `sys_job_log` VALUES ('3952', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:11:15');
INSERT INTO `sys_job_log` VALUES ('3953', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:11:30');
INSERT INTO `sys_job_log` VALUES ('3954', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:11:45');
INSERT INTO `sys_job_log` VALUES ('3955', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:12:00');
INSERT INTO `sys_job_log` VALUES ('3956', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:12:15');
INSERT INTO `sys_job_log` VALUES ('3957', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:12:30');
INSERT INTO `sys_job_log` VALUES ('3958', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 07:12:45');
INSERT INTO `sys_job_log` VALUES ('3959', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:13:00');
INSERT INTO `sys_job_log` VALUES ('3960', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:13:15');
INSERT INTO `sys_job_log` VALUES ('3961', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:13:30');
INSERT INTO `sys_job_log` VALUES ('3962', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:13:45');
INSERT INTO `sys_job_log` VALUES ('3963', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:14:00');
INSERT INTO `sys_job_log` VALUES ('3964', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:14:15');
INSERT INTO `sys_job_log` VALUES ('3965', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:14:30');
INSERT INTO `sys_job_log` VALUES ('3966', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:14:45');
INSERT INTO `sys_job_log` VALUES ('3967', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:15:00');
INSERT INTO `sys_job_log` VALUES ('3968', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:15:15');
INSERT INTO `sys_job_log` VALUES ('3969', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:15:30');
INSERT INTO `sys_job_log` VALUES ('3970', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:15:45');
INSERT INTO `sys_job_log` VALUES ('3971', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:16:00');
INSERT INTO `sys_job_log` VALUES ('3972', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:16:15');
INSERT INTO `sys_job_log` VALUES ('3973', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:16:30');
INSERT INTO `sys_job_log` VALUES ('3974', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:16:45');
INSERT INTO `sys_job_log` VALUES ('3975', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:17:00');
INSERT INTO `sys_job_log` VALUES ('3976', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:17:15');
INSERT INTO `sys_job_log` VALUES ('3977', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:17:30');
INSERT INTO `sys_job_log` VALUES ('3978', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:17:45');
INSERT INTO `sys_job_log` VALUES ('3979', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:18:00');
INSERT INTO `sys_job_log` VALUES ('3980', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:18:15');
INSERT INTO `sys_job_log` VALUES ('3981', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:18:30');
INSERT INTO `sys_job_log` VALUES ('3982', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:18:45');
INSERT INTO `sys_job_log` VALUES ('3983', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:19:00');
INSERT INTO `sys_job_log` VALUES ('3984', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:19:15');
INSERT INTO `sys_job_log` VALUES ('3985', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:19:30');
INSERT INTO `sys_job_log` VALUES ('3986', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:19:45');
INSERT INTO `sys_job_log` VALUES ('3987', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:20:00');
INSERT INTO `sys_job_log` VALUES ('3988', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:20:15');
INSERT INTO `sys_job_log` VALUES ('3989', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:20:30');
INSERT INTO `sys_job_log` VALUES ('3990', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:20:45');
INSERT INTO `sys_job_log` VALUES ('3991', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:21:00');
INSERT INTO `sys_job_log` VALUES ('3992', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:21:15');
INSERT INTO `sys_job_log` VALUES ('3993', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:21:30');
INSERT INTO `sys_job_log` VALUES ('3994', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:21:45');
INSERT INTO `sys_job_log` VALUES ('3995', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:22:00');
INSERT INTO `sys_job_log` VALUES ('3996', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:22:15');
INSERT INTO `sys_job_log` VALUES ('3997', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:22:30');
INSERT INTO `sys_job_log` VALUES ('3998', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:22:45');
INSERT INTO `sys_job_log` VALUES ('3999', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:23:00');
INSERT INTO `sys_job_log` VALUES ('4000', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:23:15');
INSERT INTO `sys_job_log` VALUES ('4001', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:23:30');
INSERT INTO `sys_job_log` VALUES ('4002', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:23:45');
INSERT INTO `sys_job_log` VALUES ('4003', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:24:00');
INSERT INTO `sys_job_log` VALUES ('4004', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:24:15');
INSERT INTO `sys_job_log` VALUES ('4005', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:24:30');
INSERT INTO `sys_job_log` VALUES ('4006', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:24:45');
INSERT INTO `sys_job_log` VALUES ('4007', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:25:00');
INSERT INTO `sys_job_log` VALUES ('4008', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:25:15');
INSERT INTO `sys_job_log` VALUES ('4009', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:25:30');
INSERT INTO `sys_job_log` VALUES ('4010', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:25:45');
INSERT INTO `sys_job_log` VALUES ('4011', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:26:00');
INSERT INTO `sys_job_log` VALUES ('4012', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:26:15');
INSERT INTO `sys_job_log` VALUES ('4013', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:26:30');
INSERT INTO `sys_job_log` VALUES ('4014', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:26:45');
INSERT INTO `sys_job_log` VALUES ('4015', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:27:00');
INSERT INTO `sys_job_log` VALUES ('4016', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:27:15');
INSERT INTO `sys_job_log` VALUES ('4017', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:27:30');
INSERT INTO `sys_job_log` VALUES ('4018', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:27:45');
INSERT INTO `sys_job_log` VALUES ('4019', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:28:00');
INSERT INTO `sys_job_log` VALUES ('4020', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:28:15');
INSERT INTO `sys_job_log` VALUES ('4021', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:28:30');
INSERT INTO `sys_job_log` VALUES ('4022', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:28:45');
INSERT INTO `sys_job_log` VALUES ('4023', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:29:00');
INSERT INTO `sys_job_log` VALUES ('4024', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:29:15');
INSERT INTO `sys_job_log` VALUES ('4025', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:29:30');
INSERT INTO `sys_job_log` VALUES ('4026', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:29:45');
INSERT INTO `sys_job_log` VALUES ('4027', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:30:00');
INSERT INTO `sys_job_log` VALUES ('4028', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:30:15');
INSERT INTO `sys_job_log` VALUES ('4029', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:30:30');
INSERT INTO `sys_job_log` VALUES ('4030', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:30:45');
INSERT INTO `sys_job_log` VALUES ('4031', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:31:00');
INSERT INTO `sys_job_log` VALUES ('4032', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:31:15');
INSERT INTO `sys_job_log` VALUES ('4033', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:31:30');
INSERT INTO `sys_job_log` VALUES ('4034', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:31:45');
INSERT INTO `sys_job_log` VALUES ('4035', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:32:00');
INSERT INTO `sys_job_log` VALUES ('4036', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:32:15');
INSERT INTO `sys_job_log` VALUES ('4037', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:32:30');
INSERT INTO `sys_job_log` VALUES ('4038', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 07:32:45');
INSERT INTO `sys_job_log` VALUES ('4039', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 07:33:00');
INSERT INTO `sys_job_log` VALUES ('4040', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:33:15');
INSERT INTO `sys_job_log` VALUES ('4041', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:33:30');
INSERT INTO `sys_job_log` VALUES ('4042', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:33:45');
INSERT INTO `sys_job_log` VALUES ('4043', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:34:00');
INSERT INTO `sys_job_log` VALUES ('4044', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:34:15');
INSERT INTO `sys_job_log` VALUES ('4045', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:34:30');
INSERT INTO `sys_job_log` VALUES ('4046', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:34:45');
INSERT INTO `sys_job_log` VALUES ('4047', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:35:00');
INSERT INTO `sys_job_log` VALUES ('4048', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:35:15');
INSERT INTO `sys_job_log` VALUES ('4049', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:35:30');
INSERT INTO `sys_job_log` VALUES ('4050', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:35:45');
INSERT INTO `sys_job_log` VALUES ('4051', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:36:00');
INSERT INTO `sys_job_log` VALUES ('4052', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:36:15');
INSERT INTO `sys_job_log` VALUES ('4053', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:36:30');
INSERT INTO `sys_job_log` VALUES ('4054', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:36:45');
INSERT INTO `sys_job_log` VALUES ('4055', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 07:37:00');
INSERT INTO `sys_job_log` VALUES ('4056', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:37:15');
INSERT INTO `sys_job_log` VALUES ('4057', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:37:30');
INSERT INTO `sys_job_log` VALUES ('4058', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:37:45');
INSERT INTO `sys_job_log` VALUES ('4059', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:38:00');
INSERT INTO `sys_job_log` VALUES ('4060', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:38:15');
INSERT INTO `sys_job_log` VALUES ('4061', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 07:38:30');
INSERT INTO `sys_job_log` VALUES ('4062', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:38:45');
INSERT INTO `sys_job_log` VALUES ('4063', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:39:00');
INSERT INTO `sys_job_log` VALUES ('4064', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:39:15');
INSERT INTO `sys_job_log` VALUES ('4065', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:39:30');
INSERT INTO `sys_job_log` VALUES ('4066', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:39:45');
INSERT INTO `sys_job_log` VALUES ('4067', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 07:40:00');
INSERT INTO `sys_job_log` VALUES ('4068', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:40:15');
INSERT INTO `sys_job_log` VALUES ('4069', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:40:30');
INSERT INTO `sys_job_log` VALUES ('4070', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:40:45');
INSERT INTO `sys_job_log` VALUES ('4071', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:41:00');
INSERT INTO `sys_job_log` VALUES ('4072', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:41:15');
INSERT INTO `sys_job_log` VALUES ('4073', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:41:30');
INSERT INTO `sys_job_log` VALUES ('4074', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:41:45');
INSERT INTO `sys_job_log` VALUES ('4075', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:42:00');
INSERT INTO `sys_job_log` VALUES ('4076', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:42:15');
INSERT INTO `sys_job_log` VALUES ('4077', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:42:30');
INSERT INTO `sys_job_log` VALUES ('4078', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:42:45');
INSERT INTO `sys_job_log` VALUES ('4079', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:43:00');
INSERT INTO `sys_job_log` VALUES ('4080', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:43:15');
INSERT INTO `sys_job_log` VALUES ('4081', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:43:30');
INSERT INTO `sys_job_log` VALUES ('4082', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:43:45');
INSERT INTO `sys_job_log` VALUES ('4083', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:44:00');
INSERT INTO `sys_job_log` VALUES ('4084', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:44:15');
INSERT INTO `sys_job_log` VALUES ('4085', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:44:30');
INSERT INTO `sys_job_log` VALUES ('4086', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:44:45');
INSERT INTO `sys_job_log` VALUES ('4087', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:45:00');
INSERT INTO `sys_job_log` VALUES ('4088', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:45:15');
INSERT INTO `sys_job_log` VALUES ('4089', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:45:30');
INSERT INTO `sys_job_log` VALUES ('4090', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:45:45');
INSERT INTO `sys_job_log` VALUES ('4091', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:46:00');
INSERT INTO `sys_job_log` VALUES ('4092', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:46:15');
INSERT INTO `sys_job_log` VALUES ('4093', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:46:30');
INSERT INTO `sys_job_log` VALUES ('4094', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:46:45');
INSERT INTO `sys_job_log` VALUES ('4095', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 07:47:00');
INSERT INTO `sys_job_log` VALUES ('4096', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:47:15');
INSERT INTO `sys_job_log` VALUES ('4097', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:47:30');
INSERT INTO `sys_job_log` VALUES ('4098', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:47:45');
INSERT INTO `sys_job_log` VALUES ('4099', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:48:00');
INSERT INTO `sys_job_log` VALUES ('4100', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:48:15');
INSERT INTO `sys_job_log` VALUES ('4101', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:48:30');
INSERT INTO `sys_job_log` VALUES ('4102', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:48:45');
INSERT INTO `sys_job_log` VALUES ('4103', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:49:00');
INSERT INTO `sys_job_log` VALUES ('4104', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:49:15');
INSERT INTO `sys_job_log` VALUES ('4105', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:49:30');
INSERT INTO `sys_job_log` VALUES ('4106', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:49:45');
INSERT INTO `sys_job_log` VALUES ('4107', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:50:00');
INSERT INTO `sys_job_log` VALUES ('4108', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:50:15');
INSERT INTO `sys_job_log` VALUES ('4109', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:50:30');
INSERT INTO `sys_job_log` VALUES ('4110', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:50:45');
INSERT INTO `sys_job_log` VALUES ('4111', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:51:00');
INSERT INTO `sys_job_log` VALUES ('4112', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:51:15');
INSERT INTO `sys_job_log` VALUES ('4113', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:51:30');
INSERT INTO `sys_job_log` VALUES ('4114', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 07:51:45');
INSERT INTO `sys_job_log` VALUES ('4115', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:52:00');
INSERT INTO `sys_job_log` VALUES ('4116', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:52:15');
INSERT INTO `sys_job_log` VALUES ('4117', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:52:30');
INSERT INTO `sys_job_log` VALUES ('4118', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:52:45');
INSERT INTO `sys_job_log` VALUES ('4119', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:53:00');
INSERT INTO `sys_job_log` VALUES ('4120', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:53:15');
INSERT INTO `sys_job_log` VALUES ('4121', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:53:30');
INSERT INTO `sys_job_log` VALUES ('4122', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:53:45');
INSERT INTO `sys_job_log` VALUES ('4123', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:54:00');
INSERT INTO `sys_job_log` VALUES ('4124', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:54:15');
INSERT INTO `sys_job_log` VALUES ('4125', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:54:30');
INSERT INTO `sys_job_log` VALUES ('4126', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:54:45');
INSERT INTO `sys_job_log` VALUES ('4127', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:55:00');
INSERT INTO `sys_job_log` VALUES ('4128', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:55:15');
INSERT INTO `sys_job_log` VALUES ('4129', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:55:30');
INSERT INTO `sys_job_log` VALUES ('4130', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:55:45');
INSERT INTO `sys_job_log` VALUES ('4131', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:56:00');
INSERT INTO `sys_job_log` VALUES ('4132', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:56:15');
INSERT INTO `sys_job_log` VALUES ('4133', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:56:30');
INSERT INTO `sys_job_log` VALUES ('4134', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:56:45');
INSERT INTO `sys_job_log` VALUES ('4135', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:57:00');
INSERT INTO `sys_job_log` VALUES ('4136', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:57:15');
INSERT INTO `sys_job_log` VALUES ('4137', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:57:30');
INSERT INTO `sys_job_log` VALUES ('4138', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:57:45');
INSERT INTO `sys_job_log` VALUES ('4139', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:58:00');
INSERT INTO `sys_job_log` VALUES ('4140', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:58:15');
INSERT INTO `sys_job_log` VALUES ('4141', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:58:30');
INSERT INTO `sys_job_log` VALUES ('4142', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:58:45');
INSERT INTO `sys_job_log` VALUES ('4143', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:59:00');
INSERT INTO `sys_job_log` VALUES ('4144', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:59:15');
INSERT INTO `sys_job_log` VALUES ('4145', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:59:30');
INSERT INTO `sys_job_log` VALUES ('4146', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 07:59:45');
INSERT INTO `sys_job_log` VALUES ('4147', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:00:00');
INSERT INTO `sys_job_log` VALUES ('4148', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:00:15');
INSERT INTO `sys_job_log` VALUES ('4149', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:00:30');
INSERT INTO `sys_job_log` VALUES ('4150', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:00:45');
INSERT INTO `sys_job_log` VALUES ('4151', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:01:00');
INSERT INTO `sys_job_log` VALUES ('4152', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:01:15');
INSERT INTO `sys_job_log` VALUES ('4153', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:01:30');
INSERT INTO `sys_job_log` VALUES ('4154', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:01:45');
INSERT INTO `sys_job_log` VALUES ('4155', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:02:00');
INSERT INTO `sys_job_log` VALUES ('4156', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:02:15');
INSERT INTO `sys_job_log` VALUES ('4157', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:02:30');
INSERT INTO `sys_job_log` VALUES ('4158', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:02:45');
INSERT INTO `sys_job_log` VALUES ('4159', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:03:00');
INSERT INTO `sys_job_log` VALUES ('4160', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:03:15');
INSERT INTO `sys_job_log` VALUES ('4161', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:03:30');
INSERT INTO `sys_job_log` VALUES ('4162', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:03:45');
INSERT INTO `sys_job_log` VALUES ('4163', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:04:00');
INSERT INTO `sys_job_log` VALUES ('4164', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:04:15');
INSERT INTO `sys_job_log` VALUES ('4165', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:04:30');
INSERT INTO `sys_job_log` VALUES ('4166', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:04:45');
INSERT INTO `sys_job_log` VALUES ('4167', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:05:00');
INSERT INTO `sys_job_log` VALUES ('4168', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:05:15');
INSERT INTO `sys_job_log` VALUES ('4169', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:05:30');
INSERT INTO `sys_job_log` VALUES ('4170', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:05:45');
INSERT INTO `sys_job_log` VALUES ('4171', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:06:00');
INSERT INTO `sys_job_log` VALUES ('4172', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:06:15');
INSERT INTO `sys_job_log` VALUES ('4173', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:06:30');
INSERT INTO `sys_job_log` VALUES ('4174', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:06:45');
INSERT INTO `sys_job_log` VALUES ('4175', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:07:00');
INSERT INTO `sys_job_log` VALUES ('4176', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:07:15');
INSERT INTO `sys_job_log` VALUES ('4177', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:07:30');
INSERT INTO `sys_job_log` VALUES ('4178', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:07:45');
INSERT INTO `sys_job_log` VALUES ('4179', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:08:00');
INSERT INTO `sys_job_log` VALUES ('4180', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:08:15');
INSERT INTO `sys_job_log` VALUES ('4181', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:08:30');
INSERT INTO `sys_job_log` VALUES ('4182', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:08:45');
INSERT INTO `sys_job_log` VALUES ('4183', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:09:00');
INSERT INTO `sys_job_log` VALUES ('4184', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:09:15');
INSERT INTO `sys_job_log` VALUES ('4185', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:09:30');
INSERT INTO `sys_job_log` VALUES ('4186', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:09:45');
INSERT INTO `sys_job_log` VALUES ('4187', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:10:00');
INSERT INTO `sys_job_log` VALUES ('4188', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:10:15');
INSERT INTO `sys_job_log` VALUES ('4189', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:10:30');
INSERT INTO `sys_job_log` VALUES ('4190', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:10:45');
INSERT INTO `sys_job_log` VALUES ('4191', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:11:00');
INSERT INTO `sys_job_log` VALUES ('4192', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:11:15');
INSERT INTO `sys_job_log` VALUES ('4193', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:11:30');
INSERT INTO `sys_job_log` VALUES ('4194', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:11:45');
INSERT INTO `sys_job_log` VALUES ('4195', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:12:00');
INSERT INTO `sys_job_log` VALUES ('4196', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:12:15');
INSERT INTO `sys_job_log` VALUES ('4197', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:12:30');
INSERT INTO `sys_job_log` VALUES ('4198', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:12:45');
INSERT INTO `sys_job_log` VALUES ('4199', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:13:00');
INSERT INTO `sys_job_log` VALUES ('4200', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:13:15');
INSERT INTO `sys_job_log` VALUES ('4201', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:13:30');
INSERT INTO `sys_job_log` VALUES ('4202', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:13:45');
INSERT INTO `sys_job_log` VALUES ('4203', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:14:00');
INSERT INTO `sys_job_log` VALUES ('4204', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:14:15');
INSERT INTO `sys_job_log` VALUES ('4205', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:14:30');
INSERT INTO `sys_job_log` VALUES ('4206', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:14:45');
INSERT INTO `sys_job_log` VALUES ('4207', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:15:00');
INSERT INTO `sys_job_log` VALUES ('4208', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:15:15');
INSERT INTO `sys_job_log` VALUES ('4209', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:15:30');
INSERT INTO `sys_job_log` VALUES ('4210', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:15:45');
INSERT INTO `sys_job_log` VALUES ('4211', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:16:00');
INSERT INTO `sys_job_log` VALUES ('4212', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:16:15');
INSERT INTO `sys_job_log` VALUES ('4213', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:16:30');
INSERT INTO `sys_job_log` VALUES ('4214', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:16:45');
INSERT INTO `sys_job_log` VALUES ('4215', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:17:00');
INSERT INTO `sys_job_log` VALUES ('4216', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:17:15');
INSERT INTO `sys_job_log` VALUES ('4217', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:17:30');
INSERT INTO `sys_job_log` VALUES ('4218', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:17:45');
INSERT INTO `sys_job_log` VALUES ('4219', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:18:00');
INSERT INTO `sys_job_log` VALUES ('4220', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:18:15');
INSERT INTO `sys_job_log` VALUES ('4221', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:18:30');
INSERT INTO `sys_job_log` VALUES ('4222', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:18:45');
INSERT INTO `sys_job_log` VALUES ('4223', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:19:00');
INSERT INTO `sys_job_log` VALUES ('4224', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:19:15');
INSERT INTO `sys_job_log` VALUES ('4225', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:19:30');
INSERT INTO `sys_job_log` VALUES ('4226', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:19:45');
INSERT INTO `sys_job_log` VALUES ('4227', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:20:00');
INSERT INTO `sys_job_log` VALUES ('4228', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:20:15');
INSERT INTO `sys_job_log` VALUES ('4229', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:20:30');
INSERT INTO `sys_job_log` VALUES ('4230', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:20:45');
INSERT INTO `sys_job_log` VALUES ('4231', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:21:00');
INSERT INTO `sys_job_log` VALUES ('4232', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:21:15');
INSERT INTO `sys_job_log` VALUES ('4233', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:21:30');
INSERT INTO `sys_job_log` VALUES ('4234', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:21:45');
INSERT INTO `sys_job_log` VALUES ('4235', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:22:00');
INSERT INTO `sys_job_log` VALUES ('4236', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:22:15');
INSERT INTO `sys_job_log` VALUES ('4237', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:22:30');
INSERT INTO `sys_job_log` VALUES ('4238', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:22:45');
INSERT INTO `sys_job_log` VALUES ('4239', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:23:00');
INSERT INTO `sys_job_log` VALUES ('4240', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:23:15');
INSERT INTO `sys_job_log` VALUES ('4241', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:23:30');
INSERT INTO `sys_job_log` VALUES ('4242', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:23:45');
INSERT INTO `sys_job_log` VALUES ('4243', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:24:00');
INSERT INTO `sys_job_log` VALUES ('4244', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:24:15');
INSERT INTO `sys_job_log` VALUES ('4245', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:24:30');
INSERT INTO `sys_job_log` VALUES ('4246', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:24:45');
INSERT INTO `sys_job_log` VALUES ('4247', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:25:00');
INSERT INTO `sys_job_log` VALUES ('4248', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:25:15');
INSERT INTO `sys_job_log` VALUES ('4249', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:25:30');
INSERT INTO `sys_job_log` VALUES ('4250', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:25:45');
INSERT INTO `sys_job_log` VALUES ('4251', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:26:00');
INSERT INTO `sys_job_log` VALUES ('4252', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:26:15');
INSERT INTO `sys_job_log` VALUES ('4253', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:26:30');
INSERT INTO `sys_job_log` VALUES ('4254', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:26:45');
INSERT INTO `sys_job_log` VALUES ('4255', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:27:00');
INSERT INTO `sys_job_log` VALUES ('4256', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:27:15');
INSERT INTO `sys_job_log` VALUES ('4257', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:27:30');
INSERT INTO `sys_job_log` VALUES ('4258', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:27:45');
INSERT INTO `sys_job_log` VALUES ('4259', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:28:00');
INSERT INTO `sys_job_log` VALUES ('4260', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:28:15');
INSERT INTO `sys_job_log` VALUES ('4261', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:28:30');
INSERT INTO `sys_job_log` VALUES ('4262', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:28:45');
INSERT INTO `sys_job_log` VALUES ('4263', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:29:00');
INSERT INTO `sys_job_log` VALUES ('4264', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:29:15');
INSERT INTO `sys_job_log` VALUES ('4265', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:29:30');
INSERT INTO `sys_job_log` VALUES ('4266', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:29:45');
INSERT INTO `sys_job_log` VALUES ('4267', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:30:00');
INSERT INTO `sys_job_log` VALUES ('4268', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:30:15');
INSERT INTO `sys_job_log` VALUES ('4269', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:30:30');
INSERT INTO `sys_job_log` VALUES ('4270', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:30:45');
INSERT INTO `sys_job_log` VALUES ('4271', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:31:00');
INSERT INTO `sys_job_log` VALUES ('4272', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:31:15');
INSERT INTO `sys_job_log` VALUES ('4273', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:31:30');
INSERT INTO `sys_job_log` VALUES ('4274', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:31:45');
INSERT INTO `sys_job_log` VALUES ('4275', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:32:00');
INSERT INTO `sys_job_log` VALUES ('4276', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:32:15');
INSERT INTO `sys_job_log` VALUES ('4277', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:32:30');
INSERT INTO `sys_job_log` VALUES ('4278', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:32:45');
INSERT INTO `sys_job_log` VALUES ('4279', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:33:00');
INSERT INTO `sys_job_log` VALUES ('4280', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:33:15');
INSERT INTO `sys_job_log` VALUES ('4281', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:33:30');
INSERT INTO `sys_job_log` VALUES ('4282', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:33:45');
INSERT INTO `sys_job_log` VALUES ('4283', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:34:00');
INSERT INTO `sys_job_log` VALUES ('4284', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:34:15');
INSERT INTO `sys_job_log` VALUES ('4285', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:34:30');
INSERT INTO `sys_job_log` VALUES ('4286', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:34:45');
INSERT INTO `sys_job_log` VALUES ('4287', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:35:00');
INSERT INTO `sys_job_log` VALUES ('4288', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:35:15');
INSERT INTO `sys_job_log` VALUES ('4289', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:35:30');
INSERT INTO `sys_job_log` VALUES ('4290', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:35:45');
INSERT INTO `sys_job_log` VALUES ('4291', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:36:00');
INSERT INTO `sys_job_log` VALUES ('4292', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:36:15');
INSERT INTO `sys_job_log` VALUES ('4293', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:36:30');
INSERT INTO `sys_job_log` VALUES ('4294', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:36:45');
INSERT INTO `sys_job_log` VALUES ('4295', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:37:00');
INSERT INTO `sys_job_log` VALUES ('4296', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:37:15');
INSERT INTO `sys_job_log` VALUES ('4297', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:37:30');
INSERT INTO `sys_job_log` VALUES ('4298', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:37:45');
INSERT INTO `sys_job_log` VALUES ('4299', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:38:00');
INSERT INTO `sys_job_log` VALUES ('4300', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:38:15');
INSERT INTO `sys_job_log` VALUES ('4301', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:38:30');
INSERT INTO `sys_job_log` VALUES ('4302', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:38:45');
INSERT INTO `sys_job_log` VALUES ('4303', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:39:00');
INSERT INTO `sys_job_log` VALUES ('4304', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:39:15');
INSERT INTO `sys_job_log` VALUES ('4305', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:39:30');
INSERT INTO `sys_job_log` VALUES ('4306', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:39:45');
INSERT INTO `sys_job_log` VALUES ('4307', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:40:00');
INSERT INTO `sys_job_log` VALUES ('4308', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:40:15');
INSERT INTO `sys_job_log` VALUES ('4309', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:40:30');
INSERT INTO `sys_job_log` VALUES ('4310', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:40:45');
INSERT INTO `sys_job_log` VALUES ('4311', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:41:00');
INSERT INTO `sys_job_log` VALUES ('4312', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:41:15');
INSERT INTO `sys_job_log` VALUES ('4313', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:41:30');
INSERT INTO `sys_job_log` VALUES ('4314', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:41:45');
INSERT INTO `sys_job_log` VALUES ('4315', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:42:00');
INSERT INTO `sys_job_log` VALUES ('4316', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:42:15');
INSERT INTO `sys_job_log` VALUES ('4317', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:42:30');
INSERT INTO `sys_job_log` VALUES ('4318', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:42:45');
INSERT INTO `sys_job_log` VALUES ('4319', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:43:00');
INSERT INTO `sys_job_log` VALUES ('4320', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:43:15');
INSERT INTO `sys_job_log` VALUES ('4321', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:43:30');
INSERT INTO `sys_job_log` VALUES ('4322', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:43:45');
INSERT INTO `sys_job_log` VALUES ('4323', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:44:00');
INSERT INTO `sys_job_log` VALUES ('4324', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:44:15');
INSERT INTO `sys_job_log` VALUES ('4325', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:44:30');
INSERT INTO `sys_job_log` VALUES ('4326', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:44:45');
INSERT INTO `sys_job_log` VALUES ('4327', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:45:00');
INSERT INTO `sys_job_log` VALUES ('4328', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:45:15');
INSERT INTO `sys_job_log` VALUES ('4329', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:45:30');
INSERT INTO `sys_job_log` VALUES ('4330', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:45:45');
INSERT INTO `sys_job_log` VALUES ('4331', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:46:00');
INSERT INTO `sys_job_log` VALUES ('4332', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:46:15');
INSERT INTO `sys_job_log` VALUES ('4333', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:46:30');
INSERT INTO `sys_job_log` VALUES ('4334', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:46:45');
INSERT INTO `sys_job_log` VALUES ('4335', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:47:00');
INSERT INTO `sys_job_log` VALUES ('4336', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:47:15');
INSERT INTO `sys_job_log` VALUES ('4337', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:47:30');
INSERT INTO `sys_job_log` VALUES ('4338', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:47:45');
INSERT INTO `sys_job_log` VALUES ('4339', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:48:00');
INSERT INTO `sys_job_log` VALUES ('4340', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:48:15');
INSERT INTO `sys_job_log` VALUES ('4341', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:48:30');
INSERT INTO `sys_job_log` VALUES ('4342', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:48:45');
INSERT INTO `sys_job_log` VALUES ('4343', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:49:00');
INSERT INTO `sys_job_log` VALUES ('4344', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:49:15');
INSERT INTO `sys_job_log` VALUES ('4345', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:49:30');
INSERT INTO `sys_job_log` VALUES ('4346', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:49:45');
INSERT INTO `sys_job_log` VALUES ('4347', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:50:00');
INSERT INTO `sys_job_log` VALUES ('4348', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:50:15');
INSERT INTO `sys_job_log` VALUES ('4349', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:50:30');
INSERT INTO `sys_job_log` VALUES ('4350', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:50:45');
INSERT INTO `sys_job_log` VALUES ('4351', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:51:00');
INSERT INTO `sys_job_log` VALUES ('4352', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:51:15');
INSERT INTO `sys_job_log` VALUES ('4353', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:51:30');
INSERT INTO `sys_job_log` VALUES ('4354', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:51:45');
INSERT INTO `sys_job_log` VALUES ('4355', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:52:00');
INSERT INTO `sys_job_log` VALUES ('4356', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:52:15');
INSERT INTO `sys_job_log` VALUES ('4357', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:52:30');
INSERT INTO `sys_job_log` VALUES ('4358', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:52:45');
INSERT INTO `sys_job_log` VALUES ('4359', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:53:00');
INSERT INTO `sys_job_log` VALUES ('4360', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:53:15');
INSERT INTO `sys_job_log` VALUES ('4361', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:53:30');
INSERT INTO `sys_job_log` VALUES ('4362', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:53:45');
INSERT INTO `sys_job_log` VALUES ('4363', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:54:00');
INSERT INTO `sys_job_log` VALUES ('4364', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:54:15');
INSERT INTO `sys_job_log` VALUES ('4365', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:54:30');
INSERT INTO `sys_job_log` VALUES ('4366', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:54:45');
INSERT INTO `sys_job_log` VALUES ('4367', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:55:00');
INSERT INTO `sys_job_log` VALUES ('4368', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:55:15');
INSERT INTO `sys_job_log` VALUES ('4369', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:55:30');
INSERT INTO `sys_job_log` VALUES ('4370', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:55:45');
INSERT INTO `sys_job_log` VALUES ('4371', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:56:00');
INSERT INTO `sys_job_log` VALUES ('4372', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:56:15');
INSERT INTO `sys_job_log` VALUES ('4373', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:56:30');
INSERT INTO `sys_job_log` VALUES ('4374', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:56:45');
INSERT INTO `sys_job_log` VALUES ('4375', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:57:00');
INSERT INTO `sys_job_log` VALUES ('4376', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:57:15');
INSERT INTO `sys_job_log` VALUES ('4377', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:57:30');
INSERT INTO `sys_job_log` VALUES ('4378', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:57:48');
INSERT INTO `sys_job_log` VALUES ('4379', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:58:00');
INSERT INTO `sys_job_log` VALUES ('4380', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:58:15');
INSERT INTO `sys_job_log` VALUES ('4381', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:58:30');
INSERT INTO `sys_job_log` VALUES ('4382', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 08:58:45');
INSERT INTO `sys_job_log` VALUES ('4383', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:59:00');
INSERT INTO `sys_job_log` VALUES ('4384', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:59:15');
INSERT INTO `sys_job_log` VALUES ('4385', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:59:30');
INSERT INTO `sys_job_log` VALUES ('4386', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 08:59:45');
INSERT INTO `sys_job_log` VALUES ('4387', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:00:00');
INSERT INTO `sys_job_log` VALUES ('4388', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:00:15');
INSERT INTO `sys_job_log` VALUES ('4389', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:00:30');
INSERT INTO `sys_job_log` VALUES ('4390', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:00:45');
INSERT INTO `sys_job_log` VALUES ('4391', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:01:00');
INSERT INTO `sys_job_log` VALUES ('4392', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:01:15');
INSERT INTO `sys_job_log` VALUES ('4393', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:01:30');
INSERT INTO `sys_job_log` VALUES ('4394', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:01:45');
INSERT INTO `sys_job_log` VALUES ('4395', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:02:00');
INSERT INTO `sys_job_log` VALUES ('4396', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:02:15');
INSERT INTO `sys_job_log` VALUES ('4397', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:02:30');
INSERT INTO `sys_job_log` VALUES ('4398', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:02:45');
INSERT INTO `sys_job_log` VALUES ('4399', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:03:00');
INSERT INTO `sys_job_log` VALUES ('4400', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:03:15');
INSERT INTO `sys_job_log` VALUES ('4401', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:03:30');
INSERT INTO `sys_job_log` VALUES ('4402', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:03:45');
INSERT INTO `sys_job_log` VALUES ('4403', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:04:00');
INSERT INTO `sys_job_log` VALUES ('4404', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:04:15');
INSERT INTO `sys_job_log` VALUES ('4405', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:04:30');
INSERT INTO `sys_job_log` VALUES ('4406', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:04:45');
INSERT INTO `sys_job_log` VALUES ('4407', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:05:00');
INSERT INTO `sys_job_log` VALUES ('4408', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:05:15');
INSERT INTO `sys_job_log` VALUES ('4409', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:05:30');
INSERT INTO `sys_job_log` VALUES ('4410', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:05:45');
INSERT INTO `sys_job_log` VALUES ('4411', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:06:00');
INSERT INTO `sys_job_log` VALUES ('4412', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:06:15');
INSERT INTO `sys_job_log` VALUES ('4413', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:06:30');
INSERT INTO `sys_job_log` VALUES ('4414', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:06:45');
INSERT INTO `sys_job_log` VALUES ('4415', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:07:00');
INSERT INTO `sys_job_log` VALUES ('4416', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:07:15');
INSERT INTO `sys_job_log` VALUES ('4417', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:07:30');
INSERT INTO `sys_job_log` VALUES ('4418', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:07:45');
INSERT INTO `sys_job_log` VALUES ('4419', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:08:00');
INSERT INTO `sys_job_log` VALUES ('4420', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:08:15');
INSERT INTO `sys_job_log` VALUES ('4421', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:08:30');
INSERT INTO `sys_job_log` VALUES ('4422', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:08:45');
INSERT INTO `sys_job_log` VALUES ('4423', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:09:00');
INSERT INTO `sys_job_log` VALUES ('4424', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:09:15');
INSERT INTO `sys_job_log` VALUES ('4425', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:09:30');
INSERT INTO `sys_job_log` VALUES ('4426', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:09:45');
INSERT INTO `sys_job_log` VALUES ('4427', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:10:00');
INSERT INTO `sys_job_log` VALUES ('4428', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:10:15');
INSERT INTO `sys_job_log` VALUES ('4429', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:10:30');
INSERT INTO `sys_job_log` VALUES ('4430', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:10:45');
INSERT INTO `sys_job_log` VALUES ('4431', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:11:00');
INSERT INTO `sys_job_log` VALUES ('4432', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:11:15');
INSERT INTO `sys_job_log` VALUES ('4433', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:11:30');
INSERT INTO `sys_job_log` VALUES ('4434', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:11:45');
INSERT INTO `sys_job_log` VALUES ('4435', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:12:00');
INSERT INTO `sys_job_log` VALUES ('4436', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:12:15');
INSERT INTO `sys_job_log` VALUES ('4437', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:12:30');
INSERT INTO `sys_job_log` VALUES ('4438', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:12:45');
INSERT INTO `sys_job_log` VALUES ('4439', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:13:00');
INSERT INTO `sys_job_log` VALUES ('4440', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:13:15');
INSERT INTO `sys_job_log` VALUES ('4441', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:13:30');
INSERT INTO `sys_job_log` VALUES ('4442', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:13:45');
INSERT INTO `sys_job_log` VALUES ('4443', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:14:00');
INSERT INTO `sys_job_log` VALUES ('4444', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:14:15');
INSERT INTO `sys_job_log` VALUES ('4445', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:14:30');
INSERT INTO `sys_job_log` VALUES ('4446', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:15:15');
INSERT INTO `sys_job_log` VALUES ('4447', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:15:30');
INSERT INTO `sys_job_log` VALUES ('4448', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:15:45');
INSERT INTO `sys_job_log` VALUES ('4449', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:16:00');
INSERT INTO `sys_job_log` VALUES ('4450', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:16:15');
INSERT INTO `sys_job_log` VALUES ('4451', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:16:30');
INSERT INTO `sys_job_log` VALUES ('4452', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:16:45');
INSERT INTO `sys_job_log` VALUES ('4453', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:17:00');
INSERT INTO `sys_job_log` VALUES ('4454', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:17:15');
INSERT INTO `sys_job_log` VALUES ('4455', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:17:30');
INSERT INTO `sys_job_log` VALUES ('4456', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:17:45');
INSERT INTO `sys_job_log` VALUES ('4457', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:18:00');
INSERT INTO `sys_job_log` VALUES ('4458', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:18:15');
INSERT INTO `sys_job_log` VALUES ('4459', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:18:30');
INSERT INTO `sys_job_log` VALUES ('4460', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:18:45');
INSERT INTO `sys_job_log` VALUES ('4461', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:19:00');
INSERT INTO `sys_job_log` VALUES ('4462', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:19:15');
INSERT INTO `sys_job_log` VALUES ('4463', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:19:30');
INSERT INTO `sys_job_log` VALUES ('4464', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:19:45');
INSERT INTO `sys_job_log` VALUES ('4465', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:20:00');
INSERT INTO `sys_job_log` VALUES ('4466', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:20:15');
INSERT INTO `sys_job_log` VALUES ('4467', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:20:30');
INSERT INTO `sys_job_log` VALUES ('4468', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:20:45');
INSERT INTO `sys_job_log` VALUES ('4469', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:21:00');
INSERT INTO `sys_job_log` VALUES ('4470', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:21:15');
INSERT INTO `sys_job_log` VALUES ('4471', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:21:30');
INSERT INTO `sys_job_log` VALUES ('4472', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:21:45');
INSERT INTO `sys_job_log` VALUES ('4473', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:22:00');
INSERT INTO `sys_job_log` VALUES ('4474', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:22:15');
INSERT INTO `sys_job_log` VALUES ('4475', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:22:30');
INSERT INTO `sys_job_log` VALUES ('4476', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:22:45');
INSERT INTO `sys_job_log` VALUES ('4477', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:23:00');
INSERT INTO `sys_job_log` VALUES ('4478', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:23:15');
INSERT INTO `sys_job_log` VALUES ('4479', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:23:30');
INSERT INTO `sys_job_log` VALUES ('4480', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:23:45');
INSERT INTO `sys_job_log` VALUES ('4481', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:24:00');
INSERT INTO `sys_job_log` VALUES ('4482', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:24:15');
INSERT INTO `sys_job_log` VALUES ('4483', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:24:30');
INSERT INTO `sys_job_log` VALUES ('4484', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:24:45');
INSERT INTO `sys_job_log` VALUES ('4485', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:25:00');
INSERT INTO `sys_job_log` VALUES ('4486', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:25:15');
INSERT INTO `sys_job_log` VALUES ('4487', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:25:30');
INSERT INTO `sys_job_log` VALUES ('4488', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:25:45');
INSERT INTO `sys_job_log` VALUES ('4489', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:26:00');
INSERT INTO `sys_job_log` VALUES ('4490', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:26:15');
INSERT INTO `sys_job_log` VALUES ('4491', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:26:30');
INSERT INTO `sys_job_log` VALUES ('4492', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:26:45');
INSERT INTO `sys_job_log` VALUES ('4493', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:27:00');
INSERT INTO `sys_job_log` VALUES ('4494', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:27:15');
INSERT INTO `sys_job_log` VALUES ('4495', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:27:30');
INSERT INTO `sys_job_log` VALUES ('4496', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:27:45');
INSERT INTO `sys_job_log` VALUES ('4497', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:28:00');
INSERT INTO `sys_job_log` VALUES ('4498', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:28:15');
INSERT INTO `sys_job_log` VALUES ('4499', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:28:30');
INSERT INTO `sys_job_log` VALUES ('4500', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:28:45');
INSERT INTO `sys_job_log` VALUES ('4501', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:29:00');
INSERT INTO `sys_job_log` VALUES ('4502', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:29:15');
INSERT INTO `sys_job_log` VALUES ('4503', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:29:30');
INSERT INTO `sys_job_log` VALUES ('4504', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:29:45');
INSERT INTO `sys_job_log` VALUES ('4505', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:30:00');
INSERT INTO `sys_job_log` VALUES ('4506', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:30:15');
INSERT INTO `sys_job_log` VALUES ('4507', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:30:30');
INSERT INTO `sys_job_log` VALUES ('4508', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:30:45');
INSERT INTO `sys_job_log` VALUES ('4509', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:31:00');
INSERT INTO `sys_job_log` VALUES ('4510', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:31:15');
INSERT INTO `sys_job_log` VALUES ('4511', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:31:30');
INSERT INTO `sys_job_log` VALUES ('4512', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:31:45');
INSERT INTO `sys_job_log` VALUES ('4513', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:32:00');
INSERT INTO `sys_job_log` VALUES ('4514', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:32:15');
INSERT INTO `sys_job_log` VALUES ('4515', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:32:30');
INSERT INTO `sys_job_log` VALUES ('4516', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:32:45');
INSERT INTO `sys_job_log` VALUES ('4517', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:33:00');
INSERT INTO `sys_job_log` VALUES ('4518', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:33:15');
INSERT INTO `sys_job_log` VALUES ('4519', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:33:30');
INSERT INTO `sys_job_log` VALUES ('4520', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:33:45');
INSERT INTO `sys_job_log` VALUES ('4521', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:34:00');
INSERT INTO `sys_job_log` VALUES ('4522', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:34:15');
INSERT INTO `sys_job_log` VALUES ('4523', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:34:30');
INSERT INTO `sys_job_log` VALUES ('4524', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:34:45');
INSERT INTO `sys_job_log` VALUES ('4525', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:35:00');
INSERT INTO `sys_job_log` VALUES ('4526', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:35:15');
INSERT INTO `sys_job_log` VALUES ('4527', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:35:30');
INSERT INTO `sys_job_log` VALUES ('4528', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:35:45');
INSERT INTO `sys_job_log` VALUES ('4529', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:36:00');
INSERT INTO `sys_job_log` VALUES ('4530', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:36:15');
INSERT INTO `sys_job_log` VALUES ('4531', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:36:30');
INSERT INTO `sys_job_log` VALUES ('4532', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:36:45');
INSERT INTO `sys_job_log` VALUES ('4533', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:37:00');
INSERT INTO `sys_job_log` VALUES ('4534', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:37:15');
INSERT INTO `sys_job_log` VALUES ('4535', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:37:30');
INSERT INTO `sys_job_log` VALUES ('4536', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:37:45');
INSERT INTO `sys_job_log` VALUES ('4537', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:38:00');
INSERT INTO `sys_job_log` VALUES ('4538', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:38:15');
INSERT INTO `sys_job_log` VALUES ('4539', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:38:30');
INSERT INTO `sys_job_log` VALUES ('4540', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:38:45');
INSERT INTO `sys_job_log` VALUES ('4541', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:39:00');
INSERT INTO `sys_job_log` VALUES ('4542', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:39:15');
INSERT INTO `sys_job_log` VALUES ('4543', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:39:30');
INSERT INTO `sys_job_log` VALUES ('4544', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:39:45');
INSERT INTO `sys_job_log` VALUES ('4545', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:40:00');
INSERT INTO `sys_job_log` VALUES ('4546', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:40:15');
INSERT INTO `sys_job_log` VALUES ('4547', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:40:30');
INSERT INTO `sys_job_log` VALUES ('4548', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:40:45');
INSERT INTO `sys_job_log` VALUES ('4549', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:41:00');
INSERT INTO `sys_job_log` VALUES ('4550', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:41:15');
INSERT INTO `sys_job_log` VALUES ('4551', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:41:30');
INSERT INTO `sys_job_log` VALUES ('4552', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:41:45');
INSERT INTO `sys_job_log` VALUES ('4553', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:42:00');
INSERT INTO `sys_job_log` VALUES ('4554', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:42:15');
INSERT INTO `sys_job_log` VALUES ('4555', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:42:30');
INSERT INTO `sys_job_log` VALUES ('4556', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:42:45');
INSERT INTO `sys_job_log` VALUES ('4557', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:43:00');
INSERT INTO `sys_job_log` VALUES ('4558', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:43:15');
INSERT INTO `sys_job_log` VALUES ('4559', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:43:30');
INSERT INTO `sys_job_log` VALUES ('4560', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:43:45');
INSERT INTO `sys_job_log` VALUES ('4561', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:44:00');
INSERT INTO `sys_job_log` VALUES ('4562', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:44:15');
INSERT INTO `sys_job_log` VALUES ('4563', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:44:30');
INSERT INTO `sys_job_log` VALUES ('4564', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:44:45');
INSERT INTO `sys_job_log` VALUES ('4565', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:45:00');
INSERT INTO `sys_job_log` VALUES ('4566', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 09:45:15');
INSERT INTO `sys_job_log` VALUES ('4567', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:45:30');
INSERT INTO `sys_job_log` VALUES ('4568', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:45:45');
INSERT INTO `sys_job_log` VALUES ('4569', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:46:00');
INSERT INTO `sys_job_log` VALUES ('4570', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:46:15');
INSERT INTO `sys_job_log` VALUES ('4571', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:46:30');
INSERT INTO `sys_job_log` VALUES ('4572', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:46:45');
INSERT INTO `sys_job_log` VALUES ('4573', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:47:00');
INSERT INTO `sys_job_log` VALUES ('4574', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:47:15');
INSERT INTO `sys_job_log` VALUES ('4575', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:47:30');
INSERT INTO `sys_job_log` VALUES ('4576', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:47:45');
INSERT INTO `sys_job_log` VALUES ('4577', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:48:00');
INSERT INTO `sys_job_log` VALUES ('4578', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:48:15');
INSERT INTO `sys_job_log` VALUES ('4579', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:48:30');
INSERT INTO `sys_job_log` VALUES ('4580', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:48:45');
INSERT INTO `sys_job_log` VALUES ('4581', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:49:00');
INSERT INTO `sys_job_log` VALUES ('4582', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:49:15');
INSERT INTO `sys_job_log` VALUES ('4583', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:49:30');
INSERT INTO `sys_job_log` VALUES ('4584', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:49:45');
INSERT INTO `sys_job_log` VALUES ('4585', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:50:00');
INSERT INTO `sys_job_log` VALUES ('4586', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:50:30');
INSERT INTO `sys_job_log` VALUES ('4587', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:50:45');
INSERT INTO `sys_job_log` VALUES ('4588', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:51:00');
INSERT INTO `sys_job_log` VALUES ('4589', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:51:15');
INSERT INTO `sys_job_log` VALUES ('4590', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:51:30');
INSERT INTO `sys_job_log` VALUES ('4591', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:51:45');
INSERT INTO `sys_job_log` VALUES ('4592', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:52:00');
INSERT INTO `sys_job_log` VALUES ('4593', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:52:15');
INSERT INTO `sys_job_log` VALUES ('4594', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:52:30');
INSERT INTO `sys_job_log` VALUES ('4595', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:52:45');
INSERT INTO `sys_job_log` VALUES ('4596', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:53:00');
INSERT INTO `sys_job_log` VALUES ('4597', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:53:15');
INSERT INTO `sys_job_log` VALUES ('4598', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:53:30');
INSERT INTO `sys_job_log` VALUES ('4599', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:53:45');
INSERT INTO `sys_job_log` VALUES ('4600', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:54:00');
INSERT INTO `sys_job_log` VALUES ('4601', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:54:15');
INSERT INTO `sys_job_log` VALUES ('4602', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:54:30');
INSERT INTO `sys_job_log` VALUES ('4603', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:54:45');
INSERT INTO `sys_job_log` VALUES ('4604', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 09:56:30');
INSERT INTO `sys_job_log` VALUES ('4605', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:56:45');
INSERT INTO `sys_job_log` VALUES ('4606', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 09:57:45');
INSERT INTO `sys_job_log` VALUES ('4607', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:58:00');
INSERT INTO `sys_job_log` VALUES ('4608', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:58:15');
INSERT INTO `sys_job_log` VALUES ('4609', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:58:30');
INSERT INTO `sys_job_log` VALUES ('4610', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:58:45');
INSERT INTO `sys_job_log` VALUES ('4611', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:59:00');
INSERT INTO `sys_job_log` VALUES ('4612', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 09:59:15');
INSERT INTO `sys_job_log` VALUES ('4613', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 09:59:45');
INSERT INTO `sys_job_log` VALUES ('4614', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:00:00');
INSERT INTO `sys_job_log` VALUES ('4615', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:00:15');
INSERT INTO `sys_job_log` VALUES ('4616', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:00:30');
INSERT INTO `sys_job_log` VALUES ('4617', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:00:45');
INSERT INTO `sys_job_log` VALUES ('4618', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:01:00');
INSERT INTO `sys_job_log` VALUES ('4619', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:01:15');
INSERT INTO `sys_job_log` VALUES ('4620', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:01:30');
INSERT INTO `sys_job_log` VALUES ('4621', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:01:45');
INSERT INTO `sys_job_log` VALUES ('4622', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:02:00');
INSERT INTO `sys_job_log` VALUES ('4623', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:02:15');
INSERT INTO `sys_job_log` VALUES ('4624', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:02:30');
INSERT INTO `sys_job_log` VALUES ('4625', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:02:45');
INSERT INTO `sys_job_log` VALUES ('4626', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:03:00');
INSERT INTO `sys_job_log` VALUES ('4627', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:03:15');
INSERT INTO `sys_job_log` VALUES ('4628', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:03:30');
INSERT INTO `sys_job_log` VALUES ('4629', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:03:45');
INSERT INTO `sys_job_log` VALUES ('4630', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:04:00');
INSERT INTO `sys_job_log` VALUES ('4631', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:04:15');
INSERT INTO `sys_job_log` VALUES ('4632', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:04:30');
INSERT INTO `sys_job_log` VALUES ('4633', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:04:45');
INSERT INTO `sys_job_log` VALUES ('4634', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:05:00');
INSERT INTO `sys_job_log` VALUES ('4635', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:05:15');
INSERT INTO `sys_job_log` VALUES ('4636', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:05:30');
INSERT INTO `sys_job_log` VALUES ('4637', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:05:45');
INSERT INTO `sys_job_log` VALUES ('4638', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:06:00');
INSERT INTO `sys_job_log` VALUES ('4639', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:06:15');
INSERT INTO `sys_job_log` VALUES ('4640', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:06:30');
INSERT INTO `sys_job_log` VALUES ('4641', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:06:45');
INSERT INTO `sys_job_log` VALUES ('4642', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:07:00');
INSERT INTO `sys_job_log` VALUES ('4643', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:07:15');
INSERT INTO `sys_job_log` VALUES ('4644', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:07:30');
INSERT INTO `sys_job_log` VALUES ('4645', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:07:45');
INSERT INTO `sys_job_log` VALUES ('4646', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:08:00');
INSERT INTO `sys_job_log` VALUES ('4647', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:08:15');
INSERT INTO `sys_job_log` VALUES ('4648', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:08:30');
INSERT INTO `sys_job_log` VALUES ('4649', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:08:45');
INSERT INTO `sys_job_log` VALUES ('4650', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:09:00');
INSERT INTO `sys_job_log` VALUES ('4651', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:09:15');
INSERT INTO `sys_job_log` VALUES ('4652', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:09:30');
INSERT INTO `sys_job_log` VALUES ('4653', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:09:45');
INSERT INTO `sys_job_log` VALUES ('4654', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:10:00');
INSERT INTO `sys_job_log` VALUES ('4655', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:10:15');
INSERT INTO `sys_job_log` VALUES ('4656', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:10:30');
INSERT INTO `sys_job_log` VALUES ('4657', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:10:45');
INSERT INTO `sys_job_log` VALUES ('4658', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:11:00');
INSERT INTO `sys_job_log` VALUES ('4659', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:11:15');
INSERT INTO `sys_job_log` VALUES ('4660', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:11:30');
INSERT INTO `sys_job_log` VALUES ('4661', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:11:45');
INSERT INTO `sys_job_log` VALUES ('4662', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:12:00');
INSERT INTO `sys_job_log` VALUES ('4663', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:12:15');
INSERT INTO `sys_job_log` VALUES ('4664', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:12:30');
INSERT INTO `sys_job_log` VALUES ('4665', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:12:45');
INSERT INTO `sys_job_log` VALUES ('4666', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:13:00');
INSERT INTO `sys_job_log` VALUES ('4667', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:13:15');
INSERT INTO `sys_job_log` VALUES ('4668', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:13:30');
INSERT INTO `sys_job_log` VALUES ('4669', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:13:45');
INSERT INTO `sys_job_log` VALUES ('4670', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:14:00');
INSERT INTO `sys_job_log` VALUES ('4671', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:14:15');
INSERT INTO `sys_job_log` VALUES ('4672', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:14:30');
INSERT INTO `sys_job_log` VALUES ('4673', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 10:25:00');
INSERT INTO `sys_job_log` VALUES ('4674', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:25:15');
INSERT INTO `sys_job_log` VALUES ('4675', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:25:30');
INSERT INTO `sys_job_log` VALUES ('4676', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:30:00');
INSERT INTO `sys_job_log` VALUES ('4677', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 10:33:00');
INSERT INTO `sys_job_log` VALUES ('4678', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:33:15');
INSERT INTO `sys_job_log` VALUES ('4679', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:33:30');
INSERT INTO `sys_job_log` VALUES ('4680', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 10:38:45');
INSERT INTO `sys_job_log` VALUES ('4681', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:47:45');
INSERT INTO `sys_job_log` VALUES ('4682', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:48:00');
INSERT INTO `sys_job_log` VALUES ('4683', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:48:15');
INSERT INTO `sys_job_log` VALUES ('4684', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:48:30');
INSERT INTO `sys_job_log` VALUES ('4685', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:48:45');
INSERT INTO `sys_job_log` VALUES ('4686', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:49:00');
INSERT INTO `sys_job_log` VALUES ('4687', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:49:15');
INSERT INTO `sys_job_log` VALUES ('4688', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:49:30');
INSERT INTO `sys_job_log` VALUES ('4689', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:49:45');
INSERT INTO `sys_job_log` VALUES ('4690', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:50:00');
INSERT INTO `sys_job_log` VALUES ('4691', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:50:15');
INSERT INTO `sys_job_log` VALUES ('4692', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:50:30');
INSERT INTO `sys_job_log` VALUES ('4693', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:50:45');
INSERT INTO `sys_job_log` VALUES ('4694', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:51:00');
INSERT INTO `sys_job_log` VALUES ('4695', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:51:15');
INSERT INTO `sys_job_log` VALUES ('4696', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 10:53:00');
INSERT INTO `sys_job_log` VALUES ('4697', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:53:15');
INSERT INTO `sys_job_log` VALUES ('4698', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 10:53:46');
INSERT INTO `sys_job_log` VALUES ('4699', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:54:00');
INSERT INTO `sys_job_log` VALUES ('4700', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:54:15');
INSERT INTO `sys_job_log` VALUES ('4701', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:54:30');
INSERT INTO `sys_job_log` VALUES ('4702', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:54:45');
INSERT INTO `sys_job_log` VALUES ('4703', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:55:00');
INSERT INTO `sys_job_log` VALUES ('4704', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:55:15');
INSERT INTO `sys_job_log` VALUES ('4705', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:55:30');
INSERT INTO `sys_job_log` VALUES ('4706', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:55:45');
INSERT INTO `sys_job_log` VALUES ('4707', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:56:00');
INSERT INTO `sys_job_log` VALUES ('4708', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:56:15');
INSERT INTO `sys_job_log` VALUES ('4709', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:56:30');
INSERT INTO `sys_job_log` VALUES ('4710', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:56:45');
INSERT INTO `sys_job_log` VALUES ('4711', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:57:00');
INSERT INTO `sys_job_log` VALUES ('4712', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:57:15');
INSERT INTO `sys_job_log` VALUES ('4713', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 10:57:30');
INSERT INTO `sys_job_log` VALUES ('4714', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：6毫秒', '0', '', '2019-10-10 10:57:47');
INSERT INTO `sys_job_log` VALUES ('4715', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:58:00');
INSERT INTO `sys_job_log` VALUES ('4716', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:58:15');
INSERT INTO `sys_job_log` VALUES ('4717', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:58:30');
INSERT INTO `sys_job_log` VALUES ('4718', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:58:45');
INSERT INTO `sys_job_log` VALUES ('4719', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:59:00');
INSERT INTO `sys_job_log` VALUES ('4720', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:59:15');
INSERT INTO `sys_job_log` VALUES ('4721', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:59:30');
INSERT INTO `sys_job_log` VALUES ('4722', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 10:59:45');
INSERT INTO `sys_job_log` VALUES ('4723', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 11:00:15');
INSERT INTO `sys_job_log` VALUES ('4724', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:00:30');
INSERT INTO `sys_job_log` VALUES ('4725', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:00:45');
INSERT INTO `sys_job_log` VALUES ('4726', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:01:00');
INSERT INTO `sys_job_log` VALUES ('4727', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:01:15');
INSERT INTO `sys_job_log` VALUES ('4728', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:01:30');
INSERT INTO `sys_job_log` VALUES ('4729', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:01:45');
INSERT INTO `sys_job_log` VALUES ('4730', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:02:00');
INSERT INTO `sys_job_log` VALUES ('4731', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:02:15');
INSERT INTO `sys_job_log` VALUES ('4732', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:02:30');
INSERT INTO `sys_job_log` VALUES ('4733', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:02:45');
INSERT INTO `sys_job_log` VALUES ('4734', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:03:00');
INSERT INTO `sys_job_log` VALUES ('4735', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:03:15');
INSERT INTO `sys_job_log` VALUES ('4736', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:03:30');
INSERT INTO `sys_job_log` VALUES ('4737', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:03:45');
INSERT INTO `sys_job_log` VALUES ('4738', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:04:00');
INSERT INTO `sys_job_log` VALUES ('4739', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:04:15');
INSERT INTO `sys_job_log` VALUES ('4740', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:04:30');
INSERT INTO `sys_job_log` VALUES ('4741', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:04:45');
INSERT INTO `sys_job_log` VALUES ('4742', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:05:00');
INSERT INTO `sys_job_log` VALUES ('4743', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:05:15');
INSERT INTO `sys_job_log` VALUES ('4744', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:05:30');
INSERT INTO `sys_job_log` VALUES ('4745', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:05:45');
INSERT INTO `sys_job_log` VALUES ('4746', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:06:00');
INSERT INTO `sys_job_log` VALUES ('4747', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:06:15');
INSERT INTO `sys_job_log` VALUES ('4748', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:06:30');
INSERT INTO `sys_job_log` VALUES ('4749', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:06:45');
INSERT INTO `sys_job_log` VALUES ('4750', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:07:00');
INSERT INTO `sys_job_log` VALUES ('4751', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:07:15');
INSERT INTO `sys_job_log` VALUES ('4752', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:07:30');
INSERT INTO `sys_job_log` VALUES ('4753', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:07:45');
INSERT INTO `sys_job_log` VALUES ('4754', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:08:00');
INSERT INTO `sys_job_log` VALUES ('4755', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:08:15');
INSERT INTO `sys_job_log` VALUES ('4756', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:08:30');
INSERT INTO `sys_job_log` VALUES ('4757', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:08:45');
INSERT INTO `sys_job_log` VALUES ('4758', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:09:00');
INSERT INTO `sys_job_log` VALUES ('4759', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:09:15');
INSERT INTO `sys_job_log` VALUES ('4760', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:09:30');
INSERT INTO `sys_job_log` VALUES ('4761', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:09:45');
INSERT INTO `sys_job_log` VALUES ('4762', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:10:00');
INSERT INTO `sys_job_log` VALUES ('4763', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:10:15');
INSERT INTO `sys_job_log` VALUES ('4764', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:10:30');
INSERT INTO `sys_job_log` VALUES ('4765', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:10:45');
INSERT INTO `sys_job_log` VALUES ('4766', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:11:00');
INSERT INTO `sys_job_log` VALUES ('4767', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:11:15');
INSERT INTO `sys_job_log` VALUES ('4768', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:11:30');
INSERT INTO `sys_job_log` VALUES ('4769', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:11:45');
INSERT INTO `sys_job_log` VALUES ('4770', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:12:00');
INSERT INTO `sys_job_log` VALUES ('4771', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:12:15');
INSERT INTO `sys_job_log` VALUES ('4772', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:12:30');
INSERT INTO `sys_job_log` VALUES ('4773', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:12:45');
INSERT INTO `sys_job_log` VALUES ('4774', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:13:00');
INSERT INTO `sys_job_log` VALUES ('4775', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:13:15');
INSERT INTO `sys_job_log` VALUES ('4776', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:13:30');
INSERT INTO `sys_job_log` VALUES ('4777', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:13:45');
INSERT INTO `sys_job_log` VALUES ('4778', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:14:00');
INSERT INTO `sys_job_log` VALUES ('4779', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:14:15');
INSERT INTO `sys_job_log` VALUES ('4780', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:14:30');
INSERT INTO `sys_job_log` VALUES ('4781', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:14:45');
INSERT INTO `sys_job_log` VALUES ('4782', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:15:00');
INSERT INTO `sys_job_log` VALUES ('4783', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:15:15');
INSERT INTO `sys_job_log` VALUES ('4784', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:15:30');
INSERT INTO `sys_job_log` VALUES ('4785', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:15:45');
INSERT INTO `sys_job_log` VALUES ('4786', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:16:00');
INSERT INTO `sys_job_log` VALUES ('4787', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:16:15');
INSERT INTO `sys_job_log` VALUES ('4788', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:16:30');
INSERT INTO `sys_job_log` VALUES ('4789', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:16:45');
INSERT INTO `sys_job_log` VALUES ('4790', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:17:00');
INSERT INTO `sys_job_log` VALUES ('4791', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:17:15');
INSERT INTO `sys_job_log` VALUES ('4792', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:17:30');
INSERT INTO `sys_job_log` VALUES ('4793', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:17:45');
INSERT INTO `sys_job_log` VALUES ('4794', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:18:00');
INSERT INTO `sys_job_log` VALUES ('4795', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:18:15');
INSERT INTO `sys_job_log` VALUES ('4796', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:18:30');
INSERT INTO `sys_job_log` VALUES ('4797', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:18:45');
INSERT INTO `sys_job_log` VALUES ('4798', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:19:00');
INSERT INTO `sys_job_log` VALUES ('4799', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:19:15');
INSERT INTO `sys_job_log` VALUES ('4800', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:19:30');
INSERT INTO `sys_job_log` VALUES ('4801', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:19:45');
INSERT INTO `sys_job_log` VALUES ('4802', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:20:00');
INSERT INTO `sys_job_log` VALUES ('4803', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:20:15');
INSERT INTO `sys_job_log` VALUES ('4804', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:20:30');
INSERT INTO `sys_job_log` VALUES ('4805', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:24:15');
INSERT INTO `sys_job_log` VALUES ('4806', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:24:30');
INSERT INTO `sys_job_log` VALUES ('4807', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:24:45');
INSERT INTO `sys_job_log` VALUES ('4808', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:25:30');
INSERT INTO `sys_job_log` VALUES ('4809', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:25:45');
INSERT INTO `sys_job_log` VALUES ('4810', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:26:00');
INSERT INTO `sys_job_log` VALUES ('4811', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:26:15');
INSERT INTO `sys_job_log` VALUES ('4812', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:26:30');
INSERT INTO `sys_job_log` VALUES ('4813', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:26:45');
INSERT INTO `sys_job_log` VALUES ('4814', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:27:00');
INSERT INTO `sys_job_log` VALUES ('4815', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:27:15');
INSERT INTO `sys_job_log` VALUES ('4816', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:27:30');
INSERT INTO `sys_job_log` VALUES ('4817', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:27:45');
INSERT INTO `sys_job_log` VALUES ('4818', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:28:00');
INSERT INTO `sys_job_log` VALUES ('4819', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:28:15');
INSERT INTO `sys_job_log` VALUES ('4820', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:28:30');
INSERT INTO `sys_job_log` VALUES ('4821', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:28:45');
INSERT INTO `sys_job_log` VALUES ('4822', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:29:00');
INSERT INTO `sys_job_log` VALUES ('4823', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:29:15');
INSERT INTO `sys_job_log` VALUES ('4824', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:29:30');
INSERT INTO `sys_job_log` VALUES ('4825', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:29:45');
INSERT INTO `sys_job_log` VALUES ('4826', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:30:00');
INSERT INTO `sys_job_log` VALUES ('4827', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:30:15');
INSERT INTO `sys_job_log` VALUES ('4828', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-10 11:31:30');
INSERT INTO `sys_job_log` VALUES ('4829', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:31:45');
INSERT INTO `sys_job_log` VALUES ('4830', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-10 11:32:00');
INSERT INTO `sys_job_log` VALUES ('4831', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:32:15');
INSERT INTO `sys_job_log` VALUES ('4832', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:32:30');
INSERT INTO `sys_job_log` VALUES ('4833', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-10 11:32:45');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 14:39:02');
INSERT INTO `sys_logininfor` VALUES ('101', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-25 14:41:23');
INSERT INTO `sys_logininfor` VALUES ('102', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 14:41:39');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 14:48:00');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 14:48:18');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 14:48:26');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 14:48:34');
INSERT INTO `sys_logininfor` VALUES ('107', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 14:48:43');
INSERT INTO `sys_logininfor` VALUES ('108', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 14:49:41');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 14:49:51');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 14:51:20');
INSERT INTO `sys_logininfor` VALUES ('111', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 14:51:25');
INSERT INTO `sys_logininfor` VALUES ('112', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 14:51:30');
INSERT INTO `sys_logininfor` VALUES ('113', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 14:51:39');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 14:56:22');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 14:56:27');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 14:56:33');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 16:20:48');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 16:20:51');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 16:20:53');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 16:23:15');
INSERT INTO `sys_logininfor` VALUES ('121', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 16:23:30');
INSERT INTO `sys_logininfor` VALUES ('122', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 16:23:33');
INSERT INTO `sys_logininfor` VALUES ('123', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 16:23:36');
INSERT INTO `sys_logininfor` VALUES ('124', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 16:46:14');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 16:46:18');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 16:46:21');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 16:46:27');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 16:49:20');
INSERT INTO `sys_logininfor` VALUES ('129', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 16:49:24');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 17:23:13');
INSERT INTO `sys_logininfor` VALUES ('131', '于建铜', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 17:23:17');
INSERT INTO `sys_logininfor` VALUES ('132', '于建铜', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-25 17:23:24');
INSERT INTO `sys_logininfor` VALUES ('133', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 17:23:36');
INSERT INTO `sys_logininfor` VALUES ('134', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-25 17:23:42');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-25 17:23:49');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 17:23:52');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-25 18:47:21');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-26 08:51:57');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-26 08:52:02');
INSERT INTO `sys_logininfor` VALUES ('140', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-26 08:54:25');
INSERT INTO `sys_logininfor` VALUES ('141', 'yujiantong', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-26 08:54:31');
INSERT INTO `sys_logininfor` VALUES ('142', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-26 08:55:28');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-26 08:55:33');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-26 08:55:36');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-27 20:55:12');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 14:34:21');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 14:46:25');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 14:46:28');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 14:46:49');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 14:46:56');
INSERT INTO `sys_logininfor` VALUES ('151', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 14:46:58');
INSERT INTO `sys_logininfor` VALUES ('152', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 14:47:02');
INSERT INTO `sys_logininfor` VALUES ('153', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 14:47:31');
INSERT INTO `sys_logininfor` VALUES ('154', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 16:30:44');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 16:30:48');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 16:53:28');
INSERT INTO `sys_logininfor` VALUES ('157', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 16:53:31');
INSERT INTO `sys_logininfor` VALUES ('158', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 17:10:16');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 17:39:07');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 17:46:33');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 17:46:47');
INSERT INTO `sys_logininfor` VALUES ('162', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 17:51:19');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 17:51:27');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:13:55');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:17:13');
INSERT INTO `sys_logininfor` VALUES ('166', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:19:08');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 18:20:02');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:20:07');
INSERT INTO `sys_logininfor` VALUES ('169', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:23:11');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:34:33');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:36:29');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:43:04');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 18:48:10');
INSERT INTO `sys_logininfor` VALUES ('174', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:48:26');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 09:15:15');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 09:15:24');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 09:46:07');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 09:50:34');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 09:58:05');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 10:00:28');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 10:09:19');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 10:54:03');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 10:57:58');
INSERT INTO `sys_logininfor` VALUES ('184', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 11:00:19');
INSERT INTO `sys_logininfor` VALUES ('185', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:00:24');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 11:02:27');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:02:32');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 11:25:55');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:26:05');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:31:49');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 11:31:54');
INSERT INTO `sys_logininfor` VALUES ('192', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 11:32:01');
INSERT INTO `sys_logininfor` VALUES ('193', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 11:32:11');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-10 11:32:27');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:32:41');

-- ----------------------------
-- Table structure for sys_menu
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
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1061 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', '', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', '', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', '', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', '', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务详细', '110', '6', '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务导出', '110', '7', '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', '1', '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成修改', '114', '2', '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '生成删除', '114', '3', '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '114', '4', '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '114', '5', '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_notice
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
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
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
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', '1', 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"于建铜\" ],\r\n  \"deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18310244601\" ],\r\n  \"email\" : [ \"yujiantongs@163.com\" ],\r\n  \"loginName\" : [ \"yujiantong\" ],\r\n  \"password\" : [ \"admin123\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 14:41:29');
INSERT INTO `sys_oper_log` VALUES ('101', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"于建铜\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18310244601\" ],\r\n  \"email\" : [ \"yujiantongs@163.com\" ],\r\n  \"loginName\" : [ \"yujiantong\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 14:43:10');
INSERT INTO `sys_oper_log` VALUES ('102', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"于建铜\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18310244601\" ],\r\n  \"email\" : [ \"yujiantongs@163.com\" ],\r\n  \"loginName\" : [ \"yujiantong\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 14:47:41');
INSERT INTO `sys_oper_log` VALUES ('103', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"于建铜\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18310244601\" ],\r\n  \"email\" : [ \"yujiantongs@163.com\" ],\r\n  \"loginName\" : [ \"yujiantong\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 14:48:11');
INSERT INTO `sys_oper_log` VALUES ('104', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"于建铜\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"18310244601\" ],\r\n  \"email\" : [ \"yujiantongs@163.com\" ],\r\n  \"loginName\" : [ \"yujiantong\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"2\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"2\" ],\r\n  \"postIds\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 14:49:33');
INSERT INTO `sys_oper_log` VALUES ('105', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"admin\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许修改超级管理员用户\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-09-25 14:50:22');
INSERT INTO `sys_oper_log` VALUES ('106', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"若依\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"不允许修改超级管理员用户\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-09-25 14:50:39');
INSERT INTO `sys_oper_log` VALUES ('107', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', '1', 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"roleName\" : [ \"普通角色\" ],\r\n  \"roleKey\" : [ \"common\" ],\r\n  \"roleSort\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"普通角色\" ],\r\n  \"menuIds\" : [ \"2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,3,113,114,1056,1057,1058,1059,1060,115\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 16:23:06');
INSERT INTO `sys_oper_log` VALUES ('108', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'POST', '1', 'admin', '研发部门', '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 17:23:04');
INSERT INTO `sys_oper_log` VALUES ('109', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'POST', '1', 'admin', '研发部门', '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 17:23:06');
INSERT INTO `sys_oper_log` VALUES ('110', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'POST', '1', 'admin', '研发部门', '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 17:23:10');
INSERT INTO `sys_oper_log` VALUES ('111', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.changeStatus()', 'POST', '1', 'admin', '研发部门', '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-25 17:24:00');
INSERT INTO `sys_oper_log` VALUES ('112', '重置密码', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'GET', '1', 'admin', '研发部门', '/system/user/resetPwd/100', '127.0.0.1', '内网IP', '{ }', '\"system/user/resetPwd\"', '0', null, '2019-09-26 08:52:14');
INSERT INTO `sys_oper_log` VALUES ('113', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', '1', 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"16bd48e4-1e00-43c7-a4ec-c685fe8c33a2\" ]\r\n}', '{\r\n  \"msg\" : \"当前登陆用户无法强退\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-09-26 08:54:43');
INSERT INTO `sys_oper_log` VALUES ('114', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', '1', 'admin', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"16bd48e4-1e00-43c7-a4ec-c685fe8c33a2\" ]\r\n}', '{\r\n  \"msg\" : \"当前登陆用户无法强退\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-09-26 08:54:56');
INSERT INTO `sys_oper_log` VALUES ('115', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.batchForceLogout()', 'POST', '1', 'admin', '研发部门', '/monitor/online/batchForceLogout', '127.0.0.1', '内网IP', '{\r\n  \"ids[]\" : [ \"16bd48e4-1e00-43c7-a4ec-c685fe8c33a2\" ]\r\n}', '{\r\n  \"msg\" : \"当前登陆用户无法强退\",\r\n  \"code\" : 500\r\n}', '0', null, '2019-09-26 08:55:01');
INSERT INTO `sys_oper_log` VALUES ('116', '在线用户', '7', 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'POST', '1', 'yujiantong', '研发部门', '/monitor/online/forceLogout', '127.0.0.1', '内网IP', '{\r\n  \"sessionId\" : [ \"16bd48e4-1e00-43c7-a4ec-c685fe8c33a2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-26 08:55:17');
INSERT INTO `sys_oper_log` VALUES ('117', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'POST', '1', 'admin', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-27 20:57:30');
INSERT INTO `sys_oper_log` VALUES ('118', '定时任务', '2', 'com.ruoyi.quartz.controller.SysJobController.run()', 'POST', '1', 'admin', '研发部门', '/monitor/job/run', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-27 20:57:40');
INSERT INTO `sys_oper_log` VALUES ('119', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_user_post\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-09-27 21:00:41');
INSERT INTO `sys_oper_log` VALUES ('120', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_user_post', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-09-27 21:00:59');
INSERT INTO `sys_oper_log` VALUES ('121', '重置密码', '2', 'com.chuyue.web.controller.system.SysProfileController.resetPwd()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"oldPassword\" : [ \"123456\" ],\r\n  \"newPassword\" : [ \"666666\" ],\r\n  \"confirm\" : [ \"666666\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-10 11:26:19');
INSERT INTO `sys_oper_log` VALUES ('122', '重置密码', '2', 'com.chuyue.web.controller.system.SysProfileController.resetPwd()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"oldPassword\" : [ \"666666\" ],\r\n  \"newPassword\" : [ \"123456\" ],\r\n  \"confirm\" : [ \"123456\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-10 11:26:37');

-- ----------------------------
-- Table structure for sys_post
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
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
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
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2019-09-25 17:23:06', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-25 17:24:00', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
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
-- Table structure for sys_role_menu
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
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '109');
INSERT INTO `sys_role_menu` VALUES ('2', '110');
INSERT INTO `sys_role_menu` VALUES ('2', '111');
INSERT INTO `sys_role_menu` VALUES ('2', '112');
INSERT INTO `sys_role_menu` VALUES ('2', '113');
INSERT INTO `sys_role_menu` VALUES ('2', '114');
INSERT INTO `sys_role_menu` VALUES ('2', '115');
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

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', 'admin', '楚樾', '00', 'chuyue@qq.com@163.com', '15888888888', '1', '', 'AFF833A3581ADBE7B0DB07F3E6D0508F', '0', '0', '127.0.0.1', '2019-10-10 11:32:42', 'admin', '2018-03-16 11:33:00', 'ry', '2019-10-10 11:32:41', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'cy', '楚樾', '00', 'chuyue@qq.com', '15666666666', '1', '', 'AFF833A3581ADBE7B0DB07F3E6D0508F', '0', '0', '127.0.0.1', '2019-09-25 14:51:39', 'admin', '2018-03-16 11:33:00', 'ry', '2019-09-25 14:51:39', '测试员');
INSERT INTO `sys_user` VALUES ('100', '103', 'yujiantong', '于建铜', '00', 'yujiantongs@163.com', '18310244601', '0', '', 'AFF833A3581ADBE7B0DB07F3E6D0508F', '0', '0', '127.0.0.1', '2019-09-26 08:54:32', 'admin', '2019-09-25 14:41:29', 'admin', '2019-09-26 08:54:31', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
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
INSERT INTO `sys_user_online` VALUES ('1f441d5a-13f3-4c18-9779-13b660690d8a', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2019-10-10 11:31:54', '2019-10-10 11:32:42', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
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
INSERT INTO `sys_user_post` VALUES ('100', '2');

-- ----------------------------
-- Table structure for sys_user_role
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
INSERT INTO `sys_user_role` VALUES ('100', '2');
