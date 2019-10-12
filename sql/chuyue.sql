/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : chuyue

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-10-12 14:26:17
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
INSERT INTO `gen_table` VALUES ('1', 'sys_user_post', '用户与岗位关联表', 'SysUserPost', 'crud', 'com.chuyue.system', 'system', 'post', '用户与岗位关联', 'chuyue', null, '9999', '2019-09-27 21:00:41', '', null, null);

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
INSERT INTO `qrtz_fired_triggers` VALUES ('ChuYueScheduler', 'DESKTOP-VOAS7VO15708608098271570860809854', 'TASK_CLASS_NAME2', 'DEFAULT', 'DESKTOP-VOAS7VO1570860809827', '1570861575026', '1570861590000', '5', 'ACQUIRED', null, null, '0', '0');

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
INSERT INTO `qrtz_job_details` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.chuyue.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E6368757975652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E6368757975652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C7870740004393939397372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F74001163795461736B2E63794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.chuyue.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E6368757975652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E6368757975652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C7870740004393939397372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3135202A202A202A202A203F74001563795461736B2E6379506172616D7328276379272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001307800);
INSERT INTO `qrtz_job_details` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', null, 'com.chuyue.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001F636F6D2E6368757975652E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720028636F6D2E6368757975652E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C7870740004393939397372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F74003863795461736B2E63794D756C7469706C65506172616D7328276379272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

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
INSERT INTO `qrtz_scheduler_state` VALUES ('ChuYueScheduler', 'DESKTOP-VOAS7VO1570860809827', '1570861563370', '15000');

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
INSERT INTO `qrtz_triggers` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1570860810000', '-1', '5', 'PAUSED', 'CRON', '1570860810000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1570861590000', '1570861575000', '5', 'ACQUIRED', 'CRON', '1570860810000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('ChuYueScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', null, '1570860820000', '-1', '5', 'PAUSED', 'CRON', '1570860810000', '0', null, '2', '');

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
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'cyTask.cyMultipleParams(\'cy\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', '9999', '2018-03-16 11:33:00', '9999', '2019-10-12 09:42:11', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=7588 DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

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
INSERT INTO `sys_job_log` VALUES ('6241', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:36:15');
INSERT INTO `sys_job_log` VALUES ('6242', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:36:30');
INSERT INTO `sys_job_log` VALUES ('6243', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:36:45');
INSERT INTO `sys_job_log` VALUES ('6244', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-11 18:37:00');
INSERT INTO `sys_job_log` VALUES ('6245', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：3毫秒', '0', '', '2019-10-12 08:45:00');
INSERT INTO `sys_job_log` VALUES ('6246', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:45:15');
INSERT INTO `sys_job_log` VALUES ('6247', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:45:30');
INSERT INTO `sys_job_log` VALUES ('6248', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:45:45');
INSERT INTO `sys_job_log` VALUES ('6249', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:46:00');
INSERT INTO `sys_job_log` VALUES ('6250', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:46:15');
INSERT INTO `sys_job_log` VALUES ('6251', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:46:30');
INSERT INTO `sys_job_log` VALUES ('6252', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:46:45');
INSERT INTO `sys_job_log` VALUES ('6253', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:47:00');
INSERT INTO `sys_job_log` VALUES ('6254', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:47:15');
INSERT INTO `sys_job_log` VALUES ('6255', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:47:30');
INSERT INTO `sys_job_log` VALUES ('6256', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:47:45');
INSERT INTO `sys_job_log` VALUES ('6257', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 08:48:00');
INSERT INTO `sys_job_log` VALUES ('6258', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:48:15');
INSERT INTO `sys_job_log` VALUES ('6259', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 08:48:30');
INSERT INTO `sys_job_log` VALUES ('6260', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:48:45');
INSERT INTO `sys_job_log` VALUES ('6261', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 08:49:00');
INSERT INTO `sys_job_log` VALUES ('6262', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:49:15');
INSERT INTO `sys_job_log` VALUES ('6263', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:49:30');
INSERT INTO `sys_job_log` VALUES ('6264', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:49:45');
INSERT INTO `sys_job_log` VALUES ('6265', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:50:00');
INSERT INTO `sys_job_log` VALUES ('6266', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:50:15');
INSERT INTO `sys_job_log` VALUES ('6267', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:50:30');
INSERT INTO `sys_job_log` VALUES ('6268', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:50:45');
INSERT INTO `sys_job_log` VALUES ('6269', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:51:00');
INSERT INTO `sys_job_log` VALUES ('6270', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:51:15');
INSERT INTO `sys_job_log` VALUES ('6271', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:51:30');
INSERT INTO `sys_job_log` VALUES ('6272', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:51:45');
INSERT INTO `sys_job_log` VALUES ('6273', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:52:00');
INSERT INTO `sys_job_log` VALUES ('6274', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:52:15');
INSERT INTO `sys_job_log` VALUES ('6275', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:52:30');
INSERT INTO `sys_job_log` VALUES ('6276', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:52:45');
INSERT INTO `sys_job_log` VALUES ('6277', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:53:00');
INSERT INTO `sys_job_log` VALUES ('6278', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:53:15');
INSERT INTO `sys_job_log` VALUES ('6279', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:53:30');
INSERT INTO `sys_job_log` VALUES ('6280', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:53:45');
INSERT INTO `sys_job_log` VALUES ('6281', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:54:00');
INSERT INTO `sys_job_log` VALUES ('6282', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:54:15');
INSERT INTO `sys_job_log` VALUES ('6283', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:54:30');
INSERT INTO `sys_job_log` VALUES ('6284', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:54:45');
INSERT INTO `sys_job_log` VALUES ('6285', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:55:00');
INSERT INTO `sys_job_log` VALUES ('6286', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:55:15');
INSERT INTO `sys_job_log` VALUES ('6287', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:55:30');
INSERT INTO `sys_job_log` VALUES ('6288', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 08:55:45');
INSERT INTO `sys_job_log` VALUES ('6289', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:56:00');
INSERT INTO `sys_job_log` VALUES ('6290', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:56:15');
INSERT INTO `sys_job_log` VALUES ('6291', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:56:30');
INSERT INTO `sys_job_log` VALUES ('6292', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:56:45');
INSERT INTO `sys_job_log` VALUES ('6293', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 08:57:00');
INSERT INTO `sys_job_log` VALUES ('6294', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:57:15');
INSERT INTO `sys_job_log` VALUES ('6295', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:57:30');
INSERT INTO `sys_job_log` VALUES ('6296', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:57:45');
INSERT INTO `sys_job_log` VALUES ('6297', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:58:00');
INSERT INTO `sys_job_log` VALUES ('6298', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 08:58:15');
INSERT INTO `sys_job_log` VALUES ('6299', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:58:30');
INSERT INTO `sys_job_log` VALUES ('6300', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:58:45');
INSERT INTO `sys_job_log` VALUES ('6301', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:59:00');
INSERT INTO `sys_job_log` VALUES ('6302', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:59:15');
INSERT INTO `sys_job_log` VALUES ('6303', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:59:30');
INSERT INTO `sys_job_log` VALUES ('6304', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 08:59:45');
INSERT INTO `sys_job_log` VALUES ('6305', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:00:00');
INSERT INTO `sys_job_log` VALUES ('6306', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:00:15');
INSERT INTO `sys_job_log` VALUES ('6307', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:00:30');
INSERT INTO `sys_job_log` VALUES ('6308', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:00:45');
INSERT INTO `sys_job_log` VALUES ('6309', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:01:00');
INSERT INTO `sys_job_log` VALUES ('6310', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:01:15');
INSERT INTO `sys_job_log` VALUES ('6311', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:01:30');
INSERT INTO `sys_job_log` VALUES ('6312', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:01:45');
INSERT INTO `sys_job_log` VALUES ('6313', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:02:00');
INSERT INTO `sys_job_log` VALUES ('6314', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:02:15');
INSERT INTO `sys_job_log` VALUES ('6315', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:02:30');
INSERT INTO `sys_job_log` VALUES ('6316', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:02:45');
INSERT INTO `sys_job_log` VALUES ('6317', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:03:00');
INSERT INTO `sys_job_log` VALUES ('6318', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:03:15');
INSERT INTO `sys_job_log` VALUES ('6319', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:03:30');
INSERT INTO `sys_job_log` VALUES ('6320', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:03:45');
INSERT INTO `sys_job_log` VALUES ('6321', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:04:00');
INSERT INTO `sys_job_log` VALUES ('6322', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:04:15');
INSERT INTO `sys_job_log` VALUES ('6323', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:04:30');
INSERT INTO `sys_job_log` VALUES ('6324', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:04:45');
INSERT INTO `sys_job_log` VALUES ('6325', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:05:00');
INSERT INTO `sys_job_log` VALUES ('6326', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:05:15');
INSERT INTO `sys_job_log` VALUES ('6327', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:05:30');
INSERT INTO `sys_job_log` VALUES ('6328', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:05:45');
INSERT INTO `sys_job_log` VALUES ('6329', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:06:00');
INSERT INTO `sys_job_log` VALUES ('6330', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:06:15');
INSERT INTO `sys_job_log` VALUES ('6331', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:06:30');
INSERT INTO `sys_job_log` VALUES ('6332', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:06:45');
INSERT INTO `sys_job_log` VALUES ('6333', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:07:00');
INSERT INTO `sys_job_log` VALUES ('6334', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:07:15');
INSERT INTO `sys_job_log` VALUES ('6335', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:07:30');
INSERT INTO `sys_job_log` VALUES ('6336', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:07:45');
INSERT INTO `sys_job_log` VALUES ('6337', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:08:00');
INSERT INTO `sys_job_log` VALUES ('6338', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:08:15');
INSERT INTO `sys_job_log` VALUES ('6339', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:08:30');
INSERT INTO `sys_job_log` VALUES ('6340', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:08:45');
INSERT INTO `sys_job_log` VALUES ('6341', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:09:00');
INSERT INTO `sys_job_log` VALUES ('6342', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:09:15');
INSERT INTO `sys_job_log` VALUES ('6343', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:09:30');
INSERT INTO `sys_job_log` VALUES ('6344', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:09:45');
INSERT INTO `sys_job_log` VALUES ('6345', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:10:00');
INSERT INTO `sys_job_log` VALUES ('6346', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:10:15');
INSERT INTO `sys_job_log` VALUES ('6347', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:10:30');
INSERT INTO `sys_job_log` VALUES ('6348', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:10:45');
INSERT INTO `sys_job_log` VALUES ('6349', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:11:00');
INSERT INTO `sys_job_log` VALUES ('6350', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:11:15');
INSERT INTO `sys_job_log` VALUES ('6351', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:11:30');
INSERT INTO `sys_job_log` VALUES ('6352', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:11:45');
INSERT INTO `sys_job_log` VALUES ('6353', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:12:00');
INSERT INTO `sys_job_log` VALUES ('6354', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:12:15');
INSERT INTO `sys_job_log` VALUES ('6355', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:12:30');
INSERT INTO `sys_job_log` VALUES ('6356', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:12:45');
INSERT INTO `sys_job_log` VALUES ('6357', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:13:00');
INSERT INTO `sys_job_log` VALUES ('6358', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:13:15');
INSERT INTO `sys_job_log` VALUES ('6359', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:13:30');
INSERT INTO `sys_job_log` VALUES ('6360', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:13:45');
INSERT INTO `sys_job_log` VALUES ('6361', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:14:00');
INSERT INTO `sys_job_log` VALUES ('6362', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:14:15');
INSERT INTO `sys_job_log` VALUES ('6363', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:14:30');
INSERT INTO `sys_job_log` VALUES ('6364', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:14:45');
INSERT INTO `sys_job_log` VALUES ('6365', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:15:00');
INSERT INTO `sys_job_log` VALUES ('6366', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:15:15');
INSERT INTO `sys_job_log` VALUES ('6367', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:15:30');
INSERT INTO `sys_job_log` VALUES ('6368', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:15:45');
INSERT INTO `sys_job_log` VALUES ('6369', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:16:00');
INSERT INTO `sys_job_log` VALUES ('6370', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:16:15');
INSERT INTO `sys_job_log` VALUES ('6371', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:16:30');
INSERT INTO `sys_job_log` VALUES ('6372', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:16:45');
INSERT INTO `sys_job_log` VALUES ('6373', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:17:00');
INSERT INTO `sys_job_log` VALUES ('6374', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:17:15');
INSERT INTO `sys_job_log` VALUES ('6375', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:17:30');
INSERT INTO `sys_job_log` VALUES ('6376', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:17:45');
INSERT INTO `sys_job_log` VALUES ('6377', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:18:00');
INSERT INTO `sys_job_log` VALUES ('6378', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:18:15');
INSERT INTO `sys_job_log` VALUES ('6379', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:18:30');
INSERT INTO `sys_job_log` VALUES ('6380', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:18:45');
INSERT INTO `sys_job_log` VALUES ('6381', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:19:00');
INSERT INTO `sys_job_log` VALUES ('6382', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:19:15');
INSERT INTO `sys_job_log` VALUES ('6383', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:19:30');
INSERT INTO `sys_job_log` VALUES ('6384', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:19:45');
INSERT INTO `sys_job_log` VALUES ('6385', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:20:00');
INSERT INTO `sys_job_log` VALUES ('6386', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:20:15');
INSERT INTO `sys_job_log` VALUES ('6387', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:20:30');
INSERT INTO `sys_job_log` VALUES ('6388', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:20:45');
INSERT INTO `sys_job_log` VALUES ('6389', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:21:00');
INSERT INTO `sys_job_log` VALUES ('6390', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:21:15');
INSERT INTO `sys_job_log` VALUES ('6391', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:21:30');
INSERT INTO `sys_job_log` VALUES ('6392', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:21:45');
INSERT INTO `sys_job_log` VALUES ('6393', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:22:00');
INSERT INTO `sys_job_log` VALUES ('6394', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:22:15');
INSERT INTO `sys_job_log` VALUES ('6395', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:22:30');
INSERT INTO `sys_job_log` VALUES ('6396', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:22:45');
INSERT INTO `sys_job_log` VALUES ('6397', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:23:00');
INSERT INTO `sys_job_log` VALUES ('6398', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:23:15');
INSERT INTO `sys_job_log` VALUES ('6399', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:23:30');
INSERT INTO `sys_job_log` VALUES ('6400', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:23:45');
INSERT INTO `sys_job_log` VALUES ('6401', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:24:00');
INSERT INTO `sys_job_log` VALUES ('6402', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:24:15');
INSERT INTO `sys_job_log` VALUES ('6403', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:24:30');
INSERT INTO `sys_job_log` VALUES ('6404', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:24:45');
INSERT INTO `sys_job_log` VALUES ('6405', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:25:00');
INSERT INTO `sys_job_log` VALUES ('6406', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:25:15');
INSERT INTO `sys_job_log` VALUES ('6407', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:25:30');
INSERT INTO `sys_job_log` VALUES ('6408', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:25:45');
INSERT INTO `sys_job_log` VALUES ('6409', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:26:00');
INSERT INTO `sys_job_log` VALUES ('6410', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:26:15');
INSERT INTO `sys_job_log` VALUES ('6411', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:26:30');
INSERT INTO `sys_job_log` VALUES ('6412', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:26:45');
INSERT INTO `sys_job_log` VALUES ('6413', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:27:00');
INSERT INTO `sys_job_log` VALUES ('6414', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:27:15');
INSERT INTO `sys_job_log` VALUES ('6415', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:27:30');
INSERT INTO `sys_job_log` VALUES ('6416', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:27:45');
INSERT INTO `sys_job_log` VALUES ('6417', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:28:00');
INSERT INTO `sys_job_log` VALUES ('6418', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:28:15');
INSERT INTO `sys_job_log` VALUES ('6419', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:28:30');
INSERT INTO `sys_job_log` VALUES ('6420', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:28:45');
INSERT INTO `sys_job_log` VALUES ('6421', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:29:00');
INSERT INTO `sys_job_log` VALUES ('6422', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:29:15');
INSERT INTO `sys_job_log` VALUES ('6423', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:29:30');
INSERT INTO `sys_job_log` VALUES ('6424', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:29:45');
INSERT INTO `sys_job_log` VALUES ('6425', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:30:00');
INSERT INTO `sys_job_log` VALUES ('6426', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:30:15');
INSERT INTO `sys_job_log` VALUES ('6427', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:30:30');
INSERT INTO `sys_job_log` VALUES ('6428', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:30:45');
INSERT INTO `sys_job_log` VALUES ('6429', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:31:00');
INSERT INTO `sys_job_log` VALUES ('6430', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:31:15');
INSERT INTO `sys_job_log` VALUES ('6431', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:31:30');
INSERT INTO `sys_job_log` VALUES ('6432', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:31:45');
INSERT INTO `sys_job_log` VALUES ('6433', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:32:00');
INSERT INTO `sys_job_log` VALUES ('6434', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:32:15');
INSERT INTO `sys_job_log` VALUES ('6435', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:32:30');
INSERT INTO `sys_job_log` VALUES ('6436', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:32:45');
INSERT INTO `sys_job_log` VALUES ('6437', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-12 09:35:00');
INSERT INTO `sys_job_log` VALUES ('6438', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:35:15');
INSERT INTO `sys_job_log` VALUES ('6439', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:35:30');
INSERT INTO `sys_job_log` VALUES ('6440', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:35:45');
INSERT INTO `sys_job_log` VALUES ('6441', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:36:00');
INSERT INTO `sys_job_log` VALUES ('6442', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:36:15');
INSERT INTO `sys_job_log` VALUES ('6443', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:36:30');
INSERT INTO `sys_job_log` VALUES ('6444', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:36:45');
INSERT INTO `sys_job_log` VALUES ('6445', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:37:00');
INSERT INTO `sys_job_log` VALUES ('6446', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:37:15');
INSERT INTO `sys_job_log` VALUES ('6447', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:37:30');
INSERT INTO `sys_job_log` VALUES ('6448', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-12 09:38:15');
INSERT INTO `sys_job_log` VALUES ('6449', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:38:30');
INSERT INTO `sys_job_log` VALUES ('6450', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:38:45');
INSERT INTO `sys_job_log` VALUES ('6451', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:39:00');
INSERT INTO `sys_job_log` VALUES ('6452', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-12 09:39:15');
INSERT INTO `sys_job_log` VALUES ('6453', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:39:30');
INSERT INTO `sys_job_log` VALUES ('6454', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:39:45');
INSERT INTO `sys_job_log` VALUES ('6455', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:40:00');
INSERT INTO `sys_job_log` VALUES ('6456', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:40:15');
INSERT INTO `sys_job_log` VALUES ('6457', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:40:30');
INSERT INTO `sys_job_log` VALUES ('6458', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:40:45');
INSERT INTO `sys_job_log` VALUES ('6459', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:41:00');
INSERT INTO `sys_job_log` VALUES ('6460', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:41:15');
INSERT INTO `sys_job_log` VALUES ('6461', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:41:30');
INSERT INTO `sys_job_log` VALUES ('6462', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:41:45');
INSERT INTO `sys_job_log` VALUES ('6463', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:42:00');
INSERT INTO `sys_job_log` VALUES ('6464', '系统默认（多参）', 'DEFAULT', 'cyTask.cyMultipleParams(\'cy\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:42:00');
INSERT INTO `sys_job_log` VALUES ('6465', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:42:15');
INSERT INTO `sys_job_log` VALUES ('6466', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:42:30');
INSERT INTO `sys_job_log` VALUES ('6467', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:42:45');
INSERT INTO `sys_job_log` VALUES ('6468', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:43:00');
INSERT INTO `sys_job_log` VALUES ('6469', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:43:15');
INSERT INTO `sys_job_log` VALUES ('6470', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:43:30');
INSERT INTO `sys_job_log` VALUES ('6471', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:43:45');
INSERT INTO `sys_job_log` VALUES ('6472', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:44:00');
INSERT INTO `sys_job_log` VALUES ('6473', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:44:15');
INSERT INTO `sys_job_log` VALUES ('6474', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:44:30');
INSERT INTO `sys_job_log` VALUES ('6475', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:44:45');
INSERT INTO `sys_job_log` VALUES ('6476', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:45:00');
INSERT INTO `sys_job_log` VALUES ('6477', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:45:15');
INSERT INTO `sys_job_log` VALUES ('6478', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:45:30');
INSERT INTO `sys_job_log` VALUES ('6479', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:45:45');
INSERT INTO `sys_job_log` VALUES ('6480', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:46:00');
INSERT INTO `sys_job_log` VALUES ('6481', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:46:15');
INSERT INTO `sys_job_log` VALUES ('6482', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:46:30');
INSERT INTO `sys_job_log` VALUES ('6483', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:46:45');
INSERT INTO `sys_job_log` VALUES ('6484', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:47:00');
INSERT INTO `sys_job_log` VALUES ('6485', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:47:15');
INSERT INTO `sys_job_log` VALUES ('6486', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:47:30');
INSERT INTO `sys_job_log` VALUES ('6487', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:47:45');
INSERT INTO `sys_job_log` VALUES ('6488', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:48:00');
INSERT INTO `sys_job_log` VALUES ('6489', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:48:15');
INSERT INTO `sys_job_log` VALUES ('6490', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:48:30');
INSERT INTO `sys_job_log` VALUES ('6491', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:48:45');
INSERT INTO `sys_job_log` VALUES ('6492', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:49:00');
INSERT INTO `sys_job_log` VALUES ('6493', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:49:15');
INSERT INTO `sys_job_log` VALUES ('6494', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:49:30');
INSERT INTO `sys_job_log` VALUES ('6495', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:49:45');
INSERT INTO `sys_job_log` VALUES ('6496', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:50:00');
INSERT INTO `sys_job_log` VALUES ('6497', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:50:15');
INSERT INTO `sys_job_log` VALUES ('6498', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:50:30');
INSERT INTO `sys_job_log` VALUES ('6499', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:50:45');
INSERT INTO `sys_job_log` VALUES ('6500', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:51:00');
INSERT INTO `sys_job_log` VALUES ('6501', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:51:15');
INSERT INTO `sys_job_log` VALUES ('6502', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:51:30');
INSERT INTO `sys_job_log` VALUES ('6503', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:51:45');
INSERT INTO `sys_job_log` VALUES ('6504', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:52:00');
INSERT INTO `sys_job_log` VALUES ('6505', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:52:15');
INSERT INTO `sys_job_log` VALUES ('6506', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:52:30');
INSERT INTO `sys_job_log` VALUES ('6507', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:52:45');
INSERT INTO `sys_job_log` VALUES ('6508', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:53:00');
INSERT INTO `sys_job_log` VALUES ('6509', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:53:15');
INSERT INTO `sys_job_log` VALUES ('6510', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:53:30');
INSERT INTO `sys_job_log` VALUES ('6511', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:53:45');
INSERT INTO `sys_job_log` VALUES ('6512', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:54:00');
INSERT INTO `sys_job_log` VALUES ('6513', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:54:15');
INSERT INTO `sys_job_log` VALUES ('6514', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:54:30');
INSERT INTO `sys_job_log` VALUES ('6515', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:54:45');
INSERT INTO `sys_job_log` VALUES ('6516', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:55:00');
INSERT INTO `sys_job_log` VALUES ('6517', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:55:15');
INSERT INTO `sys_job_log` VALUES ('6518', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:55:30');
INSERT INTO `sys_job_log` VALUES ('6519', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:55:45');
INSERT INTO `sys_job_log` VALUES ('6520', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:56:00');
INSERT INTO `sys_job_log` VALUES ('6521', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:56:15');
INSERT INTO `sys_job_log` VALUES ('6522', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:56:30');
INSERT INTO `sys_job_log` VALUES ('6523', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:56:45');
INSERT INTO `sys_job_log` VALUES ('6524', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:57:00');
INSERT INTO `sys_job_log` VALUES ('6525', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:57:15');
INSERT INTO `sys_job_log` VALUES ('6526', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:57:30');
INSERT INTO `sys_job_log` VALUES ('6527', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:57:45');
INSERT INTO `sys_job_log` VALUES ('6528', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:58:00');
INSERT INTO `sys_job_log` VALUES ('6529', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:58:15');
INSERT INTO `sys_job_log` VALUES ('6530', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:58:30');
INSERT INTO `sys_job_log` VALUES ('6531', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:58:45');
INSERT INTO `sys_job_log` VALUES ('6532', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 09:59:00');
INSERT INTO `sys_job_log` VALUES ('6533', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:59:15');
INSERT INTO `sys_job_log` VALUES ('6534', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:59:30');
INSERT INTO `sys_job_log` VALUES ('6535', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 09:59:45');
INSERT INTO `sys_job_log` VALUES ('6536', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:00:00');
INSERT INTO `sys_job_log` VALUES ('6537', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:00:15');
INSERT INTO `sys_job_log` VALUES ('6538', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:00:30');
INSERT INTO `sys_job_log` VALUES ('6539', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:00:45');
INSERT INTO `sys_job_log` VALUES ('6540', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:01:00');
INSERT INTO `sys_job_log` VALUES ('6541', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:01:15');
INSERT INTO `sys_job_log` VALUES ('6542', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:01:30');
INSERT INTO `sys_job_log` VALUES ('6543', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:01:45');
INSERT INTO `sys_job_log` VALUES ('6544', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:02:00');
INSERT INTO `sys_job_log` VALUES ('6545', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:02:15');
INSERT INTO `sys_job_log` VALUES ('6546', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:02:30');
INSERT INTO `sys_job_log` VALUES ('6547', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:02:45');
INSERT INTO `sys_job_log` VALUES ('6548', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:03:00');
INSERT INTO `sys_job_log` VALUES ('6549', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:03:15');
INSERT INTO `sys_job_log` VALUES ('6550', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:03:30');
INSERT INTO `sys_job_log` VALUES ('6551', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:03:45');
INSERT INTO `sys_job_log` VALUES ('6552', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:04:00');
INSERT INTO `sys_job_log` VALUES ('6553', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:04:15');
INSERT INTO `sys_job_log` VALUES ('6554', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:04:30');
INSERT INTO `sys_job_log` VALUES ('6555', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:04:45');
INSERT INTO `sys_job_log` VALUES ('6556', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:05:00');
INSERT INTO `sys_job_log` VALUES ('6557', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:05:15');
INSERT INTO `sys_job_log` VALUES ('6558', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:05:30');
INSERT INTO `sys_job_log` VALUES ('6559', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:05:45');
INSERT INTO `sys_job_log` VALUES ('6560', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:06:00');
INSERT INTO `sys_job_log` VALUES ('6561', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:06:15');
INSERT INTO `sys_job_log` VALUES ('6562', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:06:30');
INSERT INTO `sys_job_log` VALUES ('6563', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:06:45');
INSERT INTO `sys_job_log` VALUES ('6564', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:07:00');
INSERT INTO `sys_job_log` VALUES ('6565', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:07:15');
INSERT INTO `sys_job_log` VALUES ('6566', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:07:30');
INSERT INTO `sys_job_log` VALUES ('6567', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:07:45');
INSERT INTO `sys_job_log` VALUES ('6568', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:08:00');
INSERT INTO `sys_job_log` VALUES ('6569', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:08:15');
INSERT INTO `sys_job_log` VALUES ('6570', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:08:30');
INSERT INTO `sys_job_log` VALUES ('6571', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:08:45');
INSERT INTO `sys_job_log` VALUES ('6572', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:09:00');
INSERT INTO `sys_job_log` VALUES ('6573', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:09:15');
INSERT INTO `sys_job_log` VALUES ('6574', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:09:30');
INSERT INTO `sys_job_log` VALUES ('6575', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:09:45');
INSERT INTO `sys_job_log` VALUES ('6576', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:10:00');
INSERT INTO `sys_job_log` VALUES ('6577', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:10:15');
INSERT INTO `sys_job_log` VALUES ('6578', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:10:30');
INSERT INTO `sys_job_log` VALUES ('6579', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:10:45');
INSERT INTO `sys_job_log` VALUES ('6580', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:11:00');
INSERT INTO `sys_job_log` VALUES ('6581', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:11:15');
INSERT INTO `sys_job_log` VALUES ('6582', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:11:30');
INSERT INTO `sys_job_log` VALUES ('6583', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:11:45');
INSERT INTO `sys_job_log` VALUES ('6584', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:12:00');
INSERT INTO `sys_job_log` VALUES ('6585', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:12:15');
INSERT INTO `sys_job_log` VALUES ('6586', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:12:30');
INSERT INTO `sys_job_log` VALUES ('6587', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:12:45');
INSERT INTO `sys_job_log` VALUES ('6588', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:13:00');
INSERT INTO `sys_job_log` VALUES ('6589', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:13:15');
INSERT INTO `sys_job_log` VALUES ('6590', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:13:30');
INSERT INTO `sys_job_log` VALUES ('6591', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:13:45');
INSERT INTO `sys_job_log` VALUES ('6592', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:14:00');
INSERT INTO `sys_job_log` VALUES ('6593', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:14:15');
INSERT INTO `sys_job_log` VALUES ('6594', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:14:30');
INSERT INTO `sys_job_log` VALUES ('6595', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:14:45');
INSERT INTO `sys_job_log` VALUES ('6596', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:15:00');
INSERT INTO `sys_job_log` VALUES ('6597', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:15:15');
INSERT INTO `sys_job_log` VALUES ('6598', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:15:30');
INSERT INTO `sys_job_log` VALUES ('6599', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:15:45');
INSERT INTO `sys_job_log` VALUES ('6600', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:16:00');
INSERT INTO `sys_job_log` VALUES ('6601', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:16:15');
INSERT INTO `sys_job_log` VALUES ('6602', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:16:30');
INSERT INTO `sys_job_log` VALUES ('6603', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:16:45');
INSERT INTO `sys_job_log` VALUES ('6604', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:17:00');
INSERT INTO `sys_job_log` VALUES ('6605', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:17:15');
INSERT INTO `sys_job_log` VALUES ('6606', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:17:30');
INSERT INTO `sys_job_log` VALUES ('6607', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:17:45');
INSERT INTO `sys_job_log` VALUES ('6608', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:18:00');
INSERT INTO `sys_job_log` VALUES ('6609', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:18:15');
INSERT INTO `sys_job_log` VALUES ('6610', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:18:30');
INSERT INTO `sys_job_log` VALUES ('6611', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:18:45');
INSERT INTO `sys_job_log` VALUES ('6612', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:19:00');
INSERT INTO `sys_job_log` VALUES ('6613', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:19:15');
INSERT INTO `sys_job_log` VALUES ('6614', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:19:30');
INSERT INTO `sys_job_log` VALUES ('6615', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:19:45');
INSERT INTO `sys_job_log` VALUES ('6616', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:20:00');
INSERT INTO `sys_job_log` VALUES ('6617', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:20:15');
INSERT INTO `sys_job_log` VALUES ('6618', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:20:30');
INSERT INTO `sys_job_log` VALUES ('6619', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:20:45');
INSERT INTO `sys_job_log` VALUES ('6620', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:21:00');
INSERT INTO `sys_job_log` VALUES ('6621', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:21:15');
INSERT INTO `sys_job_log` VALUES ('6622', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:21:30');
INSERT INTO `sys_job_log` VALUES ('6623', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:21:45');
INSERT INTO `sys_job_log` VALUES ('6624', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:22:00');
INSERT INTO `sys_job_log` VALUES ('6625', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:22:15');
INSERT INTO `sys_job_log` VALUES ('6626', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:22:30');
INSERT INTO `sys_job_log` VALUES ('6627', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:22:45');
INSERT INTO `sys_job_log` VALUES ('6628', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:23:00');
INSERT INTO `sys_job_log` VALUES ('6629', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:23:15');
INSERT INTO `sys_job_log` VALUES ('6630', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:23:30');
INSERT INTO `sys_job_log` VALUES ('6631', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:23:45');
INSERT INTO `sys_job_log` VALUES ('6632', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:24:00');
INSERT INTO `sys_job_log` VALUES ('6633', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:24:15');
INSERT INTO `sys_job_log` VALUES ('6634', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:24:30');
INSERT INTO `sys_job_log` VALUES ('6635', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:24:45');
INSERT INTO `sys_job_log` VALUES ('6636', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:25:00');
INSERT INTO `sys_job_log` VALUES ('6637', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:25:15');
INSERT INTO `sys_job_log` VALUES ('6638', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:25:30');
INSERT INTO `sys_job_log` VALUES ('6639', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:25:45');
INSERT INTO `sys_job_log` VALUES ('6640', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:26:00');
INSERT INTO `sys_job_log` VALUES ('6641', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:26:15');
INSERT INTO `sys_job_log` VALUES ('6642', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:26:30');
INSERT INTO `sys_job_log` VALUES ('6643', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:26:45');
INSERT INTO `sys_job_log` VALUES ('6644', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:27:00');
INSERT INTO `sys_job_log` VALUES ('6645', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:27:15');
INSERT INTO `sys_job_log` VALUES ('6646', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:27:30');
INSERT INTO `sys_job_log` VALUES ('6647', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:27:45');
INSERT INTO `sys_job_log` VALUES ('6648', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:28:00');
INSERT INTO `sys_job_log` VALUES ('6649', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:28:15');
INSERT INTO `sys_job_log` VALUES ('6650', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:28:30');
INSERT INTO `sys_job_log` VALUES ('6651', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:28:45');
INSERT INTO `sys_job_log` VALUES ('6652', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:29:00');
INSERT INTO `sys_job_log` VALUES ('6653', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:29:15');
INSERT INTO `sys_job_log` VALUES ('6654', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:29:30');
INSERT INTO `sys_job_log` VALUES ('6655', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:29:45');
INSERT INTO `sys_job_log` VALUES ('6656', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:30:00');
INSERT INTO `sys_job_log` VALUES ('6657', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:30:15');
INSERT INTO `sys_job_log` VALUES ('6658', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:30:30');
INSERT INTO `sys_job_log` VALUES ('6659', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:30:45');
INSERT INTO `sys_job_log` VALUES ('6660', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:31:00');
INSERT INTO `sys_job_log` VALUES ('6661', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:31:15');
INSERT INTO `sys_job_log` VALUES ('6662', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:31:30');
INSERT INTO `sys_job_log` VALUES ('6663', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:31:45');
INSERT INTO `sys_job_log` VALUES ('6664', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:32:00');
INSERT INTO `sys_job_log` VALUES ('6665', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:32:15');
INSERT INTO `sys_job_log` VALUES ('6666', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:32:30');
INSERT INTO `sys_job_log` VALUES ('6667', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:32:45');
INSERT INTO `sys_job_log` VALUES ('6668', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:33:00');
INSERT INTO `sys_job_log` VALUES ('6669', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:33:15');
INSERT INTO `sys_job_log` VALUES ('6670', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:33:30');
INSERT INTO `sys_job_log` VALUES ('6671', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:33:45');
INSERT INTO `sys_job_log` VALUES ('6672', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:34:00');
INSERT INTO `sys_job_log` VALUES ('6673', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:34:15');
INSERT INTO `sys_job_log` VALUES ('6674', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:34:30');
INSERT INTO `sys_job_log` VALUES ('6675', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:34:45');
INSERT INTO `sys_job_log` VALUES ('6676', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:35:00');
INSERT INTO `sys_job_log` VALUES ('6677', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:35:15');
INSERT INTO `sys_job_log` VALUES ('6678', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:35:30');
INSERT INTO `sys_job_log` VALUES ('6679', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:35:45');
INSERT INTO `sys_job_log` VALUES ('6680', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:36:00');
INSERT INTO `sys_job_log` VALUES ('6681', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:36:15');
INSERT INTO `sys_job_log` VALUES ('6682', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:36:30');
INSERT INTO `sys_job_log` VALUES ('6683', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:36:45');
INSERT INTO `sys_job_log` VALUES ('6684', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:37:00');
INSERT INTO `sys_job_log` VALUES ('6685', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:37:15');
INSERT INTO `sys_job_log` VALUES ('6686', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:37:30');
INSERT INTO `sys_job_log` VALUES ('6687', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:37:45');
INSERT INTO `sys_job_log` VALUES ('6688', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:38:00');
INSERT INTO `sys_job_log` VALUES ('6689', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:38:15');
INSERT INTO `sys_job_log` VALUES ('6690', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:38:30');
INSERT INTO `sys_job_log` VALUES ('6691', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:38:45');
INSERT INTO `sys_job_log` VALUES ('6692', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:39:00');
INSERT INTO `sys_job_log` VALUES ('6693', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:39:15');
INSERT INTO `sys_job_log` VALUES ('6694', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:39:30');
INSERT INTO `sys_job_log` VALUES ('6695', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:39:45');
INSERT INTO `sys_job_log` VALUES ('6696', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:40:00');
INSERT INTO `sys_job_log` VALUES ('6697', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:40:15');
INSERT INTO `sys_job_log` VALUES ('6698', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:40:30');
INSERT INTO `sys_job_log` VALUES ('6699', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:40:45');
INSERT INTO `sys_job_log` VALUES ('6700', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:41:00');
INSERT INTO `sys_job_log` VALUES ('6701', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:41:15');
INSERT INTO `sys_job_log` VALUES ('6702', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:41:30');
INSERT INTO `sys_job_log` VALUES ('6703', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:41:45');
INSERT INTO `sys_job_log` VALUES ('6704', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:42:00');
INSERT INTO `sys_job_log` VALUES ('6705', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:42:15');
INSERT INTO `sys_job_log` VALUES ('6706', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:42:30');
INSERT INTO `sys_job_log` VALUES ('6707', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:42:45');
INSERT INTO `sys_job_log` VALUES ('6708', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:43:00');
INSERT INTO `sys_job_log` VALUES ('6709', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:43:15');
INSERT INTO `sys_job_log` VALUES ('6710', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:43:30');
INSERT INTO `sys_job_log` VALUES ('6711', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:43:45');
INSERT INTO `sys_job_log` VALUES ('6712', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:44:00');
INSERT INTO `sys_job_log` VALUES ('6713', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:44:15');
INSERT INTO `sys_job_log` VALUES ('6714', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:44:30');
INSERT INTO `sys_job_log` VALUES ('6715', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:44:45');
INSERT INTO `sys_job_log` VALUES ('6716', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:45:00');
INSERT INTO `sys_job_log` VALUES ('6717', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:45:15');
INSERT INTO `sys_job_log` VALUES ('6718', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:45:30');
INSERT INTO `sys_job_log` VALUES ('6719', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:45:45');
INSERT INTO `sys_job_log` VALUES ('6720', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:46:00');
INSERT INTO `sys_job_log` VALUES ('6721', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:46:15');
INSERT INTO `sys_job_log` VALUES ('6722', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:46:30');
INSERT INTO `sys_job_log` VALUES ('6723', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:46:45');
INSERT INTO `sys_job_log` VALUES ('6724', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:47:00');
INSERT INTO `sys_job_log` VALUES ('6725', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:47:15');
INSERT INTO `sys_job_log` VALUES ('6726', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:47:30');
INSERT INTO `sys_job_log` VALUES ('6727', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:47:45');
INSERT INTO `sys_job_log` VALUES ('6728', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:48:00');
INSERT INTO `sys_job_log` VALUES ('6729', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:48:15');
INSERT INTO `sys_job_log` VALUES ('6730', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:48:30');
INSERT INTO `sys_job_log` VALUES ('6731', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:48:45');
INSERT INTO `sys_job_log` VALUES ('6732', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:49:00');
INSERT INTO `sys_job_log` VALUES ('6733', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:49:15');
INSERT INTO `sys_job_log` VALUES ('6734', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:49:30');
INSERT INTO `sys_job_log` VALUES ('6735', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:49:45');
INSERT INTO `sys_job_log` VALUES ('6736', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:50:00');
INSERT INTO `sys_job_log` VALUES ('6737', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:50:15');
INSERT INTO `sys_job_log` VALUES ('6738', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:50:30');
INSERT INTO `sys_job_log` VALUES ('6739', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:50:45');
INSERT INTO `sys_job_log` VALUES ('6740', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:51:00');
INSERT INTO `sys_job_log` VALUES ('6741', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:51:15');
INSERT INTO `sys_job_log` VALUES ('6742', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:51:30');
INSERT INTO `sys_job_log` VALUES ('6743', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:51:45');
INSERT INTO `sys_job_log` VALUES ('6744', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:52:00');
INSERT INTO `sys_job_log` VALUES ('6745', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:52:15');
INSERT INTO `sys_job_log` VALUES ('6746', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:52:30');
INSERT INTO `sys_job_log` VALUES ('6747', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:52:45');
INSERT INTO `sys_job_log` VALUES ('6748', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:53:00');
INSERT INTO `sys_job_log` VALUES ('6749', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:53:15');
INSERT INTO `sys_job_log` VALUES ('6750', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:53:30');
INSERT INTO `sys_job_log` VALUES ('6751', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:53:45');
INSERT INTO `sys_job_log` VALUES ('6752', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:54:00');
INSERT INTO `sys_job_log` VALUES ('6753', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:54:15');
INSERT INTO `sys_job_log` VALUES ('6754', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:54:30');
INSERT INTO `sys_job_log` VALUES ('6755', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:54:45');
INSERT INTO `sys_job_log` VALUES ('6756', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:55:00');
INSERT INTO `sys_job_log` VALUES ('6757', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:55:15');
INSERT INTO `sys_job_log` VALUES ('6758', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:55:30');
INSERT INTO `sys_job_log` VALUES ('6759', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:55:45');
INSERT INTO `sys_job_log` VALUES ('6760', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:56:00');
INSERT INTO `sys_job_log` VALUES ('6761', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:56:15');
INSERT INTO `sys_job_log` VALUES ('6762', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:56:30');
INSERT INTO `sys_job_log` VALUES ('6763', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:56:45');
INSERT INTO `sys_job_log` VALUES ('6764', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:57:00');
INSERT INTO `sys_job_log` VALUES ('6765', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:57:15');
INSERT INTO `sys_job_log` VALUES ('6766', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:57:30');
INSERT INTO `sys_job_log` VALUES ('6767', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:57:45');
INSERT INTO `sys_job_log` VALUES ('6768', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:58:00');
INSERT INTO `sys_job_log` VALUES ('6769', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 10:58:15');
INSERT INTO `sys_job_log` VALUES ('6770', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:58:30');
INSERT INTO `sys_job_log` VALUES ('6771', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:58:45');
INSERT INTO `sys_job_log` VALUES ('6772', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:59:00');
INSERT INTO `sys_job_log` VALUES ('6773', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:59:15');
INSERT INTO `sys_job_log` VALUES ('6774', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:59:30');
INSERT INTO `sys_job_log` VALUES ('6775', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 10:59:45');
INSERT INTO `sys_job_log` VALUES ('6776', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:00:00');
INSERT INTO `sys_job_log` VALUES ('6777', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:00:15');
INSERT INTO `sys_job_log` VALUES ('6778', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:00:30');
INSERT INTO `sys_job_log` VALUES ('6779', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:00:45');
INSERT INTO `sys_job_log` VALUES ('6780', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:01:00');
INSERT INTO `sys_job_log` VALUES ('6781', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:01:15');
INSERT INTO `sys_job_log` VALUES ('6782', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:01:30');
INSERT INTO `sys_job_log` VALUES ('6783', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:01:45');
INSERT INTO `sys_job_log` VALUES ('6784', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:02:00');
INSERT INTO `sys_job_log` VALUES ('6785', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:02:15');
INSERT INTO `sys_job_log` VALUES ('6786', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:02:30');
INSERT INTO `sys_job_log` VALUES ('6787', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:02:45');
INSERT INTO `sys_job_log` VALUES ('6788', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:03:00');
INSERT INTO `sys_job_log` VALUES ('6789', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:03:15');
INSERT INTO `sys_job_log` VALUES ('6790', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:03:30');
INSERT INTO `sys_job_log` VALUES ('6791', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:03:45');
INSERT INTO `sys_job_log` VALUES ('6792', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:04:00');
INSERT INTO `sys_job_log` VALUES ('6793', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:04:15');
INSERT INTO `sys_job_log` VALUES ('6794', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:04:30');
INSERT INTO `sys_job_log` VALUES ('6795', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:04:45');
INSERT INTO `sys_job_log` VALUES ('6796', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:05:00');
INSERT INTO `sys_job_log` VALUES ('6797', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:05:15');
INSERT INTO `sys_job_log` VALUES ('6798', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:05:30');
INSERT INTO `sys_job_log` VALUES ('6799', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:05:45');
INSERT INTO `sys_job_log` VALUES ('6800', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:06:00');
INSERT INTO `sys_job_log` VALUES ('6801', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:06:15');
INSERT INTO `sys_job_log` VALUES ('6802', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:06:30');
INSERT INTO `sys_job_log` VALUES ('6803', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:06:45');
INSERT INTO `sys_job_log` VALUES ('6804', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:07:00');
INSERT INTO `sys_job_log` VALUES ('6805', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:07:15');
INSERT INTO `sys_job_log` VALUES ('6806', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:07:30');
INSERT INTO `sys_job_log` VALUES ('6807', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:07:45');
INSERT INTO `sys_job_log` VALUES ('6808', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:08:00');
INSERT INTO `sys_job_log` VALUES ('6809', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:08:15');
INSERT INTO `sys_job_log` VALUES ('6810', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:08:30');
INSERT INTO `sys_job_log` VALUES ('6811', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:08:45');
INSERT INTO `sys_job_log` VALUES ('6812', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:09:00');
INSERT INTO `sys_job_log` VALUES ('6813', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:09:15');
INSERT INTO `sys_job_log` VALUES ('6814', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:09:30');
INSERT INTO `sys_job_log` VALUES ('6815', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:09:45');
INSERT INTO `sys_job_log` VALUES ('6816', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:10:00');
INSERT INTO `sys_job_log` VALUES ('6817', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:10:15');
INSERT INTO `sys_job_log` VALUES ('6818', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:10:30');
INSERT INTO `sys_job_log` VALUES ('6819', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:10:45');
INSERT INTO `sys_job_log` VALUES ('6820', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:11:00');
INSERT INTO `sys_job_log` VALUES ('6821', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:11:15');
INSERT INTO `sys_job_log` VALUES ('6822', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:11:30');
INSERT INTO `sys_job_log` VALUES ('6823', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:11:45');
INSERT INTO `sys_job_log` VALUES ('6824', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:12:00');
INSERT INTO `sys_job_log` VALUES ('6825', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:12:15');
INSERT INTO `sys_job_log` VALUES ('6826', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:12:30');
INSERT INTO `sys_job_log` VALUES ('6827', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:12:45');
INSERT INTO `sys_job_log` VALUES ('6828', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:13:00');
INSERT INTO `sys_job_log` VALUES ('6829', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:13:15');
INSERT INTO `sys_job_log` VALUES ('6830', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:13:30');
INSERT INTO `sys_job_log` VALUES ('6831', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:13:45');
INSERT INTO `sys_job_log` VALUES ('6832', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:14:00');
INSERT INTO `sys_job_log` VALUES ('6833', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:14:15');
INSERT INTO `sys_job_log` VALUES ('6834', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:14:30');
INSERT INTO `sys_job_log` VALUES ('6835', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:14:45');
INSERT INTO `sys_job_log` VALUES ('6836', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:15:00');
INSERT INTO `sys_job_log` VALUES ('6837', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:15:15');
INSERT INTO `sys_job_log` VALUES ('6838', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:15:30');
INSERT INTO `sys_job_log` VALUES ('6839', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:15:45');
INSERT INTO `sys_job_log` VALUES ('6840', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:16:00');
INSERT INTO `sys_job_log` VALUES ('6841', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:16:15');
INSERT INTO `sys_job_log` VALUES ('6842', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:16:30');
INSERT INTO `sys_job_log` VALUES ('6843', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:16:45');
INSERT INTO `sys_job_log` VALUES ('6844', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:17:00');
INSERT INTO `sys_job_log` VALUES ('6845', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:17:15');
INSERT INTO `sys_job_log` VALUES ('6846', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:17:30');
INSERT INTO `sys_job_log` VALUES ('6847', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:17:45');
INSERT INTO `sys_job_log` VALUES ('6848', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:18:00');
INSERT INTO `sys_job_log` VALUES ('6849', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:18:15');
INSERT INTO `sys_job_log` VALUES ('6850', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:18:30');
INSERT INTO `sys_job_log` VALUES ('6851', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:18:45');
INSERT INTO `sys_job_log` VALUES ('6852', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:19:00');
INSERT INTO `sys_job_log` VALUES ('6853', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:19:15');
INSERT INTO `sys_job_log` VALUES ('6854', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:19:30');
INSERT INTO `sys_job_log` VALUES ('6855', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:19:45');
INSERT INTO `sys_job_log` VALUES ('6856', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:20:00');
INSERT INTO `sys_job_log` VALUES ('6857', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:20:15');
INSERT INTO `sys_job_log` VALUES ('6858', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:20:30');
INSERT INTO `sys_job_log` VALUES ('6859', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:20:45');
INSERT INTO `sys_job_log` VALUES ('6860', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:21:00');
INSERT INTO `sys_job_log` VALUES ('6861', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:21:15');
INSERT INTO `sys_job_log` VALUES ('6862', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:21:30');
INSERT INTO `sys_job_log` VALUES ('6863', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:21:45');
INSERT INTO `sys_job_log` VALUES ('6864', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:22:00');
INSERT INTO `sys_job_log` VALUES ('6865', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:22:15');
INSERT INTO `sys_job_log` VALUES ('6866', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:22:30');
INSERT INTO `sys_job_log` VALUES ('6867', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:22:45');
INSERT INTO `sys_job_log` VALUES ('6868', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:23:00');
INSERT INTO `sys_job_log` VALUES ('6869', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:23:15');
INSERT INTO `sys_job_log` VALUES ('6870', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:23:30');
INSERT INTO `sys_job_log` VALUES ('6871', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:23:45');
INSERT INTO `sys_job_log` VALUES ('6872', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:24:00');
INSERT INTO `sys_job_log` VALUES ('6873', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:24:15');
INSERT INTO `sys_job_log` VALUES ('6874', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:24:30');
INSERT INTO `sys_job_log` VALUES ('6875', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:24:45');
INSERT INTO `sys_job_log` VALUES ('6876', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:25:00');
INSERT INTO `sys_job_log` VALUES ('6877', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:25:15');
INSERT INTO `sys_job_log` VALUES ('6878', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:25:30');
INSERT INTO `sys_job_log` VALUES ('6879', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:25:45');
INSERT INTO `sys_job_log` VALUES ('6880', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:26:00');
INSERT INTO `sys_job_log` VALUES ('6881', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:26:15');
INSERT INTO `sys_job_log` VALUES ('6882', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:26:30');
INSERT INTO `sys_job_log` VALUES ('6883', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:26:45');
INSERT INTO `sys_job_log` VALUES ('6884', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:27:00');
INSERT INTO `sys_job_log` VALUES ('6885', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:27:15');
INSERT INTO `sys_job_log` VALUES ('6886', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:27:30');
INSERT INTO `sys_job_log` VALUES ('6887', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:27:45');
INSERT INTO `sys_job_log` VALUES ('6888', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:28:00');
INSERT INTO `sys_job_log` VALUES ('6889', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:28:15');
INSERT INTO `sys_job_log` VALUES ('6890', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:28:30');
INSERT INTO `sys_job_log` VALUES ('6891', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:28:45');
INSERT INTO `sys_job_log` VALUES ('6892', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:29:00');
INSERT INTO `sys_job_log` VALUES ('6893', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:29:15');
INSERT INTO `sys_job_log` VALUES ('6894', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:29:30');
INSERT INTO `sys_job_log` VALUES ('6895', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:29:45');
INSERT INTO `sys_job_log` VALUES ('6896', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:30:00');
INSERT INTO `sys_job_log` VALUES ('6897', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:30:15');
INSERT INTO `sys_job_log` VALUES ('6898', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:30:30');
INSERT INTO `sys_job_log` VALUES ('6899', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:30:45');
INSERT INTO `sys_job_log` VALUES ('6900', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:31:00');
INSERT INTO `sys_job_log` VALUES ('6901', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:31:15');
INSERT INTO `sys_job_log` VALUES ('6902', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:31:30');
INSERT INTO `sys_job_log` VALUES ('6903', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:31:45');
INSERT INTO `sys_job_log` VALUES ('6904', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:32:00');
INSERT INTO `sys_job_log` VALUES ('6905', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:32:15');
INSERT INTO `sys_job_log` VALUES ('6906', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:32:30');
INSERT INTO `sys_job_log` VALUES ('6907', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:32:45');
INSERT INTO `sys_job_log` VALUES ('6908', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:33:00');
INSERT INTO `sys_job_log` VALUES ('6909', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:33:15');
INSERT INTO `sys_job_log` VALUES ('6910', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:33:30');
INSERT INTO `sys_job_log` VALUES ('6911', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:33:45');
INSERT INTO `sys_job_log` VALUES ('6912', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:34:00');
INSERT INTO `sys_job_log` VALUES ('6913', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:34:15');
INSERT INTO `sys_job_log` VALUES ('6914', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:34:30');
INSERT INTO `sys_job_log` VALUES ('6915', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:34:45');
INSERT INTO `sys_job_log` VALUES ('6916', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:35:00');
INSERT INTO `sys_job_log` VALUES ('6917', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:35:15');
INSERT INTO `sys_job_log` VALUES ('6918', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:35:30');
INSERT INTO `sys_job_log` VALUES ('6919', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:35:45');
INSERT INTO `sys_job_log` VALUES ('6920', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:36:00');
INSERT INTO `sys_job_log` VALUES ('6921', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:36:15');
INSERT INTO `sys_job_log` VALUES ('6922', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:36:30');
INSERT INTO `sys_job_log` VALUES ('6923', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:36:45');
INSERT INTO `sys_job_log` VALUES ('6924', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:37:00');
INSERT INTO `sys_job_log` VALUES ('6925', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:37:15');
INSERT INTO `sys_job_log` VALUES ('6926', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:37:30');
INSERT INTO `sys_job_log` VALUES ('6927', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:37:45');
INSERT INTO `sys_job_log` VALUES ('6928', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:38:00');
INSERT INTO `sys_job_log` VALUES ('6929', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:38:15');
INSERT INTO `sys_job_log` VALUES ('6930', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:38:30');
INSERT INTO `sys_job_log` VALUES ('6931', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:38:45');
INSERT INTO `sys_job_log` VALUES ('6932', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:39:00');
INSERT INTO `sys_job_log` VALUES ('6933', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:39:15');
INSERT INTO `sys_job_log` VALUES ('6934', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:39:30');
INSERT INTO `sys_job_log` VALUES ('6935', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:39:45');
INSERT INTO `sys_job_log` VALUES ('6936', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:40:00');
INSERT INTO `sys_job_log` VALUES ('6937', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:40:15');
INSERT INTO `sys_job_log` VALUES ('6938', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:40:30');
INSERT INTO `sys_job_log` VALUES ('6939', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:40:45');
INSERT INTO `sys_job_log` VALUES ('6940', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:41:00');
INSERT INTO `sys_job_log` VALUES ('6941', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:41:15');
INSERT INTO `sys_job_log` VALUES ('6942', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:41:30');
INSERT INTO `sys_job_log` VALUES ('6943', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:41:45');
INSERT INTO `sys_job_log` VALUES ('6944', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:42:00');
INSERT INTO `sys_job_log` VALUES ('6945', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:42:15');
INSERT INTO `sys_job_log` VALUES ('6946', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:42:30');
INSERT INTO `sys_job_log` VALUES ('6947', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:42:45');
INSERT INTO `sys_job_log` VALUES ('6948', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:43:00');
INSERT INTO `sys_job_log` VALUES ('6949', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:43:15');
INSERT INTO `sys_job_log` VALUES ('6950', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:43:30');
INSERT INTO `sys_job_log` VALUES ('6951', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:43:45');
INSERT INTO `sys_job_log` VALUES ('6952', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:44:00');
INSERT INTO `sys_job_log` VALUES ('6953', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:44:15');
INSERT INTO `sys_job_log` VALUES ('6954', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:44:30');
INSERT INTO `sys_job_log` VALUES ('6955', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:44:45');
INSERT INTO `sys_job_log` VALUES ('6956', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:45:00');
INSERT INTO `sys_job_log` VALUES ('6957', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:45:15');
INSERT INTO `sys_job_log` VALUES ('6958', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:45:30');
INSERT INTO `sys_job_log` VALUES ('6959', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:45:45');
INSERT INTO `sys_job_log` VALUES ('6960', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:46:00');
INSERT INTO `sys_job_log` VALUES ('6961', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:46:15');
INSERT INTO `sys_job_log` VALUES ('6962', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:46:30');
INSERT INTO `sys_job_log` VALUES ('6963', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:46:45');
INSERT INTO `sys_job_log` VALUES ('6964', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:47:00');
INSERT INTO `sys_job_log` VALUES ('6965', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:47:15');
INSERT INTO `sys_job_log` VALUES ('6966', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:47:30');
INSERT INTO `sys_job_log` VALUES ('6967', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:47:45');
INSERT INTO `sys_job_log` VALUES ('6968', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:48:00');
INSERT INTO `sys_job_log` VALUES ('6969', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:48:15');
INSERT INTO `sys_job_log` VALUES ('6970', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:48:30');
INSERT INTO `sys_job_log` VALUES ('6971', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:48:45');
INSERT INTO `sys_job_log` VALUES ('6972', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:49:00');
INSERT INTO `sys_job_log` VALUES ('6973', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:49:15');
INSERT INTO `sys_job_log` VALUES ('6974', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:49:30');
INSERT INTO `sys_job_log` VALUES ('6975', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:49:45');
INSERT INTO `sys_job_log` VALUES ('6976', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:50:00');
INSERT INTO `sys_job_log` VALUES ('6977', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:50:15');
INSERT INTO `sys_job_log` VALUES ('6978', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:50:30');
INSERT INTO `sys_job_log` VALUES ('6979', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:50:45');
INSERT INTO `sys_job_log` VALUES ('6980', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:51:00');
INSERT INTO `sys_job_log` VALUES ('6981', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:51:15');
INSERT INTO `sys_job_log` VALUES ('6982', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:51:30');
INSERT INTO `sys_job_log` VALUES ('6983', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:51:45');
INSERT INTO `sys_job_log` VALUES ('6984', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:52:00');
INSERT INTO `sys_job_log` VALUES ('6985', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:52:15');
INSERT INTO `sys_job_log` VALUES ('6986', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:52:30');
INSERT INTO `sys_job_log` VALUES ('6987', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:52:45');
INSERT INTO `sys_job_log` VALUES ('6988', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:53:00');
INSERT INTO `sys_job_log` VALUES ('6989', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:53:15');
INSERT INTO `sys_job_log` VALUES ('6990', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:53:30');
INSERT INTO `sys_job_log` VALUES ('6991', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:53:45');
INSERT INTO `sys_job_log` VALUES ('6992', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:54:00');
INSERT INTO `sys_job_log` VALUES ('6993', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:54:15');
INSERT INTO `sys_job_log` VALUES ('6994', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:54:30');
INSERT INTO `sys_job_log` VALUES ('6995', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:54:45');
INSERT INTO `sys_job_log` VALUES ('6996', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:55:00');
INSERT INTO `sys_job_log` VALUES ('6997', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:55:15');
INSERT INTO `sys_job_log` VALUES ('6998', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:55:30');
INSERT INTO `sys_job_log` VALUES ('6999', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:55:45');
INSERT INTO `sys_job_log` VALUES ('7000', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:56:00');
INSERT INTO `sys_job_log` VALUES ('7001', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:56:15');
INSERT INTO `sys_job_log` VALUES ('7002', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:56:30');
INSERT INTO `sys_job_log` VALUES ('7003', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:56:45');
INSERT INTO `sys_job_log` VALUES ('7004', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:57:00');
INSERT INTO `sys_job_log` VALUES ('7005', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:57:15');
INSERT INTO `sys_job_log` VALUES ('7006', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:57:30');
INSERT INTO `sys_job_log` VALUES ('7007', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:57:45');
INSERT INTO `sys_job_log` VALUES ('7008', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:58:00');
INSERT INTO `sys_job_log` VALUES ('7009', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:58:15');
INSERT INTO `sys_job_log` VALUES ('7010', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:58:30');
INSERT INTO `sys_job_log` VALUES ('7011', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:58:45');
INSERT INTO `sys_job_log` VALUES ('7012', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:59:00');
INSERT INTO `sys_job_log` VALUES ('7013', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:59:15');
INSERT INTO `sys_job_log` VALUES ('7014', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 11:59:30');
INSERT INTO `sys_job_log` VALUES ('7015', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 11:59:45');
INSERT INTO `sys_job_log` VALUES ('7016', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:00:00');
INSERT INTO `sys_job_log` VALUES ('7017', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:00:15');
INSERT INTO `sys_job_log` VALUES ('7018', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:00:30');
INSERT INTO `sys_job_log` VALUES ('7019', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:00:45');
INSERT INTO `sys_job_log` VALUES ('7020', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:01:00');
INSERT INTO `sys_job_log` VALUES ('7021', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:01:15');
INSERT INTO `sys_job_log` VALUES ('7022', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:01:30');
INSERT INTO `sys_job_log` VALUES ('7023', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:01:45');
INSERT INTO `sys_job_log` VALUES ('7024', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:02:00');
INSERT INTO `sys_job_log` VALUES ('7025', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:02:15');
INSERT INTO `sys_job_log` VALUES ('7026', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:02:30');
INSERT INTO `sys_job_log` VALUES ('7027', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:02:45');
INSERT INTO `sys_job_log` VALUES ('7028', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:03:00');
INSERT INTO `sys_job_log` VALUES ('7029', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:03:15');
INSERT INTO `sys_job_log` VALUES ('7030', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:03:30');
INSERT INTO `sys_job_log` VALUES ('7031', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:03:45');
INSERT INTO `sys_job_log` VALUES ('7032', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:04:00');
INSERT INTO `sys_job_log` VALUES ('7033', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:04:15');
INSERT INTO `sys_job_log` VALUES ('7034', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:04:30');
INSERT INTO `sys_job_log` VALUES ('7035', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:04:45');
INSERT INTO `sys_job_log` VALUES ('7036', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:05:00');
INSERT INTO `sys_job_log` VALUES ('7037', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:05:15');
INSERT INTO `sys_job_log` VALUES ('7038', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:05:30');
INSERT INTO `sys_job_log` VALUES ('7039', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:05:45');
INSERT INTO `sys_job_log` VALUES ('7040', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:06:00');
INSERT INTO `sys_job_log` VALUES ('7041', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:06:15');
INSERT INTO `sys_job_log` VALUES ('7042', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:06:30');
INSERT INTO `sys_job_log` VALUES ('7043', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:06:45');
INSERT INTO `sys_job_log` VALUES ('7044', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:07:00');
INSERT INTO `sys_job_log` VALUES ('7045', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:07:15');
INSERT INTO `sys_job_log` VALUES ('7046', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:07:30');
INSERT INTO `sys_job_log` VALUES ('7047', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:07:45');
INSERT INTO `sys_job_log` VALUES ('7048', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:08:00');
INSERT INTO `sys_job_log` VALUES ('7049', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:08:15');
INSERT INTO `sys_job_log` VALUES ('7050', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:08:30');
INSERT INTO `sys_job_log` VALUES ('7051', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:08:45');
INSERT INTO `sys_job_log` VALUES ('7052', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:09:00');
INSERT INTO `sys_job_log` VALUES ('7053', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:09:15');
INSERT INTO `sys_job_log` VALUES ('7054', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:09:30');
INSERT INTO `sys_job_log` VALUES ('7055', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:09:45');
INSERT INTO `sys_job_log` VALUES ('7056', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:10:00');
INSERT INTO `sys_job_log` VALUES ('7057', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:10:15');
INSERT INTO `sys_job_log` VALUES ('7058', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:10:30');
INSERT INTO `sys_job_log` VALUES ('7059', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:10:45');
INSERT INTO `sys_job_log` VALUES ('7060', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:11:00');
INSERT INTO `sys_job_log` VALUES ('7061', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:11:15');
INSERT INTO `sys_job_log` VALUES ('7062', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:11:30');
INSERT INTO `sys_job_log` VALUES ('7063', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:11:45');
INSERT INTO `sys_job_log` VALUES ('7064', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:12:00');
INSERT INTO `sys_job_log` VALUES ('7065', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:12:15');
INSERT INTO `sys_job_log` VALUES ('7066', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:12:30');
INSERT INTO `sys_job_log` VALUES ('7067', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:12:45');
INSERT INTO `sys_job_log` VALUES ('7068', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:13:00');
INSERT INTO `sys_job_log` VALUES ('7069', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:13:15');
INSERT INTO `sys_job_log` VALUES ('7070', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:13:30');
INSERT INTO `sys_job_log` VALUES ('7071', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:13:45');
INSERT INTO `sys_job_log` VALUES ('7072', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:14:00');
INSERT INTO `sys_job_log` VALUES ('7073', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:14:15');
INSERT INTO `sys_job_log` VALUES ('7074', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:14:30');
INSERT INTO `sys_job_log` VALUES ('7075', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:14:45');
INSERT INTO `sys_job_log` VALUES ('7076', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:15:00');
INSERT INTO `sys_job_log` VALUES ('7077', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:15:15');
INSERT INTO `sys_job_log` VALUES ('7078', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:15:30');
INSERT INTO `sys_job_log` VALUES ('7079', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:15:45');
INSERT INTO `sys_job_log` VALUES ('7080', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:16:00');
INSERT INTO `sys_job_log` VALUES ('7081', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:16:15');
INSERT INTO `sys_job_log` VALUES ('7082', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:16:30');
INSERT INTO `sys_job_log` VALUES ('7083', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:16:45');
INSERT INTO `sys_job_log` VALUES ('7084', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:17:00');
INSERT INTO `sys_job_log` VALUES ('7085', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:17:15');
INSERT INTO `sys_job_log` VALUES ('7086', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:17:30');
INSERT INTO `sys_job_log` VALUES ('7087', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:17:45');
INSERT INTO `sys_job_log` VALUES ('7088', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:18:00');
INSERT INTO `sys_job_log` VALUES ('7089', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:18:15');
INSERT INTO `sys_job_log` VALUES ('7090', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:18:30');
INSERT INTO `sys_job_log` VALUES ('7091', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:18:45');
INSERT INTO `sys_job_log` VALUES ('7092', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:19:00');
INSERT INTO `sys_job_log` VALUES ('7093', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:19:15');
INSERT INTO `sys_job_log` VALUES ('7094', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:19:30');
INSERT INTO `sys_job_log` VALUES ('7095', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:19:45');
INSERT INTO `sys_job_log` VALUES ('7096', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:20:00');
INSERT INTO `sys_job_log` VALUES ('7097', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:20:15');
INSERT INTO `sys_job_log` VALUES ('7098', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:20:30');
INSERT INTO `sys_job_log` VALUES ('7099', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:20:45');
INSERT INTO `sys_job_log` VALUES ('7100', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:21:00');
INSERT INTO `sys_job_log` VALUES ('7101', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:21:15');
INSERT INTO `sys_job_log` VALUES ('7102', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:21:30');
INSERT INTO `sys_job_log` VALUES ('7103', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:21:45');
INSERT INTO `sys_job_log` VALUES ('7104', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:22:00');
INSERT INTO `sys_job_log` VALUES ('7105', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:22:15');
INSERT INTO `sys_job_log` VALUES ('7106', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:22:30');
INSERT INTO `sys_job_log` VALUES ('7107', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:22:45');
INSERT INTO `sys_job_log` VALUES ('7108', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:23:00');
INSERT INTO `sys_job_log` VALUES ('7109', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:23:15');
INSERT INTO `sys_job_log` VALUES ('7110', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:23:30');
INSERT INTO `sys_job_log` VALUES ('7111', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:23:45');
INSERT INTO `sys_job_log` VALUES ('7112', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:24:00');
INSERT INTO `sys_job_log` VALUES ('7113', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:24:15');
INSERT INTO `sys_job_log` VALUES ('7114', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:24:30');
INSERT INTO `sys_job_log` VALUES ('7115', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:24:45');
INSERT INTO `sys_job_log` VALUES ('7116', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:25:00');
INSERT INTO `sys_job_log` VALUES ('7117', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:25:15');
INSERT INTO `sys_job_log` VALUES ('7118', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:25:30');
INSERT INTO `sys_job_log` VALUES ('7119', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:25:45');
INSERT INTO `sys_job_log` VALUES ('7120', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:26:00');
INSERT INTO `sys_job_log` VALUES ('7121', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:26:15');
INSERT INTO `sys_job_log` VALUES ('7122', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:26:30');
INSERT INTO `sys_job_log` VALUES ('7123', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:26:45');
INSERT INTO `sys_job_log` VALUES ('7124', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:27:00');
INSERT INTO `sys_job_log` VALUES ('7125', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:27:15');
INSERT INTO `sys_job_log` VALUES ('7126', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:27:30');
INSERT INTO `sys_job_log` VALUES ('7127', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:27:45');
INSERT INTO `sys_job_log` VALUES ('7128', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:28:00');
INSERT INTO `sys_job_log` VALUES ('7129', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:28:15');
INSERT INTO `sys_job_log` VALUES ('7130', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:28:30');
INSERT INTO `sys_job_log` VALUES ('7131', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:28:45');
INSERT INTO `sys_job_log` VALUES ('7132', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:29:00');
INSERT INTO `sys_job_log` VALUES ('7133', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:29:15');
INSERT INTO `sys_job_log` VALUES ('7134', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:29:30');
INSERT INTO `sys_job_log` VALUES ('7135', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:29:45');
INSERT INTO `sys_job_log` VALUES ('7136', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:30:00');
INSERT INTO `sys_job_log` VALUES ('7137', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:30:15');
INSERT INTO `sys_job_log` VALUES ('7138', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:30:30');
INSERT INTO `sys_job_log` VALUES ('7139', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:30:45');
INSERT INTO `sys_job_log` VALUES ('7140', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:31:00');
INSERT INTO `sys_job_log` VALUES ('7141', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:31:15');
INSERT INTO `sys_job_log` VALUES ('7142', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:31:30');
INSERT INTO `sys_job_log` VALUES ('7143', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:31:45');
INSERT INTO `sys_job_log` VALUES ('7144', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:32:00');
INSERT INTO `sys_job_log` VALUES ('7145', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:32:15');
INSERT INTO `sys_job_log` VALUES ('7146', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:32:30');
INSERT INTO `sys_job_log` VALUES ('7147', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:32:45');
INSERT INTO `sys_job_log` VALUES ('7148', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:33:00');
INSERT INTO `sys_job_log` VALUES ('7149', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:33:15');
INSERT INTO `sys_job_log` VALUES ('7150', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:33:30');
INSERT INTO `sys_job_log` VALUES ('7151', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:33:45');
INSERT INTO `sys_job_log` VALUES ('7152', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:34:00');
INSERT INTO `sys_job_log` VALUES ('7153', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:34:15');
INSERT INTO `sys_job_log` VALUES ('7154', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:34:30');
INSERT INTO `sys_job_log` VALUES ('7155', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:34:45');
INSERT INTO `sys_job_log` VALUES ('7156', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:35:00');
INSERT INTO `sys_job_log` VALUES ('7157', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:35:15');
INSERT INTO `sys_job_log` VALUES ('7158', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:35:30');
INSERT INTO `sys_job_log` VALUES ('7159', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:35:45');
INSERT INTO `sys_job_log` VALUES ('7160', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:36:00');
INSERT INTO `sys_job_log` VALUES ('7161', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:36:15');
INSERT INTO `sys_job_log` VALUES ('7162', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:36:30');
INSERT INTO `sys_job_log` VALUES ('7163', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:36:45');
INSERT INTO `sys_job_log` VALUES ('7164', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:37:00');
INSERT INTO `sys_job_log` VALUES ('7165', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:37:15');
INSERT INTO `sys_job_log` VALUES ('7166', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:37:30');
INSERT INTO `sys_job_log` VALUES ('7167', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:37:45');
INSERT INTO `sys_job_log` VALUES ('7168', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:38:00');
INSERT INTO `sys_job_log` VALUES ('7169', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:38:15');
INSERT INTO `sys_job_log` VALUES ('7170', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:38:30');
INSERT INTO `sys_job_log` VALUES ('7171', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:38:45');
INSERT INTO `sys_job_log` VALUES ('7172', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:39:00');
INSERT INTO `sys_job_log` VALUES ('7173', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:39:15');
INSERT INTO `sys_job_log` VALUES ('7174', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:39:30');
INSERT INTO `sys_job_log` VALUES ('7175', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:39:45');
INSERT INTO `sys_job_log` VALUES ('7176', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:40:00');
INSERT INTO `sys_job_log` VALUES ('7177', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:40:15');
INSERT INTO `sys_job_log` VALUES ('7178', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:40:30');
INSERT INTO `sys_job_log` VALUES ('7179', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:40:45');
INSERT INTO `sys_job_log` VALUES ('7180', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:41:00');
INSERT INTO `sys_job_log` VALUES ('7181', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:41:15');
INSERT INTO `sys_job_log` VALUES ('7182', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:41:30');
INSERT INTO `sys_job_log` VALUES ('7183', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:41:45');
INSERT INTO `sys_job_log` VALUES ('7184', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:42:00');
INSERT INTO `sys_job_log` VALUES ('7185', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:42:15');
INSERT INTO `sys_job_log` VALUES ('7186', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:42:30');
INSERT INTO `sys_job_log` VALUES ('7187', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:42:45');
INSERT INTO `sys_job_log` VALUES ('7188', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:43:00');
INSERT INTO `sys_job_log` VALUES ('7189', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:43:15');
INSERT INTO `sys_job_log` VALUES ('7190', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:43:30');
INSERT INTO `sys_job_log` VALUES ('7191', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:43:45');
INSERT INTO `sys_job_log` VALUES ('7192', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:44:00');
INSERT INTO `sys_job_log` VALUES ('7193', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:44:15');
INSERT INTO `sys_job_log` VALUES ('7194', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:44:30');
INSERT INTO `sys_job_log` VALUES ('7195', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:44:45');
INSERT INTO `sys_job_log` VALUES ('7196', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:45:00');
INSERT INTO `sys_job_log` VALUES ('7197', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:45:15');
INSERT INTO `sys_job_log` VALUES ('7198', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:45:30');
INSERT INTO `sys_job_log` VALUES ('7199', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:45:45');
INSERT INTO `sys_job_log` VALUES ('7200', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:46:00');
INSERT INTO `sys_job_log` VALUES ('7201', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:46:15');
INSERT INTO `sys_job_log` VALUES ('7202', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:46:30');
INSERT INTO `sys_job_log` VALUES ('7203', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:46:45');
INSERT INTO `sys_job_log` VALUES ('7204', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:47:00');
INSERT INTO `sys_job_log` VALUES ('7205', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:47:15');
INSERT INTO `sys_job_log` VALUES ('7206', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:47:30');
INSERT INTO `sys_job_log` VALUES ('7207', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:47:45');
INSERT INTO `sys_job_log` VALUES ('7208', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:48:00');
INSERT INTO `sys_job_log` VALUES ('7209', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:48:15');
INSERT INTO `sys_job_log` VALUES ('7210', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:48:30');
INSERT INTO `sys_job_log` VALUES ('7211', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:48:45');
INSERT INTO `sys_job_log` VALUES ('7212', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:49:00');
INSERT INTO `sys_job_log` VALUES ('7213', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:49:15');
INSERT INTO `sys_job_log` VALUES ('7214', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:49:30');
INSERT INTO `sys_job_log` VALUES ('7215', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:49:45');
INSERT INTO `sys_job_log` VALUES ('7216', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:50:00');
INSERT INTO `sys_job_log` VALUES ('7217', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:50:15');
INSERT INTO `sys_job_log` VALUES ('7218', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:50:30');
INSERT INTO `sys_job_log` VALUES ('7219', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:50:45');
INSERT INTO `sys_job_log` VALUES ('7220', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:51:00');
INSERT INTO `sys_job_log` VALUES ('7221', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:51:15');
INSERT INTO `sys_job_log` VALUES ('7222', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:51:30');
INSERT INTO `sys_job_log` VALUES ('7223', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:51:45');
INSERT INTO `sys_job_log` VALUES ('7224', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:52:00');
INSERT INTO `sys_job_log` VALUES ('7225', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:52:15');
INSERT INTO `sys_job_log` VALUES ('7226', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:52:30');
INSERT INTO `sys_job_log` VALUES ('7227', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:52:45');
INSERT INTO `sys_job_log` VALUES ('7228', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:53:00');
INSERT INTO `sys_job_log` VALUES ('7229', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:53:15');
INSERT INTO `sys_job_log` VALUES ('7230', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:53:30');
INSERT INTO `sys_job_log` VALUES ('7231', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:53:45');
INSERT INTO `sys_job_log` VALUES ('7232', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:54:00');
INSERT INTO `sys_job_log` VALUES ('7233', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:54:15');
INSERT INTO `sys_job_log` VALUES ('7234', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:54:30');
INSERT INTO `sys_job_log` VALUES ('7235', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:54:45');
INSERT INTO `sys_job_log` VALUES ('7236', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:55:00');
INSERT INTO `sys_job_log` VALUES ('7237', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:55:15');
INSERT INTO `sys_job_log` VALUES ('7238', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:55:30');
INSERT INTO `sys_job_log` VALUES ('7239', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:55:45');
INSERT INTO `sys_job_log` VALUES ('7240', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:56:00');
INSERT INTO `sys_job_log` VALUES ('7241', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:56:15');
INSERT INTO `sys_job_log` VALUES ('7242', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:56:30');
INSERT INTO `sys_job_log` VALUES ('7243', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:56:45');
INSERT INTO `sys_job_log` VALUES ('7244', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:57:00');
INSERT INTO `sys_job_log` VALUES ('7245', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:57:15');
INSERT INTO `sys_job_log` VALUES ('7246', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:57:30');
INSERT INTO `sys_job_log` VALUES ('7247', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:57:45');
INSERT INTO `sys_job_log` VALUES ('7248', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:58:00');
INSERT INTO `sys_job_log` VALUES ('7249', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:58:15');
INSERT INTO `sys_job_log` VALUES ('7250', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 12:58:30');
INSERT INTO `sys_job_log` VALUES ('7251', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:58:45');
INSERT INTO `sys_job_log` VALUES ('7252', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:59:00');
INSERT INTO `sys_job_log` VALUES ('7253', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:59:15');
INSERT INTO `sys_job_log` VALUES ('7254', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:59:30');
INSERT INTO `sys_job_log` VALUES ('7255', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 12:59:45');
INSERT INTO `sys_job_log` VALUES ('7256', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:00:00');
INSERT INTO `sys_job_log` VALUES ('7257', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:00:15');
INSERT INTO `sys_job_log` VALUES ('7258', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:00:30');
INSERT INTO `sys_job_log` VALUES ('7259', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:00:45');
INSERT INTO `sys_job_log` VALUES ('7260', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:01:00');
INSERT INTO `sys_job_log` VALUES ('7261', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:01:15');
INSERT INTO `sys_job_log` VALUES ('7262', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:01:30');
INSERT INTO `sys_job_log` VALUES ('7263', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:01:45');
INSERT INTO `sys_job_log` VALUES ('7264', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:02:00');
INSERT INTO `sys_job_log` VALUES ('7265', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:02:15');
INSERT INTO `sys_job_log` VALUES ('7266', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:02:30');
INSERT INTO `sys_job_log` VALUES ('7267', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:02:45');
INSERT INTO `sys_job_log` VALUES ('7268', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:03:00');
INSERT INTO `sys_job_log` VALUES ('7269', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:03:15');
INSERT INTO `sys_job_log` VALUES ('7270', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:03:30');
INSERT INTO `sys_job_log` VALUES ('7271', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:03:45');
INSERT INTO `sys_job_log` VALUES ('7272', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:04:00');
INSERT INTO `sys_job_log` VALUES ('7273', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:04:15');
INSERT INTO `sys_job_log` VALUES ('7274', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:04:30');
INSERT INTO `sys_job_log` VALUES ('7275', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:04:45');
INSERT INTO `sys_job_log` VALUES ('7276', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:05:00');
INSERT INTO `sys_job_log` VALUES ('7277', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:05:15');
INSERT INTO `sys_job_log` VALUES ('7278', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:05:30');
INSERT INTO `sys_job_log` VALUES ('7279', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:05:45');
INSERT INTO `sys_job_log` VALUES ('7280', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:06:00');
INSERT INTO `sys_job_log` VALUES ('7281', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:06:15');
INSERT INTO `sys_job_log` VALUES ('7282', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:06:30');
INSERT INTO `sys_job_log` VALUES ('7283', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:06:45');
INSERT INTO `sys_job_log` VALUES ('7284', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:07:00');
INSERT INTO `sys_job_log` VALUES ('7285', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:07:15');
INSERT INTO `sys_job_log` VALUES ('7286', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:07:30');
INSERT INTO `sys_job_log` VALUES ('7287', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:07:45');
INSERT INTO `sys_job_log` VALUES ('7288', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:08:00');
INSERT INTO `sys_job_log` VALUES ('7289', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:08:15');
INSERT INTO `sys_job_log` VALUES ('7290', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:08:30');
INSERT INTO `sys_job_log` VALUES ('7291', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:08:45');
INSERT INTO `sys_job_log` VALUES ('7292', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:09:00');
INSERT INTO `sys_job_log` VALUES ('7293', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:09:15');
INSERT INTO `sys_job_log` VALUES ('7294', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:09:30');
INSERT INTO `sys_job_log` VALUES ('7295', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:09:45');
INSERT INTO `sys_job_log` VALUES ('7296', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:10:00');
INSERT INTO `sys_job_log` VALUES ('7297', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:10:15');
INSERT INTO `sys_job_log` VALUES ('7298', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:10:30');
INSERT INTO `sys_job_log` VALUES ('7299', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:10:45');
INSERT INTO `sys_job_log` VALUES ('7300', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:11:00');
INSERT INTO `sys_job_log` VALUES ('7301', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:11:15');
INSERT INTO `sys_job_log` VALUES ('7302', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:11:30');
INSERT INTO `sys_job_log` VALUES ('7303', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:11:45');
INSERT INTO `sys_job_log` VALUES ('7304', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:12:00');
INSERT INTO `sys_job_log` VALUES ('7305', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:12:15');
INSERT INTO `sys_job_log` VALUES ('7306', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:12:30');
INSERT INTO `sys_job_log` VALUES ('7307', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 13:12:45');
INSERT INTO `sys_job_log` VALUES ('7308', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:13:00');
INSERT INTO `sys_job_log` VALUES ('7309', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:13:15');
INSERT INTO `sys_job_log` VALUES ('7310', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:13:30');
INSERT INTO `sys_job_log` VALUES ('7311', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:13:45');
INSERT INTO `sys_job_log` VALUES ('7312', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:14:00');
INSERT INTO `sys_job_log` VALUES ('7313', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:14:15');
INSERT INTO `sys_job_log` VALUES ('7314', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:14:30');
INSERT INTO `sys_job_log` VALUES ('7315', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:14:45');
INSERT INTO `sys_job_log` VALUES ('7316', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:15:00');
INSERT INTO `sys_job_log` VALUES ('7317', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:15:15');
INSERT INTO `sys_job_log` VALUES ('7318', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:15:30');
INSERT INTO `sys_job_log` VALUES ('7319', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:15:45');
INSERT INTO `sys_job_log` VALUES ('7320', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:16:00');
INSERT INTO `sys_job_log` VALUES ('7321', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:16:15');
INSERT INTO `sys_job_log` VALUES ('7322', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:16:30');
INSERT INTO `sys_job_log` VALUES ('7323', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:16:45');
INSERT INTO `sys_job_log` VALUES ('7324', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:17:00');
INSERT INTO `sys_job_log` VALUES ('7325', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:17:15');
INSERT INTO `sys_job_log` VALUES ('7326', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:17:30');
INSERT INTO `sys_job_log` VALUES ('7327', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:17:45');
INSERT INTO `sys_job_log` VALUES ('7328', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:18:00');
INSERT INTO `sys_job_log` VALUES ('7329', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:18:15');
INSERT INTO `sys_job_log` VALUES ('7330', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:18:30');
INSERT INTO `sys_job_log` VALUES ('7331', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:18:45');
INSERT INTO `sys_job_log` VALUES ('7332', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:19:00');
INSERT INTO `sys_job_log` VALUES ('7333', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:19:15');
INSERT INTO `sys_job_log` VALUES ('7334', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:19:30');
INSERT INTO `sys_job_log` VALUES ('7335', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:19:45');
INSERT INTO `sys_job_log` VALUES ('7336', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:20:00');
INSERT INTO `sys_job_log` VALUES ('7337', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 13:20:15');
INSERT INTO `sys_job_log` VALUES ('7338', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:20:30');
INSERT INTO `sys_job_log` VALUES ('7339', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:20:45');
INSERT INTO `sys_job_log` VALUES ('7340', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:21:00');
INSERT INTO `sys_job_log` VALUES ('7341', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:21:15');
INSERT INTO `sys_job_log` VALUES ('7342', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:21:30');
INSERT INTO `sys_job_log` VALUES ('7343', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:21:45');
INSERT INTO `sys_job_log` VALUES ('7344', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:22:00');
INSERT INTO `sys_job_log` VALUES ('7345', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:22:15');
INSERT INTO `sys_job_log` VALUES ('7346', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:22:30');
INSERT INTO `sys_job_log` VALUES ('7347', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:22:45');
INSERT INTO `sys_job_log` VALUES ('7348', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:23:00');
INSERT INTO `sys_job_log` VALUES ('7349', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:23:15');
INSERT INTO `sys_job_log` VALUES ('7350', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:23:30');
INSERT INTO `sys_job_log` VALUES ('7351', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:23:45');
INSERT INTO `sys_job_log` VALUES ('7352', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:24:00');
INSERT INTO `sys_job_log` VALUES ('7353', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:24:15');
INSERT INTO `sys_job_log` VALUES ('7354', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:24:30');
INSERT INTO `sys_job_log` VALUES ('7355', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:24:45');
INSERT INTO `sys_job_log` VALUES ('7356', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:25:00');
INSERT INTO `sys_job_log` VALUES ('7357', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:25:15');
INSERT INTO `sys_job_log` VALUES ('7358', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:25:30');
INSERT INTO `sys_job_log` VALUES ('7359', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 13:25:45');
INSERT INTO `sys_job_log` VALUES ('7360', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:26:00');
INSERT INTO `sys_job_log` VALUES ('7361', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:26:15');
INSERT INTO `sys_job_log` VALUES ('7362', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:26:30');
INSERT INTO `sys_job_log` VALUES ('7363', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:26:45');
INSERT INTO `sys_job_log` VALUES ('7364', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:27:00');
INSERT INTO `sys_job_log` VALUES ('7365', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 13:27:15');
INSERT INTO `sys_job_log` VALUES ('7366', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:27:30');
INSERT INTO `sys_job_log` VALUES ('7367', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:27:45');
INSERT INTO `sys_job_log` VALUES ('7368', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:28:00');
INSERT INTO `sys_job_log` VALUES ('7369', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:28:15');
INSERT INTO `sys_job_log` VALUES ('7370', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:28:30');
INSERT INTO `sys_job_log` VALUES ('7371', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:28:45');
INSERT INTO `sys_job_log` VALUES ('7372', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:29:00');
INSERT INTO `sys_job_log` VALUES ('7373', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:29:15');
INSERT INTO `sys_job_log` VALUES ('7374', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:29:30');
INSERT INTO `sys_job_log` VALUES ('7375', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:29:45');
INSERT INTO `sys_job_log` VALUES ('7376', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:30:00');
INSERT INTO `sys_job_log` VALUES ('7377', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:30:15');
INSERT INTO `sys_job_log` VALUES ('7378', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:30:30');
INSERT INTO `sys_job_log` VALUES ('7379', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:30:45');
INSERT INTO `sys_job_log` VALUES ('7380', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:31:00');
INSERT INTO `sys_job_log` VALUES ('7381', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:31:15');
INSERT INTO `sys_job_log` VALUES ('7382', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 13:31:30');
INSERT INTO `sys_job_log` VALUES ('7383', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:31:45');
INSERT INTO `sys_job_log` VALUES ('7384', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:32:00');
INSERT INTO `sys_job_log` VALUES ('7385', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:32:15');
INSERT INTO `sys_job_log` VALUES ('7386', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:32:30');
INSERT INTO `sys_job_log` VALUES ('7387', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:32:45');
INSERT INTO `sys_job_log` VALUES ('7388', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:33:00');
INSERT INTO `sys_job_log` VALUES ('7389', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:33:15');
INSERT INTO `sys_job_log` VALUES ('7390', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:33:30');
INSERT INTO `sys_job_log` VALUES ('7391', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:33:45');
INSERT INTO `sys_job_log` VALUES ('7392', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:34:00');
INSERT INTO `sys_job_log` VALUES ('7393', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:34:15');
INSERT INTO `sys_job_log` VALUES ('7394', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:34:30');
INSERT INTO `sys_job_log` VALUES ('7395', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:34:45');
INSERT INTO `sys_job_log` VALUES ('7396', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:35:00');
INSERT INTO `sys_job_log` VALUES ('7397', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:35:15');
INSERT INTO `sys_job_log` VALUES ('7398', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:35:30');
INSERT INTO `sys_job_log` VALUES ('7399', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:35:45');
INSERT INTO `sys_job_log` VALUES ('7400', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:36:00');
INSERT INTO `sys_job_log` VALUES ('7401', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:36:15');
INSERT INTO `sys_job_log` VALUES ('7402', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:36:30');
INSERT INTO `sys_job_log` VALUES ('7403', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:36:45');
INSERT INTO `sys_job_log` VALUES ('7404', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:37:00');
INSERT INTO `sys_job_log` VALUES ('7405', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:37:15');
INSERT INTO `sys_job_log` VALUES ('7406', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:37:30');
INSERT INTO `sys_job_log` VALUES ('7407', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:37:45');
INSERT INTO `sys_job_log` VALUES ('7408', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:38:00');
INSERT INTO `sys_job_log` VALUES ('7409', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:38:15');
INSERT INTO `sys_job_log` VALUES ('7410', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:38:30');
INSERT INTO `sys_job_log` VALUES ('7411', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:38:45');
INSERT INTO `sys_job_log` VALUES ('7412', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:39:00');
INSERT INTO `sys_job_log` VALUES ('7413', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:39:15');
INSERT INTO `sys_job_log` VALUES ('7414', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:39:30');
INSERT INTO `sys_job_log` VALUES ('7415', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:39:45');
INSERT INTO `sys_job_log` VALUES ('7416', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:40:00');
INSERT INTO `sys_job_log` VALUES ('7417', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:40:15');
INSERT INTO `sys_job_log` VALUES ('7418', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:40:30');
INSERT INTO `sys_job_log` VALUES ('7419', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:40:45');
INSERT INTO `sys_job_log` VALUES ('7420', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:41:00');
INSERT INTO `sys_job_log` VALUES ('7421', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:41:15');
INSERT INTO `sys_job_log` VALUES ('7422', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:41:30');
INSERT INTO `sys_job_log` VALUES ('7423', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:41:45');
INSERT INTO `sys_job_log` VALUES ('7424', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:42:00');
INSERT INTO `sys_job_log` VALUES ('7425', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:42:15');
INSERT INTO `sys_job_log` VALUES ('7426', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:42:30');
INSERT INTO `sys_job_log` VALUES ('7427', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:42:45');
INSERT INTO `sys_job_log` VALUES ('7428', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:43:00');
INSERT INTO `sys_job_log` VALUES ('7429', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:43:15');
INSERT INTO `sys_job_log` VALUES ('7430', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:43:30');
INSERT INTO `sys_job_log` VALUES ('7431', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:43:45');
INSERT INTO `sys_job_log` VALUES ('7432', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:44:00');
INSERT INTO `sys_job_log` VALUES ('7433', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:44:15');
INSERT INTO `sys_job_log` VALUES ('7434', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:44:30');
INSERT INTO `sys_job_log` VALUES ('7435', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:44:45');
INSERT INTO `sys_job_log` VALUES ('7436', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:45:00');
INSERT INTO `sys_job_log` VALUES ('7437', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:45:15');
INSERT INTO `sys_job_log` VALUES ('7438', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:45:30');
INSERT INTO `sys_job_log` VALUES ('7439', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:45:45');
INSERT INTO `sys_job_log` VALUES ('7440', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:46:00');
INSERT INTO `sys_job_log` VALUES ('7441', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:46:15');
INSERT INTO `sys_job_log` VALUES ('7442', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:46:30');
INSERT INTO `sys_job_log` VALUES ('7443', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:46:45');
INSERT INTO `sys_job_log` VALUES ('7444', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:47:00');
INSERT INTO `sys_job_log` VALUES ('7445', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:47:15');
INSERT INTO `sys_job_log` VALUES ('7446', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:47:30');
INSERT INTO `sys_job_log` VALUES ('7447', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:47:45');
INSERT INTO `sys_job_log` VALUES ('7448', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:48:00');
INSERT INTO `sys_job_log` VALUES ('7449', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:48:15');
INSERT INTO `sys_job_log` VALUES ('7450', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:48:30');
INSERT INTO `sys_job_log` VALUES ('7451', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:48:45');
INSERT INTO `sys_job_log` VALUES ('7452', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:49:00');
INSERT INTO `sys_job_log` VALUES ('7453', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:49:15');
INSERT INTO `sys_job_log` VALUES ('7454', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:49:30');
INSERT INTO `sys_job_log` VALUES ('7455', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:49:45');
INSERT INTO `sys_job_log` VALUES ('7456', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:50:00');
INSERT INTO `sys_job_log` VALUES ('7457', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:50:15');
INSERT INTO `sys_job_log` VALUES ('7458', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:50:30');
INSERT INTO `sys_job_log` VALUES ('7459', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:50:45');
INSERT INTO `sys_job_log` VALUES ('7460', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:51:00');
INSERT INTO `sys_job_log` VALUES ('7461', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:51:15');
INSERT INTO `sys_job_log` VALUES ('7462', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:51:30');
INSERT INTO `sys_job_log` VALUES ('7463', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:51:45');
INSERT INTO `sys_job_log` VALUES ('7464', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:52:00');
INSERT INTO `sys_job_log` VALUES ('7465', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:52:15');
INSERT INTO `sys_job_log` VALUES ('7466', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:52:30');
INSERT INTO `sys_job_log` VALUES ('7467', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:52:45');
INSERT INTO `sys_job_log` VALUES ('7468', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:53:00');
INSERT INTO `sys_job_log` VALUES ('7469', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:53:15');
INSERT INTO `sys_job_log` VALUES ('7470', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:53:30');
INSERT INTO `sys_job_log` VALUES ('7471', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:53:45');
INSERT INTO `sys_job_log` VALUES ('7472', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:54:00');
INSERT INTO `sys_job_log` VALUES ('7473', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 13:54:15');
INSERT INTO `sys_job_log` VALUES ('7474', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:54:30');
INSERT INTO `sys_job_log` VALUES ('7475', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:54:45');
INSERT INTO `sys_job_log` VALUES ('7476', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:55:00');
INSERT INTO `sys_job_log` VALUES ('7477', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:55:15');
INSERT INTO `sys_job_log` VALUES ('7478', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:55:30');
INSERT INTO `sys_job_log` VALUES ('7479', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 13:55:45');
INSERT INTO `sys_job_log` VALUES ('7480', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:56:00');
INSERT INTO `sys_job_log` VALUES ('7481', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:56:15');
INSERT INTO `sys_job_log` VALUES ('7482', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:56:30');
INSERT INTO `sys_job_log` VALUES ('7483', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:56:45');
INSERT INTO `sys_job_log` VALUES ('7484', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:57:00');
INSERT INTO `sys_job_log` VALUES ('7485', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:57:15');
INSERT INTO `sys_job_log` VALUES ('7486', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:57:30');
INSERT INTO `sys_job_log` VALUES ('7487', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:57:45');
INSERT INTO `sys_job_log` VALUES ('7488', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:58:00');
INSERT INTO `sys_job_log` VALUES ('7489', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:58:15');
INSERT INTO `sys_job_log` VALUES ('7490', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:58:30');
INSERT INTO `sys_job_log` VALUES ('7491', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:58:45');
INSERT INTO `sys_job_log` VALUES ('7492', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:59:00');
INSERT INTO `sys_job_log` VALUES ('7493', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:59:15');
INSERT INTO `sys_job_log` VALUES ('7494', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:59:30');
INSERT INTO `sys_job_log` VALUES ('7495', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 13:59:45');
INSERT INTO `sys_job_log` VALUES ('7496', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:00:00');
INSERT INTO `sys_job_log` VALUES ('7497', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:00:15');
INSERT INTO `sys_job_log` VALUES ('7498', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:00:30');
INSERT INTO `sys_job_log` VALUES ('7499', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:00:45');
INSERT INTO `sys_job_log` VALUES ('7500', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:01:00');
INSERT INTO `sys_job_log` VALUES ('7501', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:01:15');
INSERT INTO `sys_job_log` VALUES ('7502', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:01:30');
INSERT INTO `sys_job_log` VALUES ('7503', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:01:45');
INSERT INTO `sys_job_log` VALUES ('7504', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:02:00');
INSERT INTO `sys_job_log` VALUES ('7505', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:02:15');
INSERT INTO `sys_job_log` VALUES ('7506', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:02:30');
INSERT INTO `sys_job_log` VALUES ('7507', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:02:45');
INSERT INTO `sys_job_log` VALUES ('7508', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:03:00');
INSERT INTO `sys_job_log` VALUES ('7509', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:03:15');
INSERT INTO `sys_job_log` VALUES ('7510', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:03:30');
INSERT INTO `sys_job_log` VALUES ('7511', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:03:45');
INSERT INTO `sys_job_log` VALUES ('7512', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:04:00');
INSERT INTO `sys_job_log` VALUES ('7513', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:04:15');
INSERT INTO `sys_job_log` VALUES ('7514', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:04:30');
INSERT INTO `sys_job_log` VALUES ('7515', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:04:45');
INSERT INTO `sys_job_log` VALUES ('7516', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:05:00');
INSERT INTO `sys_job_log` VALUES ('7517', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:05:15');
INSERT INTO `sys_job_log` VALUES ('7518', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:05:30');
INSERT INTO `sys_job_log` VALUES ('7519', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:05:45');
INSERT INTO `sys_job_log` VALUES ('7520', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:06:00');
INSERT INTO `sys_job_log` VALUES ('7521', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:06:15');
INSERT INTO `sys_job_log` VALUES ('7522', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:06:30');
INSERT INTO `sys_job_log` VALUES ('7523', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:06:45');
INSERT INTO `sys_job_log` VALUES ('7524', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:07:00');
INSERT INTO `sys_job_log` VALUES ('7525', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:07:15');
INSERT INTO `sys_job_log` VALUES ('7526', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:07:30');
INSERT INTO `sys_job_log` VALUES ('7527', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:07:45');
INSERT INTO `sys_job_log` VALUES ('7528', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:08:00');
INSERT INTO `sys_job_log` VALUES ('7529', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:08:15');
INSERT INTO `sys_job_log` VALUES ('7530', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:08:30');
INSERT INTO `sys_job_log` VALUES ('7531', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:08:45');
INSERT INTO `sys_job_log` VALUES ('7532', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:09:00');
INSERT INTO `sys_job_log` VALUES ('7533', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:09:15');
INSERT INTO `sys_job_log` VALUES ('7534', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:09:30');
INSERT INTO `sys_job_log` VALUES ('7535', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:09:45');
INSERT INTO `sys_job_log` VALUES ('7536', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：2毫秒', '0', '', '2019-10-12 14:13:33');
INSERT INTO `sys_job_log` VALUES ('7537', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:13:45');
INSERT INTO `sys_job_log` VALUES ('7538', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:14:00');
INSERT INTO `sys_job_log` VALUES ('7539', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:14:15');
INSERT INTO `sys_job_log` VALUES ('7540', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:14:30');
INSERT INTO `sys_job_log` VALUES ('7541', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:14:45');
INSERT INTO `sys_job_log` VALUES ('7542', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:15:00');
INSERT INTO `sys_job_log` VALUES ('7543', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:15:15');
INSERT INTO `sys_job_log` VALUES ('7544', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:15:30');
INSERT INTO `sys_job_log` VALUES ('7545', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:15:45');
INSERT INTO `sys_job_log` VALUES ('7546', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:16:00');
INSERT INTO `sys_job_log` VALUES ('7547', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:16:15');
INSERT INTO `sys_job_log` VALUES ('7548', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:16:30');
INSERT INTO `sys_job_log` VALUES ('7549', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:16:45');
INSERT INTO `sys_job_log` VALUES ('7550', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:17:00');
INSERT INTO `sys_job_log` VALUES ('7551', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:17:15');
INSERT INTO `sys_job_log` VALUES ('7552', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:17:30');
INSERT INTO `sys_job_log` VALUES ('7553', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:17:45');
INSERT INTO `sys_job_log` VALUES ('7554', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:18:00');
INSERT INTO `sys_job_log` VALUES ('7555', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:18:15');
INSERT INTO `sys_job_log` VALUES ('7556', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:18:30');
INSERT INTO `sys_job_log` VALUES ('7557', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:18:45');
INSERT INTO `sys_job_log` VALUES ('7558', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:19:00');
INSERT INTO `sys_job_log` VALUES ('7559', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:19:15');
INSERT INTO `sys_job_log` VALUES ('7560', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:19:30');
INSERT INTO `sys_job_log` VALUES ('7561', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:19:45');
INSERT INTO `sys_job_log` VALUES ('7562', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:20:00');
INSERT INTO `sys_job_log` VALUES ('7563', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2019-10-12 14:20:15');
INSERT INTO `sys_job_log` VALUES ('7564', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:20:30');
INSERT INTO `sys_job_log` VALUES ('7565', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:20:45');
INSERT INTO `sys_job_log` VALUES ('7566', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:21:00');
INSERT INTO `sys_job_log` VALUES ('7567', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:21:15');
INSERT INTO `sys_job_log` VALUES ('7568', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:21:30');
INSERT INTO `sys_job_log` VALUES ('7569', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:21:45');
INSERT INTO `sys_job_log` VALUES ('7570', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:22:00');
INSERT INTO `sys_job_log` VALUES ('7571', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:22:15');
INSERT INTO `sys_job_log` VALUES ('7572', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:22:30');
INSERT INTO `sys_job_log` VALUES ('7573', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:22:45');
INSERT INTO `sys_job_log` VALUES ('7574', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:23:00');
INSERT INTO `sys_job_log` VALUES ('7575', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:23:15');
INSERT INTO `sys_job_log` VALUES ('7576', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:23:30');
INSERT INTO `sys_job_log` VALUES ('7577', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:23:45');
INSERT INTO `sys_job_log` VALUES ('7578', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:24:00');
INSERT INTO `sys_job_log` VALUES ('7579', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:24:15');
INSERT INTO `sys_job_log` VALUES ('7580', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:24:30');
INSERT INTO `sys_job_log` VALUES ('7581', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:24:45');
INSERT INTO `sys_job_log` VALUES ('7582', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:25:00');
INSERT INTO `sys_job_log` VALUES ('7583', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:25:15');
INSERT INTO `sys_job_log` VALUES ('7584', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:25:30');
INSERT INTO `sys_job_log` VALUES ('7585', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:25:45');
INSERT INTO `sys_job_log` VALUES ('7586', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:26:00');
INSERT INTO `sys_job_log` VALUES ('7587', '系统默认（有参）', 'DEFAULT', 'cyTask.cyParams(\'cy\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2019-10-12 14:26:15');

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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('101', '9999', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:36:41');
INSERT INTO `sys_logininfor` VALUES ('102', 'cy', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 18:18:42');
INSERT INTO `sys_logininfor` VALUES ('103', 'cy', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 18:18:58');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-11 18:27:56');
INSERT INTO `sys_logininfor` VALUES ('105', '9999', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 18:28:04');
INSERT INTO `sys_logininfor` VALUES ('106', '9999', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 08:45:38');

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
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

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
INSERT INTO `sys_oper_log` VALUES ('130', '个人信息', '2', 'com.chuyue.web.controller.system.SysProfileController.update()', 'POST', '1', '9999', '研发部门', '/system/user/profile/update', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"\" ],\r\n  \"userName\" : [ \"楚樾\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"chuyue@163.com\" ],\r\n  \"sex\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-12 08:46:43');
INSERT INTO `sys_oper_log` VALUES ('131', '定时任务', '2', 'com.chuyue.quartz.controller.SysJobController.changeStatus()', 'POST', '1', '9999', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"3\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-12 09:41:57');
INSERT INTO `sys_oper_log` VALUES ('132', '定时任务', '2', 'com.chuyue.quartz.controller.SysJobController.changeStatus()', 'POST', '1', '9999', '研发部门', '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"jobId\" : [ \"3\" ],\r\n  \"jobGroup\" : [ \"DEFAULT\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-12 09:42:11');
INSERT INTO `sys_oper_log` VALUES ('133', '定时任务', '5', 'com.chuyue.quartz.controller.SysJobController.export()', 'POST', '1', '9999', '研发部门', '/monitor/job/export', '127.0.0.1', '内网IP', '{\r\n  \"jobName\" : [ \"\" ],\r\n  \"jobGroup\" : [ \"\" ],\r\n  \"status\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"1600ac15-f75e-45b7-bd31-bb8b397ee0b8_定时任务.xlsx\",\r\n  \"code\" : 0\r\n}', '0', null, '2019-10-12 09:42:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '103', '9999', '楚樾', '00', 'chuyue@163.com', '15888888888', '0', '', 'AFF833A3581ADBE7B0DB07F3E6D0508F', '0', '0', '127.0.0.1', '2019-10-12 08:45:39', '9999', '2018-03-16 11:33:00', 'cy', '2019-10-12 08:46:43', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'cy', '楚樾', '00', 'chuyue@qq.com', '15666666666', '1', '', 'AFF833A3581ADBE7B0DB07F3E6D0508F', '0', '0', '127.0.0.1', '2019-10-11 18:18:59', '9999', '2018-03-16 11:33:00', 'cy', '2019-10-11 18:18:58', '测试员');
INSERT INTO `sys_user` VALUES ('3', '103', 'yujiantong', '于建铜', '00', 'yujiantongs@163.com', '18310244601', '0', '', 'AFF833A3581ADBE7B0DB07F3E6D0508F', '0', '0', '127.0.0.1', '2019-09-26 08:54:32', '9999', '2019-09-25 14:41:29', '9999', '2019-09-26 08:54:31', '');

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
INSERT INTO `sys_user_post` VALUES ('3', '2');

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
INSERT INTO `sys_user_role` VALUES ('3', '2');
