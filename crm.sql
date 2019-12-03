/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-11-28 19:25:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `khno` varchar(20) DEFAULT NULL COMMENT '客户编号',
  `name` varchar(20) DEFAULT NULL COMMENT '客户名称',
  `area` varchar(20) DEFAULT NULL COMMENT '客户地区',
  `cus_manager` varchar(20) DEFAULT NULL COMMENT '客户经理',
  `level` varchar(30) DEFAULT NULL COMMENT '客户等级',
  `myd` varchar(30) DEFAULT NULL COMMENT '客户满意度',
  `xyd` varchar(30) DEFAULT NULL COMMENT '客户信用度',
  `address` varchar(500) DEFAULT NULL COMMENT '客户地址',
  `post_code` varchar(50) DEFAULT NULL COMMENT '邮政编码',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `fax` varchar(20) DEFAULT NULL COMMENT '传真',
  `web_site` varchar(20) DEFAULT NULL COMMENT '网址',
  `yyzzzch` varchar(50) DEFAULT NULL COMMENT '营业执照注册号',
  `fr` varchar(20) DEFAULT NULL COMMENT '法人',
  `zczj` varchar(20) DEFAULT NULL COMMENT '注册资金(万元)',
  `nyye` varchar(20) DEFAULT NULL COMMENT '年营业额(万元)',
  `khyh` varchar(50) DEFAULT NULL COMMENT '开户银行',
  `khzh` varchar(50) DEFAULT NULL COMMENT '开户帐号',
  `dsdjh` varchar(50) DEFAULT NULL COMMENT '地税登记号',
  `gsdjh` varchar(50) DEFAULT NULL COMMENT '国税登记号',
  `state` int(11) DEFAULT NULL COMMENT '状态',
  `is_valid` int(4) DEFAULT '1' COMMENT '是否删除',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='客户表';

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('1', 'KH21321321', '北京大牛科技', '北京', '小张', '战略合作伙伴', '☆☆☆', '☆☆☆', '北京海淀区双榆树东里15号', '100027', '010-62263393', '010-62263393', 'www.daniu.com', '420103000057404', '张三', '1000', '5000', '中国银行', '6225231243641', '4422214321321', '4104322332', '0', '1', '2016-02-25 11:28:43', '2016-08-24 18:42:19');
INSERT INTO `t_customer` VALUES ('2', 'KH20150526073022', '风驰科技', '北京', '小红', '大客户', '☆', '☆', '321', '21', '321', '321', '321', '321', '321', '', '21', '321', '321', '321', '3213', '1', '1', '2016-01-25 12:15:19', '2016-11-28 11:46:24');
INSERT INTO `t_customer` VALUES ('17', 'KH201704131032864', 'test002', '北京', 'xxx', '大客户', '☆☆☆☆', '☆☆☆', '绿地伯顿', '2342432', '234324324', '2343', '324324', '23213', 'xxx', '10', '100', '2323', '2312321', '213123213', '3213213', '0', '1', '2016-04-13 10:32:16', '2017-04-13 10:38:08');
INSERT INTO `t_customer` VALUES ('18', 'KH2017041310391067', 'test003', '上海', 'test02', '重点开发客户', '☆☆☆☆☆', '☆☆☆☆☆', '32434', '234324', '324324', '324324', '23434', '21323', '2342', '12', '1200', '2323', '213123', '', '', '0', '1', '2016-04-13 10:39:33', '2017-04-13 10:39:33');
INSERT INTO `t_customer` VALUES ('19', null, '百度', null, null, '大客户', null, null, null, null, '2312321', null, null, null, '李彦宏', null, null, null, null, null, null, '0', '1', '2017-09-18 10:05:07', '2017-10-24 15:21:50');
INSERT INTO `t_customer` VALUES ('20', 'KH201709181013450', '腾讯', null, null, '战略合作伙伴', null, null, null, null, '123233232', null, null, null, '王飞翔', null, null, null, null, null, null, '0', '1', '2017-01-01 10:13:57', '2017-09-18 10:15:56');
INSERT INTO `t_customer` VALUES ('21', 'KH201709181112739', '阿里巴巴', '北京', 'test01', '战略合作伙伴', '☆☆☆☆☆', '☆☆☆☆☆', '浙江杭州', '324324', '23424324324', '2343', 'www.alibaba.com', '232432', '马云', '100', '100000', '杭州', '23432432', '4324324', '234324234', '0', '1', '2016-01-01 11:12:16', '2017-09-18 11:25:25');
INSERT INTO `t_customer` VALUES ('23', 'KH201710241454591', '腾讯', '上海', '聪哥', '战略合作伙伴', '☆☆☆', '☆☆☆☆', '好好学习天天向上', '0100100', '021-67690939', '021-67690939', 'www.xxx.com', '1000100100', '高琦', '1000', '1000', '花旗银行', '0020011', '001000', '12121110', '0', '1', '2017-10-24 14:54:00', null);
INSERT INTO `t_customer` VALUES ('24', 'KH201711181714105', '中南海怀仁堂', '北京', '聪哥', '战略合作伙伴', '☆☆☆☆☆', '☆☆☆☆☆', '进京城', '10086', '15811113333', '021-3333333', 'www.china.com', '10000010010', '保密', '1', '1', '央行', '1211122221', '1221231', '1231312', '0', '1', '2017-11-18 17:14:47', '2017-11-18 17:14:47');
INSERT INTO `t_customer` VALUES ('25', 'SB78415', '林正阳', '吉安', '47', '普通客户', '☆☆☆', '☆', '1', '111111', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '2019-08-20 21:18:55', '2019-08-20 21:29:48');
INSERT INTO `t_customer` VALUES ('26', '\"KB154\"', '袁雄章sb', '吉安', '\"小圆\"', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `t_customer` VALUES ('33', 'KH20191026170514', '袁雄章憨比', '上海', 'XXX', '普通客户', '☆☆☆☆☆', '☆', '4444', '44', '4', '44', '4', '44', '44', '44', '44', '44', '44', '44', '44', '0', '0', '2019-10-26 17:05:15', '2019-10-26 17:15:25');
INSERT INTO `t_customer` VALUES ('34', 'KH20191026180021', '美女', '北京', '47', '重点开发客户', '☆☆☆', '☆☆☆', '44', '44', '44', '4', '4', '44', '44', '44', '44', '4', '54', '444', '444', '0', '0', '2019-10-26 18:00:21', '2019-10-26 18:00:21');

-- ----------------------------
-- Table structure for t_customer_contact
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_contact`;
CREATE TABLE `t_customer_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) DEFAULT NULL,
  `contact_time` datetime DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `overview` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `is_valid` int(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_contact
-- ----------------------------
INSERT INTO `t_customer_contact` VALUES ('1', '1', '2015-05-14 05:00:00', '1', '2', null, null, '1');
INSERT INTO `t_customer_contact` VALUES ('2', '1', '2015-05-06 00:00:00', '12', '22', null, null, '1');
INSERT INTO `t_customer_contact` VALUES ('3', '1', '2015-08-22 00:00:00', '珠江路2', '吃饭2', null, null, '1');
INSERT INTO `t_customer_contact` VALUES ('4', '1', '2016-09-01 00:00:00', '112', '233', '2016-09-01 09:53:39', '2016-09-01 09:53:39', '0');
INSERT INTO `t_customer_contact` VALUES ('5', '1', '2016-11-22 00:00:00', '师德师风', '阿德的', '2016-11-25 09:38:37', '2016-11-25 09:38:37', '1');

-- ----------------------------
-- Table structure for t_customer_linkman
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_linkman`;
CREATE TABLE `t_customer_linkman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) DEFAULT NULL,
  `link_name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `zhiwei` varchar(50) DEFAULT NULL,
  `office_phone` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_valid` int(4) DEFAULT '1',
  `ceate_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_linkman
-- ----------------------------
INSERT INTO `t_customer_linkman` VALUES ('1', '1', '1', '男', '321', '321', '21321', '1', null, null);
INSERT INTO `t_customer_linkman` VALUES ('2', '1', '2', '女', '21', '321', '321', '1', null, null);
INSERT INTO `t_customer_linkman` VALUES ('4', '1', '3', '女', '4', '5', '6', '1', null, null);
INSERT INTO `t_customer_linkman` VALUES ('5', '1', '33', '男', '44', '55', '66', '1', null, null);
INSERT INTO `t_customer_linkman` VALUES ('6', '1', '张三', '男', '经理', '21321', '32132121', '1', null, null);
INSERT INTO `t_customer_linkman` VALUES ('7', '1', '是', '女', '发送', '2321', '321321', '1', null, null);
INSERT INTO `t_customer_linkman` VALUES ('10', '1', 'da', '女', 's', 'fd', 'fda', '1', null, null);
INSERT INTO `t_customer_linkman` VALUES ('11', '1', '老王', '男', '隔壁专业户', '122', '1233', '1', '2016-08-25 09:44:30', '2016-08-25 09:44:30');
INSERT INTO `t_customer_linkman` VALUES ('12', '1', '哈哈', '男', '胜多负少', '1323', '23423', '0', '2016-08-25 09:46:08', '2016-08-25 09:46:08');
INSERT INTO `t_customer_linkman` VALUES ('13', '1', '都是', '女', '水电费水电费', '2342', '234234', '0', '2016-08-25 09:46:24', '2016-08-25 09:46:58');
INSERT INTO `t_customer_linkman` VALUES ('14', '1', '23422sdsdf', '男', '232dsf', '24dsfs', '242sd', '0', '2016-08-25 09:46:34', '2016-08-25 09:46:34');
INSERT INTO `t_customer_linkman` VALUES ('15', '1', 'er', '女', '234', '234', '24', '1', '2016-08-25 09:56:27', '2016-08-25 09:56:27');
INSERT INTO `t_customer_linkman` VALUES ('16', '16', '哈哈', '男', 'Java', '23', '43', '1', '2016-08-25 10:01:47', '2016-08-25 10:01:47');
INSERT INTO `t_customer_linkman` VALUES ('17', '16', 'ss', '女', 'ss', '122', '3333', '1', '2016-08-31 19:31:13', '2016-08-31 19:31:13');
INSERT INTO `t_customer_linkman` VALUES ('18', '16', null, null, null, null, null, '0', '2016-11-25 09:10:43', '2016-11-25 09:10:43');
INSERT INTO `t_customer_linkman` VALUES ('19', '16', 'test001', '男', '阿斯顿21321321', '', '', '1', '2016-11-25 00:00:00', '2016-12-06 10:49:29');
INSERT INTO `t_customer_linkman` VALUES ('20', '17', '123', '男', '121·', '21·2', '1·2', '1', '2016-12-06 10:43:57', '2016-12-06 10:43:57');

-- ----------------------------
-- Table structure for t_customer_loss
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_loss`;
CREATE TABLE `t_customer_loss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_no` varchar(40) DEFAULT NULL,
  `cus_name` varchar(20) DEFAULT NULL,
  `cus_manager` varchar(20) DEFAULT NULL,
  `last_order_time` date DEFAULT NULL,
  `confirm_loss_time` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `loss_reason` varchar(1000) DEFAULT NULL,
  `is_valid` int(4) DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_loss
-- ----------------------------
INSERT INTO `t_customer_loss` VALUES ('186', 'KH20150526073022', '风驰科技', '小红', '2019-08-21', '2019-10-28 15:12:58', '1', '好帅', '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('187', 'KH20150526073022', '风驰科技', '小红', '2019-08-21', null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('188', 'KH201709181112739', '阿里巴巴', 'test01', '2019-08-21', null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('189', 'KH21321321', '北京大牛科技', '小张', null, null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('190', 'KH201704131032864', 'test002', 'xxx', null, null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('191', 'KH2017041310391067', 'test003', 'test02', null, null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('192', null, '百度', null, null, null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('193', 'KH201709181013450', '腾讯', null, null, null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('194', 'KH201710241454591', '腾讯', '聪哥', null, null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('195', 'KH201711181714105', '中南海怀仁堂', '聪哥', null, null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');
INSERT INTO `t_customer_loss` VALUES ('196', 'SB78415', '林正阳', '47', null, null, '0', null, '1', '2019-10-28 11:40:01', '2019-10-28 11:40:01');

-- ----------------------------
-- Table structure for t_customer_order
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_order`;
CREATE TABLE `t_customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) DEFAULT NULL,
  `order_no` varchar(40) DEFAULT NULL COMMENT '订单编号',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `state` int(11) DEFAULT NULL COMMENT '支付状态',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `is_valid` int(4) DEFAULT '1' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='客户订单';

-- ----------------------------
-- Records of t_customer_order
-- ----------------------------
INSERT INTO `t_customer_order` VALUES ('5', '2', '7', '2019-08-21 14:56:10', '2132', '1', '2016-01-29 14:56:15', '2016-11-29 14:56:17', '1');
INSERT INTO `t_customer_order` VALUES ('6', '2', '5', '2019-08-21 14:56:26', '213', '1', '2016-10-19 14:56:30', '2016-11-29 14:56:32', '1');
INSERT INTO `t_customer_order` VALUES ('7', '21', '6', '2019-08-21 17:27:31', '234324', '1', '2017-01-01 17:27:13', '2017-01-01 17:27:21', '1');

-- ----------------------------
-- Table structure for t_customer_reprieve
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_reprieve`;
CREATE TABLE `t_customer_reprieve` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `loss_id` int(11) DEFAULT NULL COMMENT '流失id',
  `measure` varchar(500) DEFAULT NULL COMMENT '暂时措施',
  `is_valid` int(4) DEFAULT '1' COMMENT '是否删除',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_reprieve
-- ----------------------------
INSERT INTO `t_customer_reprieve` VALUES ('44', '183', '请客户吃饭', '1', '2017-05-25 17:06:05', '2017-09-19 11:49:37');
INSERT INTO `t_customer_reprieve` VALUES ('45', '183', '客户请客', '1', '2017-05-25 00:00:00', '2017-09-19 11:49:36');
INSERT INTO `t_customer_reprieve` VALUES ('46', '183', 'test', '0', '2017-05-25 18:03:11', '2017-05-25 18:03:11');
INSERT INTO `t_customer_reprieve` VALUES ('47', '183', '请马云吃顿饭_河马生鲜', '1', '2017-09-19 11:17:04', '2017-09-19 11:49:26');
INSERT INTO `t_customer_reprieve` VALUES ('48', '183', '23423434343534534', '0', '2017-09-19 11:23:16', '2017-09-19 11:49:25');
INSERT INTO `t_customer_reprieve` VALUES ('49', '183', '你好呀111111', '1', '2019-08-21 00:00:00', '2019-08-21 20:50:45');
INSERT INTO `t_customer_reprieve` VALUES ('50', '184', '喝酒', '1', '2019-08-21 20:45:10', '2019-08-21 20:45:10');
INSERT INTO `t_customer_reprieve` VALUES ('51', '184', '吃饭', '1', '2019-08-21 20:45:16', '2019-08-21 20:45:16');
INSERT INTO `t_customer_reprieve` VALUES ('52', '184', '烫头', '1', '2019-08-21 20:45:24', '2019-08-21 20:45:24');
INSERT INTO `t_customer_reprieve` VALUES ('53', '186', '喝酒', '0', '2019-10-28 14:12:06', '2019-10-28 14:12:06');
INSERT INTO `t_customer_reprieve` VALUES ('54', '186', '喝酒', '1', '2019-10-28 14:16:42', '2019-10-28 14:16:42');
INSERT INTO `t_customer_reprieve` VALUES ('55', '186', '泡澡', '1', '2019-10-28 14:16:53', '2019-10-28 14:16:53');

-- ----------------------------
-- Table structure for t_customer_serve
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_serve`;
CREATE TABLE `t_customer_serve` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `serve_type` varchar(30) DEFAULT NULL COMMENT '服务类型',
  `overview` varchar(500) DEFAULT NULL COMMENT '概要',
  `customer` varchar(30) DEFAULT NULL COMMENT '客户',
  `state` varchar(20) DEFAULT NULL COMMENT '状态（1 创建未分配未分配   2 分配未处理 3 ',
  `service_request` varchar(500) DEFAULT NULL COMMENT '服务请求',
  `create_people` varchar(100) DEFAULT NULL COMMENT '创建人',
  `assigner` varchar(100) DEFAULT NULL COMMENT '分配人',
  `assign_time` datetime DEFAULT NULL COMMENT '分配时间',
  `service_proce` varchar(500) DEFAULT NULL COMMENT '处理内容',
  `service_proce_people` varchar(20) DEFAULT NULL,
  `service_proce_time` datetime DEFAULT NULL,
  `service_proce_result` varchar(500) DEFAULT NULL,
  `myd` varchar(50) DEFAULT NULL COMMENT '等级',
  `is_valid` int(4) DEFAULT '1' COMMENT '是否删除',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='服务管理';

-- ----------------------------
-- Records of t_customer_serve
-- ----------------------------
INSERT INTO `t_customer_serve` VALUES ('55', '咨询', '百度产品如何？？？', '百度', '5', '百度产品 echarts  ,ueditor 良心产品', 'xxx', 'admin', '2017-09-19 00:00:00', 'sdsaassdfdsfsdfsdfsd', 'xxx', '2017-09-19 00:00:00', 'ok', '☆☆☆☆☆', '1', '2017-09-19 17:06:36', '2017-09-19 00:00:00');
INSERT INTO `t_customer_serve` VALUES ('56', '建议', 'crm 系统有待改进', '码歌', '5', 'crm 需要分角色进行操作  这样更合理！！！', 'xxx', 'admin', '2017-09-19 00:00:00', 'sdfsfdsdsderwerewrewr', 'xxx', '2017-09-19 00:00:00', 'ok', '☆☆☆☆', '1', '2017-09-19 17:09:52', '2017-09-19 00:00:00');
INSERT INTO `t_customer_serve` VALUES ('57', '咨询', '巨人巨人  网络如何？？？', '巨人网络', '1', '巨人巨人  网络如何？？？', 'xxx', null, null, null, null, null, null, null, '1', '2017-09-21 10:29:31', '2017-09-21 10:29:31');
INSERT INTO `t_customer_serve` VALUES ('58', '咨询', '菜鸟物流有点慢   需要提高效率', '菜鸟联盟', '1', '菜鸟物流有点慢   需要提高效率', 'xxx', null, null, null, null, null, null, null, '1', '2017-09-21 10:30:09', '2017-09-21 10:30:09');
INSERT INTO `t_customer_serve` VALUES ('59', '建议', '每天奖励金有点少  需要加量', '阿里巴巴', '1', '每天奖励金有点少  需要加量', 'xxx', null, null, null, null, null, null, null, '1', '2017-09-21 10:30:45', '2017-09-21 10:30:45');
INSERT INTO `t_customer_serve` VALUES ('60', '投诉', '百度推广虚假信息太多  需要严格审查！！！', '百度', '1', '百度推广虚假信息太多  需要严格审查！！！', 'xxx', null, null, null, null, null, null, null, '1', '2017-09-21 10:31:23', '2017-09-21 10:31:23');
INSERT INTO `t_customer_serve` VALUES ('61', '哈哈', '没事找事~~~', '奥巴马', '5', '暂时不知道', '', '聪哥', null, '就是不处理', '', null, '已经获取到了', '☆☆☆☆', '1', '2017-10-25 16:06:36', null);
INSERT INTO `t_customer_serve` VALUES ('62', '哈哈', '没事找事~~~', '奥巴马', '1', '暂时不知道', '', null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `t_customer_serve` VALUES ('63', '建议', '惺惺惜惺惺', '特朗普', '2', '特斯拉', 'xxx', '聪哥', '2017-11-21 14:51:08', null, null, null, null, null, '1', '2017-11-21 14:51:08', '2017-10-25 03:08:14');
INSERT INTO `t_customer_serve` VALUES ('64', '建议', '我暂时还没。。。', '小兮', '1', '踩踩踩', 'xxx', null, null, null, null, null, null, null, '1', null, '2017-10-25 15:14:37');
INSERT INTO `t_customer_serve` VALUES ('65', '咨询', '咨询Java实战教学课程', '学员', '3', '需要上课视频', '', '聪哥', null, '已经处理完成', null, null, null, null, '1', '2017-10-25 16:09:39', '2017-10-24 00:00:00');
INSERT INTO `t_customer_serve` VALUES ('66', '建议', '孔乙己要讲Java课程', '孔乙己', '2', '后天处理', '黑老大', '聪哥', null, null, null, null, null, null, '1', '2017-10-25 16:08:05', '2017-10-25 00:00:00');
INSERT INTO `t_customer_serve` VALUES ('67', '投诉', 'JAVA 实战高级项目代码太多', '鲁迅', '5', '需要减少代码量', 'xxx', '聪哥', null, '后续功能不写了。。。', '', null, '', '☆☆☆☆', '1', '2017-10-25 16:21:45', '2017-10-23 00:00:00');
INSERT INTO `t_customer_serve` VALUES ('68', '投诉', '代码太多,看的眼花缭乱', '河马', '2', '哈哈', '道哥', '聪哥', null, null, null, null, null, null, '1', '2017-11-21 14:45:58', '2017-11-21 11:32:14');
INSERT INTO `t_customer_serve` VALUES ('69', '咨询', 'S8符文。。。。', '马化腾', '5', '淡定。如何操作', '码云', '聪哥', '2017-11-21 15:05:01', '自己看操作视频学习', '', null, '没学会直接卸载', '☆☆☆', '1', '2017-11-21 15:05:01', '2017-11-21 03:02:13');
INSERT INTO `t_customer_serve` VALUES ('70', '咨询', '666', '666', '1', '666', 'XXX', null, null, null, null, null, null, null, '1', '2019-08-21 22:28:44', '2019-08-21 22:28:44');
INSERT INTO `t_customer_serve` VALUES ('71', '咨询', '777', '777', '3', '777', 'XXX', 'XXX', '2019-08-21 00:00:00', '服务', '47', null, null, null, '1', '2019-08-21 23:05:11', '2019-08-21 00:00:00');
INSERT INTO `t_customer_serve` VALUES ('72', '建议', '888', '888', '5', '888', 'XXX', 'XXX', '2019-08-21 00:00:00', '太好了', '47', null, 'aaa ', '☆☆', '1', '2019-08-21 23:13:12', '2019-08-21 00:00:00');
INSERT INTO `t_customer_serve` VALUES ('73', '咨询', '999', '999', '5', '999', 'XXX', 'XXX', '2019-08-21 00:00:00', '999', '47', null, 'aaa ', '☆☆', '1', '2019-08-21 23:14:09', '2019-08-21 00:00:00');
INSERT INTO `t_customer_serve` VALUES ('74', '咨询', '怎么治疗痔疮', '林正阳', '5', '提供方法', '小圆', '小圆', '2019-10-28 00:00:00', '建议割掉', 'XXX', '2019-10-28 00:00:00', '割屁股', '☆☆☆☆☆', '1', '2019-10-28 21:04:59', '2019-10-28 00:00:00');

-- ----------------------------
-- Table structure for t_cus_dev_plan
-- ----------------------------
DROP TABLE IF EXISTS `t_cus_dev_plan`;
CREATE TABLE `t_cus_dev_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_chance_id` int(11) DEFAULT NULL COMMENT '营销机会id',
  `plan_item` varchar(100) DEFAULT NULL COMMENT '计划详情',
  `plan_date` datetime DEFAULT NULL COMMENT '计划时间',
  `exe_affect` varchar(100) DEFAULT NULL COMMENT '预期效果',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `is_valid` int(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_t_cus_dev_plan` (`sale_chance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cus_dev_plan
-- ----------------------------
INSERT INTO `t_cus_dev_plan` VALUES ('69', '55', 'test01', '2017-02-28 00:00:00', 'test01', '2017-02-28 00:00:00', '2017-02-28 21:06:24', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('70', '55', 'test02', '2017-02-28 00:00:00', 'test02', '2017-02-28 00:00:00', '2017-02-28 21:06:25', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('71', '55', 'test03', '2017-02-28 00:00:00', 'test03', '2017-02-28 16:44:17', '2017-02-28 16:44:17', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('72', '55', 'test06', '2017-02-27 00:00:00', 'test06', '2017-02-28 00:00:00', '2017-02-28 16:48:11', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('73', '55', 'test05', '2017-02-22 00:00:00', 'test05', '2017-02-28 00:00:00', '2017-02-28 16:48:10', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('74', '54', '23424', '2017-02-23 00:00:00', '234324', '2017-02-28 21:08:02', '2017-02-28 21:08:02', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('75', '52', '123213', '2017-04-10 00:00:00', '21321', '2017-04-10 19:06:06', '2017-04-10 19:06:06', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('76', '56', 'qqqq', '2017-04-11 00:00:00', 'qqqq', '2017-04-11 16:37:24', '2017-04-11 16:37:24', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('77', '56', '345435', '2017-04-11 00:00:00', '345435', '2017-04-11 00:00:00', '2017-04-11 16:52:06', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('78', '56', '456546', '2017-04-27 00:00:00', '456546', '2017-04-11 00:00:00', '2017-04-11 16:52:18', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('79', '56', '567657', '2017-04-10 00:00:00', '567657', '2017-04-11 16:52:13', '2017-04-11 16:52:13', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('80', '62', 'test20', '2017-05-20 00:00:00', 'ok', '2017-05-23 16:22:51', '2017-05-23 16:32:34', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('81', '62', '234343', '2017-05-22 00:00:00', 'ok', '2017-05-23 16:28:41', '2017-05-23 16:28:41', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('82', '62', '345435', '2017-05-30 00:00:00', '345435', '2017-05-23 16:37:05', '2017-05-23 16:37:05', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('83', '62', '345435', '2017-05-31 00:00:00', '345435', '2017-05-23 16:37:13', '2017-05-23 16:37:13', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('86', '55', '111', '2017-09-16 00:45:41', 'qqq', '2017-09-16 00:45:41', '2017-09-16 00:45:41', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('87', '55', '111', '2017-09-16 00:00:00', 'qqq', '2017-09-16 00:45:50', '2017-09-16 00:45:50', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('88', '55', '111', '2017-09-16 00:45:55', 'qqq', '2017-09-16 00:45:55', '2017-09-16 00:45:55', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('89', '57', '3434543', '2017-09-16 00:00:00', 'ok', '2017-09-16 11:42:03', '2017-09-16 11:42:03', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('90', '57', '34353', '2017-09-16 00:00:00', 'ok', '2017-09-16 11:43:28', '2017-09-16 11:43:28', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('91', '57', '678678', '2017-09-02 00:00:00', '678678', '2017-09-16 11:44:16', '2017-09-16 11:44:16', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('92', '57', 'aaaa', '2017-09-16 00:00:00', '678678', '2017-09-16 11:59:24', '2017-09-16 11:59:24', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('93', '57', 'abc', '2017-09-16 00:00:00', '678678', '2017-09-16 11:59:56', '2017-09-16 11:59:56', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('94', '57', '客户即将开发成功', '2017-09-16 00:00:00', 'very good', '2017-09-16 12:01:35', '2017-09-16 12:01:35', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('95', '60', '上门拜访', '2017-10-19 00:00:00', '暂无效果', null, null, '1');
INSERT INTO `t_cus_dev_plan` VALUES ('96', '60', 'sssss', '2017-10-05 00:00:00', 'sssss', null, null, '1');
INSERT INTO `t_cus_dev_plan` VALUES ('97', '60', 'www', '2017-10-19 00:00:00', 'www', null, null, '1');
INSERT INTO `t_cus_dev_plan` VALUES ('98', '60', 'ffff', '2017-10-18 00:00:00', 'ffffff', null, null, '1');
INSERT INTO `t_cus_dev_plan` VALUES ('99', '66', '上公司拜访', '2017-11-14 00:00:00', 'ok', '2017-11-18 10:54:44', '2017-11-18 10:54:44', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('100', '66', '不能说的秘密', '2017-11-16 00:00:00', '那就不说了', '2017-11-18 10:56:10', '2017-11-18 11:03:55', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('103', '66', '告别气球', '2017-11-30 00:00:00', '飞天', '2017-11-18 11:05:20', '2017-11-18 11:05:20', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('104', '80', '测试类型', '2017-11-22 00:00:00', '测试结果', '2017-11-18 11:31:26', '2017-11-18 11:31:26', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('105', '87', '请你去网吧打lol，带你飞', '2019-06-04 00:00:00', '掉到了白银', '2019-06-04 10:34:29', '2019-06-04 10:34:29', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('106', '87', '请你去ktv', '2019-06-05 00:00:00', '唱的太难听了', '2019-06-04 10:34:59', '2019-06-04 10:34:59', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('107', '87', '请你去游乐园', '2019-06-06 00:00:00', '晕死了', '2019-06-04 10:35:38', '2019-06-04 10:35:38', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('108', '82', '222', '2019-06-04 00:00:00', '1000', '2019-06-04 16:59:09', '2019-06-04 16:59:09', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('109', '87', '1', '2019-06-11 00:00:00', '1', '2019-06-04 16:59:55', '2019-06-04 16:59:55', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('110', '88', '吃饭跳舞', '2019-08-20 00:00:00', '喝多', '2019-08-20 00:00:00', '2019-08-20 16:49:40', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('111', '88', '唱歌喝酒', '2019-08-21 00:00:00', '唱的太难听了', '2019-08-20 00:00:00', '2019-08-20 16:49:32', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('112', '85', '1', '2019-08-29 00:00:00', '1', '2019-08-20 17:48:20', '2019-08-20 17:48:20', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('113', '82', '444', '2019-10-28 00:00:00', '444', '2019-10-24 22:11:15', '2019-10-24 22:11:15', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('114', '82', 'haixinf', '2019-10-21 00:00:00', '454', '2019-10-25 13:19:33', '2019-10-25 13:19:33', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('115', '91', '喝酒', '2019-10-21 00:00:00', '还行', '2019-10-25 13:27:52', '2019-10-25 13:27:52', '1');
INSERT INTO `t_cus_dev_plan` VALUES ('116', '93', '得到', '2019-10-22 00:00:00', '士大夫', '2019-10-25 14:54:27', '2019-10-25 14:54:27', '0');
INSERT INTO `t_cus_dev_plan` VALUES ('117', '93', '傅海峰', '2019-10-28 00:00:00', '将克鲁尼', '2019-10-25 15:14:28', '2019-10-25 15:14:28', '1');

-- ----------------------------
-- Table structure for t_datadic
-- ----------------------------
DROP TABLE IF EXISTS `t_datadic`;
CREATE TABLE `t_datadic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_dic_name` varchar(50) DEFAULT NULL,
  `data_dic_value` varchar(50) DEFAULT NULL,
  `is_valid` tinyint(4) DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t_datadic` (`data_dic_value`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_datadic
-- ----------------------------
INSERT INTO `t_datadic` VALUES ('1', '客户等级', '普通客户', '1', null, null);
INSERT INTO `t_datadic` VALUES ('2', '客户等级', '重点开发客户', '1', null, null);
INSERT INTO `t_datadic` VALUES ('3', '客户等级', '大客户', '1', null, null);
INSERT INTO `t_datadic` VALUES ('4', '客户等级', '合作伙伴', '1', null, null);
INSERT INTO `t_datadic` VALUES ('5', '客户等级', '战略合作伙伴', '1', null, null);
INSERT INTO `t_datadic` VALUES ('6', '服务类型', '咨询', '1', null, null);
INSERT INTO `t_datadic` VALUES ('7', '服务类型', '建议', '1', null, null);
INSERT INTO `t_datadic` VALUES ('8', '服务类型', '投诉', '1', null, '2016-08-24 15:48:46');
INSERT INTO `t_datadic` VALUES ('9', '客户等级', '不小的客户', '0', '2016-08-24 15:48:21', '2016-08-24 15:51:10');
INSERT INTO `t_datadic` VALUES ('10', '服务类型', '哈哈', '0', '2016-08-24 15:49:47', '2016-08-24 15:51:10');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `request_ip` varchar(255) DEFAULT NULL,
  `exception_code` varchar(255) DEFAULT NULL,
  `exception_detail` varchar(255) DEFAULT NULL,
  `params` text,
  `execute_time` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_man` varchar(255) DEFAULT NULL,
  `result` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('313', '营销机会管理_列表查询', 'public java.util.Map com.xxx.crm.controller.SaleChanceController.querySaleChancesByParams(com.xxx.crm.query.SaleChanceQuery)', '0', '0:0:0:0:0:0:0:1', null, null, '{\"page\":[\"1\"],\"rows\":[\"10\"]}', '41', '2017-10-16 13:16:38', 'bjmage', '{\"total\":11,\"rows\":[{\"assignMan\":\"test02\",\"assignTime\":1488263089000,\"cgjl\":\"80\",\"chanceSource\":\"xxx\",\"createDate\":1488262787000,\"createMan\":\"Tony\",\"customerName\":\"test002\",\"description\":\"23\",\"devResult\":2,\"id\":52,\"isValid\":1,\"linkMan\":\"12312\",\"linkPhone\":\"213\",\"overview\":\"mage\",\"state\":1,\"updateDate\":1488263089000},{\"assignMan\":\"test01\",\"assignTime\":1488262862000,\"cgjl\":\"10\",\"chanceSource\":\"mage\",\"createDate\":1488262847000,\"createMan\":\"\",\"customerName\":\"test006\",\"description\":\"213\",\"devResult\":2,\"id\":53,\"isValid\":1,\"linkMan\":\"laoli\",\"linkPhone\":\"213\",\"overview\":\"21313\",\"state\":1,\"updateDate\":1488262862000},{\"assignMan\":\"test02\",\"assignTime\":1488263814000,\"cgjl\":\"20\",\"chanceSource\":\"234324\",\"createDate\":1488263814000,\"createMan\":\"\",\"customerName\":\"234234\",\"description\":\"23432432\",\"devResult\":3,\"id\":54,\"isValid\":1,\"linkMan\":\"32432\",\"linkPhone\":\"32\",\"overview\":\"324234\",\"state\":1,\"updateDate\":1488263814000},{\"assignMan\":\"test01\",\"assignTime\":1488263825000,\"cgjl\":\"60\",\"chanceSource\":\"324\",\"createDate\":1488263825000,\"createMan\":\"\",\"customerName\":\"324\",\"description\":\"32432\",\"devResult\":2,\"id\":55,\"isValid\":1,\"linkMan\":\"24\",\"linkPhone\":\"32\",\"overview\":\"234\",\"state\":1,\"updateDate\":1488263825000},{\"assignMan\":\"mage\",\"assignTime\":1491881918000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1491881651000,\"createMan\":\"mage\",\"customerName\":\"码歌\",\"description\":\"\",\"devResult\":2,\"id\":57,\"isValid\":1,\"linkMan\":\"老马\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491881918000},{\"assignMan\":\"sadsasdsadsad\",\"assignTime\":1491882027000,\"cgjl\":\"80\",\"chanceSource\":\"test004\",\"createDate\":1491882004000,\"createMan\":\"mage\",\"customerName\":\"test004\",\"description\":\"\",\"devResult\":3,\"id\":59,\"isValid\":1,\"linkMan\":\"test003\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491882027000},{\"assignMan\":\"test\",\"assignTime\":1495507364000,\"cgjl\":\"80\",\"chanceSource\":\"码歌推荐\",\"createDate\":1495507306000,\"createMan\":\"mage\",\"customerName\":\"mage\",\"devResult\":2,\"id\":62,\"isValid\":1,\"state\":1,\"updateDate\":1495507364000},{\"assignMan\":\"老裴\",\"assignTime\":1495510376000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1495510100000,\"createMan\":\"mage\",\"customerName\":\"test04\",\"description\":\"213\",\"devResult\":0,\"id\":66,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1495510376000},{\"cgjl\":\"1\",\"chanceSource\":\"来自百度推荐\",\"createDate\":1505456616000,\"createMan\":\"admin\",\"customerName\":\"上海码歌\",\"devResult\":0,\"id\":69,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"232432423432\",\"state\":0,\"updateDate\":1505456616000},{\"assignMan\":\"admin\",\"assignTime\":1505546800000,\"cgjl\":\"10\",\"chanceSource\":\"123213213\",\"createDate\":1505546800000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"123213\",\"devResult\":0,\"id\":76,\"isValid\":1,\"linkMan\":\"123213\",\"linkPhone\":\"123213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1505546800000}]}');
INSERT INTO `t_log` VALUES ('314', '营销机会管理_列表查询', 'public java.util.Map com.xxx.crm.controller.SaleChanceController.querySaleChancesByParams(com.xxx.crm.query.SaleChanceQuery)', '0', '0:0:0:0:0:0:0:1', null, null, '{\"page\":[\"1\"],\"rows\":[\"10\"]}', '15', '2017-10-16 13:36:53', 'bjmage', '{\"total\":11,\"rows\":[{\"assignMan\":\"test02\",\"assignTime\":1488263089000,\"cgjl\":\"80\",\"chanceSource\":\"xxx\",\"createDate\":1488262787000,\"createMan\":\"Tony\",\"customerName\":\"test002\",\"description\":\"23\",\"devResult\":2,\"id\":52,\"isValid\":1,\"linkMan\":\"12312\",\"linkPhone\":\"213\",\"overview\":\"mage\",\"state\":1,\"updateDate\":1488263089000},{\"assignMan\":\"test01\",\"assignTime\":1488262862000,\"cgjl\":\"10\",\"chanceSource\":\"mage\",\"createDate\":1488262847000,\"createMan\":\"\",\"customerName\":\"test006\",\"description\":\"213\",\"devResult\":2,\"id\":53,\"isValid\":1,\"linkMan\":\"laoli\",\"linkPhone\":\"213\",\"overview\":\"21313\",\"state\":1,\"updateDate\":1488262862000},{\"assignMan\":\"test02\",\"assignTime\":1488263814000,\"cgjl\":\"20\",\"chanceSource\":\"234324\",\"createDate\":1488263814000,\"createMan\":\"\",\"customerName\":\"234234\",\"description\":\"23432432\",\"devResult\":3,\"id\":54,\"isValid\":1,\"linkMan\":\"32432\",\"linkPhone\":\"32\",\"overview\":\"324234\",\"state\":1,\"updateDate\":1488263814000},{\"assignMan\":\"test01\",\"assignTime\":1488263825000,\"cgjl\":\"60\",\"chanceSource\":\"324\",\"createDate\":1488263825000,\"createMan\":\"\",\"customerName\":\"324\",\"description\":\"32432\",\"devResult\":2,\"id\":55,\"isValid\":1,\"linkMan\":\"24\",\"linkPhone\":\"32\",\"overview\":\"234\",\"state\":1,\"updateDate\":1488263825000},{\"assignMan\":\"mage\",\"assignTime\":1491881918000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1491881651000,\"createMan\":\"mage\",\"customerName\":\"码歌\",\"description\":\"\",\"devResult\":2,\"id\":57,\"isValid\":1,\"linkMan\":\"老马\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491881918000},{\"assignMan\":\"sadsasdsadsad\",\"assignTime\":1491882027000,\"cgjl\":\"80\",\"chanceSource\":\"test004\",\"createDate\":1491882004000,\"createMan\":\"mage\",\"customerName\":\"test004\",\"description\":\"\",\"devResult\":3,\"id\":59,\"isValid\":1,\"linkMan\":\"test003\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491882027000},{\"assignMan\":\"test\",\"assignTime\":1495507364000,\"cgjl\":\"80\",\"chanceSource\":\"码歌推荐\",\"createDate\":1495507306000,\"createMan\":\"mage\",\"customerName\":\"mage\",\"devResult\":2,\"id\":62,\"isValid\":1,\"state\":1,\"updateDate\":1495507364000},{\"assignMan\":\"老裴\",\"assignTime\":1495510376000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1495510100000,\"createMan\":\"mage\",\"customerName\":\"test04\",\"description\":\"213\",\"devResult\":0,\"id\":66,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1495510376000},{\"cgjl\":\"1\",\"chanceSource\":\"来自百度推荐\",\"createDate\":1505456616000,\"createMan\":\"admin\",\"customerName\":\"上海码歌\",\"devResult\":0,\"id\":69,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"232432423432\",\"state\":0,\"updateDate\":1505456616000},{\"assignMan\":\"admin\",\"assignTime\":1505546800000,\"cgjl\":\"10\",\"chanceSource\":\"123213213\",\"createDate\":1505546800000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"123213\",\"devResult\":0,\"id\":76,\"isValid\":1,\"linkMan\":\"123213\",\"linkPhone\":\"123213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1505546800000}]}');
INSERT INTO `t_log` VALUES ('315', '营销机会管理_列表查询', 'public java.util.Map com.xxx.crm.controller.SaleChanceController.querySaleChancesByParams(com.xxx.crm.query.SaleChanceQuery)', '0', '0:0:0:0:0:0:0:1', null, null, '{\"state\":[\"1\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', '107', '2017-10-24 20:02:39', 'bjmage', '{\"total\":10,\"rows\":[{\"assignMan\":\"test02\",\"assignTime\":1488263089000,\"cgjl\":\"80\",\"chanceSource\":\"xxx\",\"createDate\":1488262787000,\"createMan\":\"Tony\",\"customerName\":\"test002\",\"description\":\"23\",\"devResult\":2,\"id\":52,\"isValid\":1,\"linkMan\":\"12312\",\"linkPhone\":\"213\",\"overview\":\"mage\",\"state\":1,\"updateDate\":1488263089000},{\"assignMan\":\"test01\",\"assignTime\":1488262862000,\"cgjl\":\"10\",\"chanceSource\":\"mage\",\"createDate\":1488262847000,\"createMan\":\"\",\"customerName\":\"test006\",\"description\":\"213\",\"devResult\":2,\"id\":53,\"isValid\":1,\"linkMan\":\"laoli\",\"linkPhone\":\"213\",\"overview\":\"21313\",\"state\":1,\"updateDate\":1488262862000},{\"assignMan\":\"test02\",\"assignTime\":1488263814000,\"cgjl\":\"20\",\"chanceSource\":\"234324\",\"createDate\":1488263814000,\"createMan\":\"\",\"customerName\":\"234234\",\"description\":\"23432432\",\"devResult\":3,\"id\":54,\"isValid\":1,\"linkMan\":\"32432\",\"linkPhone\":\"32\",\"overview\":\"324234\",\"state\":1,\"updateDate\":1488263814000},{\"assignMan\":\"test01\",\"assignTime\":1488263825000,\"cgjl\":\"60\",\"chanceSource\":\"324\",\"createDate\":1488263825000,\"createMan\":\"\",\"customerName\":\"324\",\"description\":\"32432\",\"devResult\":2,\"id\":55,\"isValid\":1,\"linkMan\":\"24\",\"linkPhone\":\"32\",\"overview\":\"234\",\"state\":1,\"updateDate\":1488263825000},{\"assignMan\":\"mage\",\"assignTime\":1491881918000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1491881651000,\"createMan\":\"mage\",\"customerName\":\"码歌\",\"description\":\"\",\"devResult\":2,\"id\":57,\"isValid\":1,\"linkMan\":\"老马\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491881918000},{\"assignMan\":\"sadsasdsadsad\",\"assignTime\":1491882027000,\"cgjl\":\"80\",\"chanceSource\":\"test004\",\"createDate\":1491882004000,\"createMan\":\"mage\",\"customerName\":\"test004\",\"description\":\"\",\"devResult\":3,\"id\":59,\"isValid\":1,\"linkMan\":\"test003\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491882027000},{\"assignMan\":\"test\",\"assignTime\":1495507364000,\"cgjl\":\"80\",\"chanceSource\":\"码歌推荐\",\"createDate\":1495507306000,\"createMan\":\"mage\",\"customerName\":\"mage\",\"devResult\":2,\"id\":62,\"isValid\":1,\"state\":1,\"updateDate\":1495507364000},{\"assignMan\":\"老裴\",\"assignTime\":1495510376000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1495510100000,\"createMan\":\"mage\",\"customerName\":\"test04\",\"description\":\"213\",\"devResult\":0,\"id\":66,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1495510376000},{\"assignMan\":\"admin\",\"assignTime\":1505546800000,\"cgjl\":\"10\",\"chanceSource\":\"123213213\",\"createDate\":1505546800000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"123213\",\"devResult\":0,\"id\":76,\"isValid\":1,\"linkMan\":\"123213\",\"linkPhone\":\"123213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1505546800000},{\"assignMan\":\"12\",\"assignTime\":1506597641000,\"cgjl\":\"12\",\"chanceSource\":\"23432\",\"createDate\":1506597641000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"213\",\"devResult\":0,\"id\":78,\"isValid\":1,\"linkMan\":\"2132\",\"linkPhone\":\"213\",\"overview\":\"1212\",\"state\":1,\"updateDate\":1506597641000}]}');
INSERT INTO `t_log` VALUES ('316', '营销机会管理_列表查询', 'public java.util.Map com.xxx.crm.controller.SaleChanceController.querySaleChancesByParams(com.xxx.crm.query.SaleChanceQuery)', '0', '0:0:0:0:0:0:0:1', null, null, '{\"state\":[\"1\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', '107', '2017-10-24 20:02:39', 'bjxxx', '{\"total\":10,\"rows\":[{\"assignMan\":\"test02\",\"assignTime\":1488263089000,\"cgjl\":\"80\",\"chanceSource\":\"xxx\",\"createDate\":1488262787000,\"createMan\":\"Tony\",\"customerName\":\"test002\",\"description\":\"23\",\"devResult\":2,\"id\":52,\"isValid\":1,\"linkMan\":\"12312\",\"linkPhone\":\"213\",\"overview\":\"xxx\",\"state\":1,\"updateDate\":1488263089000},{\"assignMan\":\"test01\",\"assignTime\":1488262862000,\"cgjl\":\"10\",\"chanceSource\":\"xxx\",\"createDate\":1488262847000,\"createMan\":\"\",\"customerName\":\"test006\",\"description\":\"213\",\"devResult\":2,\"id\":53,\"isValid\":1,\"linkMan\":\"laoli\",\"linkPhone\":\"213\",\"overview\":\"21313\",\"state\":1,\"updateDate\":1488262862000},{\"assignMan\":\"test02\",\"assignTime\":1488263814000,\"cgjl\":\"20\",\"chanceSource\":\"234324\",\"createDate\":1488263814000,\"createMan\":\"\",\"customerName\":\"234234\",\"description\":\"23432432\",\"devResult\":3,\"id\":54,\"isValid\":1,\"linkMan\":\"32432\",\"linkPhone\":\"32\",\"overview\":\"324234\",\"state\":1,\"updateDate\":1488263814000},{\"assignMan\":\"test01\",\"assignTime\":1488263825000,\"cgjl\":\"60\",\"chanceSource\":\"324\",\"createDate\":1488263825000,\"createMan\":\"\",\"customerName\":\"324\",\"description\":\"32432\",\"devResult\":2,\"id\":55,\"isValid\":1,\"linkMan\":\"24\",\"linkPhone\":\"32\",\"overview\":\"234\",\"state\":1,\"updateDate\":1488263825000},{\"assignMan\":\"xxx\",\"assignTime\":1491881918000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1491881651000,\"createMan\":\"xxx\",\"customerName\":\"码歌\",\"description\":\"\",\"devResult\":2,\"id\":57,\"isValid\":1,\"linkMan\":\"老马\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491881918000},{\"assignMan\":\"sadsasdsadsad\",\"assignTime\":1491882027000,\"cgjl\":\"80\",\"chanceSource\":\"test004\",\"createDate\":1491882004000,\"createMan\":\"xxx\",\"customerName\":\"test004\",\"description\":\"\",\"devResult\":3,\"id\":59,\"isValid\":1,\"linkMan\":\"test003\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491882027000},{\"assignMan\":\"test\",\"assignTime\":1495507364000,\"cgjl\":\"80\",\"chanceSource\":\"码歌推荐\",\"createDate\":1495507306000,\"createMan\":\"xxx\",\"customerName\":\"xxx\",\"devResult\":2,\"id\":62,\"isValid\":1,\"state\":1,\"updateDate\":1495507364000},{\"assignMan\":\"老裴\",\"assignTime\":1495510376000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1495510100000,\"createMan\":\"xxx\",\"customerName\":\"test04\",\"description\":\"213\",\"devResult\":0,\"id\":66,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1495510376000},{\"assignMan\":\"admin\",\"assignTime\":1505546800000,\"cgjl\":\"10\",\"chanceSource\":\"123213213\",\"createDate\":1505546800000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"123213\",\"devResult\":0,\"id\":76,\"isValid\":1,\"linkMan\":\"123213\",\"linkPhone\":\"123213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1505546800000},{\"assignMan\":\"12\",\"assignTime\":1506597641000,\"cgjl\":\"12\",\"chanceSource\":\"23432\",\"createDate\":1506597641000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"213\",\"devResult\":0,\"id\":78,\"isValid\":1,\"linkMan\":\"2132\",\"linkPhone\":\"213\",\"overview\":\"1212\",\"state\":1,\"updateDate\":1506597641000}]}');
INSERT INTO `t_log` VALUES ('317', '营销机会管理_列表查询', 'public java.util.Map com.xxx.crm.controller.SaleChanceController.querySaleChancesByParams(com.xxx.crm.query.SaleChanceQuery)', '0', '0:0:0:0:0:0:0:1', null, null, '{\"page\":[\"1\"],\"rows\":[\"10\"]}', '10', '2017-10-24 20:02:43', 'bjmage', '{\"total\":11,\"rows\":[{\"assignMan\":\"test02\",\"assignTime\":1488263089000,\"cgjl\":\"80\",\"chanceSource\":\"mage\",\"createDate\":1488262787000,\"createMan\":\"Tony\",\"customerName\":\"test002\",\"description\":\"23\",\"devResult\":2,\"id\":52,\"isValid\":1,\"linkMan\":\"12312\",\"linkPhone\":\"213\",\"overview\":\"mage\",\"state\":1,\"updateDate\":1488263089000},{\"assignMan\":\"test01\",\"assignTime\":1488262862000,\"cgjl\":\"10\",\"chanceSource\":\"mage\",\"createDate\":1488262847000,\"createMan\":\"\",\"customerName\":\"test006\",\"description\":\"213\",\"devResult\":2,\"id\":53,\"isValid\":1,\"linkMan\":\"laoli\",\"linkPhone\":\"213\",\"overview\":\"21313\",\"state\":1,\"updateDate\":1488262862000},{\"assignMan\":\"test02\",\"assignTime\":1488263814000,\"cgjl\":\"20\",\"chanceSource\":\"234324\",\"createDate\":1488263814000,\"createMan\":\"\",\"customerName\":\"234234\",\"description\":\"23432432\",\"devResult\":3,\"id\":54,\"isValid\":1,\"linkMan\":\"32432\",\"linkPhone\":\"32\",\"overview\":\"324234\",\"state\":1,\"updateDate\":1488263814000},{\"assignMan\":\"test01\",\"assignTime\":1488263825000,\"cgjl\":\"60\",\"chanceSource\":\"324\",\"createDate\":1488263825000,\"createMan\":\"\",\"customerName\":\"324\",\"description\":\"32432\",\"devResult\":2,\"id\":55,\"isValid\":1,\"linkMan\":\"24\",\"linkPhone\":\"32\",\"overview\":\"234\",\"state\":1,\"updateDate\":1488263825000},{\"assignMan\":\"mage\",\"assignTime\":1491881918000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1491881651000,\"createMan\":\"mage\",\"customerName\":\"码歌\",\"description\":\"\",\"devResult\":2,\"id\":57,\"isValid\":1,\"linkMan\":\"老马\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491881918000},{\"assignMan\":\"sadsasdsadsad\",\"assignTime\":1491882027000,\"cgjl\":\"80\",\"chanceSource\":\"test004\",\"createDate\":1491882004000,\"createMan\":\"mage\",\"customerName\":\"test004\",\"description\":\"\",\"devResult\":3,\"id\":59,\"isValid\":1,\"linkMan\":\"test003\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491882027000},{\"assignMan\":\"test\",\"assignTime\":1495507364000,\"cgjl\":\"80\",\"chanceSource\":\"码歌推荐\",\"createDate\":1495507306000,\"createMan\":\"mage\",\"customerName\":\"mage\",\"devResult\":2,\"id\":62,\"isValid\":1,\"state\":1,\"updateDate\":1495507364000},{\"assignMan\":\"老裴\",\"assignTime\":1495510376000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1495510100000,\"createMan\":\"mage\",\"customerName\":\"test04\",\"description\":\"213\",\"devResult\":0,\"id\":66,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1495510376000},{\"cgjl\":\"1\",\"chanceSource\":\"来自百度推荐\",\"createDate\":1505456616000,\"createMan\":\"admin\",\"customerName\":\"上海码歌\",\"devResult\":0,\"id\":69,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"232432423432\",\"state\":0,\"updateDate\":1505456616000},{\"assignMan\":\"admin\",\"assignTime\":1505546800000,\"cgjl\":\"10\",\"chanceSource\":\"123213213\",\"createDate\":1505546800000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"123213\",\"devResult\":0,\"id\":76,\"isValid\":1,\"linkMan\":\"123213\",\"linkPhone\":\"123213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1505546800000}]}');
INSERT INTO `t_log` VALUES ('318', '营销机会管理_列表查询', 'public java.util.Map com.xxx.crm.controller.SaleChanceController.querySaleChancesByParams(com.xxx.crm.query.SaleChanceQuery)', '0', '0:0:0:0:0:0:0:1', null, null, '{\"page\":[\"1\"],\"rows\":[\"10\"]}', '16', '2017-10-24 20:08:48', 'bjmage', '{\"total\":11,\"rows\":[{\"assignMan\":\"test02\",\"assignTime\":1488263089000,\"cgjl\":\"80\",\"chanceSource\":\"mage\",\"createDate\":1488262787000,\"createMan\":\"Tony\",\"customerName\":\"test002\",\"description\":\"23\",\"devResult\":2,\"id\":52,\"isValid\":1,\"linkMan\":\"12312\",\"linkPhone\":\"213\",\"overview\":\"mage\",\"state\":1,\"updateDate\":1488263089000},{\"assignMan\":\"test01\",\"assignTime\":1488262862000,\"cgjl\":\"10\",\"chanceSource\":\"mage\",\"createDate\":1488262847000,\"createMan\":\"\",\"customerName\":\"test006\",\"description\":\"213\",\"devResult\":2,\"id\":53,\"isValid\":1,\"linkMan\":\"laoli\",\"linkPhone\":\"213\",\"overview\":\"21313\",\"state\":1,\"updateDate\":1488262862000},{\"assignMan\":\"test02\",\"assignTime\":1488263814000,\"cgjl\":\"20\",\"chanceSource\":\"234324\",\"createDate\":1488263814000,\"createMan\":\"\",\"customerName\":\"234234\",\"description\":\"23432432\",\"devResult\":3,\"id\":54,\"isValid\":1,\"linkMan\":\"32432\",\"linkPhone\":\"32\",\"overview\":\"324234\",\"state\":1,\"updateDate\":1488263814000},{\"assignMan\":\"test01\",\"assignTime\":1488263825000,\"cgjl\":\"60\",\"chanceSource\":\"324\",\"createDate\":1488263825000,\"createMan\":\"\",\"customerName\":\"324\",\"description\":\"32432\",\"devResult\":2,\"id\":55,\"isValid\":1,\"linkMan\":\"24\",\"linkPhone\":\"32\",\"overview\":\"234\",\"state\":1,\"updateDate\":1488263825000},{\"assignMan\":\"mage\",\"assignTime\":1491881918000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1491881651000,\"createMan\":\"mage\",\"customerName\":\"码歌\",\"description\":\"\",\"devResult\":2,\"id\":57,\"isValid\":1,\"linkMan\":\"老马\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491881918000},{\"assignMan\":\"sadsasdsadsad\",\"assignTime\":1491882027000,\"cgjl\":\"80\",\"chanceSource\":\"test004\",\"createDate\":1491882004000,\"createMan\":\"mage\",\"customerName\":\"test004\",\"description\":\"\",\"devResult\":3,\"id\":59,\"isValid\":1,\"linkMan\":\"test003\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491882027000},{\"assignMan\":\"test\",\"assignTime\":1495507364000,\"cgjl\":\"80\",\"chanceSource\":\"码歌推荐\",\"createDate\":1495507306000,\"createMan\":\"mage\",\"customerName\":\"mage\",\"devResult\":2,\"id\":62,\"isValid\":1,\"state\":1,\"updateDate\":1495507364000},{\"assignMan\":\"老裴\",\"assignTime\":1495510376000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1495510100000,\"createMan\":\"mage\",\"customerName\":\"test04\",\"description\":\"213\",\"devResult\":0,\"id\":66,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1495510376000},{\"cgjl\":\"1\",\"chanceSource\":\"来自百度推荐\",\"createDate\":1505456616000,\"createMan\":\"admin\",\"customerName\":\"上海码歌\",\"devResult\":0,\"id\":69,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"232432423432\",\"state\":0,\"updateDate\":1505456616000},{\"assignMan\":\"admin\",\"assignTime\":1505546800000,\"cgjl\":\"10\",\"chanceSource\":\"123213213\",\"createDate\":1505546800000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"123213\",\"devResult\":0,\"id\":76,\"isValid\":1,\"linkMan\":\"123213\",\"linkPhone\":\"123213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1505546800000}]}');
INSERT INTO `t_log` VALUES ('319', '营销机会管理_列表查询', 'public java.util.Map com.xxx.crm.controller.SaleChanceController.querySaleChancesByParams(com.xxx.crm.query.SaleChanceQuery)', '0', '0:0:0:0:0:0:0:1', null, null, '{\"state\":[\"1\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', '13', '2017-10-24 20:21:21', 'bjmage', '{\"total\":10,\"rows\":[{\"assignMan\":\"test02\",\"assignTime\":1488263089000,\"cgjl\":\"80\",\"chanceSource\":\"mage\",\"createDate\":1488262787000,\"createMan\":\"Tony\",\"customerName\":\"test002\",\"description\":\"23\",\"devResult\":2,\"id\":52,\"isValid\":1,\"linkMan\":\"12312\",\"linkPhone\":\"213\",\"overview\":\"mage\",\"state\":1,\"updateDate\":1488263089000},{\"assignMan\":\"test01\",\"assignTime\":1488262862000,\"cgjl\":\"10\",\"chanceSource\":\"mage\",\"createDate\":1488262847000,\"createMan\":\"\",\"customerName\":\"test006\",\"description\":\"213\",\"devResult\":2,\"id\":53,\"isValid\":1,\"linkMan\":\"laoli\",\"linkPhone\":\"213\",\"overview\":\"21313\",\"state\":1,\"updateDate\":1488262862000},{\"assignMan\":\"test02\",\"assignTime\":1488263814000,\"cgjl\":\"20\",\"chanceSource\":\"234324\",\"createDate\":1488263814000,\"createMan\":\"\",\"customerName\":\"234234\",\"description\":\"23432432\",\"devResult\":3,\"id\":54,\"isValid\":1,\"linkMan\":\"32432\",\"linkPhone\":\"32\",\"overview\":\"324234\",\"state\":1,\"updateDate\":1488263814000},{\"assignMan\":\"test01\",\"assignTime\":1488263825000,\"cgjl\":\"60\",\"chanceSource\":\"324\",\"createDate\":1488263825000,\"createMan\":\"\",\"customerName\":\"324\",\"description\":\"32432\",\"devResult\":2,\"id\":55,\"isValid\":1,\"linkMan\":\"24\",\"linkPhone\":\"32\",\"overview\":\"234\",\"state\":1,\"updateDate\":1488263825000},{\"assignMan\":\"mage\",\"assignTime\":1491881918000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1491881651000,\"createMan\":\"mage\",\"customerName\":\"码歌\",\"description\":\"\",\"devResult\":2,\"id\":57,\"isValid\":1,\"linkMan\":\"老马\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491881918000},{\"assignMan\":\"sadsasdsadsad\",\"assignTime\":1491882027000,\"cgjl\":\"80\",\"chanceSource\":\"test004\",\"createDate\":1491882004000,\"createMan\":\"mage\",\"customerName\":\"test004\",\"description\":\"\",\"devResult\":3,\"id\":59,\"isValid\":1,\"linkMan\":\"test003\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491882027000},{\"assignMan\":\"test\",\"assignTime\":1495507364000,\"cgjl\":\"80\",\"chanceSource\":\"码歌推荐\",\"createDate\":1495507306000,\"createMan\":\"mage\",\"customerName\":\"mage\",\"devResult\":2,\"id\":62,\"isValid\":1,\"state\":1,\"updateDate\":1495507364000},{\"assignMan\":\"老裴\",\"assignTime\":1495510376000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1495510100000,\"createMan\":\"mage\",\"customerName\":\"test04\",\"description\":\"213\",\"devResult\":0,\"id\":66,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1495510376000},{\"assignMan\":\"admin\",\"assignTime\":1505546800000,\"cgjl\":\"10\",\"chanceSource\":\"123213213\",\"createDate\":1505546800000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"123213\",\"devResult\":0,\"id\":76,\"isValid\":1,\"linkMan\":\"123213\",\"linkPhone\":\"123213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1505546800000},{\"assignMan\":\"12\",\"assignTime\":1506597641000,\"cgjl\":\"12\",\"chanceSource\":\"23432\",\"createDate\":1506597641000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"213\",\"devResult\":0,\"id\":78,\"isValid\":1,\"linkMan\":\"2132\",\"linkPhone\":\"213\",\"overview\":\"1212\",\"state\":1,\"updateDate\":1506597641000}]}');
INSERT INTO `t_log` VALUES ('320', '营销机会管理_列表查询', 'public java.util.Map com.xxx.crm.controller.SaleChanceController.querySaleChancesByParams(com.xxx.crm.query.SaleChanceQuery)', '0', '0:0:0:0:0:0:0:1', null, null, '{\"state\":[\"1\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', '15', '2017-10-24 20:21:21', 'bjmage', '{\"total\":10,\"rows\":[{\"assignMan\":\"test02\",\"assignTime\":1488263089000,\"cgjl\":\"80\",\"chanceSource\":\"mage\",\"createDate\":1488262787000,\"createMan\":\"Tony\",\"customerName\":\"test002\",\"description\":\"23\",\"devResult\":2,\"id\":52,\"isValid\":1,\"linkMan\":\"12312\",\"linkPhone\":\"213\",\"overview\":\"mage\",\"state\":1,\"updateDate\":1488263089000},{\"assignMan\":\"test01\",\"assignTime\":1488262862000,\"cgjl\":\"10\",\"chanceSource\":\"mage\",\"createDate\":1488262847000,\"createMan\":\"\",\"customerName\":\"test006\",\"description\":\"213\",\"devResult\":2,\"id\":53,\"isValid\":1,\"linkMan\":\"laoli\",\"linkPhone\":\"213\",\"overview\":\"21313\",\"state\":1,\"updateDate\":1488262862000},{\"assignMan\":\"test02\",\"assignTime\":1488263814000,\"cgjl\":\"20\",\"chanceSource\":\"234324\",\"createDate\":1488263814000,\"createMan\":\"\",\"customerName\":\"234234\",\"description\":\"23432432\",\"devResult\":3,\"id\":54,\"isValid\":1,\"linkMan\":\"32432\",\"linkPhone\":\"32\",\"overview\":\"324234\",\"state\":1,\"updateDate\":1488263814000},{\"assignMan\":\"test01\",\"assignTime\":1488263825000,\"cgjl\":\"60\",\"chanceSource\":\"324\",\"createDate\":1488263825000,\"createMan\":\"\",\"customerName\":\"324\",\"description\":\"32432\",\"devResult\":2,\"id\":55,\"isValid\":1,\"linkMan\":\"24\",\"linkPhone\":\"32\",\"overview\":\"234\",\"state\":1,\"updateDate\":1488263825000},{\"assignMan\":\"mage\",\"assignTime\":1491881918000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1491881651000,\"createMan\":\"mage\",\"customerName\":\"码歌\",\"description\":\"\",\"devResult\":2,\"id\":57,\"isValid\":1,\"linkMan\":\"老马\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491881918000},{\"assignMan\":\"sadsasdsadsad\",\"assignTime\":1491882027000,\"cgjl\":\"80\",\"chanceSource\":\"test004\",\"createDate\":1491882004000,\"createMan\":\"mage\",\"customerName\":\"test004\",\"description\":\"\",\"devResult\":3,\"id\":59,\"isValid\":1,\"linkMan\":\"test003\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491882027000},{\"assignMan\":\"test\",\"assignTime\":1495507364000,\"cgjl\":\"80\",\"chanceSource\":\"码歌推荐\",\"createDate\":1495507306000,\"createMan\":\"mage\",\"customerName\":\"mage\",\"devResult\":2,\"id\":62,\"isValid\":1,\"state\":1,\"updateDate\":1495507364000},{\"assignMan\":\"老裴\",\"assignTime\":1495510376000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1495510100000,\"createMan\":\"mage\",\"customerName\":\"test04\",\"description\":\"213\",\"devResult\":0,\"id\":66,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1495510376000},{\"assignMan\":\"admin\",\"assignTime\":1505546800000,\"cgjl\":\"10\",\"chanceSource\":\"123213213\",\"createDate\":1505546800000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"123213\",\"devResult\":0,\"id\":76,\"isValid\":1,\"linkMan\":\"123213\",\"linkPhone\":\"123213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1505546800000},{\"assignMan\":\"12\",\"assignTime\":1506597641000,\"cgjl\":\"12\",\"chanceSource\":\"23432\",\"createDate\":1506597641000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"213\",\"devResult\":0,\"id\":78,\"isValid\":1,\"linkMan\":\"2132\",\"linkPhone\":\"213\",\"overview\":\"1212\",\"state\":1,\"updateDate\":1506597641000}]}');
INSERT INTO `t_log` VALUES ('321', '营销机会管理_列表查询', 'public java.util.Map com.xxx.crm.controller.SaleChanceController.querySaleChancesByParams(com.xxx.crm.query.SaleChanceQuery)', '0', '0:0:0:0:0:0:0:1', null, null, '{\"page\":[\"1\"],\"rows\":[\"10\"]}', '14', '2017-10-24 20:21:23', 'bjmage', '{\"total\":11,\"rows\":[{\"assignMan\":\"test02\",\"assignTime\":1488263089000,\"cgjl\":\"80\",\"chanceSource\":\"mage\",\"createDate\":1488262787000,\"createMan\":\"Tony\",\"customerName\":\"test002\",\"description\":\"23\",\"devResult\":2,\"id\":52,\"isValid\":1,\"linkMan\":\"12312\",\"linkPhone\":\"213\",\"overview\":\"mage\",\"state\":1,\"updateDate\":1488263089000},{\"assignMan\":\"test01\",\"assignTime\":1488262862000,\"cgjl\":\"10\",\"chanceSource\":\"mage\",\"createDate\":1488262847000,\"createMan\":\"\",\"customerName\":\"test006\",\"description\":\"213\",\"devResult\":2,\"id\":53,\"isValid\":1,\"linkMan\":\"laoli\",\"linkPhone\":\"213\",\"overview\":\"21313\",\"state\":1,\"updateDate\":1488262862000},{\"assignMan\":\"test02\",\"assignTime\":1488263814000,\"cgjl\":\"20\",\"chanceSource\":\"234324\",\"createDate\":1488263814000,\"createMan\":\"\",\"customerName\":\"234234\",\"description\":\"23432432\",\"devResult\":3,\"id\":54,\"isValid\":1,\"linkMan\":\"32432\",\"linkPhone\":\"32\",\"overview\":\"324234\",\"state\":1,\"updateDate\":1488263814000},{\"assignMan\":\"test01\",\"assignTime\":1488263825000,\"cgjl\":\"60\",\"chanceSource\":\"324\",\"createDate\":1488263825000,\"createMan\":\"\",\"customerName\":\"324\",\"description\":\"32432\",\"devResult\":2,\"id\":55,\"isValid\":1,\"linkMan\":\"24\",\"linkPhone\":\"32\",\"overview\":\"234\",\"state\":1,\"updateDate\":1488263825000},{\"assignMan\":\"mage\",\"assignTime\":1491881918000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1491881651000,\"createMan\":\"mage\",\"customerName\":\"码歌\",\"description\":\"\",\"devResult\":2,\"id\":57,\"isValid\":1,\"linkMan\":\"老马\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491881918000},{\"assignMan\":\"sadsasdsadsad\",\"assignTime\":1491882027000,\"cgjl\":\"80\",\"chanceSource\":\"test004\",\"createDate\":1491882004000,\"createMan\":\"mage\",\"customerName\":\"test004\",\"description\":\"\",\"devResult\":3,\"id\":59,\"isValid\":1,\"linkMan\":\"test003\",\"linkPhone\":\"\",\"state\":1,\"updateDate\":1491882027000},{\"assignMan\":\"test\",\"assignTime\":1495507364000,\"cgjl\":\"80\",\"chanceSource\":\"码歌推荐\",\"createDate\":1495507306000,\"createMan\":\"mage\",\"customerName\":\"mage\",\"devResult\":2,\"id\":62,\"isValid\":1,\"state\":1,\"updateDate\":1495507364000},{\"assignMan\":\"老裴\",\"assignTime\":1495510376000,\"cgjl\":\"90\",\"chanceSource\":\"码歌\",\"createDate\":1495510100000,\"createMan\":\"mage\",\"customerName\":\"test04\",\"description\":\"213\",\"devResult\":0,\"id\":66,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1495510376000},{\"cgjl\":\"1\",\"chanceSource\":\"来自百度推荐\",\"createDate\":1505456616000,\"createMan\":\"admin\",\"customerName\":\"上海码歌\",\"devResult\":0,\"id\":69,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"232432423432\",\"state\":0,\"updateDate\":1505456616000},{\"assignMan\":\"admin\",\"assignTime\":1505546800000,\"cgjl\":\"10\",\"chanceSource\":\"123213213\",\"createDate\":1505546800000,\"createMan\":\"\",\"customerName\":\"test002\",\"description\":\"123213\",\"devResult\":0,\"id\":76,\"isValid\":1,\"linkMan\":\"123213\",\"linkPhone\":\"123213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1505546800000}]}');

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL COMMENT '资源名称',
  `module_style` varchar(255) DEFAULT NULL COMMENT '模块样式',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `parent_id` int(11) DEFAULT NULL,
  `parent_opt_value` varchar(255) DEFAULT NULL,
  `grade` int(255) DEFAULT NULL COMMENT '等级',
  `opt_value` varchar(255) DEFAULT NULL COMMENT '权限值',
  `orders` int(11) DEFAULT NULL,
  `is_valid` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_module
-- ----------------------------
INSERT INTO `t_module` VALUES ('1', '营销管理', 'yxgl', '#', null, null, '0', '10', '1', '1', '2017-09-28 18:20:32', '2017-09-28 18:20:32');
INSERT INTO `t_module` VALUES ('2', '营销机会管理', null, 'sale_chance/index/1', '1', null, '1', '1010', '1', '1', '2017-09-28 18:20:33', '2019-10-31 15:52:31');
INSERT INTO `t_module` VALUES ('3', '营销机会管理添加', '1111', '#', '2', null, '2', '101001', '1', '1', '2017-09-28 18:20:33', '2017-09-28 18:20:33');
INSERT INTO `t_module` VALUES ('4', '修改', '', '#', '2', null, '2', '101002', '2', '1', '2017-09-28 18:20:33', '2017-09-28 18:20:33');
INSERT INTO `t_module` VALUES ('5', '删除', '', '#', '2', null, '2', '101003', '3', '1', '2017-09-28 18:20:34', '2017-09-28 18:20:34');
INSERT INTO `t_module` VALUES ('6', '客户开发计划', 'icon-khkfjh', 'sale_chance/index?sate=1', '1', null, '1', '1020', '2', '1', '2017-09-28 18:20:34', '2017-09-28 18:20:34');
INSERT INTO `t_module` VALUES ('7', '查看详情', '', '#', '6', null, '2', '102001', '1', '1', '2017-09-28 18:20:35', '2017-09-28 18:20:35');
INSERT INTO `t_module` VALUES ('8', '客户管理', 'icon-khgl', 'customer_serve/index', null, null, '0', '20', '3', '1', '2017-07-01 10:29:32', '2017-07-01 10:29:32');
INSERT INTO `t_module` VALUES ('9', '客户信息管理', 'icon-khxxgl', 'customer/index', '8', null, '1', '2010', '1', '1', '2017-09-06 16:45:27', '2017-09-06 16:45:27');
INSERT INTO `t_module` VALUES ('10', '创建', '', '#', '9', null, '2', '201001', '1', '0', '2017-07-01 10:58:29', '2017-07-01 10:58:29');
INSERT INTO `t_module` VALUES ('11', '修改', '', '#', '9', null, '2', '201002', '2', '1', '2017-07-01 10:58:56', '2017-07-01 10:58:56');
INSERT INTO `t_module` VALUES ('12', '客户流失管理', 'icon-fhlsgl', 'customerloss/index', '8', null, '1', '2020', '2', '1', '2017-08-17 14:55:06', '2017-08-17 14:55:06');
INSERT INTO `t_module` VALUES ('13', '暂缓流失', '', 'openCustomerReprieve', '12', null, '2', '202001', '1', '1', '2017-09-23 11:01:46', '2017-09-23 11:01:46');
INSERT INTO `t_module` VALUES ('14', '统计报表', 'icon-tjbb', '#', null, null, '0', '40', '4', '1', '2017-08-15 16:24:24', '2017-08-15 16:24:24');
INSERT INTO `t_module` VALUES ('15', '客户贡献分析', 'icon-khgxfx', 'report/1', '14', null, '1', '4010', '1', '1', '2017-08-15 16:25:12', '2017-08-15 16:25:12');
INSERT INTO `t_module` VALUES ('16', '服务管理', '', '#', null, null, '0', '30', '3', '1', '2017-08-18 11:49:02', '2017-08-18 11:49:02');
INSERT INTO `t_module` VALUES ('17', '基础数据管理', '', '#', null, null, '0', '50', '5', '1', '2017-08-18 11:49:45', '2017-08-18 11:49:45');
INSERT INTO `t_module` VALUES ('18', '系统管理', '', '#', null, null, '0', '60', '6', '1', '2017-08-18 11:50:02', '2017-08-18 11:50:02');
INSERT INTO `t_module` VALUES ('19', '删除', '', '#', '9', null, '2', '201003', '3', '1', '2017-08-18 17:03:03', '2017-08-18 17:03:03');
INSERT INTO `t_module` VALUES ('21', '菜单管理', null, '#', null, null, '0', '70', '1', '1', '2017-09-23 11:54:06', '2017-09-23 11:54:06');
INSERT INTO `t_module` VALUES ('24', '修改密码', null, null, '18', null, '1', '6010', '1', '1', '2019-10-30 22:03:50', '2019-10-31 22:03:54');
INSERT INTO `t_module` VALUES ('25', '安全退出', null, null, '18', null, '1', '6020', '2', '1', '2019-10-29 22:04:43', '2019-10-31 22:04:48');
INSERT INTO `t_module` VALUES ('26', '用户信息管理', null, null, '18', null, '1', '6030', '3', '1', '2019-10-30 22:05:31', '2019-10-31 22:05:35');
INSERT INTO `t_module` VALUES ('27', '角色管理', null, null, '18', null, '1', '6040', '4', '1', '2019-10-30 22:07:04', '2019-10-30 22:07:07');
INSERT INTO `t_module` VALUES ('28', '服务创建', null, null, '16', null, '1', '3010', '1', '1', '2019-10-30 22:13:52', '2019-10-30 22:13:55');
INSERT INTO `t_module` VALUES ('29', '服务分配', null, null, '16', null, '1', '3020', '2', '1', '2019-10-30 22:14:39', '2019-10-30 22:14:43');
INSERT INTO `t_module` VALUES ('30', '服务处理', null, null, '16', null, '1', '3030', '3', '1', '2019-10-30 22:15:25', '2019-10-30 22:15:29');
INSERT INTO `t_module` VALUES ('31', '服务反馈', null, null, '16', null, '1', '3040', '4', '1', '2019-10-30 22:16:11', '2019-10-30 22:16:14');
INSERT INTO `t_module` VALUES ('32', '服务归档', null, null, '16', null, '1', '3050', '5', '1', '2019-10-30 22:16:57', '2019-10-30 22:17:00');
INSERT INTO `t_module` VALUES ('33', '学生管理', null, 'customer/index', '8', null, '1', '2030', '1', '1', '2019-10-31 15:32:54', '2019-10-31 15:32:56');
INSERT INTO `t_module` VALUES ('34', 'rytry', null, '安全退出', '8', null, '1', '2040', '1', '0', '2019-10-31 16:30:11', '2019-10-31 16:30:46');

-- ----------------------------
-- Table structure for t_order_details
-- ----------------------------
DROP TABLE IF EXISTS `t_order_details`;
CREATE TABLE `t_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT 'id',
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `goods_num` int(11) DEFAULT NULL COMMENT '订购数量',
  `unit` varchar(20) DEFAULT NULL COMMENT '单位',
  `price` float DEFAULT NULL COMMENT '单价',
  `sum` float DEFAULT NULL COMMENT '金额',
  `is_valid` int(4) DEFAULT '1' COMMENT '是否删除',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客户订单详情表';

-- ----------------------------
-- Records of t_order_details
-- ----------------------------
INSERT INTO `t_order_details` VALUES ('1', '5', '联想笔记本', '2', '台', '4900', '9800', '1', '2016-11-29 14:59:32', '2016-11-29 14:59:34');
INSERT INTO `t_order_details` VALUES ('2', '5', '惠普音响', '4', '台', '200', '800', '1', '2017-03-01 11:32:34', '2017-03-01 11:32:36');
INSERT INTO `t_order_details` VALUES ('3', '5', '罗技键盘', '10', '个', '90', '900', '1', '2017-03-01 11:32:39', '2017-03-01 11:32:41');
INSERT INTO `t_order_details` VALUES ('4', '6', '艾利鼠标', '20', '个', '20', '400', '1', '2017-03-01 11:32:46', '2017-03-01 11:32:48');
INSERT INTO `t_order_details` VALUES ('5', '7', '东芝U盘', '5', '个', '105', '525', '1', '2017-03-01 11:32:51', '2017-03-01 11:32:53');
INSERT INTO `t_order_details` VALUES ('6', '7', '充电器', '1', '个', '30', '30', '1', '2017-03-01 11:32:55', '2017-03-01 11:32:57');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  `module_id` int(11) DEFAULT NULL COMMENT '模块ID',
  `acl_value` varchar(255) DEFAULT NULL COMMENT '权限值',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('294', '2', '1', '10', '2017-09-22 17:18:22', '2017-09-22 17:18:22');
INSERT INTO `t_permission` VALUES ('295', '2', '2', '1010', '2017-09-22 17:18:22', '2017-09-22 17:18:22');
INSERT INTO `t_permission` VALUES ('296', '2', '3', '101001', '2017-09-22 17:18:22', '2017-09-22 17:18:22');
INSERT INTO `t_permission` VALUES ('297', '2', '4', '101002', '2017-09-22 17:18:22', '2017-09-22 17:18:22');
INSERT INTO `t_permission` VALUES ('298', '2', '5', '101003', '2017-09-22 17:18:22', '2017-09-22 17:18:22');
INSERT INTO `t_permission` VALUES ('299', '2', '6', '1020', '2017-09-22 17:18:22', '2017-09-22 17:18:22');
INSERT INTO `t_permission` VALUES ('300', '2', '7', '102001', '2017-09-22 17:18:22', '2017-09-22 17:18:22');
INSERT INTO `t_permission` VALUES ('348', '18', '1', '10', '2019-08-22 23:26:53', '2019-08-22 23:26:53');
INSERT INTO `t_permission` VALUES ('349', '18', '6', '1020', '2019-08-22 23:26:53', '2019-08-22 23:26:53');
INSERT INTO `t_permission` VALUES ('350', '18', '7', '102001', '2019-08-22 23:26:53', '2019-08-22 23:26:53');
INSERT INTO `t_permission` VALUES ('365', '14', '1', '10', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('366', '14', '2', '1010', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('367', '14', '3', '101001', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('368', '14', '4', '101002', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('369', '14', '5', '101003', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('370', '14', '6', '1020', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('371', '14', '7', '102001', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('372', '14', '8', '20', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('373', '14', '9', '2010', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('374', '14', '11', '201002', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('375', '14', '19', '201003', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('376', '14', '12', '2020', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('377', '14', '14', '40', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('378', '14', '15', '4010', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('379', '14', '16', '30', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('380', '14', '17', '50', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('381', '14', '18', '60', '2019-10-30 21:25:10', '2019-10-30 21:25:10');
INSERT INTO `t_permission` VALUES ('409', '1', '1', '10', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('410', '1', '2', '1010', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('411', '1', '3', '101001', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('412', '1', '4', '101002', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('413', '1', '5', '101003', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('414', '1', '6', '1020', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('415', '1', '7', '102001', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('416', '1', '8', '20', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('417', '1', '9', '2010', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('418', '1', '11', '201002', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('419', '1', '19', '201003', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('420', '1', '12', '2020', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('421', '1', '14', '40', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('422', '1', '15', '4010', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('423', '1', '16', '30', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('424', '1', '28', '3010', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('425', '1', '29', '3020', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('426', '1', '30', '3030', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('427', '1', '31', '3040', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('428', '1', '32', '3050', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('429', '1', '17', '50', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('430', '1', '18', '60', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('431', '1', '24', '6010', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('432', '1', '25', '6020', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('433', '1', '26', '6030', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('434', '1', '27', '6040', '2019-10-31 09:33:52', '2019-10-31 09:33:52');
INSERT INTO `t_permission` VALUES ('459', '3', '1', '10', '2019-10-31 10:55:39', '2019-10-31 10:55:39');
INSERT INTO `t_permission` VALUES ('460', '3', '2', '1010', '2019-10-31 10:55:39', '2019-10-31 10:55:39');
INSERT INTO `t_permission` VALUES ('461', '3', '3', '101001', '2019-10-31 10:55:39', '2019-10-31 10:55:39');
INSERT INTO `t_permission` VALUES ('462', '3', '4', '101002', '2019-10-31 10:55:39', '2019-10-31 10:55:39');
INSERT INTO `t_permission` VALUES ('463', '3', '6', '1020', '2019-10-31 10:55:39', '2019-10-31 10:55:39');
INSERT INTO `t_permission` VALUES ('464', '3', '7', '102001', '2019-10-31 10:55:39', '2019-10-31 10:55:39');
INSERT INTO `t_permission` VALUES ('477', '21', '1', '10', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('478', '21', '2', '1010', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('479', '21', '3', '101001', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('480', '21', '4', '101002', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('481', '21', '5', '101003', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('482', '21', '6', '1020', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('483', '21', '7', '102001', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('484', '21', '8', '20', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('485', '21', '9', '2010', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('486', '21', '11', '201002', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('487', '21', '19', '201003', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('488', '21', '12', '2020', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('489', '21', '13', '202001', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('490', '21', '14', '40', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('491', '21', '15', '4010', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('492', '21', '16', '30', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('493', '21', '28', '3010', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('494', '21', '29', '3020', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('495', '21', '30', '3030', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('496', '21', '31', '3040', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('497', '21', '32', '3050', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('498', '21', '17', '50', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('499', '21', '18', '60', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('500', '21', '24', '6010', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('501', '21', '25', '6020', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('502', '21', '26', '6030', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('503', '21', '27', '6040', '2019-10-31 11:22:00', '2019-10-31 11:22:00');
INSERT INTO `t_permission` VALUES ('504', '21', '21', '70', '2019-10-31 11:22:00', '2019-10-31 11:22:00');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(300) DEFAULT NULL,
  `model` varchar(150) DEFAULT NULL,
  `unit` varchar(60) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `store` double DEFAULT NULL,
  `remark` varchar(3000) DEFAULT NULL,
  `is_valid` tinyint(4) DEFAULT '1',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('1', '联想笔记本', 'Y450', '台', '4500', '120', '好', '1', null, null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `is_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '系统管理员', '系统管理员\r\n系统管理员111', '2016-12-01 00:00:00', '2017-08-18 11:50:31', '1');
INSERT INTO `t_role` VALUES ('2', '销售主管', '销售主管', '2016-12-01 00:00:00', '2016-12-01 00:00:00', '1');
INSERT INTO `t_role` VALUES ('3', '客户经理', '客户经理', '2016-12-01 00:00:00', '2016-12-01 00:00:00', '1');
INSERT INTO `t_role` VALUES ('14', '技术经理', '负责研发', '2017-06-30 14:50:24', '2017-06-30 14:50:24', '1');
INSERT INTO `t_role` VALUES ('18', 'test', 'test', '2019-08-22 23:25:01', '2019-08-22 23:25:01', '1');
INSERT INTO `t_role` VALUES ('21', '总管', '总管', '2019-10-27 21:00:15', '2019-10-27 21:00:15', '1');

-- ----------------------------
-- Table structure for t_sale_chance
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_chance`;
CREATE TABLE `t_sale_chance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chance_source` varchar(300) DEFAULT NULL COMMENT '机会来源',
  `customer_name` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `cgjl` int(11) DEFAULT NULL COMMENT '成功几率(%) ',
  `overview` varchar(300) DEFAULT NULL COMMENT '概要',
  `link_man` varchar(100) DEFAULT NULL COMMENT '联系人',
  `link_phone` varchar(100) DEFAULT NULL COMMENT '联系电话',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述 ',
  `create_man` varchar(100) DEFAULT NULL COMMENT '创建人',
  `assign_man` varchar(100) DEFAULT NULL COMMENT '分配人	',
  `assign_time` datetime DEFAULT NULL COMMENT '分配时间',
  `state` int(11) DEFAULT NULL COMMENT '状态 0待开发 1开发',
  `dev_result` int(11) DEFAULT NULL COMMENT '开发结果 2开发成功  3 开发失败',
  `is_valid` int(4) DEFAULT '1' COMMENT '是否删除',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sale_chance
-- ----------------------------
INSERT INTO `t_sale_chance` VALUES ('52', 'mage', 'test002', '2', 'mage', '12312', '213', '23', 'Tony', 'test02', '2019-08-20 11:36:02', '1', '2', '1', '2017-02-28 14:19:47', '2019-08-20 11:36:02');
INSERT INTO `t_sale_chance` VALUES ('53', 'mage', 'test006', '10', '21313', 'laoli', '213', '213', '', 'test01', '2017-02-28 14:21:02', '1', '2', '0', '2017-02-28 14:20:47', '2017-02-28 14:21:02');
INSERT INTO `t_sale_chance` VALUES ('54', '234324', '234234', '20', '324234', '32432', '32', '23432432', '', 'test02', '2017-02-28 14:36:54', '1', '3', '1', '2017-02-28 14:36:54', '2017-02-28 14:36:54');
INSERT INTO `t_sale_chance` VALUES ('55', '324', '324', '60', '234', '24', '32', '32432', '', 'test01', '2017-02-28 14:37:05', '1', '2', '1', '2017-02-28 14:37:05', '2017-02-28 14:37:05');
INSERT INTO `t_sale_chance` VALUES ('56', 'mage推荐', 'asda', '80', null, null, null, '码歌推荐，值得信赖', 'mage', 'aaa', '2017-04-11 11:19:36', '1', '3', '1', '2017-04-11 11:18:12', '2017-04-11 11:19:36');
INSERT INTO `t_sale_chance` VALUES ('57', '码歌', '码歌', '90', null, '老马', '', '', 'mage', 'mage', '2017-04-11 11:38:38', '1', '2', '1', '2017-04-11 11:34:11', '2017-04-11 11:38:38');
INSERT INTO `t_sale_chance` VALUES ('82', '习老大推荐', '北京大牛科技', '100', '不能说', '不能说', '1233123', '机会成功很大', '', '聪哥', '2017-11-18 11:35:41', '1', '2', '1', '2017-11-18 11:35:41', '2019-10-25 15:13:49');
INSERT INTO `t_sale_chance` VALUES ('85', 'acer', 'acfun', '12', 'burning', 'acer', '123456', 'heihei', 'admin', '', '2019-06-04 17:17:58', '1', '2', '1', '2018-01-25 17:15:40', '2018-01-25 17:16:02');
INSERT INTO `t_sale_chance` VALUES ('86', '1', '风驰科技', '1', '1', '1', '1', '1', 'bjmage', '超哥', '2019-06-01 11:20:41', '1', '2', '1', '2019-06-01 11:20:41', '2019-06-01 11:20:41');
INSERT INTO `t_sale_chance` VALUES ('87', '1', '腾讯', '0', '1', '1', '1', '1', 'bjmage', '47', '2019-06-03 14:58:42', '1', '2', '1', '2019-06-03 14:16:31', '2019-06-03 14:58:42');
INSERT INTO `t_sale_chance` VALUES ('88', '1', '风驰科技', '100', '1', '1', '1', '1', '', '47', '2019-06-04 08:29:00', '1', '3', '1', '2019-06-04 08:28:39', '2019-06-04 08:29:00');
INSERT INTO `t_sale_chance` VALUES ('89', '9', '阿里巴巴', '9', '9', '9', '9', '9', null, 'XXX', '2019-10-09 13:26:34', '0', '0', '1', '2019-08-20 10:39:26', '2019-08-20 10:39:26');
INSERT INTO `t_sale_chance` VALUES ('90', '99', '阿里巴巴', '99', '99', '99', '99', '99', null, 'XXX', '2019-10-08 13:26:39', '0', '0', '1', '2019-08-20 10:41:00', '2019-08-20 10:41:00');
INSERT INTO `t_sale_chance` VALUES ('91', '7', '北京大牛科技', '7', '7', '7', '7', '7', null, '47', '2019-10-22 13:26:43', '1', '0', '1', '2019-08-20 10:41:35', '2019-08-20 10:41:35');
INSERT INTO `t_sale_chance` VALUES ('92', '4', '北京大牛科技', '4', '4', '4', '4', '4', null, '', '2019-10-16 13:26:47', '0', '0', '0', '2019-08-20 10:41:57', '2019-08-20 10:41:57');
INSERT INTO `t_sale_chance` VALUES ('93', '1', 'test002', '1', '1', '1', '1', '1', null, 'XXX', '2019-10-22 13:26:52', '1', '1', '1', '2019-09-10 09:06:40', '2019-10-25 15:14:28');
INSERT INTO `t_sale_chance` VALUES ('94', '吃饭喝酒', '北京大牛科技', '40', '真好', '1152', '221531', '2115', null, '47', '2019-10-22 13:26:56', '1', '0', '1', '2019-10-23 21:07:53', '2019-10-23 21:07:53');
INSERT INTO `t_sale_chance` VALUES ('95', 'paoz', '百度', '50', '不太好', '四大', '221531', '2115', null, 'XXX', '2019-10-23 13:27:02', '1', '0', '1', '2019-10-23 21:17:35', '2019-10-23 21:17:35');
INSERT INTO `t_sale_chance` VALUES ('96', 'paoz11111', '百度', '50', '不太好11', '四大11', '22153100', '211500', null, 'XXX', '2019-10-22 13:27:06', '1', '0', '0', '2019-10-24 17:15:49', '2019-10-24 17:15:49');
INSERT INTO `t_sale_chance` VALUES ('97', 'paoz0', '百度', '500', '不太好0', '四大00', '22153100', '211500', null, '47', '2019-10-22 13:27:10', '1', '0', '0', '2019-10-24 17:17:44', '2019-10-24 17:17:44');
INSERT INTO `t_sale_chance` VALUES ('98', 'paoz09', '风驰科技', '500779', '不太好9', '四大0077', '221531', '211500', null, '47', '2019-10-24 18:19:14', '1', '0', '0', '2019-10-24 17:22:54', '2019-10-24 18:19:14');
INSERT INTO `t_sale_chance` VALUES ('99', 'dddas', 'test002', '222', 'sss', 'asdddd', '221531', '211500', null, 'XXX', null, '1', '0', '1', '2019-10-31 10:56:59', '2019-10-31 10:56:59');
INSERT INTO `t_sale_chance` VALUES ('100', 'dddas', 'test002', '0', 'sss', 'asdddd', '221531', '211500', null, 'XXX', null, '1', '0', '1', '2019-10-31 10:57:13', '2019-10-31 10:57:13');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_pwd` varchar(100) DEFAULT NULL,
  `true_name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_valid` int(4) DEFAULT '1' COMMENT '是否删除',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('10', 'mage', '4QrcOUm6Wau+VuBX8g+IPg==', 'bjmage', 'java@123.com', '12323213123213', '1', '2016-12-01 12:05:49', '2017-09-22 15:32:25');
INSERT INTO `t_user` VALUES ('42', 'admin', '4QrcOUm6Wau+VuBX8g+IPg==', 'admin', '234', '324', '1', '2017-09-09 00:14:53', '2017-09-11 21:10:37');
INSERT INTO `t_user` VALUES ('43', 'test01', '4QrcOUm6Wau+VuBX8g+IPg==', 'test01', '', '', '1', '2017-09-15 15:46:49', '2017-09-22 17:18:06');
INSERT INTO `t_user` VALUES ('45', '老康', '123456', 'mage', null, '23242131', '0', '2017-09-21 16:03:31', '2017-09-21 16:27:09');
INSERT INTO `t_user` VALUES ('46', 'test001', '4QrcOUm6Wau+VuBX8g+IPg==', 'admin', '', '', '0', '2017-09-21 17:19:03', '2017-09-21 17:19:03');
INSERT INTO `t_user` VALUES ('47', 'wsc', 'lueSGJZetyySpUndWjMBEg==', '47', '110@aa.com', '12323213123213', '1', '2017-10-19 09:37:20', '2017-10-19 09:37:22');
INSERT INTO `t_user` VALUES ('48', 'why', '4QrcOUm6Wau+VuBX8g+IPg==', '宇哥', '123456@qq.com', '1234567', '1', '2018-01-22 23:30:48', '2018-01-22 23:30:54');
INSERT INTO `t_user` VALUES ('49', 'xxx', '4QrcOUm6Wau+VuBX8g+IPg==', 'XXX', '110@aa.com', '12323213123213', '1', '2017-10-19 09:37:20', '2017-10-19 09:37:22');
INSERT INTO `t_user` VALUES ('50', '1', '4QrcOUm6Wau+VuBX8g+IPg==', '1', '1', '1', '1', '2019-08-22 10:54:11', '2019-08-22 10:54:11');
INSERT INTO `t_user` VALUES ('52', 'testxxx', '4QrcOUm6Wau+VuBX8g+IPg==', '1', '1', '1', '1', '2019-08-22 23:25:55', '2019-08-22 23:25:55');
INSERT INTO `t_user` VALUES ('53', 'yuan', '4QrcOUm6Wau+VuBX8g+IPg==', '小圆', '13148524', '4444', '1', '2019-10-08 04:19:48', '2019-10-30 20:58:18');
INSERT INTO `t_user` VALUES ('54', 'wuzi', '4QrcOUm6Wau+VuBX8g+IPg==', '吴小姿', '1376282084@qq.com', '4444', '0', '2019-10-29 17:30:39', '2019-10-29 20:52:02');
INSERT INTO `t_user` VALUES ('55', 'lin', '4QrcOUm6Wau+VuBX8g+IPg==', '林正阳', '13148524', '4444', '1', '2019-10-29 20:15:33', '2019-10-31 10:55:19');
INSERT INTO `t_user` VALUES ('56', 'xieb', '4QrcOUm6Wau+VuBX8g+IPg==', '谢宝', '13148524', '55552', '1', '2019-10-29 20:24:00', '2019-10-29 20:24:00');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `is_valid` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('2', '10', '1', '2017-09-22 15:32:25', '2017-09-22 15:32:25', '1');
INSERT INTO `t_user_role` VALUES ('3', '43', '2', '2017-09-22 17:18:06', '2017-09-22 17:18:06', '1');
INSERT INTO `t_user_role` VALUES ('4', '47', '3', '2017-10-19 09:37:53', '2017-10-19 09:37:55', '1');
INSERT INTO `t_user_role` VALUES ('5', '49', '3', '2018-01-25 18:20:09', '2018-01-25 18:20:11', '1');
INSERT INTO `t_user_role` VALUES ('9', '49', '1', '2019-08-22 23:23:56', '2019-08-22 23:24:00', '1');
INSERT INTO `t_user_role` VALUES ('10', '52', '18', '2019-08-22 23:25:55', '2019-08-22 23:25:55', '1');
INSERT INTO `t_user_role` VALUES ('13', '56', '14', '2019-10-29 20:24:00', '2019-10-29 20:24:00', '1');
INSERT INTO `t_user_role` VALUES ('14', '56', '21', '2019-10-29 20:24:00', '2019-10-29 20:24:00', '1');
INSERT INTO `t_user_role` VALUES ('17', '53', '1', '2019-10-30 20:58:18', '2019-10-30 20:58:18', '1');
INSERT INTO `t_user_role` VALUES ('18', '53', '21', '2019-10-30 20:58:18', '2019-10-30 20:58:18', '1');
INSERT INTO `t_user_role` VALUES ('21', '55', '3', '2019-10-31 10:55:19', '2019-10-31 10:55:19', '1');

-- ----------------------------
-- Table structure for yg_customer
-- ----------------------------
DROP TABLE IF EXISTS `yg_customer`;
CREATE TABLE `yg_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yg_customer
-- ----------------------------
INSERT INTO `yg_customer` VALUES ('1', 'yonggan', '1234');
INSERT INTO `yg_customer` VALUES ('2', 'sxt', 'admin');
INSERT INTO `yg_customer` VALUES ('3', 'yonggan', '375D4F59D3C06F2F3BD1C23B8C6F435A');
INSERT INTO `yg_customer` VALUES ('14', 'shsxt', '375D4F59D3C06F2F3BD1C23B8C6F435A');
INSERT INTO `yg_customer` VALUES ('15', 'shsxt', '375D4F59D3C06F2F3BD1C23B8C6F435A');
INSERT INTO `yg_customer` VALUES ('16', 'edg', 'qwer');
INSERT INTO `yg_customer` VALUES ('17', 'rng', '1234');
INSERT INTO `yg_customer` VALUES ('19', '关晓彤', '123456');
INSERT INTO `yg_customer` VALUES ('21', 'xxx', 'yyy');
INSERT INTO `yg_customer` VALUES ('22', 'we', 'jkl');

-- ----------------------------
-- Table structure for yg_goods
-- ----------------------------
DROP TABLE IF EXISTS `yg_goods`;
CREATE TABLE `yg_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `subTitle` varchar(255) DEFAULT NULL COMMENT '商品副标题',
  `orignalPrice` decimal(10,2) DEFAULT NULL COMMENT '商城价',
  `promotePrice` decimal(10,2) DEFAULT NULL COMMENT '交易价格',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `cid` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `fk_product_category` (`cid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yg_goods
-- ----------------------------
INSERT INTO `yg_goods` VALUES ('1', '英国jellycat小男孩幼儿童女孩Cordy Roy大象毛绒玩具公仔1-2周岁', '原装进口 可爱正品 陪伴宝宝 超级柔软', '225.01', '145.00', '50', null, '2017-09-08 09:24:00');
INSERT INTO `yg_goods` VALUES ('2', 'Xiaomi/小米 小米电视4A 32英寸 wifi智能网络高清液晶电视机', '64位处理器 千元旗舰 人工智能', '4499.00', '3999.00', '60', null, '2017-09-08 09:27:47');
INSERT INTO `yg_goods` VALUES ('3', 'Xiaomi/小米 笔记本AIR 13.3英寸 i7电脑轻薄便携独显学生游戏本', '第7代i7处理器 MX150显卡', '5999.00', '5999.00', '120', null, '2017-09-08 09:29:30');
INSERT INTO `yg_goods` VALUES ('4', '【三只松鼠_夏威夷果265gx2袋】零食坚果干果奶油味送开口器', '开学囤坚果 300款零食 开学必备', '95.00', '42.90', '1902', null, '2017-09-08 09:32:07');
INSERT INTO `yg_goods` VALUES ('5', '【三只松鼠_猪肉猪肉脯210g】休闲食品小吃零食靖江特产猪肉干', '开学囤坚果 300款零食 开学必备', '40.00', '15.90', '3409', null, '2017-09-08 09:33:18');
INSERT INTO `yg_goods` VALUES ('6', '【三只松鼠_炭烤肠198g】零食猪肉碳烤肠肉枣小香肠黑椒/川味', '开学囤坚果 300款零食 开学必备', '45.00', '19.90', '2345', null, '2017-09-08 09:33:59');
INSERT INTO `yg_goods` VALUES ('7', '【三只松鼠_约辣辣条200g】休闲麻辣零食大礼包大刀肉特产素食', '开学囤坚果 300款零食 开学必备', '25.00', '9.80', '153250', null, '2017-09-08 09:35:29');

-- ----------------------------
-- Table structure for yg_goods_imgage
-- ----------------------------
DROP TABLE IF EXISTS `yg_goods_imgage`;
CREATE TABLE `yg_goods_imgage` (
  `id` bigint(30) NOT NULL COMMENT 'id',
  `goods_skuid` bigint(20) DEFAULT NULL COMMENT '商品的id',
  `goods_img` varchar(255) DEFAULT NULL COMMENT '图片URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yg_goods_imgage
-- ----------------------------
INSERT INTO `yg_goods_imgage` VALUES ('1', '1', 'https://img.alicdn.com/bao/uploaded/i3/TB1foUQKXXXXXXRaXXXXXXXXXXX_!!0-item_pic.jpg_430x430q90.jpg');
INSERT INTO `yg_goods_imgage` VALUES ('2', '2', 'https://img.alicdn.com/imgextra/i1/1714128138/TB2evqJp3JlpuFjSspjXXcT.pXa_!!1714128138.jpg_430x430q90.jpg');
INSERT INTO `yg_goods_imgage` VALUES ('3', '3', 'https://img.alicdn.com/imgextra/i3/1714128138/TB2Y4SXXiYiFuJjSZFCXXXn2pXa_!!1714128138.jpg_430x430q90.jpg');
INSERT INTO `yg_goods_imgage` VALUES ('4', '4', 'https://img.alicdn.com/imgextra/i4/880734502/TB2rV9Tlr0kpuFjy0FjXXcBbVXa_!!880734502.jpg_430x430q90.jpg');
INSERT INTO `yg_goods_imgage` VALUES ('5', '5', 'https://img.alicdn.com/imgextra/i4/880734502/TB2i2w_bpgkyKJjSspiXXcwBpXa_!!880734502.jpg_430x430q90.jpg');
INSERT INTO `yg_goods_imgage` VALUES ('6', '6', 'https://img.alicdn.com/imgextra/i4/880734502/TB2i2w_bpgkyKJjSspiXXcwBpXa_!!880734502.jpg_430x430q90.jpg');
INSERT INTO `yg_goods_imgage` VALUES ('7', '7', 'https://img.alicdn.com/imgextra/i4/880734502/TB20R7RbmiJ.eBjSspoXXcpMFXa_!!880734502.jpg_430x430q90.jpg');
INSERT INTO `yg_goods_imgage` VALUES ('8', '7', 'https://img.alicdn.com/imgextra/i4/880734502/TB2i2w_bpgkyKJjSspiXXcwBpXa_!!880734502.jpg_430x430q90.jpg');
