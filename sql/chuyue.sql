/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : chuyue

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-10-11 18:36:02
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

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
INSERT INTO `qrtz_cron_triggers` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

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
INSERT INTO `qrtz_fired_triggers` VALUES ('ChuYueScheduler', 'DESKTOP-VOAS7VO15707896613721570789661379', 'TASK_CLASS_NAME2', 'DEFAULT', 'DESKTOP-VOAS7VO1570789661372', '1570790160022', '1570790175000', '5', 'ACQUIRED', null, null, '0', '0');
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
INSERT INTO `qrtz_job_details` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.chuyue.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E6368757975652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E6368757975652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001163795461736B2E63794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.chuyue.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E6368757975652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E6368757975652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001563795461736B2E6379506172616D7328276379272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001307800);
INSERT INTO `qrtz_job_details` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.chuyue.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E6368757975652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E6368757975652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003863795461736B2E63794D756C7469706C65506172616D7328276379272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

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
INSERT INTO `qrtz_scheduler_state` VALUES ('ChuYueScheduler', 'DESKTOP-VOAS7VO1570789661372', '1570790162423', '15000');

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
INSERT INTO `qrtz_triggers` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1570789670000', '-1', '5', 'PAUSED', 'CRON', '1570789661000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1570790175000', '1570790160000', '5', 'ACQUIRED', 'CRON', '1570789661000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1570789680000', '-1', '5', 'PAUSED', 'CRON', '1570789661000', '0', null, '2', '');

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
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '若依科技', '0', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '深圳总公司', '1', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '楚樾', '15888888888', 'cy@qq.com', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00');

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
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('19', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('20', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('21', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('22', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('23', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('24', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('25', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('26', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('27', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('28', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '停用状态');

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
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '登录状态列表');

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
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'cyTask.cyNoParams', '0/10 * * * * ?', '3', '1', '1', '9999', '2018-03-16 11:33:00', '9999', '2019-10-10 11:53:04', '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '0/15 * * * * ?', '3', '1', '0', '9999', '2018-03-16 11:33:00', '9999', '2019-10-10 11:52:53', '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'cyTask.cyMultipleParams(\'cy\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', '9999', '2018-03-16 11:33:00', '9999', '2019-10-10 11:53:21', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=6241 DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('5849', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:56:30');
INSERT INTO `sys_job_log` VALUES ('5850', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:56:45');
INSERT INTO `sys_job_log` VALUES ('5851', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:57:00');
INSERT INTO `sys_job_log` VALUES ('5852', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:57:15');
INSERT INTO `sys_job_log` VALUES ('5853', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:57:30');
INSERT INTO `sys_job_log` VALUES ('5854', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:57:45');
INSERT INTO `sys_job_log` VALUES ('5855', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:58:00');
INSERT INTO `sys_job_log` VALUES ('5856', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:58:15');
INSERT INTO `sys_job_log` VALUES ('5857', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:58:30');
INSERT INTO `sys_job_log` VALUES ('5858', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:58:45');
INSERT INTO `sys_job_log` VALUES ('5859', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:59:00');
INSERT INTO `sys_job_log` VALUES ('5860', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:59:15');
INSERT INTO `sys_job_log` VALUES ('5861', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:59:30');
INSERT INTO `sys_job_log` VALUES ('5862', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 16:59:45');
INSERT INTO `sys_job_log` VALUES ('5863', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:00:00');
INSERT INTO `sys_job_log` VALUES ('5864', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:00:15');
INSERT INTO `sys_job_log` VALUES ('5865', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:00:30');
INSERT INTO `sys_job_log` VALUES ('5866', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:00:45');
INSERT INTO `sys_job_log` VALUES ('5867', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:01:00');
INSERT INTO `sys_job_log` VALUES ('5868', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:01:15');
INSERT INTO `sys_job_log` VALUES ('5869', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:01:30');
INSERT INTO `sys_job_log` VALUES ('5870', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:01:45');
INSERT INTO `sys_job_log` VALUES ('5871', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:02:00');
INSERT INTO `sys_job_log` VALUES ('5872', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:02:15');
INSERT INTO `sys_job_log` VALUES ('5873', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:02:30');
INSERT INTO `sys_job_log` VALUES ('5874', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:02:45');
INSERT INTO `sys_job_log` VALUES ('5875', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:03:00');
INSERT INTO `sys_job_log` VALUES ('5876', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:03:15');
INSERT INTO `sys_job_log` VALUES ('5877', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:03:30');
INSERT INTO `sys_job_log` VALUES ('5878', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:03:45');
INSERT INTO `sys_job_log` VALUES ('5879', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:04:00');
INSERT INTO `sys_job_log` VALUES ('5880', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:04:15');
INSERT INTO `sys_job_log` VALUES ('5881', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:04:30');
INSERT INTO `sys_job_log` VALUES ('5882', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:04:45');
INSERT INTO `sys_job_log` VALUES ('5883', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:05:00');
INSERT INTO `sys_job_log` VALUES ('5884', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:05:15');
INSERT INTO `sys_job_log` VALUES ('5885', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:05:30');
INSERT INTO `sys_job_log` VALUES ('5886', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:05:45');
INSERT INTO `sys_job_log` VALUES ('5887', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:06:00');
INSERT INTO `sys_job_log` VALUES ('5888', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:06:15');
INSERT INTO `sys_job_log` VALUES ('5889', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:06:30');
INSERT INTO `sys_job_log` VALUES ('5890', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:06:45');
INSERT INTO `sys_job_log` VALUES ('5891', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:07:00');
INSERT INTO `sys_job_log` VALUES ('5892', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:07:15');
INSERT INTO `sys_job_log` VALUES ('5893', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:07:30');
INSERT INTO `sys_job_log` VALUES ('5894', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:07:45');
INSERT INTO `sys_job_log` VALUES ('5895', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:08:00');
INSERT INTO `sys_job_log` VALUES ('5896', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:08:15');
INSERT INTO `sys_job_log` VALUES ('5897', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:08:30');
INSERT INTO `sys_job_log` VALUES ('5898', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:08:45');
INSERT INTO `sys_job_log` VALUES ('5899', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:09:00');
INSERT INTO `sys_job_log` VALUES ('5900', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:09:15');
INSERT INTO `sys_job_log` VALUES ('5901', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:09:30');
INSERT INTO `sys_job_log` VALUES ('5902', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:09:45');
INSERT INTO `sys_job_log` VALUES ('5903', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:10:00');
INSERT INTO `sys_job_log` VALUES ('5904', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:10:15');
INSERT INTO `sys_job_log` VALUES ('5905', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:10:30');
INSERT INTO `sys_job_log` VALUES ('5906', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:10:45');
INSERT INTO `sys_job_log` VALUES ('5907', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:11:00');
INSERT INTO `sys_job_log` VALUES ('5908', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:11:15');
INSERT INTO `sys_job_log` VALUES ('5909', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:11:30');
INSERT INTO `sys_job_log` VALUES ('5910', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:11:45');
INSERT INTO `sys_job_log` VALUES ('5911', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:12:00');
INSERT INTO `sys_job_log` VALUES ('5912', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:12:15');
INSERT INTO `sys_job_log` VALUES ('5913', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:12:30');
INSERT INTO `sys_job_log` VALUES ('5914', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:12:45');
INSERT INTO `sys_job_log` VALUES ('5915', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:13:00');
INSERT INTO `sys_job_log` VALUES ('5916', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:13:15');
INSERT INTO `sys_job_log` VALUES ('5917', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:13:30');
INSERT INTO `sys_job_log` VALUES ('5918', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:13:45');
INSERT INTO `sys_job_log` VALUES ('5919', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:14:00');
INSERT INTO `sys_job_log` VALUES ('5920', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:14:15');
INSERT INTO `sys_job_log` VALUES ('5921', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:14:30');
INSERT INTO `sys_job_log` VALUES ('5922', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:14:45');
INSERT INTO `sys_job_log` VALUES ('5923', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:15:00');
INSERT INTO `sys_job_log` VALUES ('5924', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:15:15');
INSERT INTO `sys_job_log` VALUES ('5925', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:15:30');
INSERT INTO `sys_job_log` VALUES ('5926', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:15:45');
INSERT INTO `sys_job_log` VALUES ('5927', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:16:00');
INSERT INTO `sys_job_log` VALUES ('5928', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:16:15');
INSERT INTO `sys_job_log` VALUES ('5929', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:16:30');
INSERT INTO `sys_job_log` VALUES ('5930', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:16:45');
INSERT INTO `sys_job_log` VALUES ('5931', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:17:00');
INSERT INTO `sys_job_log` VALUES ('5932', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:17:15');
INSERT INTO `sys_job_log` VALUES ('5933', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:17:30');
INSERT INTO `sys_job_log` VALUES ('5934', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:17:45');
INSERT INTO `sys_job_log` VALUES ('5935', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:18:00');
INSERT INTO `sys_job_log` VALUES ('5936', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:18:15');
INSERT INTO `sys_job_log` VALUES ('5937', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:18:30');
INSERT INTO `sys_job_log` VALUES ('5938', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:18:45');
INSERT INTO `sys_job_log` VALUES ('5939', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:19:00');
INSERT INTO `sys_job_log` VALUES ('5940', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:19:15');
INSERT INTO `sys_job_log` VALUES ('5941', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-11 17:19:32');
INSERT INTO `sys_job_log` VALUES ('5942', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:19:45');
INSERT INTO `sys_job_log` VALUES ('5943', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:20:00');
INSERT INTO `sys_job_log` VALUES ('5944', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:20:15');
INSERT INTO `sys_job_log` VALUES ('5945', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:20:30');
INSERT INTO `sys_job_log` VALUES ('5946', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:20:45');
INSERT INTO `sys_job_log` VALUES ('5947', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:21:00');
INSERT INTO `sys_job_log` VALUES ('5948', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:21:15');
INSERT INTO `sys_job_log` VALUES ('5949', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:21:30');
INSERT INTO `sys_job_log` VALUES ('5950', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:21:45');
INSERT INTO `sys_job_log` VALUES ('5951', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-11 17:22:02');
INSERT INTO `sys_job_log` VALUES ('5952', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:22:15');
INSERT INTO `sys_job_log` VALUES ('5953', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-11 17:22:45');
INSERT INTO `sys_job_log` VALUES ('5954', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:23:00');
INSERT INTO `sys_job_log` VALUES ('5955', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:23:15');
INSERT INTO `sys_job_log` VALUES ('5956', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：8毫秒', '0', '', '2019-10-11 17:23:45');
INSERT INTO `sys_job_log` VALUES ('5957', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:24:00');
INSERT INTO `sys_job_log` VALUES ('5958', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:24:15');
INSERT INTO `sys_job_log` VALUES ('5959', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:24:30');
INSERT INTO `sys_job_log` VALUES ('5960', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:24:45');
INSERT INTO `sys_job_log` VALUES ('5961', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:25:00');
INSERT INTO `sys_job_log` VALUES ('5962', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:25:15');
INSERT INTO `sys_job_log` VALUES ('5963', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:25:30');
INSERT INTO `sys_job_log` VALUES ('5964', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-11 17:26:00');
INSERT INTO `sys_job_log` VALUES ('5965', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:26:15');
INSERT INTO `sys_job_log` VALUES ('5966', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:26:30');
INSERT INTO `sys_job_log` VALUES ('5967', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:26:45');
INSERT INTO `sys_job_log` VALUES ('5968', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:27:00');
INSERT INTO `sys_job_log` VALUES ('5969', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:27:15');
INSERT INTO `sys_job_log` VALUES ('5970', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:27:30');
INSERT INTO `sys_job_log` VALUES ('5971', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:27:45');
INSERT INTO `sys_job_log` VALUES ('5972', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:28:00');
INSERT INTO `sys_job_log` VALUES ('5973', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:28:15');
INSERT INTO `sys_job_log` VALUES ('5974', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:28:30');
INSERT INTO `sys_job_log` VALUES ('5975', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:28:45');
INSERT INTO `sys_job_log` VALUES ('5976', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:29:00');
INSERT INTO `sys_job_log` VALUES ('5977', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:29:15');
INSERT INTO `sys_job_log` VALUES ('5978', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:29:30');
INSERT INTO `sys_job_log` VALUES ('5979', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:29:45');
INSERT INTO `sys_job_log` VALUES ('5980', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:30:00');
INSERT INTO `sys_job_log` VALUES ('5981', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:30:15');
INSERT INTO `sys_job_log` VALUES ('5982', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:30:30');
INSERT INTO `sys_job_log` VALUES ('5983', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:30:45');
INSERT INTO `sys_job_log` VALUES ('5984', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:31:00');
INSERT INTO `sys_job_log` VALUES ('5985', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:31:15');
INSERT INTO `sys_job_log` VALUES ('5986', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:31:30');
INSERT INTO `sys_job_log` VALUES ('5987', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:31:45');
INSERT INTO `sys_job_log` VALUES ('5988', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:32:00');
INSERT INTO `sys_job_log` VALUES ('5989', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:32:15');
INSERT INTO `sys_job_log` VALUES ('5990', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:32:30');
INSERT INTO `sys_job_log` VALUES ('5991', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:32:45');
INSERT INTO `sys_job_log` VALUES ('5992', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:33:00');
INSERT INTO `sys_job_log` VALUES ('5993', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:33:15');
INSERT INTO `sys_job_log` VALUES ('5994', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:33:30');
INSERT INTO `sys_job_log` VALUES ('5995', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:33:45');
INSERT INTO `sys_job_log` VALUES ('5996', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:34:00');
INSERT INTO `sys_job_log` VALUES ('5997', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:34:15');
INSERT INTO `sys_job_log` VALUES ('5998', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:34:30');
INSERT INTO `sys_job_log` VALUES ('5999', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:34:45');
INSERT INTO `sys_job_log` VALUES ('6000', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:35:00');
INSERT INTO `sys_job_log` VALUES ('6001', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:35:15');
INSERT INTO `sys_job_log` VALUES ('6002', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:35:30');
INSERT INTO `sys_job_log` VALUES ('6003', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:35:45');
INSERT INTO `sys_job_log` VALUES ('6004', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:36:00');
INSERT INTO `sys_job_log` VALUES ('6005', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:36:15');
INSERT INTO `sys_job_log` VALUES ('6006', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:36:30');
INSERT INTO `sys_job_log` VALUES ('6007', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:36:45');
INSERT INTO `sys_job_log` VALUES ('6008', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:37:00');
INSERT INTO `sys_job_log` VALUES ('6009', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:37:15');
INSERT INTO `sys_job_log` VALUES ('6010', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:37:30');
INSERT INTO `sys_job_log` VALUES ('6011', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:37:45');
INSERT INTO `sys_job_log` VALUES ('6012', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:38:00');
INSERT INTO `sys_job_log` VALUES ('6013', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:38:15');
INSERT INTO `sys_job_log` VALUES ('6014', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:38:30');
INSERT INTO `sys_job_log` VALUES ('6015', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:38:45');
INSERT INTO `sys_job_log` VALUES ('6016', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:39:00');
INSERT INTO `sys_job_log` VALUES ('6017', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:39:15');
INSERT INTO `sys_job_log` VALUES ('6018', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:39:30');
INSERT INTO `sys_job_log` VALUES ('6019', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:39:45');
INSERT INTO `sys_job_log` VALUES ('6020', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:40:00');
INSERT INTO `sys_job_log` VALUES ('6021', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:40:15');
INSERT INTO `sys_job_log` VALUES ('6022', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:40:30');
INSERT INTO `sys_job_log` VALUES ('6023', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:40:45');
INSERT INTO `sys_job_log` VALUES ('6024', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:41:00');
INSERT INTO `sys_job_log` VALUES ('6025', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:41:15');
INSERT INTO `sys_job_log` VALUES ('6026', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:41:30');
INSERT INTO `sys_job_log` VALUES ('6027', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:41:45');
INSERT INTO `sys_job_log` VALUES ('6028', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:42:00');
INSERT INTO `sys_job_log` VALUES ('6029', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:42:15');
INSERT INTO `sys_job_log` VALUES ('6030', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:42:30');
INSERT INTO `sys_job_log` VALUES ('6031', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:42:45');
INSERT INTO `sys_job_log` VALUES ('6032', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:43:00');
INSERT INTO `sys_job_log` VALUES ('6033', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:43:15');
INSERT INTO `sys_job_log` VALUES ('6034', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:43:30');
INSERT INTO `sys_job_log` VALUES ('6035', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:43:45');
INSERT INTO `sys_job_log` VALUES ('6036', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:44:00');
INSERT INTO `sys_job_log` VALUES ('6037', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:44:15');
INSERT INTO `sys_job_log` VALUES ('6038', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:44:30');
INSERT INTO `sys_job_log` VALUES ('6039', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:44:45');
INSERT INTO `sys_job_log` VALUES ('6040', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:45:00');
INSERT INTO `sys_job_log` VALUES ('6041', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:45:15');
INSERT INTO `sys_job_log` VALUES ('6042', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:45:30');
INSERT INTO `sys_job_log` VALUES ('6043', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:45:45');
INSERT INTO `sys_job_log` VALUES ('6044', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:46:00');
INSERT INTO `sys_job_log` VALUES ('6045', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:46:15');
INSERT INTO `sys_job_log` VALUES ('6046', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:46:30');
INSERT INTO `sys_job_log` VALUES ('6047', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:46:45');
INSERT INTO `sys_job_log` VALUES ('6048', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:47:00');
INSERT INTO `sys_job_log` VALUES ('6049', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:47:15');
INSERT INTO `sys_job_log` VALUES ('6050', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 17:47:30');
INSERT INTO `sys_job_log` VALUES ('6051', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:47:45');
INSERT INTO `sys_job_log` VALUES ('6052', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:48:00');
INSERT INTO `sys_job_log` VALUES ('6053', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:48:15');
INSERT INTO `sys_job_log` VALUES ('6054', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:48:30');
INSERT INTO `sys_job_log` VALUES ('6055', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:48:45');
INSERT INTO `sys_job_log` VALUES ('6056', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:49:00');
INSERT INTO `sys_job_log` VALUES ('6057', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:49:15');
INSERT INTO `sys_job_log` VALUES ('6058', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:49:30');
INSERT INTO `sys_job_log` VALUES ('6059', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:49:45');
INSERT INTO `sys_job_log` VALUES ('6060', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:50:00');
INSERT INTO `sys_job_log` VALUES ('6061', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:50:15');
INSERT INTO `sys_job_log` VALUES ('6062', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:50:30');
INSERT INTO `sys_job_log` VALUES ('6063', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:50:45');
INSERT INTO `sys_job_log` VALUES ('6064', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:51:00');
INSERT INTO `sys_job_log` VALUES ('6065', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:51:15');
INSERT INTO `sys_job_log` VALUES ('6066', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:51:30');
INSERT INTO `sys_job_log` VALUES ('6067', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:51:45');
INSERT INTO `sys_job_log` VALUES ('6068', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:52:00');
INSERT INTO `sys_job_log` VALUES ('6069', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:52:15');
INSERT INTO `sys_job_log` VALUES ('6070', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:52:30');
INSERT INTO `sys_job_log` VALUES ('6071', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:52:45');
INSERT INTO `sys_job_log` VALUES ('6072', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:53:00');
INSERT INTO `sys_job_log` VALUES ('6073', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:53:15');
INSERT INTO `sys_job_log` VALUES ('6074', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:53:30');
INSERT INTO `sys_job_log` VALUES ('6075', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:53:45');
INSERT INTO `sys_job_log` VALUES ('6076', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:54:00');
INSERT INTO `sys_job_log` VALUES ('6077', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:54:15');
INSERT INTO `sys_job_log` VALUES ('6078', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:54:30');
INSERT INTO `sys_job_log` VALUES ('6079', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:54:45');
INSERT INTO `sys_job_log` VALUES ('6080', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:55:00');
INSERT INTO `sys_job_log` VALUES ('6081', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:55:15');
INSERT INTO `sys_job_log` VALUES ('6082', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:55:30');
INSERT INTO `sys_job_log` VALUES ('6083', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:55:45');
INSERT INTO `sys_job_log` VALUES ('6084', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:56:00');
INSERT INTO `sys_job_log` VALUES ('6085', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:56:15');
INSERT INTO `sys_job_log` VALUES ('6086', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:56:30');
INSERT INTO `sys_job_log` VALUES ('6087', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:56:45');
INSERT INTO `sys_job_log` VALUES ('6088', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:57:00');
INSERT INTO `sys_job_log` VALUES ('6089', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:57:15');
INSERT INTO `sys_job_log` VALUES ('6090', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:57:30');
INSERT INTO `sys_job_log` VALUES ('6091', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:57:45');
INSERT INTO `sys_job_log` VALUES ('6092', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:58:00');
INSERT INTO `sys_job_log` VALUES ('6093', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:58:15');
INSERT INTO `sys_job_log` VALUES ('6094', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:58:30');
INSERT INTO `sys_job_log` VALUES ('6095', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:58:45');
INSERT INTO `sys_job_log` VALUES ('6096', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:59:00');
INSERT INTO `sys_job_log` VALUES ('6097', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:59:15');
INSERT INTO `sys_job_log` VALUES ('6098', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:59:30');
INSERT INTO `sys_job_log` VALUES ('6099', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 17:59:45');
INSERT INTO `sys_job_log` VALUES ('6100', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:00:00');
INSERT INTO `sys_job_log` VALUES ('6101', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:00:15');
INSERT INTO `sys_job_log` VALUES ('6102', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:00:30');
INSERT INTO `sys_job_log` VALUES ('6103', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:00:45');
INSERT INTO `sys_job_log` VALUES ('6104', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:01:00');
INSERT INTO `sys_job_log` VALUES ('6105', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:01:15');
INSERT INTO `sys_job_log` VALUES ('6106', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:01:30');
INSERT INTO `sys_job_log` VALUES ('6107', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:01:45');
INSERT INTO `sys_job_log` VALUES ('6108', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:02:00');
INSERT INTO `sys_job_log` VALUES ('6109', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:02:15');
INSERT INTO `sys_job_log` VALUES ('6110', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:02:30');
INSERT INTO `sys_job_log` VALUES ('6111', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:02:45');
INSERT INTO `sys_job_log` VALUES ('6112', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:03:00');
INSERT INTO `sys_job_log` VALUES ('6113', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:03:15');
INSERT INTO `sys_job_log` VALUES ('6114', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:03:30');
INSERT INTO `sys_job_log` VALUES ('6115', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:03:45');
INSERT INTO `sys_job_log` VALUES ('6116', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:04:00');
INSERT INTO `sys_job_log` VALUES ('6117', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:04:15');
INSERT INTO `sys_job_log` VALUES ('6118', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:04:30');
INSERT INTO `sys_job_log` VALUES ('6119', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:04:45');
INSERT INTO `sys_job_log` VALUES ('6120', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:05:00');
INSERT INTO `sys_job_log` VALUES ('6121', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:05:15');
INSERT INTO `sys_job_log` VALUES ('6122', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:05:30');
INSERT INTO `sys_job_log` VALUES ('6123', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:05:45');
INSERT INTO `sys_job_log` VALUES ('6124', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:06:00');
INSERT INTO `sys_job_log` VALUES ('6125', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:06:15');
INSERT INTO `sys_job_log` VALUES ('6126', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:06:30');
INSERT INTO `sys_job_log` VALUES ('6127', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:06:45');
INSERT INTO `sys_job_log` VALUES ('6128', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:07:00');
INSERT INTO `sys_job_log` VALUES ('6129', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:07:15');
INSERT INTO `sys_job_log` VALUES ('6130', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:07:30');
INSERT INTO `sys_job_log` VALUES ('6131', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:07:45');
INSERT INTO `sys_job_log` VALUES ('6132', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:08:00');
INSERT INTO `sys_job_log` VALUES ('6133', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:08:15');
INSERT INTO `sys_job_log` VALUES ('6134', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:08:30');
INSERT INTO `sys_job_log` VALUES ('6135', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:08:45');
INSERT INTO `sys_job_log` VALUES ('6136', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:09:00');
INSERT INTO `sys_job_log` VALUES ('6137', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:09:15');
INSERT INTO `sys_job_log` VALUES ('6138', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:09:30');
INSERT INTO `sys_job_log` VALUES ('6139', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:09:45');
INSERT INTO `sys_job_log` VALUES ('6140', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:10:00');
INSERT INTO `sys_job_log` VALUES ('6141', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:10:15');
INSERT INTO `sys_job_log` VALUES ('6142', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:10:30');
INSERT INTO `sys_job_log` VALUES ('6143', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:10:45');
INSERT INTO `sys_job_log` VALUES ('6144', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:11:00');
INSERT INTO `sys_job_log` VALUES ('6145', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:11:15');
INSERT INTO `sys_job_log` VALUES ('6146', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:11:30');
INSERT INTO `sys_job_log` VALUES ('6147', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:11:45');
INSERT INTO `sys_job_log` VALUES ('6148', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:12:00');
INSERT INTO `sys_job_log` VALUES ('6149', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:12:15');
INSERT INTO `sys_job_log` VALUES ('6150', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:12:30');
INSERT INTO `sys_job_log` VALUES ('6151', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:12:45');
INSERT INTO `sys_job_log` VALUES ('6152', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:13:00');
INSERT INTO `sys_job_log` VALUES ('6153', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:13:15');
INSERT INTO `sys_job_log` VALUES ('6154', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:13:30');
INSERT INTO `sys_job_log` VALUES ('6155', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:13:45');
INSERT INTO `sys_job_log` VALUES ('6156', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:14:00');
INSERT INTO `sys_job_log` VALUES ('6157', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:14:15');
INSERT INTO `sys_job_log` VALUES ('6158', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:14:30');
INSERT INTO `sys_job_log` VALUES ('6159', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:14:45');
INSERT INTO `sys_job_log` VALUES ('6160', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:15:00');
INSERT INTO `sys_job_log` VALUES ('6161', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:15:15');
INSERT INTO `sys_job_log` VALUES ('6162', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:15:30');
INSERT INTO `sys_job_log` VALUES ('6163', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:15:45');
INSERT INTO `sys_job_log` VALUES ('6164', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:16:00');
INSERT INTO `sys_job_log` VALUES ('6165', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:16:15');
INSERT INTO `sys_job_log` VALUES ('6166', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:16:30');
INSERT INTO `sys_job_log` VALUES ('6167', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:16:45');
INSERT INTO `sys_job_log` VALUES ('6168', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:17:00');
INSERT INTO `sys_job_log` VALUES ('6169', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:17:15');
INSERT INTO `sys_job_log` VALUES ('6170', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:17:30');
INSERT INTO `sys_job_log` VALUES ('6171', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:17:45');
INSERT INTO `sys_job_log` VALUES ('6172', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:18:00');
INSERT INTO `sys_job_log` VALUES ('6173', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:18:15');
INSERT INTO `sys_job_log` VALUES ('6174', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:18:30');
INSERT INTO `sys_job_log` VALUES ('6175', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:18:45');
INSERT INTO `sys_job_log` VALUES ('6176', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:19:00');
INSERT INTO `sys_job_log` VALUES ('6177', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:19:15');
INSERT INTO `sys_job_log` VALUES ('6178', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:19:30');
INSERT INTO `sys_job_log` VALUES ('6179', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:19:45');
INSERT INTO `sys_job_log` VALUES ('6180', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:20:00');
INSERT INTO `sys_job_log` VALUES ('6181', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:20:15');
INSERT INTO `sys_job_log` VALUES ('6182', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:20:30');
INSERT INTO `sys_job_log` VALUES ('6183', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:20:45');
INSERT INTO `sys_job_log` VALUES ('6184', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:21:00');
INSERT INTO `sys_job_log` VALUES ('6185', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:21:15');
INSERT INTO `sys_job_log` VALUES ('6186', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:21:30');
INSERT INTO `sys_job_log` VALUES ('6187', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:21:45');
INSERT INTO `sys_job_log` VALUES ('6188', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:22:00');
INSERT INTO `sys_job_log` VALUES ('6189', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:22:15');
INSERT INTO `sys_job_log` VALUES ('6190', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:22:30');
INSERT INTO `sys_job_log` VALUES ('6191', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:22:45');
INSERT INTO `sys_job_log` VALUES ('6192', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:23:00');
INSERT INTO `sys_job_log` VALUES ('6193', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:23:15');
INSERT INTO `sys_job_log` VALUES ('6194', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:23:30');
INSERT INTO `sys_job_log` VALUES ('6195', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:23:45');
INSERT INTO `sys_job_log` VALUES ('6196', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:24:00');
INSERT INTO `sys_job_log` VALUES ('6197', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:24:15');
INSERT INTO `sys_job_log` VALUES ('6198', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:24:30');
INSERT INTO `sys_job_log` VALUES ('6199', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:24:45');
INSERT INTO `sys_job_log` VALUES ('6200', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:25:00');
INSERT INTO `sys_job_log` VALUES ('6201', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:25:15');
INSERT INTO `sys_job_log` VALUES ('6202', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:25:30');
INSERT INTO `sys_job_log` VALUES ('6203', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:25:45');
INSERT INTO `sys_job_log` VALUES ('6204', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:26:00');
INSERT INTO `sys_job_log` VALUES ('6205', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:26:15');
INSERT INTO `sys_job_log` VALUES ('6206', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:26:30');
INSERT INTO `sys_job_log` VALUES ('6207', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-11 18:27:47');
INSERT INTO `sys_job_log` VALUES ('6208', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:28:00');
INSERT INTO `sys_job_log` VALUES ('6209', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:28:15');
INSERT INTO `sys_job_log` VALUES ('6210', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:28:30');
INSERT INTO `sys_job_log` VALUES ('6211', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:28:45');
INSERT INTO `sys_job_log` VALUES ('6212', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:29:00');
INSERT INTO `sys_job_log` VALUES ('6213', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:29:15');
INSERT INTO `sys_job_log` VALUES ('6214', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:29:30');
INSERT INTO `sys_job_log` VALUES ('6215', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:29:45');
INSERT INTO `sys_job_log` VALUES ('6216', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:30:00');
INSERT INTO `sys_job_log` VALUES ('6217', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:30:15');
INSERT INTO `sys_job_log` VALUES ('6218', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:30:30');
INSERT INTO `sys_job_log` VALUES ('6219', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:30:45');
INSERT INTO `sys_job_log` VALUES ('6220', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:31:00');
INSERT INTO `sys_job_log` VALUES ('6221', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:31:15');
INSERT INTO `sys_job_log` VALUES ('6222', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:31:30');
INSERT INTO `sys_job_log` VALUES ('6223', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:31:45');
INSERT INTO `sys_job_log` VALUES ('6224', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:32:00');
INSERT INTO `sys_job_log` VALUES ('6225', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:32:15');
INSERT INTO `sys_job_log` VALUES ('6226', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:32:30');
INSERT INTO `sys_job_log` VALUES ('6227', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:32:45');
INSERT INTO `sys_job_log` VALUES ('6228', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:33:00');
INSERT INTO `sys_job_log` VALUES ('6229', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:33:15');
INSERT INTO `sys_job_log` VALUES ('6230', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:33:30');
INSERT INTO `sys_job_log` VALUES ('6231', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-11 18:33:45');
INSERT INTO `sys_job_log` VALUES ('6232', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:34:00');
INSERT INTO `sys_job_log` VALUES ('6233', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:34:15');
INSERT INTO `sys_job_log` VALUES ('6234', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:34:30');
INSERT INTO `sys_job_log` VALUES ('6235', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:34:45');
INSERT INTO `sys_job_log` VALUES ('6236', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:35:00');
INSERT INTO `sys_job_log` VALUES ('6237', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:35:15');
INSERT INTO `sys_job_log` VALUES ('6238', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:35:30');
INSERT INTO `sys_job_log` VALUES ('6239', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:35:45');
INSERT INTO `sys_job_log` VALUES ('6240', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:36:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('101', '9999', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:36:41');
INSERT INTO `sys_logininfor` VALUES ('102', 'cy', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 18:18:42');
INSERT INTO `sys_logininfor` VALUES ('103', 'cy', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 18:18:58');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-11 18:27:56');
INSERT INTO `sys_logininfor` VALUES ('105', '9999', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 18:28:04');

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
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 新版本发布啦', '2', '新版本内容', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 系统凌晨维护', '1', '维护内容', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '管理员');

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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('121', '重置密码', '2', 'com.chuyue.web.controller.system.SysProfileController.resetPwd()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"oldPassword\" : [ \"123456\" ],\r\n  \"newPassword\" : [ \"666666\" ],\r\n  \"confirm\" : [ \"666666\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-10 11:26:19');
INSERT INTO `sys_oper_log` VALUES ('122', '重置密码', '2', 'com.chuyue.web.controller.system.SysProfileController.resetPwd()', 'POST', '1', 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"oldPassword\" : [ \"666666\" ],\r\n  \"newPassword\" : [ \"123456\" ],\r\n  \"confirm\" : [ \"123456\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-10 11:26:37');
INSERT INTO `sys_oper_log` VALUES ('123', '定时任务', '2', 'com.chuyue.quartz.controller.SysJobController.editSave()', 'POST', '1', 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"updateBy\" : [ \"admin\" ],\r\n  \"jobName\" : [ \"系统默认（无参）\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ],\r\n  \"invokeTarget\" : [ \"cyTask.ryNoParams\" ],\r\n  \"cronExpression\" : [ \"0/10 * * * * ?\" ],\r\n  \"misfirePolicy\" : [ \"3\" ],\r\n  \"concurrent\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-10 11:52:28');
INSERT INTO `sys_oper_log` VALUES ('124', '定时任务', '2', 'com.chuyue.quartz.controller.SysJobController.editSave()', 'POST', '1', 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"2\" ],\r\n  \"updateBy\" : [ \"admin\" ],\r\n  \"jobName\" : [ \"系统默认（有参）\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ],\r\n  \"invokeTarget\" : [ \"cyTask.cyParams(\'cy\')\" ],\r\n  \"cronExpression\" : [ \"0/15 * * * * ?\" ],\r\n  \"misfirePolicy\" : [ \"3\" ],\r\n  \"concurrent\" : [ \"1\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-10 11:52:53');
INSERT INTO `sys_oper_log` VALUES ('125', '定时任务', '2', 'com.chuyue.quartz.controller.SysJobController.editSave()', 'POST', '1', 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"1\" ],\r\n  \"updateBy\" : [ \"admin\" ],\r\n  \"jobName\" : [ \"系统默认（无参）\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ],\r\n  \"invokeTarget\" : [ \"cyTask.cyNoParams\" ],\r\n  \"cronExpression\" : [ \"0/10 * * * * ?\" ],\r\n  \"misfirePolicy\" : [ \"3\" ],\r\n  \"concurrent\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-10 11:53:04');
INSERT INTO `sys_oper_log` VALUES ('126', '定时任务', '2', 'com.chuyue.quartz.controller.SysJobController.editSave()', 'POST', '1', 'admin', '研发部门', '/monitor/job/edit', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"3\" ],\r\n  \"updateBy\" : [ \"admin\" ],\r\n  \"jobName\" : [ \"系统默认（多参）\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ],\r\n  \"invokeTarget\" : [ \"cyTask.cyMultipleParams(\'cy\', true, 2000L, 316.50D, 100)\" ],\r\n  \"cronExpression\" : [ \"0/20 * * * * ?\" ],\r\n  \"misfirePolicy\" : [ \"3\" ],\r\n  \"concurrent\" : [ \"1\" ],\r\n  \"status\" : [ \"1\" ],\r\n  \"remark\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-10 11:53:21');
INSERT INTO `sys_oper_log` VALUES ('127', '代码生成', '6', 'com.chuyue.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_notice\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-11 15:39:51');
INSERT INTO `sys_oper_log` VALUES ('128', '代码生成', '8', 'com.chuyue.generator.controller.GenController.genCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/genCode/sys_notice', '127.0.0.1', '内网IP', '{ }', 'null', '0', null, '2019-10-11 15:40:01');
INSERT INTO `sys_oper_log` VALUES ('129', '代码生成', '3', 'com.chuyue.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-11 15:40:15');

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
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', '9999', '2018-03-16 11:33:00', 'cy', '2018-03-16 11:33:00', '');

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
INSERT INTO `sys_role` VALUES ('1', '管理员', '9999', '1', '1', '0', '0', '9999', '2018-03-16 11:33:00', 'cy', '2019-09-25 17:23:06', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '2', '0', '0', '9999', '2018-03-16 11:33:00', '9999', '2019-09-25 17:24:00', '普通角色');

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
INSERT INTO `sys_user` VALUES ('1', '103', '9999', '楚樾', '00', 'chuyue@qq.com@163.com', '15888888888', '1', '', 'AFF833A3581ADBE7B0DB07F3E6D0508F', '0', '0', '127.0.0.1', '2019-10-11 18:28:04', '9999', '2018-03-16 11:33:00', 'cy', '2019-10-11 18:28:04', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'cy', '楚樾', '00', 'chuyue@qq.com', '15666666666', '1', '', 'AFF833A3581ADBE7B0DB07F3E6D0508F', '0', '0', '127.0.0.1', '2019-10-11 18:18:59', '9999', '2018-03-16 11:33:00', 'cy', '2019-10-11 18:18:58', '测试员');
INSERT INTO `sys_user` VALUES ('100', '103', 'yujiantong', '于建铜', '00', 'yujiantongs@163.com', '18310244601', '0', '', 'AFF833A3581ADBE7B0DB07F3E6D0508F', '0', '0', '127.0.0.1', '2019-09-26 08:54:32', '9999', '2019-09-25 14:41:29', '9999', '2019-09-26 08:54:31', '');

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
INSERT INTO `sys_user_online` VALUES ('7da4a58c-b60c-4562-bf31-cb3348a11120', '9999', '研发部门', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2019-10-11 18:18:32', '2019-10-11 18:28:04', '1800000');

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
