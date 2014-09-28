-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2014-09-28 11:12:40
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yf-oa`
--

-- --------------------------------------------------------

--
-- 表的结构 `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `name` varchar(20) NOT NULL COMMENT '组名称',
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户组';

--
-- 转存表中的数据 `group`
--

INSERT INTO `group` (`name`) VALUES
('用户'),
('管理员');

-- --------------------------------------------------------

--
-- 表的结构 `oa_employee`
--

CREATE TABLE IF NOT EXISTS `oa_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userid` int(11) NOT NULL COMMENT '用户管理ID',
  `code` varchar(20) NOT NULL COMMENT '工号',
  `realname` varchar(50) NOT NULL COMMENT '姓名',
  `dept` int(11) NOT NULL COMMENT '部门',
  `mobile` varchar(50) DEFAULT NULL COMMENT '移动电话',
  `phone` varchar(50) DEFAULT NULL COMMENT '固定电话',
  `enterdate` varchar(50) DEFAULT NULL COMMENT '入职时间',
  `birthday` varchar(50) DEFAULT NULL COMMENT '生日',
  `address` varchar(500) DEFAULT NULL COMMENT '联系地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `oa_employee`
--

INSERT INTO `oa_employee` (`id`, `userid`, `code`, `realname`, `dept`, `mobile`, `phone`, `enterdate`, `birthday`, `address`) VALUES
(14, 1, '1', '1', 1, '2', '6', '1', '1', '1'),
(17, 8, '8', '8', 8, '8', '8', '8', '8', '88'),
(18, 11, '4141', '1', 1, '1', '111', '1', '1', '1231');

-- --------------------------------------------------------

--
-- 表的结构 `oa_obs`
--

CREATE TABLE IF NOT EXISTS `oa_obs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `pid` int(11) NOT NULL COMMENT '父节点ID',
  `isroot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是根节点',
  `desc` varchar(500) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织结构树状表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oa_user`
--

CREATE TABLE IF NOT EXISTS `oa_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `login_name` varchar(50) NOT NULL COMMENT '登录名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `login_ip` varchar(20) DEFAULT NULL COMMENT '上次登录IP',
  `login_time` int(50) DEFAULT NULL COMMENT '上次登录时间',
  `active_time` int(50) DEFAULT NULL COMMENT '用户激活时间',
  `is_admin` int(1) NOT NULL DEFAULT '0' COMMENT '是否管理员 0：非，1：是',
  `status` int(4) NOT NULL DEFAULT '0' COMMENT '用户状态 0：未初始化，1：正常，<0异常',
  `is_online` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:offline,1:online',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDXU_oa_user_email` (`email`),
  UNIQUE KEY `IDXU_oa_user_login_name` (`login_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='系统用户 系统用户' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `oa_user`
--

INSERT INTO `oa_user` (`id`, `login_name`, `email`, `login_ip`, `login_time`, `active_time`, `is_admin`, `status`, `is_online`) VALUES
(1, 'admin', 'admin@admin.com', '127.0.0.1', 11111111, 11111111, 1, 1, 0),
(2, 'test002', '123@123.com', NULL, NULL, NULL, 0, 0, 0),
(5, 'test004', '1234@123.com', NULL, NULL, NULL, 0, 0, 0),
(6, 'test005', '12344@123.com', NULL, NULL, NULL, 0, 0, 0),
(7, 'yfsoft', 'yfsoft@126.com', NULL, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `os_currentstep`
--

CREATE TABLE IF NOT EXISTS `os_currentstep` (
  `ID` bigint(20) NOT NULL,
  `ENTRY_ID` bigint(20) DEFAULT NULL,
  `STEP_ID` int(11) DEFAULT NULL,
  `ACTION_ID` int(11) DEFAULT NULL,
  `OWNER` varchar(35) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(40) DEFAULT NULL,
  `CALLER` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENTRY_ID` (`ENTRY_ID`),
  KEY `OWNER` (`OWNER`),
  KEY `CALLER` (`CALLER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `os_currentstep`
--

INSERT INTO `os_currentstep` (`ID`, `ENTRY_ID`, `STEP_ID`, `ACTION_ID`, `OWNER`, `START_DATE`, `FINISH_DATE`, `DUE_DATE`, `STATUS`, `CALLER`) VALUES
(24, 31, 6, NULL, 'testuser', '2014-06-17 16:06:56', NULL, NULL, 'Underway', NULL),
(25, 31, 7, NULL, 'testuser', '2014-06-17 16:06:56', NULL, NULL, 'Underway', NULL),
(27, 32, 6, NULL, 'testuser', '2014-06-17 17:07:12', NULL, NULL, 'Underway', NULL),
(28, 32, 7, NULL, 'testuser', '2014-06-17 17:07:12', NULL, NULL, 'Underway', NULL),
(29, 33, 1, NULL, 'testuser', '2014-09-23 08:36:23', NULL, NULL, 'Underway', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `os_currentstep_prev`
--

CREATE TABLE IF NOT EXISTS `os_currentstep_prev` (
  `ID` bigint(20) NOT NULL,
  `PREVIOUS_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`),
  KEY `ID` (`ID`),
  KEY `PREVIOUS_ID` (`PREVIOUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `os_currentstep_prev`
--

INSERT INTO `os_currentstep_prev` (`ID`, `PREVIOUS_ID`) VALUES
(24, 23),
(25, 23),
(27, 26),
(28, 26);

-- --------------------------------------------------------

--
-- 表的结构 `os_entryids`
--

CREATE TABLE IF NOT EXISTS `os_entryids` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `os_group`
--

CREATE TABLE IF NOT EXISTS `os_group` (
  `GROUPNAME` varchar(20) NOT NULL,
  PRIMARY KEY (`GROUPNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `os_group`
--

INSERT INTO `os_group` (`GROUPNAME`) VALUES
('DDDDD'),
('DEVELOPE'),
('TEST');

-- --------------------------------------------------------

--
-- 表的结构 `os_historystep`
--

CREATE TABLE IF NOT EXISTS `os_historystep` (
  `ID` bigint(20) NOT NULL,
  `ENTRY_ID` bigint(20) DEFAULT NULL,
  `STEP_ID` int(11) DEFAULT NULL,
  `ACTION_ID` int(11) DEFAULT NULL,
  `OWNER` varchar(35) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `FINISH_DATE` datetime DEFAULT NULL,
  `DUE_DATE` datetime DEFAULT NULL,
  `STATUS` varchar(40) DEFAULT NULL,
  `CALLER` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ENTRY_ID` (`ENTRY_ID`),
  KEY `OWNER` (`OWNER`),
  KEY `CALLER` (`CALLER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `os_historystep`
--

INSERT INTO `os_historystep` (`ID`, `ENTRY_ID`, `STEP_ID`, `ACTION_ID`, `OWNER`, `START_DATE`, `FINISH_DATE`, `DUE_DATE`, `STATUS`, `CALLER`) VALUES
(15, 25, 1, 1, 'testuser', '2014-06-17 15:53:37', '2014-06-17 15:53:38', NULL, 'Finished', 'testuser'),
(18, 28, 1, 1, 'testuser', '2014-06-17 15:57:35', '2014-06-17 15:57:49', NULL, 'Finished', 'testuser'),
(20, 29, 1, 1, 'testuser', '2014-06-17 15:59:46', '2014-06-17 15:59:52', NULL, 'Finished', 'testuser'),
(22, 30, 1, 1, 'testuser', '2014-06-17 16:00:28', '2014-06-17 16:00:36', NULL, 'Finished', 'testuser'),
(23, 31, 1, 1, 'testuser', '2014-06-17 16:06:56', '2014-06-17 16:06:56', NULL, 'Finished', 'testuser'),
(26, 32, 1, 1, 'testuser', '2014-06-17 17:07:12', '2014-06-17 17:07:12', NULL, 'Finished', 'testuser');

-- --------------------------------------------------------

--
-- 表的结构 `os_historystep_prev`
--

CREATE TABLE IF NOT EXISTS `os_historystep_prev` (
  `ID` bigint(20) NOT NULL,
  `PREVIOUS_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`,`PREVIOUS_ID`),
  KEY `ID` (`ID`),
  KEY `PREVIOUS_ID` (`PREVIOUS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `os_membership`
--

CREATE TABLE IF NOT EXISTS `os_membership` (
  `USERNAME` varchar(20) NOT NULL,
  `GROUPNAME` varchar(20) NOT NULL,
  PRIMARY KEY (`USERNAME`,`GROUPNAME`),
  KEY `USERNAME` (`USERNAME`),
  KEY `GROUPNAME` (`GROUPNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `os_membership`
--

INSERT INTO `os_membership` (`USERNAME`, `GROUPNAME`) VALUES
('testuser', 'TEST');

-- --------------------------------------------------------

--
-- 表的结构 `os_propertyentry`
--

CREATE TABLE IF NOT EXISTS `os_propertyentry` (
  `GLOBAL_KEY` varchar(250) NOT NULL,
  `ITEM_KEY` varchar(250) NOT NULL,
  `ITEM_TYPE` tinyint(4) DEFAULT NULL,
  `STRING_VALUE` varchar(255) DEFAULT NULL,
  `DATE_VALUE` datetime DEFAULT NULL,
  `DATA_VALUE` blob,
  `FLOAT_VALUE` float DEFAULT NULL,
  `NUMBER_VALUE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`GLOBAL_KEY`,`ITEM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `os_propertyentry`
--

INSERT INTO `os_propertyentry` (`GLOBAL_KEY`, `ITEM_KEY`, `ITEM_TYPE`, `STRING_VALUE`, `DATE_VALUE`, `DATA_VALUE`, `FLOAT_VALUE`, `NUMBER_VALUE`) VALUES
('osff_25', 'caller', 5, 'testuser', NULL, NULL, NULL, NULL),
('osff_28', 'caller', 5, 'testuser', NULL, NULL, NULL, NULL),
('osff_29', 'caller', 5, 'testuser', NULL, NULL, NULL, NULL),
('osff_30', 'caller', 5, 'testuser', NULL, NULL, NULL, NULL),
('osff_31', 'caller', 5, 'testuser', NULL, NULL, NULL, NULL),
('osff_32', 'caller', 5, 'testuser', NULL, NULL, NULL, NULL),
('OSUser_testuser', 'email', 5, 'yfsoftcom@sina.com', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `os_stepids`
--

CREATE TABLE IF NOT EXISTS `os_stepids` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `os_user`
--

CREATE TABLE IF NOT EXISTS `os_user` (
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORDHASH` mediumtext,
  PRIMARY KEY (`USERNAME`),
  KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `os_user`
--

INSERT INTO `os_user` (`USERNAME`, `PASSWORDHASH`) VALUES
('admin', 'x61Ey612Kl2gpFL56FT9weDnpSo4AV8j8+qx2AuTHdRyY036xxzTTrw10Wq3+4qQyB+XURPWx1ONxp3Y3pB37A=='),
('test', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg=='),
('test001', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg=='),
('test002', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg=='),
('test003', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg=='),
('test004', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg=='),
('test005', 'PJkJr+wlNU1VHa4hWQuybjjVPyFzuNPcPu5MBH56scHri4UQPjvnumE7MbtcnDYhTcnxSkL9ei/bhIVrylxEwg=='),
('testuser', 'ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew=='),
('yfsoft', 'Jj/sWIYUSarMHDKKSv9kr/TGLfSi1Qs/IH+om24kLJqneOeouu/++FtsptLn3Bb/CnYNWcE8I49rzcMvjOnMYg==');

-- --------------------------------------------------------

--
-- 表的结构 `os_wfentry`
--

CREATE TABLE IF NOT EXISTS `os_wfentry` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(60) DEFAULT NULL,
  `STATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `os_wfentry`
--

INSERT INTO `os_wfentry` (`ID`, `NAME`, `STATE`) VALUES
(25, 'example', 1),
(26, 'example', 0),
(27, 'example', 0),
(28, 'example', 1),
(29, 'example', 1),
(30, 'example', 1),
(31, 'example', 1),
(32, 'example', 1),
(33, 'example', 1);

-- --------------------------------------------------------

--
-- 表的结构 `security_group`
--

CREATE TABLE IF NOT EXISTS `security_group` (
  `group` varchar(20) NOT NULL COMMENT '组名称',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `relationship` varchar(50) NOT NULL COMMENT '关系'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组权限';

-- --------------------------------------------------------

--
-- 表的结构 `yp_attachment`
--

CREATE TABLE IF NOT EXISTS `yp_attachment` (
  `at_id` bigint(20) NOT NULL COMMENT '序列',
  `at_title` varchar(200) NOT NULL COMMENT '标题',
  `at_path` varchar(500) NOT NULL COMMENT '路径',
  `at_createdate` datetime DEFAULT NULL COMMENT '创建时间',
  `at_lastmodify` datetime NOT NULL COMMENT '修改时间',
  `at_size` bigint(20) NOT NULL COMMENT '文件大小',
  `at_type` varchar(50) DEFAULT NULL COMMENT '文件类型',
  `at_ext` varchar(10) NOT NULL COMMENT '文件后缀',
  PRIMARY KEY (`at_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统附件信息 附件信息';

--
-- 转存表中的数据 `yp_attachment`
--

INSERT INTO `yp_attachment` (`at_id`, `at_title`, `at_path`, `at_createdate`, `at_lastmodify`, `at_size`, `at_type`, `at_ext`) VALUES
(3, 'vcredist_x64.exe', 'E:WORKSPACEADNROID.metadata.pluginsorg.eclipse.wst.server.core	mp0wtpwebappsypATTACHMENT1402556677296.exe', '2014-06-12 15:04:37', '2014-06-12 15:04:37', 5673816, 'exe', 'exe'),
(4, 'javaw.exe', 'E:/WORKSPACE/ADNROID/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/yp/ATTACHMENT/1402623419792.exe', '2014-06-13 09:36:59', '2014-06-13 09:36:59', 135168, 'exe', 'exe'),
(5, 'hpi.dll', 'E:/WORKSPACE/ADNROID/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/yp/ATTACHMENT/1402629410035.dll', '2014-06-13 11:16:50', '2014-06-13 11:16:50', 15872, 'dll', 'dll'),
(6, 'fontmanager.dll', 'E:/WORKSPACE/ADNROID/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/yp/ATTACHMENT/1402629718376.dll', '2014-06-13 11:21:58', '2014-06-13 11:21:58', 335872, 'dll', 'dll'),
(7, 'adm logo2.png', 'E:/WORKSPACE/ADNROID/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/yp/ATTACHMENT/1402645895852.png', '2014-06-13 15:51:35', '2014-06-13 15:51:35', 123745, 'png', 'png'),
(8, 'MLOGO.jpg', 'E:/WORKSPACE/ADNROID/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/yp/ATTACHMENT/1402646036352.jpg', '2014-06-13 15:53:56', '2014-06-13 15:53:56', 19034, 'jpg', 'jpg');

-- --------------------------------------------------------

--
-- 表的结构 `yp_options`
--

CREATE TABLE IF NOT EXISTS `yp_options` (
  `option_id` int(11) NOT NULL COMMENT '编号 编号',
  `option_name` varchar(100) DEFAULT NULL COMMENT '选项名 选项名',
  `option_value` varchar(2000) DEFAULT NULL COMMENT '选项值 选项值',
  `autoload` varchar(5) DEFAULT NULL COMMENT '自动加载标识 自动加载标识',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统选项集合 系统选项集合';

--
-- 转存表中的数据 `yp_options`
--

INSERT INTO `yp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(32, 'site_title', '测试用的网站', 'yes'),
(33, 'site_keyword', '测试用的网站', 'yes'),
(34, 'site_description', '测试用的网站，测试用的网站，测试用的网站', 'yes'),
(35, 'attachment_max', '1024000', 'yes'),
(36, 'email_server', 'smtp.126.com', 'yes'),
(37, 'email_port', '25', 'yes'),
(38, 'email_login', 'yfsoftcom@126.com', 'yes'),
(39, 'email_pass', 'yfsoftcn120113', 'yes'),
(42, 'plugin_list', '[]', 'yes'),
(43, 'page_max', '10', 'yes'),
(44, 'attachment_allow_type', 'jpg,png,zip', 'yes');

-- --------------------------------------------------------

--
-- 表的结构 `yp_sequence`
--

CREATE TABLE IF NOT EXISTS `yp_sequence` (
  `seq_name` varchar(50) NOT NULL COMMENT '序列名 序列名',
  `seq_val` bigint(20) DEFAULT NULL COMMENT '序列值 序列值',
  PRIMARY KEY (`seq_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序列 系统序列';

--
-- 转存表中的数据 `yp_sequence`
--

INSERT INTO `yp_sequence` (`seq_name`, `seq_val`) VALUES
('attchment', 9),
('option', 45),
('os_entry', 33),
('os_step', 29),
('user', 1007);

-- --------------------------------------------------------

--
-- 表的结构 `yp_user`
--

CREATE TABLE IF NOT EXISTS `yp_user` (
  `user_id` int(11) NOT NULL COMMENT '用户编号 用户编号',
  `user_login` varchar(50) DEFAULT NULL COMMENT '用户登录名 用户登录名',
  `display_name` varchar(50) DEFAULT NULL COMMENT '名字 名字',
  `user_pass` varchar(50) DEFAULT NULL COMMENT '密码 密码',
  `user_nickname` varchar(50) DEFAULT NULL COMMENT '昵称 昵称',
  `user_email` varchar(50) DEFAULT NULL COMMENT '邮箱 邮箱',
  `user_url` varchar(200) DEFAULT NULL COMMENT '用户URL 用户URL',
  `user_registered` datetime DEFAULT NULL COMMENT '注册日期 注册日期',
  `user_activation_key` varchar(50) DEFAULT NULL COMMENT '激活码 激活码',
  `user_status` int(1) DEFAULT NULL COMMENT '用户状态 用户状态',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表 用户信息表';

--
-- 转存表中的数据 `yp_user`
--

INSERT INTO `yp_user` (`user_id`, `user_login`, `display_name`, `user_pass`, `user_nickname`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`) VALUES
(1000, 'admin', '管理员', '741235896', '管理员', 'yfsoftcom@126.com', NULL, '2014-06-05 00:00:00', NULL, 1),
(1003, 'test', 'test', '123123', 'test', '123123@123123.com', NULL, '2014-06-06 10:32:31', NULL, 1),
(1004, 'test2', 'test2', '123123', 'test2', '123@dddd.com', NULL, '2014-06-07 08:41:40', NULL, 1),
(1005, '123', '123', '123', '123', '123@admin.com', NULL, '2014-06-07 11:39:49', NULL, 1),
(1006, '111', '111', '111', '111', '1111321@123.com', NULL, '2014-06-07 11:40:16', NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yp_usermeta`
--

CREATE TABLE IF NOT EXISTS `yp_usermeta` (
  `meta_id` bigint(20) NOT NULL COMMENT 'ID ID',
  `meta_user_id` int(11) DEFAULT NULL COMMENT '用户id 用户id',
  `meta_key` varchar(200) DEFAULT NULL COMMENT '字段名 字段名',
  `meta_value` varchar(2000) DEFAULT NULL COMMENT '字段值 字段值',
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户自定义字段 用户自定义字段';

--
-- 限制导出的表
--

--
-- 限制表 `os_currentstep`
--
ALTER TABLE `os_currentstep`
  ADD CONSTRAINT `os_currentstep_ibfk_1` FOREIGN KEY (`ENTRY_ID`) REFERENCES `os_wfentry` (`ID`),
  ADD CONSTRAINT `os_currentstep_ibfk_2` FOREIGN KEY (`OWNER`) REFERENCES `os_user` (`USERNAME`),
  ADD CONSTRAINT `os_currentstep_ibfk_3` FOREIGN KEY (`CALLER`) REFERENCES `os_user` (`USERNAME`);

--
-- 限制表 `os_currentstep_prev`
--
ALTER TABLE `os_currentstep_prev`
  ADD CONSTRAINT `os_currentstep_prev_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `os_currentstep` (`ID`),
  ADD CONSTRAINT `os_currentstep_prev_ibfk_2` FOREIGN KEY (`PREVIOUS_ID`) REFERENCES `os_historystep` (`ID`);

--
-- 限制表 `os_historystep`
--
ALTER TABLE `os_historystep`
  ADD CONSTRAINT `os_historystep_ibfk_1` FOREIGN KEY (`ENTRY_ID`) REFERENCES `os_wfentry` (`ID`),
  ADD CONSTRAINT `os_historystep_ibfk_2` FOREIGN KEY (`OWNER`) REFERENCES `os_user` (`USERNAME`),
  ADD CONSTRAINT `os_historystep_ibfk_3` FOREIGN KEY (`CALLER`) REFERENCES `os_user` (`USERNAME`);

--
-- 限制表 `os_historystep_prev`
--
ALTER TABLE `os_historystep_prev`
  ADD CONSTRAINT `os_historystep_prev_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `os_historystep` (`ID`),
  ADD CONSTRAINT `os_historystep_prev_ibfk_2` FOREIGN KEY (`PREVIOUS_ID`) REFERENCES `os_historystep` (`ID`);

--
-- 限制表 `os_membership`
--
ALTER TABLE `os_membership`
  ADD CONSTRAINT `os_membership_ibfk_1` FOREIGN KEY (`USERNAME`) REFERENCES `os_user` (`USERNAME`),
  ADD CONSTRAINT `os_membership_ibfk_2` FOREIGN KEY (`GROUPNAME`) REFERENCES `os_group` (`GROUPNAME`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
