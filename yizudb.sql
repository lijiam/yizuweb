/*
Navicat MySQL Data Transfer

Source Server         : yizudb-yun
Source Server Version : 50711
Source Host           : 120.79.57.239:3316
Source Database       : yizudb

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-06-23 16:02:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for case_table
-- ----------------------------
DROP TABLE IF EXISTS `case_table`;
CREATE TABLE `case_table` (
  `case_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `case_img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `img_urls` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `case_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `case_introduce` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `case_content` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of case_table
-- ----------------------------
INSERT INTO `case_table` VALUES ('100', '../../static/imgs/cases/case01_01.png', '../../static/imgs/cases/case01_01.png,../../static/imgs/cases/case01_02.png', '2018“青年之家”举办会议', '2018年，“青年之家”会议室里，几只校外技术创业团队在此进行项目讨论。益租负责场地的灯光、桌椅等设备服务，并由益租校园大使带领该团队至会议场地，一路上为其介绍高校环境，讲解高校文化。周到而细致的服务保证了活动的顺利进行。', '2018年，“青年之家”会议室里，几只校外技术创业团队在此进行项目讨论。益租负责场地的灯光、桌椅等设备服务，并由益租校园大使带领该团队至会议场地，一路上为其介绍高校环境，讲解高校文化。周到而细致的服务保证了活动的顺利进行。');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=467 DEFAULT CHARSET=latin2;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('100', '10', '北京', '10100', '东城区');
INSERT INTO `city` VALUES ('101', '10', '北京', '10101', '西城区');
INSERT INTO `city` VALUES ('102', '10', '北京', '10102', '朝阳区');
INSERT INTO `city` VALUES ('103', '10', '北京', '10103', '丰台区');
INSERT INTO `city` VALUES ('104', '10', '北京', '10104', '石景山区');
INSERT INTO `city` VALUES ('105', '10', '北京', '10105', '海淀区');
INSERT INTO `city` VALUES ('106', '10', '北京', '10106', '门头沟区');
INSERT INTO `city` VALUES ('107', '10', '北京', '10107', '房山区');
INSERT INTO `city` VALUES ('108', '10', '北京', '10108', '通州区');
INSERT INTO `city` VALUES ('109', '10', '北京', '10109', '顺义区');
INSERT INTO `city` VALUES ('110', '10', '北京', '10110', '昌平区');
INSERT INTO `city` VALUES ('111', '10', '北京', '10111', '大兴区');
INSERT INTO `city` VALUES ('112', '10', '北京', '10112', '怀柔区');
INSERT INTO `city` VALUES ('113', '10', '北京', '10113', '平谷区');
INSERT INTO `city` VALUES ('114', '10', '北京', '10114', '密云区');
INSERT INTO `city` VALUES ('115', '10', '北京', '10115', '延庆区');
INSERT INTO `city` VALUES ('116', '11', '天津', '11100', '河西区');
INSERT INTO `city` VALUES ('117', '11', '天津', '11101', '河东区');
INSERT INTO `city` VALUES ('118', '11', '天津', '11102', '和平区');
INSERT INTO `city` VALUES ('119', '11', '天津', '11103', '南开区');
INSERT INTO `city` VALUES ('120', '11', '天津', '11104', '河北区');
INSERT INTO `city` VALUES ('121', '11', '天津', '11105', '红桥区');
INSERT INTO `city` VALUES ('122', '11', '天津', '11106', '东丽区');
INSERT INTO `city` VALUES ('123', '11', '天津', '11107', '西青区');
INSERT INTO `city` VALUES ('124', '11', '天津', '11108', '津南区');
INSERT INTO `city` VALUES ('125', '11', '天津', '11109', '北辰区');
INSERT INTO `city` VALUES ('126', '11', '天津', '11110', '武清区');
INSERT INTO `city` VALUES ('127', '11', '天津', '11111', '宝坻区');
INSERT INTO `city` VALUES ('128', '11', '天津', '11112', '滨海新区');
INSERT INTO `city` VALUES ('129', '11', '天津', '11113', '宁河区');
INSERT INTO `city` VALUES ('130', '11', '天津', '11114', '静海区');
INSERT INTO `city` VALUES ('131', '11', '天津', '11115', '蓟州区');
INSERT INTO `city` VALUES ('132', '12', '上海', '12100', '黄浦区');
INSERT INTO `city` VALUES ('133', '12', '上海', '12101', '徐汇区');
INSERT INTO `city` VALUES ('134', '12', '上海', '12102', '长宁区');
INSERT INTO `city` VALUES ('135', '12', '上海', '12103', '静安区');
INSERT INTO `city` VALUES ('136', '12', '上海', '12104', '普陀区');
INSERT INTO `city` VALUES ('137', '12', '上海', '12105', '虹口区');
INSERT INTO `city` VALUES ('138', '12', '上海', '12106', '杨浦区');
INSERT INTO `city` VALUES ('139', '12', '上海', '12107', '闵行区');
INSERT INTO `city` VALUES ('140', '12', '上海', '12108', '宝山区');
INSERT INTO `city` VALUES ('141', '12', '上海', '12109', '嘉定区');
INSERT INTO `city` VALUES ('142', '12', '上海', '12110', '浦东新区');
INSERT INTO `city` VALUES ('143', '12', '上海', '12111', '松江区');
INSERT INTO `city` VALUES ('144', '12', '上海', '12112', '金山区');
INSERT INTO `city` VALUES ('145', '12', '上海', '12113', '青浦区');
INSERT INTO `city` VALUES ('146', '12', '上海', '12114', '奉贤区');
INSERT INTO `city` VALUES ('147', '12', '上海', '12115', '崇明区');
INSERT INTO `city` VALUES ('148', '13', '重庆', '13100', '渝中区');
INSERT INTO `city` VALUES ('149', '13', '重庆', '13101', '大渡口区');
INSERT INTO `city` VALUES ('150', '13', '重庆', '13102', '江北区');
INSERT INTO `city` VALUES ('151', '13', '重庆', '13103', '沙坪坝区');
INSERT INTO `city` VALUES ('152', '13', '重庆', '13104', '九龙坡区');
INSERT INTO `city` VALUES ('153', '13', '重庆', '13105', '南岸区');
INSERT INTO `city` VALUES ('154', '13', '重庆', '13106', '北碚区');
INSERT INTO `city` VALUES ('155', '13', '重庆', '13107', '渝北区');
INSERT INTO `city` VALUES ('156', '13', '重庆', '13108', '巴南区');
INSERT INTO `city` VALUES ('157', '13', '重庆', '13109', '万州区');
INSERT INTO `city` VALUES ('158', '13', '重庆', '13110', '涪陵区');
INSERT INTO `city` VALUES ('159', '13', '重庆', '13111', '永川区');
INSERT INTO `city` VALUES ('160', '13', '重庆', '13112', '璧山区');
INSERT INTO `city` VALUES ('161', '13', '重庆', '13113', '大足区');
INSERT INTO `city` VALUES ('162', '13', '重庆', '13114', '綦江区');
INSERT INTO `city` VALUES ('163', '13', '重庆', '13115', '江津区');
INSERT INTO `city` VALUES ('164', '13', '重庆    ', '13116', '合川区');
INSERT INTO `city` VALUES ('165', '13', '重庆', '13117', '黔江区');
INSERT INTO `city` VALUES ('166', '13', '重庆', '13118', '长寿区');
INSERT INTO `city` VALUES ('167', '13', '重庆', '13119', '南山区');
INSERT INTO `city` VALUES ('168', '13', '重庆', '13120', '铜梁区');
INSERT INTO `city` VALUES ('169', '13', '重庆', '13121', '潼南区');
INSERT INTO `city` VALUES ('170', '13', '重庆', '13122', '荣昌区');
INSERT INTO `city` VALUES ('171', '13', '重庆', '13123', '开州区');
INSERT INTO `city` VALUES ('172', '13', '重庆', '13124', '梁平区');
INSERT INTO `city` VALUES ('173', '13', '重庆', '13125', '武隆区');
INSERT INTO `city` VALUES ('174', '14', '河北', '14100', '石家庄市');
INSERT INTO `city` VALUES ('175', '14', '河北', '14101', '唐山市');
INSERT INTO `city` VALUES ('176', '14', '河北', '14102', '秦皇岛市');
INSERT INTO `city` VALUES ('177', '14', '河北', '14103', '邯郸市');
INSERT INTO `city` VALUES ('178', '14', '河北', '14104', '邢台市');
INSERT INTO `city` VALUES ('179', '14', '河北', '14105', '保定市');
INSERT INTO `city` VALUES ('180', '14', '河北', '14106', '张家口市');
INSERT INTO `city` VALUES ('181', '14', '河北', '14107', '承德市');
INSERT INTO `city` VALUES ('182', '14', '河北', '14108', '沧州市');
INSERT INTO `city` VALUES ('183', '14', '河北', '14109', '廊坊市');
INSERT INTO `city` VALUES ('184', '14', '河北', '14110', '衡水市');
INSERT INTO `city` VALUES ('185', '15', '山西', '15100', '太原市');
INSERT INTO `city` VALUES ('186', '15', '山西', '15101', '大同市');
INSERT INTO `city` VALUES ('187', '15', '山西', '15102', '阳泉市');
INSERT INTO `city` VALUES ('188', '15', '山西', '15103', '长治市');
INSERT INTO `city` VALUES ('189', '15', '山西', '15104', '晋城市');
INSERT INTO `city` VALUES ('190', '15', '山西', '15105', '朔州市');
INSERT INTO `city` VALUES ('191', '15', '山西', '15106', '忻州市');
INSERT INTO `city` VALUES ('192', '15', '山西', '15107', '吕梁市');
INSERT INTO `city` VALUES ('193', '15', '山西', '15108', '晋中市');
INSERT INTO `city` VALUES ('194', '15', '山西', '15109', '临汾市');
INSERT INTO `city` VALUES ('195', '15', '山西', '15110', '运城市');
INSERT INTO `city` VALUES ('196', '16', '内蒙古', '16100', '呼和浩特市');
INSERT INTO `city` VALUES ('197', '16', '内蒙古', '16101', '包头市');
INSERT INTO `city` VALUES ('198', '16', '内蒙古', '16102', '乌海市');
INSERT INTO `city` VALUES ('199', '16', '内蒙古', '16103', '赤峰市');
INSERT INTO `city` VALUES ('200', '16', '内蒙古', '16104', '呼伦贝尔市');
INSERT INTO `city` VALUES ('201', '16', '内蒙古', '16105', '通辽市');
INSERT INTO `city` VALUES ('202', '16', '内蒙古', '16106', '乌兰察布市');
INSERT INTO `city` VALUES ('203', '16', '内蒙古', '16107', '鄂尔多斯市');
INSERT INTO `city` VALUES ('204', '16', '内蒙古', '16108', '巴彦淖尔市');
INSERT INTO `city` VALUES ('205', '17', '辽宁', '17100', '沈阳市');
INSERT INTO `city` VALUES ('206', '17', '辽宁', '17101', '大连市');
INSERT INTO `city` VALUES ('207', '17', '辽宁', '17102', '鞍山市');
INSERT INTO `city` VALUES ('208', '17', '辽宁', '17103', '抚顺市');
INSERT INTO `city` VALUES ('209', '17', '辽宁', '17104', '本溪市');
INSERT INTO `city` VALUES ('210', '17', '辽宁', '17105', '丹东市');
INSERT INTO `city` VALUES ('211', '17', '辽宁', '17106', '锦州市');
INSERT INTO `city` VALUES ('212', '17', '辽宁', '17107', '营口市');
INSERT INTO `city` VALUES ('213', '17', '辽宁', '17108', '阜新市');
INSERT INTO `city` VALUES ('214', '17', '辽宁', '17109', '辽阳市');
INSERT INTO `city` VALUES ('215', '17', '辽宁', '17110', '盘锦市');
INSERT INTO `city` VALUES ('216', '17', '辽宁', '17111', '铁岭市');
INSERT INTO `city` VALUES ('217', '17', '辽宁', '17112', '朝阳市');
INSERT INTO `city` VALUES ('218', '17', '辽宁', '17113', '葫芦岛市');
INSERT INTO `city` VALUES ('219', '18', '吉林', '18100', '长春市');
INSERT INTO `city` VALUES ('220', '18', '吉林', '18101', '吉林市');
INSERT INTO `city` VALUES ('221', '18', '吉林', '18102', '四平市');
INSERT INTO `city` VALUES ('222', '18', '吉林', '18103', '辽源市');
INSERT INTO `city` VALUES ('223', '18', '吉林', '18104', '通化市');
INSERT INTO `city` VALUES ('224', '18', '吉林', '18105', '白山市');
INSERT INTO `city` VALUES ('225', '18', '吉林', '18106', '白城市');
INSERT INTO `city` VALUES ('226', '18', '吉林', '18107', '松原市');
INSERT INTO `city` VALUES ('227', '19', '黑龙江', '19100', '哈尔滨市');
INSERT INTO `city` VALUES ('228', '19', '黑龙江', '19101', '齐齐哈尔市');
INSERT INTO `city` VALUES ('229', '19', '黑龙江', '19102', '牡丹江市');
INSERT INTO `city` VALUES ('230', '19', '黑龙江', '19103', '佳木斯市');
INSERT INTO `city` VALUES ('231', '19', '黑龙江', '19104', '大庆市');
INSERT INTO `city` VALUES ('232', '19', '黑龙江', '19105', '伊春市');
INSERT INTO `city` VALUES ('233', '19', '黑龙江', '19106', '鸡西市');
INSERT INTO `city` VALUES ('234', '19', '黑龙江', '19107', '鹤岗市');
INSERT INTO `city` VALUES ('235', '19', '黑龙江', '19108', '双鸭山市');
INSERT INTO `city` VALUES ('236', '19', '黑龙江', '19109', '七台河市');
INSERT INTO `city` VALUES ('237', '19', '黑龙江', '19110', '绥化市');
INSERT INTO `city` VALUES ('238', '19', '黑龙江', '19111', '黑河市');
INSERT INTO `city` VALUES ('239', '20', '江苏', '20100', '南京市');
INSERT INTO `city` VALUES ('240', '20', '江苏', '20101', '无锡市');
INSERT INTO `city` VALUES ('241', '20', '江苏', '20102', '徐州市');
INSERT INTO `city` VALUES ('242', '20', '江苏', '20103', '常州市');
INSERT INTO `city` VALUES ('243', '20', '江苏', '20104', '苏州市');
INSERT INTO `city` VALUES ('244', '20', '江苏', '20105', '南通市');
INSERT INTO `city` VALUES ('245', '20', '江苏', '20106', '连云港市');
INSERT INTO `city` VALUES ('246', '20', '江苏', '20107', '淮安市');
INSERT INTO `city` VALUES ('247', '20', '江苏', '20108', '盐城市');
INSERT INTO `city` VALUES ('248', '20', '江苏', '20109', '扬州市');
INSERT INTO `city` VALUES ('249', '20', '江苏', '20110', '镇江市');
INSERT INTO `city` VALUES ('250', '20', '江苏', '20111', '泰州市');
INSERT INTO `city` VALUES ('251', '20', '江苏', '20112', '宿迁市');
INSERT INTO `city` VALUES ('252', '21', '浙江', '20113', '杭州市');
INSERT INTO `city` VALUES ('253', '21', '浙江', '20114', '宁波市');
INSERT INTO `city` VALUES ('254', '21', '浙江', '20115', '温州市');
INSERT INTO `city` VALUES ('255', '21', '浙江', '20116', '绍兴市');
INSERT INTO `city` VALUES ('256', '21', '浙江', '20117', '湖州市');
INSERT INTO `city` VALUES ('257', '21', '浙江', '20118', '嘉兴市');
INSERT INTO `city` VALUES ('258', '21', '浙江', '20119', '金华市');
INSERT INTO `city` VALUES ('259', '21', '浙江', '20120', '衢州市');
INSERT INTO `city` VALUES ('260', '21', '浙江', '20121', '台州市');
INSERT INTO `city` VALUES ('261', '21', '浙江', '20122', '丽水市');
INSERT INTO `city` VALUES ('262', '21', '浙江', '20123', '舟山市');
INSERT INTO `city` VALUES ('263', '22', '安徽', '22100', '合肥市');
INSERT INTO `city` VALUES ('264', '22', '安徽', '22101', '芜湖市');
INSERT INTO `city` VALUES ('265', '22', '安徽', '22102', '蚌埠市');
INSERT INTO `city` VALUES ('266', '22', '安徽', '22103', '淮南市');
INSERT INTO `city` VALUES ('267', '22', '安徽', '22104', '马鞍山市');
INSERT INTO `city` VALUES ('268', '22', '安徽', '22105', '淮北市');
INSERT INTO `city` VALUES ('269', '22', '安徽', '22106', '铜陵市');
INSERT INTO `city` VALUES ('270', '22', '安徽', '22107', '安庆市');
INSERT INTO `city` VALUES ('271', '22', '安徽', '22108', '黄山市');
INSERT INTO `city` VALUES ('272', '22', '安徽', '22109', '阜阳市');
INSERT INTO `city` VALUES ('273', '22', '安徽', '22110', '宿州市');
INSERT INTO `city` VALUES ('274', '22', '安徽', '22111', '滁州市');
INSERT INTO `city` VALUES ('275', '22', '安徽', '22112', '六安市');
INSERT INTO `city` VALUES ('276', '22', '安徽', '22113', '宣城市');
INSERT INTO `city` VALUES ('277', '22', '安徽', '22114', '池州市');
INSERT INTO `city` VALUES ('278', '22', '安徽', '22115', '亳州市');
INSERT INTO `city` VALUES ('279', '23', '福建', '23100', '福州市');
INSERT INTO `city` VALUES ('280', '23', '福建', '23101', '厦门市');
INSERT INTO `city` VALUES ('281', '23', '福建', '23102', '泉州市');
INSERT INTO `city` VALUES ('282', '23', '福建', '23103', '莆田市');
INSERT INTO `city` VALUES ('283', '23', '福建', '23104', '漳州市');
INSERT INTO `city` VALUES ('284', '23', '福建', '23105', '龙岩市');
INSERT INTO `city` VALUES ('285', '23', '福建', '23106', '三明市');
INSERT INTO `city` VALUES ('286', '23', '福建', '23107', '南平市');
INSERT INTO `city` VALUES ('287', '23', '福建', '23108', '宁德市');
INSERT INTO `city` VALUES ('288', '24', '江西', '24100', '南昌市');
INSERT INTO `city` VALUES ('289', '24', '江西', '24101', '赣州市');
INSERT INTO `city` VALUES ('290', '24', '江西', '24102', '宜春市');
INSERT INTO `city` VALUES ('291', '24', '江西', '24103', '吉安市');
INSERT INTO `city` VALUES ('292', '24', '江西', '24104', '上饶市');
INSERT INTO `city` VALUES ('293', '24', '江西', '24105', '抚州市');
INSERT INTO `city` VALUES ('294', '24', '江西', '24106', '九江市');
INSERT INTO `city` VALUES ('295', '24', '江西', '24107', '景德镇市');
INSERT INTO `city` VALUES ('296', '24', '江西', '24108', '萍乡市');
INSERT INTO `city` VALUES ('297', '24', '江西', '24109', '新余市');
INSERT INTO `city` VALUES ('298', '24', '江西', '24110', '鹰潭市');
INSERT INTO `city` VALUES ('299', '25', '山东', '25100', '济南市');
INSERT INTO `city` VALUES ('300', '25', '山东', '25101', '青岛市');
INSERT INTO `city` VALUES ('301', '25', '山东', '25102', '淄博市');
INSERT INTO `city` VALUES ('302', '25', '山东', '25103', '枣庄市');
INSERT INTO `city` VALUES ('303', '25', '山东', '25104', '东营市');
INSERT INTO `city` VALUES ('304', '25', '山东', '25105', '烟台市');
INSERT INTO `city` VALUES ('305', '25', '山东', '25106', '潍坊市');
INSERT INTO `city` VALUES ('306', '25', '山东', '25107', '济宁市');
INSERT INTO `city` VALUES ('307', '25', '山东', '25108', '泰安市');
INSERT INTO `city` VALUES ('308', '25', '山东', '25109', '威海市');
INSERT INTO `city` VALUES ('309', '25', '山东', '25110', '日照市');
INSERT INTO `city` VALUES ('310', '25', '山东', '25111', '滨州市');
INSERT INTO `city` VALUES ('311', '25', '山东', '25112', '德州市');
INSERT INTO `city` VALUES ('312', '25', '山东', '25113', '聊城市');
INSERT INTO `city` VALUES ('313', '25', '山东', '25114', '临沂市');
INSERT INTO `city` VALUES ('314', '25', '山东', '25115', '菏泽市');
INSERT INTO `city` VALUES ('315', '25', '山东', '25116', '莱芜市');
INSERT INTO `city` VALUES ('316', '26', '河南', '26100', '郑州市');
INSERT INTO `city` VALUES ('317', '26', '河南', '26101', '开封市');
INSERT INTO `city` VALUES ('318', '26', '河南', '26102', '洛阳市');
INSERT INTO `city` VALUES ('319', '26', '河南', '26103', '平顶山市');
INSERT INTO `city` VALUES ('320', '26', '河南', '26104', '安阳市');
INSERT INTO `city` VALUES ('321', '26', '河南', '26105', '鹤壁市');
INSERT INTO `city` VALUES ('322', '26', '河南', '26106', '新乡市');
INSERT INTO `city` VALUES ('323', '26', '河南', '26107', '焦作市');
INSERT INTO `city` VALUES ('324', '26', '河南', '26108', '濮阳市');
INSERT INTO `city` VALUES ('325', '26', '河南', '26109', '许昌市');
INSERT INTO `city` VALUES ('326', '26', '河南', '26110', '漯河市');
INSERT INTO `city` VALUES ('327', '26', '河南', '26111', '三门峡市');
INSERT INTO `city` VALUES ('328', '26', '河南', '26112', '商丘市');
INSERT INTO `city` VALUES ('329', '26', '河南', '26113', '周口市');
INSERT INTO `city` VALUES ('330', '26', '河南', '26114', '驻马店市');
INSERT INTO `city` VALUES ('331', '26', '河南', '26115', '南阳市');
INSERT INTO `city` VALUES ('332', '26', '河南', '26116', '信阳市');
INSERT INTO `city` VALUES ('333', '27', '湖北', '27100', '武汉市');
INSERT INTO `city` VALUES ('334', '27', '湖北', '27101', '黄石市');
INSERT INTO `city` VALUES ('335', '27', '湖北', '27102', '十堰市');
INSERT INTO `city` VALUES ('336', '27', '湖北', '27103', '荆州市');
INSERT INTO `city` VALUES ('337', '27', '湖北', '27104', '宜昌市');
INSERT INTO `city` VALUES ('338', '27', '湖北', '27105', '襄阳市');
INSERT INTO `city` VALUES ('339', '27', '湖北', '27106', '鄂州市');
INSERT INTO `city` VALUES ('340', '27', '湖北', '27107', '荆门市');
INSERT INTO `city` VALUES ('341', '27', '湖北', '27108', '黄冈市');
INSERT INTO `city` VALUES ('342', '27', '湖北', '27109', '孝感市');
INSERT INTO `city` VALUES ('343', '27', '湖北', '27110', '咸宁市');
INSERT INTO `city` VALUES ('344', '27', '湖北', '27111', '随州市');
INSERT INTO `city` VALUES ('345', '28', '湖南', '28100', '长沙市');
INSERT INTO `city` VALUES ('346', '28', '湖南', '28101', '株洲市');
INSERT INTO `city` VALUES ('347', '28', '湖南', '28102', '湘潭市');
INSERT INTO `city` VALUES ('348', '28', '湖南', '28103', '衡阳市');
INSERT INTO `city` VALUES ('349', '28', '湖南', '28104', '邵阳市');
INSERT INTO `city` VALUES ('350', '28', '湖南', '28105', '岳阳市');
INSERT INTO `city` VALUES ('351', '28', '湖南', '28106', '张家界市');
INSERT INTO `city` VALUES ('352', '28', '湖南', '28107', '益阳市');
INSERT INTO `city` VALUES ('353', '28', '湖南', '28108', '常德市');
INSERT INTO `city` VALUES ('354', '28', '湖南', '28109', '娄底市');
INSERT INTO `city` VALUES ('355', '28', '湖南', '28110', '郴州市');
INSERT INTO `city` VALUES ('356', '28', '湖南', '28111', '永州市');
INSERT INTO `city` VALUES ('357', '28', '湖南', '28112', '怀化市');
INSERT INTO `city` VALUES ('358', '29', '四川', '29100', '成都市');
INSERT INTO `city` VALUES ('359', '29', '四川', '29101', '绵阳市');
INSERT INTO `city` VALUES ('360', '29', '四川', '29102', '自贡市');
INSERT INTO `city` VALUES ('361', '29', '四川', '29103', '攀枝花市');
INSERT INTO `city` VALUES ('362', '29', '四川', '29104', '泸州市');
INSERT INTO `city` VALUES ('363', '29', '四川', '29105', '德阳市');
INSERT INTO `city` VALUES ('364', '29', '四川', '29106', '广元市');
INSERT INTO `city` VALUES ('365', '29', '四川', '29107', '遂宁市');
INSERT INTO `city` VALUES ('366', '29', '四川', '29108', '内江市');
INSERT INTO `city` VALUES ('367', '29', '四川', '29109', '乐山市');
INSERT INTO `city` VALUES ('368', '29', '四川', '29110', '资阳市');
INSERT INTO `city` VALUES ('369', '29', '四川', '29111', '宜宾市');
INSERT INTO `city` VALUES ('370', '29', '四川', '29112', '南充市');
INSERT INTO `city` VALUES ('371', '29', '四川', '29113', '达州市');
INSERT INTO `city` VALUES ('372', '29', '四川', '29114', '雅安市');
INSERT INTO `city` VALUES ('373', '29', '四川', '29115', '广安市');
INSERT INTO `city` VALUES ('374', '29', '四川', '29116', '巴中市');
INSERT INTO `city` VALUES ('375', '29', '四川', '29117', '眉山市');
INSERT INTO `city` VALUES ('376', '30', '贵州', '30100', '贵阳市');
INSERT INTO `city` VALUES ('377', '30', '贵州', '30101', '六盘水市');
INSERT INTO `city` VALUES ('378', '30', '贵州', '30102', '遵义市');
INSERT INTO `city` VALUES ('379', '30', '贵州', '30103', '铜仁市');
INSERT INTO `city` VALUES ('380', '30', '贵州', '30104', '毕节市');
INSERT INTO `city` VALUES ('381', '30', '贵州', '30105', '安顺市');
INSERT INTO `city` VALUES ('382', '31', '云南', '31100', '昆明市');
INSERT INTO `city` VALUES ('383', '31', '云南', '31101', '昭通市');
INSERT INTO `city` VALUES ('384', '31', '云南', '31102', '曲靖市');
INSERT INTO `city` VALUES ('385', '31', '云南', '31103', '玉溪市');
INSERT INTO `city` VALUES ('386', '31', '云南', '31104', '普洱市');
INSERT INTO `city` VALUES ('387', '31', '云南', '31105', '保山市');
INSERT INTO `city` VALUES ('388', '31', '云南', '31106', '丽江市');
INSERT INTO `city` VALUES ('389', '31', '云南', '31107', '临沧市');
INSERT INTO `city` VALUES ('390', '32', '西藏', '32100', '拉萨市');
INSERT INTO `city` VALUES ('391', '32', '西藏', '32101', '昌都市');
INSERT INTO `city` VALUES ('392', '32', '西藏', '32102', '山南市');
INSERT INTO `city` VALUES ('393', '32', '西藏', '32103', '日喀则市');
INSERT INTO `city` VALUES ('394', '32', '西藏', '32104', '林芝市');
INSERT INTO `city` VALUES ('395', '33', '陕西', '33100', '西安市');
INSERT INTO `city` VALUES ('396', '33', '陕西', '33101', '铜川市');
INSERT INTO `city` VALUES ('397', '33', '陕西', '33102', '宝鸡市');
INSERT INTO `city` VALUES ('398', '33', '陕西', '33103', '咸阳市');
INSERT INTO `city` VALUES ('399', '33', '陕西', '33104', '渭南市');
INSERT INTO `city` VALUES ('400', '33', '陕西', '33105', '汉中市');
INSERT INTO `city` VALUES ('401', '33', '陕西', '33106', '安康市');
INSERT INTO `city` VALUES ('402', '33', '陕西', '33107', '商洛市');
INSERT INTO `city` VALUES ('403', '33', '陕西', '33108', '延安市');
INSERT INTO `city` VALUES ('404', '33', '陕西', '33109', '榆林市');
INSERT INTO `city` VALUES ('405', '34', '甘肃', '34100', '兰州市');
INSERT INTO `city` VALUES ('406', '34', '甘肃', '34101', '嘉峪关市');
INSERT INTO `city` VALUES ('407', '34', '甘肃', '34102', '金昌市');
INSERT INTO `city` VALUES ('408', '34', '甘肃', '34103', '白银市');
INSERT INTO `city` VALUES ('409', '34', '甘肃', '34104', '天水市');
INSERT INTO `city` VALUES ('410', '34', '甘肃', '34105', '酒泉市');
INSERT INTO `city` VALUES ('411', '34', '甘肃', '34106', '张掖市');
INSERT INTO `city` VALUES ('412', '34', '甘肃', '34107', '武威市');
INSERT INTO `city` VALUES ('413', '34', '甘肃', '34108', '定西市');
INSERT INTO `city` VALUES ('414', '34', '甘肃', '34109', '陇南市');
INSERT INTO `city` VALUES ('415', '34', '甘肃', '34110', '平凉市');
INSERT INTO `city` VALUES ('416', '34', '甘肃', '34111', '庆阳市');
INSERT INTO `city` VALUES ('417', '35', '青海', '35100', '西宁市');
INSERT INTO `city` VALUES ('418', '35', '青海', '35101', '海东市');
INSERT INTO `city` VALUES ('419', '36', '宁夏', '36100', '银川市');
INSERT INTO `city` VALUES ('420', '36', '宁夏', '36101', '石嘴山市');
INSERT INTO `city` VALUES ('421', '36', '宁夏', '36102', '吴忠市');
INSERT INTO `city` VALUES ('422', '36', '宁夏', '36103', '固原市');
INSERT INTO `city` VALUES ('423', '36', '宁夏', '36104', '中卫市');
INSERT INTO `city` VALUES ('424', '37', '新疆', '37100', '乌鲁木齐市');
INSERT INTO `city` VALUES ('425', '37', '新疆', '37101', '克拉玛依市');
INSERT INTO `city` VALUES ('426', '37', '新疆', '37102', '吐鲁番市');
INSERT INTO `city` VALUES ('427', '37', '新疆', '37103', '哈密市');
INSERT INTO `city` VALUES ('428', '38', '广东', '38100', '广州市');
INSERT INTO `city` VALUES ('429', '38', '广东', '38101', '深圳市');
INSERT INTO `city` VALUES ('430', '38', '广东', '38102', '珠海市');
INSERT INTO `city` VALUES ('431', '38', '广东', '38103', '汕头市');
INSERT INTO `city` VALUES ('432', '38', '广东', '38104', '佛山市');
INSERT INTO `city` VALUES ('433', '38', '广东', '38105', '韶关市');
INSERT INTO `city` VALUES ('434', '38', '广东', '38106', '湛江市');
INSERT INTO `city` VALUES ('435', '38', '广东', '38107', '肇庆市');
INSERT INTO `city` VALUES ('436', '38', '广东', '38108', '江门市');
INSERT INTO `city` VALUES ('437', '38', '广东', '38109', '茂名市');
INSERT INTO `city` VALUES ('438', '38', '广东', '38110', '惠州市');
INSERT INTO `city` VALUES ('439', '38', '广东', '38111', '梅州市');
INSERT INTO `city` VALUES ('440', '38', '广东', '38112', '汕尾市');
INSERT INTO `city` VALUES ('441', '38', '广东', '38113', '河源市');
INSERT INTO `city` VALUES ('442', '38', '广东', '38114', '阳江市');
INSERT INTO `city` VALUES ('443', '38', '广东', '38115', '清远市');
INSERT INTO `city` VALUES ('444', '38', '广东', '38116', '东莞市');
INSERT INTO `city` VALUES ('445', '38', '广东', '38117', '中山市');
INSERT INTO `city` VALUES ('446', '38', '广东', '38118', '潮州市');
INSERT INTO `city` VALUES ('447', '38', '广东', '38119', '揭阳市');
INSERT INTO `city` VALUES ('448', '38', '广东', '38120', '云浮市');
INSERT INTO `city` VALUES ('449', '39', '广西', '39100', '南宁市');
INSERT INTO `city` VALUES ('450', '39', '广西', '39101', '柳州市');
INSERT INTO `city` VALUES ('451', '39', '广西', '39102', '桂林市');
INSERT INTO `city` VALUES ('452', '39', '广西', '39103', '梧州市');
INSERT INTO `city` VALUES ('453', '39', '广西', '39104', '北海市');
INSERT INTO `city` VALUES ('454', '39', '广西', '39105', '崇左市');
INSERT INTO `city` VALUES ('455', '39', '广西', '39106', '来宾市');
INSERT INTO `city` VALUES ('456', '39', '广西', '39107', '贺州市');
INSERT INTO `city` VALUES ('457', '39', '广西', '39108', '玉林市');
INSERT INTO `city` VALUES ('458', '39', '广西', '39109', '百色市');
INSERT INTO `city` VALUES ('459', '39', '广西', '39110', '河池市');
INSERT INTO `city` VALUES ('460', '39', '广西', '39111', '钦州市');
INSERT INTO `city` VALUES ('461', '39', '广西', '39112', '防城港市');
INSERT INTO `city` VALUES ('462', '39', '广西', '39113', '贵港市');
INSERT INTO `city` VALUES ('463', '40', '海南', '40100', '海口市');
INSERT INTO `city` VALUES ('464', '40', '海南', '40101', '三亚市');
INSERT INTO `city` VALUES ('465', '40', '海南', '40102', '儋州市');
INSERT INTO `city` VALUES ('466', '40', '海南', '40103', '三沙市');

-- ----------------------------
-- Table structure for demand_table
-- ----------------------------
DROP TABLE IF EXISTS `demand_table`;
CREATE TABLE `demand_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `people` int(255) DEFAULT NULL,
  `space` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `budget` int(255) DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `end_time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `insert_time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `demand` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

-- ----------------------------
-- Records of demand_table
-- ----------------------------
INSERT INTO `demand_table` VALUES ('7', '11', '天津', '11101', '河东区', '30', '乒乓球场', '运动会', '0', '2018-04-10 00:00:00', '2018-05-16 00:00:00', '2018-04-03 12:07:50', '', 'ljm', '17826807419', '');
INSERT INTO `demand_table` VALUES ('10', '10', '北京', '10100', '东城区', '20', '乒乓球场', '运动会', '300', '2018-04-03 23:09:09', '2018-04-04 23:09:09', '2018-04-04 23:09:21', '浙江理工大学下沙校区体育馆', 'ccj', '17826806385', '');
INSERT INTO `demand_table` VALUES ('11', '16', '内蒙古', '16103', '赤峰市', '30', '乒乓球场', '全面健身', '200', '2018-04-02 00:00:00', '2018-05-06 00:00:00', '2018-04-05 15:23:38', '浙江理工大学下沙校区体育馆', '测试', '17826801479', '');
INSERT INTO `demand_table` VALUES ('12', '12', '上海', '12102', '长宁区', '15', '篮球场', '社区足球赛', '15', '2018-05-18 00:00:00', '2018-06-19 00:00:00', '2018-05-17 17:38:41', '1212', '1212', '13122222222', '');

-- ----------------------------
-- Table structure for image_url
-- ----------------------------
DROP TABLE IF EXISTS `image_url`;
CREATE TABLE `image_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of image_url
-- ----------------------------

-- ----------------------------
-- Table structure for index_search
-- ----------------------------
DROP TABLE IF EXISTS `index_search`;
CREATE TABLE `index_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `university_id` int(11) DEFAULT NULL,
  `space_type_id` int(11) DEFAULT NULL,
  `activity_type_id` int(11) DEFAULT NULL,
  `person_count_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of index_search
-- ----------------------------

-- ----------------------------
-- Table structure for mini_space
-- ----------------------------
DROP TABLE IF EXISTS `mini_space`;
CREATE TABLE `mini_space` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `space_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `activity_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `people_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mini_space
-- ----------------------------
INSERT INTO `mini_space` VALUES ('100', '.../../static/imgs/spaces/public_space_01.jpg', '中国计量大学下沙校区体育场', '中国计量大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('101', '../../static/imgs/spaces/public_space_02.jpg', '中国计量大学下沙校区天健体育馆主馆', '中国计量大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('102', '../../static/imgs/spaces/public_space_04.jpg', '浙江理工大学下沙校区田径场', '浙江理工大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('103', '../../static/imgs/spaces/public_space_05.jpg', '浙江理工大学下沙校区篮球场', '浙江理工大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('104', '../../static/imgs/spaces/public_space_03.jpg', '浙江理工大学下沙校区体育馆', '浙江理工大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('105', '../../static/imgs/spaces/public_space_06.jpg', '浙江理工大学下沙校区万人体育场', '浙江理工大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('106', '../../static/imgs/spaces/public_space_07.jpg', '杭州电子科技大学下沙校区西篮球场', '杭州电子科技大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('107', '../../static/imgs/spaces/public_space_08.jpg', '杭州电子科技大学下沙校区东篮球场', '杭州电子科技大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('108', '../../static/imgs/spaces/public_space_09.png', '杭州电子科技大学下沙校区东田径场', '杭州电子科技大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('109', '../../static/imgs/spaces/public_space_10.jpg', '杭州电子科技大学下沙校区体育馆', '杭州电子科技大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('110', '../../static/imgs/spaces/public_space_11.png', '杭州电子科技大学下沙校区体育场', '杭州电子科技大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('111', '../../static/imgs/spaces/public_space_12.png', '浙江大学紫金港校区体育馆', '浙江大学', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('112', '../../static/imgs/spaces/public_space_13.png', '杭州科技职业技术学院体育馆', '杭州科技职业技术学院', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');
INSERT INTO `mini_space` VALUES ('113', '../../static/imgs/spaces/public_space_14.jpg', '杭州科技职业技术学院田径场', '杭州科技职业技术学院', '体育场馆', '社区篮球比赛,社区足球赛,社区晚会,路演', '浙江', '杭州市', '1000以上');

-- ----------------------------
-- Table structure for partner
-- ----------------------------
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of partner
-- ----------------------------

-- ----------------------------
-- Table structure for space
-- ----------------------------
DROP TABLE IF EXISTS `space`;
CREATE TABLE `space` (
  `id` varchar(11) CHARACTER SET utf8 NOT NULL,
  `province` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `space_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `activity_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `equipment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `open_time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `people_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `people` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `morning_price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `noon_price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `evening_price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `space_introduce` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `default_price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of space
-- ----------------------------
INSERT INTO `space` VALUES ('100', '浙江', '杭州市', '../../static/imgs/spaces/public_space_01.jpg', '中国计量大学下沙校区体育场', '中国计量大学', '体育场馆', '12000平方', '社区运动会、周边居民锻炼、社区足球比赛等', '灯光，音响，主席台，旗杆', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '杭州市下沙高教园区学源街258号', '学源街文海南路口 b支4路、223路、337路、366路、373路', '1001-1500人', '900-1500人', '￥100.00', '￥200.00', '￥300.00', ' 中国计量大学是我国质量监督检验检疫行业唯一的本科院校，是一所计量、标准、质量和检验检疫特色鲜明、多学科协调发展的普通高校。学校坐落于浙江省杭州市，校园环境优美，办学条件优越，拥有教学科研仪器设备总值3.9亿元，纸质图书220万册。现有52个本科专业，涵盖工学、理学、管理学、法学、文学、经济学、医药学、农学、艺术学等九大学科门类。设有19个学院（部），创办1所独立学院，有全日制在校生16382人，独立学院本科生6148人。                                           中国计量大学下沙校区体育场拥有约2500个固定看台，设置有400米标准塑胶跑道和真草草皮足球场，配置了灯光、音响、主席台、旗杆等。', '￥100.00');
INSERT INTO `space` VALUES ('101', '浙江', '杭州市', '../../static/imgs/spaces/public_space_02.jpg', '中国计量大学下沙校区天健体育馆主馆', '中国计量大学', '体育场馆', '800平方', '社区篮球赛，体操、武术、羽毛球、乒乓球锻炼等', '灯光，音响，空调，LED大屏', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '杭州市下沙高教园区学源街258号', '学源街文海南路口 b支4路、223路、337路、366路、373路', '801-900人', '700-900人', '￥100.00', '￥200.00', '￥300.00', '中国计量大学是我国质量监督检验检疫行业唯一的本科院校，是一所计量、标准、质量和检验检疫特色鲜明、多学科协调发展的普通高校。学校坐落于浙江省杭州市，校园环境优美，办学条件优越，拥有教学科研仪器设备总值3.9亿元，纸质图书220万册。现有52个本科专业，涵盖工学、理学、管理学、法学、文学、经济学、医药学、农学、艺术学等九大学科门类。设有19个学院（部），创办1所独立学院，有全日制在校生16382人，独立学院本科生6148人。                                        中国计量大学下沙校区天健体育馆主馆设有固定看台约800个，并配置有灯光、音响、LED大屏、液压式篮球架、24秒计时器等设备，观众席可根据活动需要进行拉升，馆内四周可设置多条宣传条幅，另设有体操、武术、羽毛球、乒乓球等分馆。', '￥100.00');
INSERT INTO `space` VALUES ('102', '浙江', '杭州市', '../../static/imgs/spaces/public_space_04.jpg', '浙江理工大学下沙校区体育馆', '浙江理工大学', '体育场馆', '1500平方', '社区运动会、篮球比赛，排球、乒乓球、羽毛球锻炼等', '灯光，音响，LED，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '杭州市江干区2号大街928号', '高教西公园南 b支4路、210路、223路', '1500人以上', '1500人以上', '￥100.00', '￥200.00', '￥300.00', '浙江理工大学是一所以工为主，特色鲜明，优势突出，理、工、文、经、管、法、艺术、教育等多学科协调发展的省属重点建设大学。学校坐落于“上有天堂，下有苏杭”的历史文化名城杭州市。学校占地面积2100余亩。下设16个学院（教研部），举办1所独立学院，有本科专业59个；拥有2个博士学位授权一级学科，17个硕士学位授权一级学科，2个博士后科研流动站；现有全日制在校学生27000余人，其中研究生3500余人。                 浙江理工大学下沙校区体育馆建筑面积为15000平米，主馆可容纳观众4200人，配置有中央空调、电子显示屏、音响、照明、液压篮球架、电子篮球裁判系统设备，另外配有副馆多功能区满足篮球、排球、乒乓球、羽毛球、健美操、武术、跆拳道、瑜伽等教学。', '￥100.00');
INSERT INTO `space` VALUES ('103', '浙江', '杭州市', '../../static/imgs/spaces/public_space_05.jpg', '浙江理工大学下沙校区田径场', '浙江理工大学', '体育场馆', '12000平方', '周边居民锻炼锻炼、社区足球比赛', '无', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '杭州市江干区2号大街928号', '高教西公园南 b支4路、210路、223路', '201-300人', '200-300人', '￥100.00', '￥200.00', '￥300.00', '浙江理工大学是一所以工为主，特色鲜明，优势突出，理、工、文、经、管、法、艺术、教育等多学科协调发展的省属重点建设大学。学校坐落于“上有天堂，下有苏杭”的历史文化名城杭州市。学校占地面积2100余亩。下设16个学院（教研部），举办1所独立学院，有本科专业59个；拥有2个博士学位授权一级学科，17个硕士学位授权一级学科，2个博士后科研流动站；现有全日制在校学生27000余人，其中研究生3500余人。                 浙江理工大学下沙校区田径场为标准400米塑胶跑道场地，配置有人工草皮足球场。', '￥100.00');
INSERT INTO `space` VALUES ('104', '浙江', '杭州市', '../../static/imgs/spaces/public_space_03.jpg', '浙江理工大学下沙校区篮球场', '浙江理工大学', '体育场馆', '8000平方', '社区篮球比赛，篮球锻炼', '无', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '杭州市江干区2号大街928号', '高教西公园南 b支4路、210路、223路', '401-500人', '300-500人', '￥100.00', '￥200.00', '￥300.00', '浙江理工大学是一所以工为主，特色鲜明，优势突出，理、工、文、经、管、法、艺术、教育等多学科协调发展的省属重点建设大学。学校坐落于“上有天堂，下有苏杭”的历史文化名城杭州市。学校占地面积2100余亩。下设16个学院（教研部），举办1所独立学院，有本科专业59个；拥有2个博士学位授权一级学科，17个硕士学位授权一级学科，2个博士后科研流动站；现有全日制在校学生27000余人，其中研究生3500余人。                 浙江理工大学下沙校区篮球场位于体育馆和万人体育场中间位置，拥有15片场地。', '￥100.00');
INSERT INTO `space` VALUES ('105', '浙江', '杭州市', '../../static/imgs/spaces/public_space_06.jpg', '浙江理工大学下沙校区万人体育场', '浙江理工大学', '体育场馆', '12000平方', '周边居民锻炼、社区足球比赛', '电源，电子屏，音响', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '杭州市江干区2号大街928号', '高教西公园南 b支4路、210路、223路', '1500人以上', '1500人以上', '￥100.00', '￥200.00', '￥300.00', '浙江理工大学是一所以工为主，特色鲜明，优势突出，理、工、文、经、管、法、艺术、教育等多学科协调发展的省属重点建设大学。学校坐落于“上有天堂，下有苏杭”的历史文化名城杭州市。学校占地面积2100余亩。下设16个学院（教研部），举办1所独立学院，有本科专业59个；拥有2个博士学位授权一级学科，17个硕士学位授权一级学科，2个博士后科研流动站；现有全日制在校学生27000余人，其中研究生3500余人。                 浙江理工大学下沙校区万人体育场拥有万人圆形固定看台，场地为标准400米塑胶跑道和真草草皮足球场，配置有主席台、音响、电子屏、休息室、裁判室等设施。', '￥100.00');
INSERT INTO `space` VALUES ('106', '浙江', '杭州市', '../../static/imgs/spaces/public_space_07.jpg', '杭州电子科技大学下沙校区西篮球场', '杭州电子科技大学', '体育场馆', '4500平方', '社区篮球比赛，篮球锻炼', '无', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '杭州市下沙街道2号大街1158', '文泽路学林街口 364路、377路、173路、373路', '201-300人', '200-300人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学是一所电子信息特色突出，经管学科优势明显，工、理、经、管、文、法、教、艺等多学科相互渗透的教学研究型大学。2000年被浙江省列为重点建设的教学研究型大学。2007年12月25日，学校成为浙江省与国防科工委共建高校，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校。2011年，浙江省与国防科技工业局签署协议，明确在“十二五”期间继续共建杭州电子科技大学。学校建有下沙、文一、东岳和下沙东四个校区，占地面积2000余亩，现有普通全日制在校生28000余人，教职员工2200余人。  杭州电子科技大学下沙校区西篮球场位于体育馆旁边，共有标准篮球场地9片，面积4500平，适合举办篮球比赛。', '￥100.00');
INSERT INTO `space` VALUES ('107', '浙江', '杭州市', '../../static/imgs/spaces/public_space_08.jpg', '杭州电子科技大学下沙校区东篮球场', '杭州电子科技大学', '体育场馆', '4500平方', '社区篮球比赛、公益路演', '无', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙高教园区学林街188号', '文泽路学林街口 364路、377路、173路、373路', '201-300人', '200-300人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学是一所电子信息特色突出，经管学科优势明显，工、理、经、管、文、法、教、艺等多学科相互渗透的教学研究型大学。2000年被浙江省列为重点建设的教学研究型大学。2007年12月25日，学校成为浙江省与国防科工委共建高校，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校。2011年，浙江省与国防科技工业局签署协议，明确在“十二五”期间继续共建杭州电子科技大学。学校建有下沙、文一、东岳和下沙东四个校区，占地面积2000余亩，现有普通全日制在校生28000余人，教职员工2200余人。\n\n杭州电子科技大学下沙校区东篮球场共有标准篮球场地9片，适合举办篮球比赛和商业路演', '￥100.00');
INSERT INTO `space` VALUES ('108', '浙江', '杭州市', '../../static/imgs/spaces/public_space_09.png', '杭州电子科技大学下沙校区东田径场', '杭州电子科技大学', '体育场馆', '12000平方', '社区运动会、足球比赛、周边居民锻炼', '灯光', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙高教园区学林街188号', '文泽路学林街口 364路、377路、173路、373路', '201-300人', '200-300人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学是一所电子信息特色突出，经管学科优势明显，工、理、经、管、文、法、教、艺等多学科相互渗透的教学研究型大学。2000年被浙江省列为重点建设的教学研究型大学。2007年12月25日，学校成为浙江省与国防科工委共建高校，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校。2011年，浙江省与国防科技工业局签署协议，明确在“十二五”期间继续共建杭州电子科技大学。学校建有下沙、文一、东岳和下沙东四个校区，占地面积2000余亩，现有普通全日制在校生28000余人，教职员工2200余人。\n\n杭州电子科技大学下沙校区东田径场为标准400米塑胶跑道场地，设置有人工草皮足球场和夜场照明，适合举办小型运动会和其他体育赛事。', '￥100.00');
INSERT INTO `space` VALUES ('109', '浙江', '杭州市', '../../static/imgs/spaces/public_space_10.jpg', '杭州电子科技大学下沙校区体育馆', '杭州电子科技大学', '体育场馆', '1500平方', '社区篮球比赛、公益路演、公开讲座', '灯光，音响，空调，LED大屏，休息室，会议室', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙街道2号大街1158', '文泽路学林街口 364路、377路、173路、373路', '1001-1500人', '1500人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学是一所电子信息特色突出，经管学科优势明显，工、理、经、管、文、法、教、艺等多学科相互渗透的教学研究型大学。2000年被浙江省列为重点建设的教学研究型大学。2007年12月25日，学校成为浙江省与国防科工委共建高校，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校。2011年，浙江省与国防科技工业局签署协议，明确在“十二五”期间继续共建杭州电子科技大学。学校建有下沙、文一、东岳和下沙东四个校区，占地面积2000余亩，现有普通全日制在校生28000余人，教职员工2200余人。\n\n杭州电子科技大学下沙校区体育馆共有固定座位5600个，馆内功能齐全，配置有灯光、音响、空调、LED大屏、运动员休息室、会议室等，可供篮球、排球、乒乓球、羽毛球等运动队训练用，也可满足大型体育赛事的举办功能。', '￥100.00');
INSERT INTO `space` VALUES ('110', '浙江', '杭州市', '../../static/imgs/spaces/public_space_11.png', '杭州电子科技大学下沙校区体育场', '杭州电子科技大学', '体育场馆', '12000平方', '社区运动会、足球比赛、周边居民锻炼', '电源，电子屏，音响', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙街道学林街280-300号', '文泽路学林街口 364路、377路、173路、373路', '1001-1500人', '1500人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学是一所电子信息特色突出，经管学科优势明显，工、理、经、管、文、法、教、艺等多学科相互渗透的教学研究型大学。2000年被浙江省列为重点建设的教学研究型大学。2007年12月25日，学校成为浙江省与国防科工委共建高校，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校。2011年，浙江省与国防科技工业局签署协议，明确在“十二五”期间继续共建杭州电子科技大学。学校建有下沙、文一、东岳和下沙东四个校区，占地面积2000余亩，现有普通全日制在校生28000余人，教职员工2200余人。\n杭州电子科技大学下沙校区体育场拥有标准400米塑胶跑道，共有固定座位10000个，场内足球场设置了自然草地，并配置有音响、话筒、电子大屏等设备，高规格的场地适合举办各类大型体育赛事。\n\n', '￥100.00');
INSERT INTO `space` VALUES ('111', '浙江', '杭州市', '../../static/imgs/spaces/public_space_12.png', '浙江大学紫金港校区体育馆', '浙江大学', '体育场馆', '2000平方', '社区篮球比赛、公益路演、公开讲座、小区晚会', '灯光，音响，麦克风，LED，空调，贵宾室', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '1500人以上', '1500人以上', '￥100.00', '￥200.00', '￥300.00', '浙江大学是一所历史悠久、声誉卓著的高等学府，坐落于中国历史文化名城、风景旅游胜地杭州。浙江大学的前身求是书院创立于1897年，为中国人自己最早创办的新式高等学校之一。截止2013年9月30日，浙江大学现有全日制在校学生46045人。学校拥有紫金港、玉泉、西溪、华家池、之江等5个校区。今天的浙江大学，正努力建设世界一流的综合型、研究型、创新型大学。\n\n浙江大学紫金港校区位于杭州城西部塘北地块，是浙江大学投资30多亿元新建的一座现代化、网络化、园林化、生态化的大学校园，紫金港校区毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。紫金港校区学生宿舍分为蓝田、丹阳、青溪、紫云、碧峰、白沙、翠柏七个学园。特色：没有围墙，没有校门，拥有护校河。\n\n浙江大学紫金港校区体育馆位于紫金港校区东部、风雨操场西侧，共有座位6000个，分为固定座位区（3705个）和内场非固定座位区，配置有灯光、音响、话筒、LED大屏、空调、贵宾接待室等资源，适合举办大型体育赛事及文艺演出活动。', '￥100.00');
INSERT INTO `space` VALUES ('112', '浙江', '杭州市', '../../static/imgs/spaces/public_space_13.png', '杭州科技职业技术学院体育馆', '杭州科技职业技术学院', '体育场馆', '500平方', '社区篮球比赛、公益路演、公开讲座、小区晚会', '灯光，音响，电子大屏', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市富阳高科路198号', '科职院 621路、620路', '1500人以上', '1500人以上', '￥100.00', '￥200.00', '￥300.00', '杭州科技职业技术学院是一所由杭州市人民政府主办的普通高等职业院校，于1999年12月经浙江省人民政府批准开始筹建，2009年2月正式建院。目前学校有高职全日制在校生逾7000人，远期规模将达到10000人。学校现有杭州城区、高桥、严州三个校区。主校区位于杭州高桥高教综合体内，校园占地面积710余亩，校舍建筑面积33万平方米。整个校园依山傍水，山青水秀，建有教学楼、实训楼、创新创业产业园（留学生、大学生创业园）、图书馆、陶行知研究馆（校史馆）、文体中心（千人剧场、体育馆）、餐饮中心、学生公寓等主要建筑，设施现代，宜学宜居，是省内目前最漂亮的山水校园、生态校园、人文校园之一。\n\n杭州科技职业技术学院室内体育馆为标准室内篮球场馆，看台为四面环形分布，场馆共有看台约2000个（其中固定座椅约1500个，移动式座椅约500个），内部配有两块LED电子大屏，可满足篮球比赛及大型文艺表演的需求。', '￥100.00');
INSERT INTO `space` VALUES ('113', '浙江', '杭州市', '../../static/imgs/spaces/public_space_14.jpg', '杭州科技职业技术学院田径场', '杭州科技职业技术学院', '体育场馆', '10000平方', '社区运动会、足球比赛、周边居民锻炼', '电源', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市富阳高科路198号', '科职院 621路、620路', '1500人以上', '1500人以上', '￥100.00', '￥200.00', '￥300.00', '杭州科技职业技术学院是一所由杭州市人民政府主办的普通高等职业院校，于1999年12月经浙江省人民政府批准开始筹建，2009年2月正式建院。目前学校有高职全日制在校生逾7000人，远期规模将达到10000人。学校现有杭州城区、高桥、严州三个校区。主校区位于杭州高桥高教综合体内，校园占地面积710余亩，校舍建筑面积33万平方米。整个校园依山傍水，山青水秀，建有教学楼、实训楼、创新创业产业园（留学生、大学生创业园）、图书馆、陶行知研究馆（校史馆）、文体中心（千人剧场、体育馆）、餐饮中心、学生公寓等主要建筑，设施现代，宜学宜居，是省内目前最漂亮的山水校园、生态校园、人文校园之一。\n\n杭州科技职业技术学院田径场位于校园西南角，分布有东西两片看台，共有座位约2000个，田径场为标准400米跑道设计，人工足球草坪，司令台配有电源、音响等，可满足大型户外体育赛事的需求。\n\n', '￥100.00');
INSERT INTO `space` VALUES ('114', '浙江', '杭州市', '../../static/imgs/spaces/space_01.png', '中国计量大学下沙校区', '中国计量大学', '大会堂', '1000平方', '晚会、演出、年会、讲座', '灯光、音响、中央空调、投影、LED', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙高教园区学源街258号', '学源街文海南路口 b支4路、223路、337路、366路、373路', '1001-1500人', '1200人', '￥100.00', '￥200.00', '￥300.00', '中国计量大学位于浙江省杭州市，是一所由浙江省人民政府举办的中国质量监督检验检疫行业唯一的本科院校，也是国际上唯一一所以计量命名的本科院校，由国家质量监督检验检疫总局与浙江省人民政府共建的省属普通高校，2011年入选教育部“卓越工程师教育培养计划”。\n嘉量大会堂名“嘉量”，“嘉量既成，以观四周，永启厥后，兹器惟则”。嘉，意味着美好；量，代表量院，同时代表一种胸怀。嘉量大会堂可同时容纳1200余位观众，内部设施先进，配置有灯光、音响、中央空调、投影、LED等设备。', '￥100.00');
INSERT INTO `space` VALUES ('115', '浙江', '杭州市', '../../static/imgs/spaces/space_02.png', '浙江理工大学下沙校区', '浙江理工大学', '路演场地', '200平方', '路演', '无', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市江干区2号大街928号', '高教西公园南 b支4路、210路、223路', '未知', '未知', '￥100.00', '￥200.00', '￥300.00', '浙江理工大学是一所以工为主，特色明显，优势突出，理、工、文（艺）、经、管、法等多学科协调发展的省属重点大学。现为中央和浙江省共建共管、以浙江省为主管理。学校坐落在历史文化名城杭州市，分下沙、文一两个校区，占地1650亩。1999年4月学校由原浙江丝绸工学院更名为浙江工程学院。\n浙江理工大学下沙校区学生活动中心门口路演场地面积约200平米，是宿舍和教学区的必经之路，人流量较大，适合举办路演宣传活动。', '￥100.00');
INSERT INTO `space` VALUES ('116', '浙江', '杭州市', '../../static/imgs/spaces/space_03.png', '杭州电子科技大学下沙校区', '杭州电子科技大学', '联谊大厅', '1000平方', '路演', '舞台，音响，话筒，LED大屏', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙高教园区学林街188号', '文泽路学林街口 364路、377路、173路、373路', '未知', '未知', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学，简称杭电，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校，是浙江省人民政府与国防科技工业局共建的教学研究型大学，是浙江省首批重点建设的5所高校之一，入选国家“111计划”，研究生推免单位。\n杭州电子科技大学下沙校区联谊大厅位于学生活动中心，是一个面积为1000平米的学生路演活动场地，拥有舞台、LED大屏、音响等设备，适合举办大型路演及户外演出活动。', '￥100.00');
INSERT INTO `space` VALUES ('117', '浙江', '杭州市', '../../static/imgs/spaces/space_04.png', '杭州电子科技大学下沙校区', '杭州电子科技大学', '路演场地', '30平方', '路演', '未知', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙高教园区学林街188号', '文泽路学林街口 364路、377路、173路、373路', '未知', '未知', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学，简称杭电，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校，是浙江省人民政府与国防科技工业局共建的教学研究型大学，是浙江省首批重点建设的5所高校之一，入选国家“111计划”，研究生推免单位。\n杭州电子科技大学下沙校区路演场地位于高教园区文化活动中心门口的马路边，是学生下课的必经之地，人流量很大，拥有若干个10x10米的摊位，适合举办路演活动。', '￥100.00');
INSERT INTO `space` VALUES ('118', '浙江', '杭州市', '../../static/imgs/spaces/space_05.png', '浙江大学紫金港校区', '浙江大学', '报告厅', '50平方', '未知', '音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '0-100人', '32人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园：紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港校区玉泉报告厅位于学校校友行政办公大楼一楼，面积为50平米，共可摆放圆桌式座位32个，配置有音响、麦克风（座麦/无线麦）、投影、中央空调等设备，适合举办小型培训及学术讲座活动。', '￥100.00');
INSERT INTO `space` VALUES ('119', '浙江', '杭州市', '../../static/imgs/spaces/space_06.png', '浙江大学紫金港校区', '浙江大学', '报告厅', '80平方', '未知', '音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '0-100人', '56人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园：紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港校区体育中心139多媒体会议室可容纳56人（28张桌子），配置有音响、麦克风、投影、空调，适合举办中小型会议讲座、培训等活动。', '￥100.00');
INSERT INTO `space` VALUES ('120', '浙江', '杭州市', '../../static/imgs/spaces/space_07.png', '浙江工商大学', '浙江工商大学', '报告厅', '250平方', '讲座、培训、会议', '灯光，音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙高教园区学正街18号', '格畈小区 212路、357路、358路、393路、1704路', '301-400人', '342人', '￥100.00', '￥200.00', '￥300.00', '国家当富强，始基端在商。1911年，杭州绅士郑在常先生创办杭州中等商业学堂，即浙江工商大学的前身，这是中国最早创办的商业专门学校之一，在百余年办学历史中，学校历经16次易名，12次迁址，1980年成立杭州商学院，2004年更名为浙江工商大学。近年来，学校坚持传承“商”脉，不断壮大，已建设成为一所商科特色鲜明，全国一流的财经类大学。2015年，学校被确定为浙江省人民政府、商务部和教育部共建的重点大学。\n浙江工商大学综合楼二楼报告厅共有15排共342座，配置有灯光、音响、麦克、投影、空调等设备，适合举办中型学术讲座或会议培训活动。', '￥100.00');
INSERT INTO `space` VALUES ('121', '浙江', '杭州市', '../../static/imgs/spaces/space_08.png', '浙江工商大学', '浙江工商大学', '报告厅', '300平方', '讲座、培训、会议', '音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙高教园区学正街18号', '格畈小区 212路、357路、358路、393路、1704路', '301-400人', '398人', '￥100.00', '￥200.00', '￥300.00', '国家当富强，始基端在商。1911年，杭州绅士郑在常先生创办杭州中等商业学堂，即浙江工商大学的前身，这是中国最早创办的商业专门学校之一，在百余年办学历史中，学校历经16次易名，12次迁址，1980年成立杭州商学院，2004年更名为浙江工商大学。近年来，学校坚持传承“商”脉，不断壮大，已建设成为一所商科特色鲜明，全国一流的财经类大学。2015年，学校被确定为浙江省人民政府、商务部和教育部共建的重点大学。\n浙江工商大学综合楼一楼报告厅共有18排共398座，配置有灯光、音响、麦克、投影、空调等设备，适合举办中型学术讲座或会议培训活动。', '￥100.00');
INSERT INTO `space` VALUES ('122', '浙江', '杭州市', '../../static/imgs/spaces/space_09.png', '浙江农林大学', '浙江农林大学', '报告厅', '200平方', '讲座、培训、会议', '灯光，音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州临安市环城北路88号', '浙江农林大学南 599路', '101-200人', '192人', '￥100.00', '￥200.00', '￥300.00', '浙江农林大学，是浙江省唯一的省属本科农林类高校，是浙江省人民政府和国家林业局共建高校，第二批省重点建设高校，获批浙江省属高校首个国家重点实验室、连续七年获得省科学技术一等奖。 学校创建于1958年，时称天目林学院，1966年更名为浙江林学院，1970年7与浙江农业大学合并，1979年2月恢复独立办学，2000年创办浙江农林大学天目学院（现浙江农林大学暨阳学院），2010年更名为浙江农林大学。\n浙江农林大学图书馆第二报告厅共有坐席192个，配置有灯光、音响、麦克风、投影、空调等设备，适合举办中小型学术报告或会议活动。', '￥100.00');
INSERT INTO `space` VALUES ('123', '浙江', '杭州市', '../../static/imgs/spaces/space_10.png', '浙江农林大学', '浙江农林大学', '报告厅', '600平方', '讲座、培训、会议', '灯光，音响，麦克风，投影，LED屏，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州临安市环城北路88号', '浙江农林大学南 599路', '501-600人', '538人', '￥100.00', '￥200.00', '￥300.00', '浙江农林大学，是浙江省唯一的省属本科农林类高校，是浙江省人民政府和国家林业局共建高校，第二批省重点建设高校，获批浙江省属高校首个国家重点实验室、连续七年获得省科学技术一等奖。 学校创建于1958年，时称天目林学院，1966年更名为浙江林学院，1970年7与浙江农业大学合并，1979年2月恢复独立办学，2000年创办浙江农林大学天目学院（现浙江农林大学暨阳学院），2010年更名为浙江农林大学。\n浙江农林大学图书馆第一报告厅共有坐席538个，配置有灯光、音响、麦克风、投影、电视屏、空调等设备，适合举办大型学术报告或会议。', '￥100.00');
INSERT INTO `space` VALUES ('124', '浙江', '杭州市', '../../static/imgs/spaces/space_11.png', '浙江农林大学', '浙江农林大学', '影剧院', '2000平方', '文艺演出/典礼/讲座/会议', '演出灯光，音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州临安市环城北路88号', '浙江农林大学南 599路', '1001-1500人', '1046人', '￥100.00', '￥200.00', '￥300.00', '浙江农林大学是浙江省唯一的省属本科农林类高校，是浙江省人民政府和国家林业局共建高校，第二批省重点建设高校，获批浙江省属高校首个国家重点实验室、连续七年获得省科学技术一等奖。 学校创建于1958年，时称天目林学院，1966年更名为浙江林学院，1970年7与浙江农业大学合并，1979年2月恢复独立办学，2000年创办浙江农林大学天目学院（现浙江农林大学暨阳学院），2010年更名为浙江农林大学。\n浙江农林大学学生活动中心影剧院2005年建成，共设有1046个坐席，分为上下两层坐席区，舞台台宽14米，配置有先进的舞台演出灯光、音响、投影、空调等设备，适合举办大型文艺演出及讲座活动。', '￥100.00');
INSERT INTO `space` VALUES ('125', '浙江', '杭州市', '../../static/imgs/spaces/space_12.png', '浙江工商大学', '浙江工商大学', '剧院', '2000平方', '文艺演出/典礼/讲座/会议', '演出灯光，音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市下沙高教园区学正街18号', '格畈小区 212路、357路、358路、393路、1704路', '801-900人', '882人', '￥100.00', '￥200.00', '￥300.00', '国家当富强，始基端在商。1911年，杭州绅士郑在常先生创办杭州中等商业学堂，即浙江工商大学的前身，这是中国最早创办的商业专门学校之一，在百余年办学历史中，学校历经16次易名，12次迁址，1980年成立杭州商学院，2004年更名为浙江工商大学。近年来，学校坚持传承“商”脉，不断壮大，已建设成为一所商科特色鲜明，全国一流的财经类大学。2015年，学校被确定为浙江省人民政府、商务部和教育部共建的重点大学。\n浙江工商大学学生活动中心剧院坐席分上下两层，共有坐席882个（楼下569个，楼上313个），舞台尺寸12.3*7.3米，配置有演出灯光、音响、麦克、投影、空调等设备，另有化妆间、休息室等空间，适合举办大型讲座及文艺演出。', '￥100.00');
INSERT INTO `space` VALUES ('126', '浙江', '杭州市', '../../static/imgs/spaces/space_13.png', '浙江大学紫金港校区', '浙江大学', '报告厅', '150平方', '讲座、培训、会议', '音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '0-100人', '60人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园——紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港校区西溪报告厅位于学校校友行政办公大楼一楼，面积为150平米，共可摆放课桌式座位60个，配置有音响、麦克风（座麦/无线麦）、投影、中央空调等设备，适合举办中小型培训及学术讲座活动。', '￥100.00');
INSERT INTO `space` VALUES ('127', '浙江', '杭州市', '../../static/imgs/spaces/space_14.png', '浙江大学紫金港校区', '浙江大学', '报告厅', '146平方', '讲座、培训、会议', '音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '101-200人', '130人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园——紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港校区阳明报告厅面积为146平米，共有座位70-130个（课桌式70人，剧院式130人），配置有音响、麦克风（座麦/无线麦）、投影、中央空调、wifi等设备，适合举办中小型培训及学术讲座活动。\n', '￥100.00');
INSERT INTO `space` VALUES ('128', '浙江', '杭州市', '../../static/imgs/spaces/space_15.png', '浙江大学紫金港校区', '浙江大学', '报告厅', '102平方', '讲座、培训、会议', '音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '0-100人', '60人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园——紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港校区梨洲报告厅面积为102平米，共有座位60个（课桌式60人，剧院式80人），配置有音响、麦克风（座麦/无线麦）、投影、中央空调等设备，适合举办小型培训及学术讲座活动。\n', '￥100.00');
INSERT INTO `space` VALUES ('129', '浙江', '杭州市', '../../static/imgs/spaces/space_16.png', '浙江大学紫金港校区', '浙江大学', '多功能厅', '108平方', '讲座、培训、会议', '音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '0-100人', '60人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园——紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港校区求是2号多功能厅面积为108平米，共有座位60个（课桌式），配置有音响、麦克风（座麦/无线麦）、投影、中央空调、wifi等设备，适合举办小型培训及学术讲座活动。\n', '￥100.00');
INSERT INTO `space` VALUES ('130', '浙江', '杭州市', '../../static/imgs/spaces/space_17.png', '浙江大学紫金港校区', '浙江大学', '多功能厅', '204平方', '讲座、培训、会议', '音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '101-200人', '105人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园——紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港校区求是1号多功能厅面积为204平米，共有座位105个（课桌式），配置有音响、麦克风（座麦/无线麦）、投影、中央空调等设备，适合举办中小型培训及学术讲座活动。', '￥100.00');
INSERT INTO `space` VALUES ('131', '浙江', '杭州市', '../../static/imgs/spaces/space_18.png', '浙江大学紫金港校区', '浙江大学', '多功能厅', '520平方', '讲座、培训、会议', '音响，麦克风，视屏，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '301-400人', '360人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园——紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港校区启真报告厅面积为520平米，共有座位360个（前三排为课桌式，后五排带侧翻写字板），可容纳360-500人，配置有音响、麦克风（座麦/无线麦）、3台液晶视频、中央空调等设备，适合举办中小型培训及学术讲座活动。', '￥100.00');
INSERT INTO `space` VALUES ('132', '浙江', '杭州市', '../../static/imgs/spaces/space_19.png', '杭州电子科技大学', '杭州电子科技大学', '报告厅', '115平方', '讲座、培训、会议', '灯光，音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州江干区下沙高教园区学林街188号', '文泽路学林街口 364路、377路、173路、373路', '0-100人', '90人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学，简称杭电，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校，是浙江省人民政府与国防科技工业局共建的教学研究型大学，是浙江省首批重点建设的5所高校之一，入选国家“111计划”，研究生推免单位。\n杭州电子科技大学科技馆三楼第八会议室为课桌式会场，面积155平方米，可容纳90人，内有音响、投影仪、空调等设备，适合各类中型会议及讲座。', '￥100.00');
INSERT INTO `space` VALUES ('133', '浙江', '杭州市', '../../static/imgs/spaces/space_20.png', '杭州电子科技大学', '杭州电子科技大学', '小会议室', '80平方', '小型会议', '电源，空调，多媒体设备', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州江干区下沙高教园区学林街188号', '文泽路学林街口 364路、377路、173路、373路', '0-100人', '25人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学，简称杭电，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校，是浙江省人民政府与国防科技工业局共建的教学研究型大学，是浙江省首批重点建设的5所高校之一，入选国家“111计划”，研究生推免单位。\n杭州电子科技大学科技馆三楼第一至第七会议室：面积55—80平方米，可容纳18--23人，内有空调，适合各类小型会议。', '￥100.00');
INSERT INTO `space` VALUES ('134', '浙江', '杭州市', '../../static/imgs/spaces/space_21.png', '杭州电子科技大学', '杭州电子科技大学', '报告厅', '500平方', '讲座、培训、会议', '灯光，音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州江干区下沙高教园区学林街188号', '文泽路学林街口 364路、377路、173路、373路', '301-400人', '380人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学，简称杭电，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校，是浙江省人民政府与国防科技工业局共建的教学研究型大学，是浙江省首批重点建设的5所高校之一，入选国家“111计划”，研究生推免单位。\n杭州电子科技大学科技馆二楼学术报告厅面积约500平方米，可容纳379人，配有大屏幕背投投影仪、音响、空调等设备，适合各类大型会议及学术报告。', '￥100.00');
INSERT INTO `space` VALUES ('135', '浙江', '杭州市', '../../static/imgs/spaces/space_22.png', '杭州电子科技大学', '杭州电子科技大学', '多功能厅', '500平方', '会议、讲座、小型演出', '灯光，音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州江干区下沙高教园区学林街188号', '文泽路学林街口 364路、377路、173路、373路', '301-400人', '350人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学，简称杭电，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校，是浙江省人民政府与国防科技工业局共建的教学研究型大学，是浙江省首批重点建设的5所高校之一，入选国家“111计划”，研究生推免单位。\n杭州电子科技大学科技馆一楼多功能厅面积为500平方米，内有可移动式座椅、音响、投影仪、空调等设备，适合各类联欢活动。', '￥100.00');
INSERT INTO `space` VALUES ('136', '浙江', '杭州市', '../../static/imgs/spaces/space_23.png', '杭州电子科技大学', '杭州电子科技大学', '大礼堂', '未知', '大型会议、演唱会、企业年会', '演出灯光，音响，麦克风，投影，空调，化妆间', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州江干区下沙高教园区学林街188号', '文泽路学林街口 364路、377路、173路、373路', '801-900人', '824人', '￥100.00', '￥200.00', '￥300.00', '杭州电子科技大学，简称杭电，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校，是浙江省人民政府与国防科技工业局共建的教学研究型大学，是浙江省首批重点建设的5所高校之一，入选国家“111计划”，研究生推免单位。\n杭州电子科技大学下沙校区文化活动中心观众厅剧场共有座位824个，台口宽12m，高8m，台深14m，空间高度26m，副台总面积207㎡。化妆间2间，总面积62㎡，舞台吊杆32道。剧院还配有两台35毫米数码还音电影放映设备，300英寸高清晰度高亮度投影设备和多媒体系统。', '￥100.00');
INSERT INTO `space` VALUES ('137', '浙江', '杭州市', '../../static/imgs/spaces/space_24.png', '浙江大学紫金港校区', '浙江大学', '小剧场', '7000平方', '大型会议、演唱会、企业年会', '演出灯光，音响，麦克风，投影，空调，化妆间', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市西湖区余杭塘路388号', '申花古墩路口 93路、37路、277路', '901-1000人', '943人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园——紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学永谦学生活动中心小剧场位于玉泉校区学生生活区中心，由旅美浙大老校友汤永谦先生捐资建造，建筑面积7000平米。该工程主要由剧场、学生活动室和室外广场三部分组成。小剧场共有943个座位，分上下两层，剧场内演出灯光、音响、投影、空调等全都配备，可满足大型会议、电影放映、文艺演出等使用需求。\n', '￥100.00');
INSERT INTO `space` VALUES ('138', '浙江', '杭州市', '../../static/imgs/spaces/space_25.png', '浙江大学紫金港校区', '浙江大学', '报告厅', '未知', '讲座、培训、会议', '灯光，音响，麦克风，投影', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市西湖区余杭塘路388号', '申花古墩路口 93路、37路、277路', '401-500人', '428人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园——紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港临水报告厅（又称“咏曼阁”）是一个多功能报告厅，可容纳428人，厅内配有讲台主背景投影仪及讲台两边各一台小投影仪，灯光、音响、投影、空调等一应俱全，可满足会议、培训、讲座等活动的需求。', '￥100.00');
INSERT INTO `space` VALUES ('139', '浙江', '杭州市', '../../static/imgs/spaces/space_26.png', '杭州科技职业技术学院', '杭州科技职业技术学院', '多功能厅', '未知', '讲座、培训、会议', '灯光，音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市富阳高科路198号', '科职院 621路、620路', '101-200人', '156人', '￥100.00', '￥200.00', '￥300.00', '州科技职业技术学院位于浙江省杭州市，是全日制普通高职院校。学院前身是杭州成人科技大学和杭州广播电视大学两所学校，两校均始建于1978年；2009年，杭州成人科技大学、杭州广播电视大学合并升格为杭州科技职业技术学院。\n杭州科技职业技术学院陶研馆报告厅共有座位156个，内部装修高档，讲台设有可容纳6人的报告席及发言台，观众席共有软座150个，第一排为课桌式，报告厅配有灯光、音响、投影仪、中央中条等设备，可满足各类讲座及会议的使用需求。', '￥100.00');
INSERT INTO `space` VALUES ('140', '浙江', '杭州市', '../../static/imgs/spaces/space_27.png', '杭州科技职业技术学院', '杭州科技职业技术学院', '多功能厅', '100平方', '小型演出/小型舞会', '灯光，音响，麦克风，投影', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市富阳高科路198号', '科职院 621路、620路', '0-100人', '100人', '￥100.00', '￥200.00', '￥300.00', '州科技职业技术学院位于浙江省杭州市，是全日制普通高职院校。学院前身是杭州成人科技大学和杭州广播电视大学两所学校，两校均始建于1978年；2009年，杭州成人科技大学、杭州广播电视大学合并升格为杭州科技职业技术学院。\n杭州科技职业技术学院多功能厅位于学校艺术中心，共可容纳100人左右，多功能厅拥有20平米的舞台，配备演出灯光、音响、空调等设备，可做小型文艺演出场地使用。\n', '￥100.00');
INSERT INTO `space` VALUES ('141', '浙江', '杭州市', '../../static/imgs/spaces/space_28.png', '杭州科技职业技术学院', '杭州科技职业技术学院', '剧院', '舞台100平方', '大型会议/演唱会/企业年会', '演出灯光，音响，麦克风，投影，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市富阳高科路198号', '科职院 621路、620路', '701-800人', '788人', '￥100.00', '￥200.00', '￥300.00', '州科技职业技术学院位于浙江省杭州市，是全日制普通高职院校。学院前身是杭州成人科技大学和杭州广播电视大学两所学校，两校均始建于1978年；2009年，杭州成人科技大学、杭州广播电视大学合并升格为杭州科技职业技术学院。\n杭州科技职业技术学院体育中心剧院为学校最大的礼堂，场馆共有座位约788个，作息分上下两层分布（下层约600个，上层约200个），舞台面积约100平米，演出灯光、音响、麦克、空调、音控室、电子屏等齐全，可满足各类文艺表演及大型会议的需求。', '￥100.00');
INSERT INTO `space` VALUES ('142', '浙江', '杭州市', '../../static/imgs/spaces/space_29.png', '浙江大学玉泉校区', '浙江大学', '影视厅', '舞台20平方', '讲座、培训、会议', '灯光，音响，空调，投影', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市西湖区浙大路38号', '古荡 b支7路、15路、193路、194路、15路', '501-600人', '523人', '￥100.00', '￥200.00', '￥300.00', '浙江大学玉泉校区位于西湖西北角，紧邻杭州植物园。校区占地总面积1700多亩，校舍建筑总面积70万平方米。玉泉校区是原浙江大学所在地。校区综合办学条件优良，基本设施齐全。\n浙江大学玉泉校区教七影视厅为校内小礼堂，共有座位523个，礼堂全部为课桌式，共分上下两层，下层共有座位274个，上层共有座位249个，舞台面积大约20平米，舞台背景可挂长度约5米的横幅或主视觉，另外舞台左侧有一组多媒体电脑及麦克风装置，厅内灯光、音响、麦克风、投影、空调一应俱全，可举办各类学术报告及会议。', '￥100.00');
INSERT INTO `space` VALUES ('143', '浙江', '杭州市', '../../static/imgs/spaces/space_30.png', '浙江大学紫金港校区', '浙江大学', '小剧场', '2800平方', '演唱会/文艺演出/会议/培训?', '演出灯光，音响，麦克风，投影，LED，空调', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '未知', '未知', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园：紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n浙江大学紫金港校区学生活动中心小剧场于2003年建成并投入使用，建筑面积2800平米，共有座位1151个，其中池座643个，楼座508个，舞台台口宽14 M、高7.5 M、台深16.5 M、空间高22.3 M。副台总面积144平米。化妆间有6间。', '￥100.00');
INSERT INTO `space` VALUES ('144', '浙江', '杭州市', '../../static/imgs/spaces/space_31.png', '浙江大学紫金港校区', '浙江大学', '报告厅', '未知', '讲座/培训/会议/发布会', '灯光，音响，空调，投影', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市余杭塘路866号', '申花古墩路口 93路、37路、277路', '401-500人', '428人', '￥100.00', '￥200.00', '￥300.00', '浙江大学投资30多亿元新建了一座现代化、网络化、园林化、生态化的大学校园：紫金港校区。紫金港校区位于杭州城西部塘北地块，毗邻著名而又古老的西溪风景区，分东西两个部分，总规划5856亩。东区于2001年9月开工兴建，占地面积3192亩；西区规划建设用地约5500亩，规划总建筑面积约120余万平方米，于2011年5月开工建设。\n\n报告厅可容纳428人，有投影、音箱、空调等设备。', '￥100.00');
INSERT INTO `space` VALUES ('145', '浙江', '杭州市', '../../static/imgs/spaces/space_32.png', '浙江大学玉泉校区', '浙江大学', '报告厅', '未知', '讲座/培训/会议/发布会', '灯光，音响，空调，投影', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市西湖区浙大路38号', '古荡 b支7路、15路、193路、194路、15路', '101-200人', '160人', '￥100.00', '￥200.00', '￥300.00', '浙江大学玉泉校区位于西湖西北角，紧邻杭州植物园。校区占地总面积1700多亩，校舍建筑总面积70万平方米。玉泉校区是原浙江大学所在地。校区综合办学条件优良，基本设施齐全。\n报告厅可举办讲座/培训/会议/发布会，配有灯光，音响，空调，投影，可容纳160人。', '￥100.00');
INSERT INTO `space` VALUES ('146', '浙江', '杭州市', '../../static/imgs/spaces/space_33.png', '浙江大学玉泉校区', '浙江大学', '多媒体教室', '未知', '讲座/培训/会议/发布会', '灯光，音响，空调，投影', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市西湖区浙大路38号', '古荡 b支7路、15路、193路、194路、15路', '101-200人', '150人', '￥100.00', '￥200.00', '￥300.00', '浙江大学玉泉校区位于西湖西北角，紧邻杭州植物园。校区占地总面积1700多亩，校舍建筑总面积70万平方米。玉泉校区是原浙江大学所在地。校区综合办学条件优良，基本设施齐全。\n浙江大学玉泉校区212多媒体教室可以容纳70人，211室可以和212室打通可变成一个可以容纳150人的多媒体教室。', '￥100.00');
INSERT INTO `space` VALUES ('147', '浙江', '杭州市', '../../static/imgs/spaces/space_34.png', '浙江大学玉泉校区', '浙江大学', '报告厅', '300平方', '讲座/培训/会议/发布会', '音响，空调，投影', '上午(5:30-12:00), 下午(12:00-18:00), 晚上(18:00-21:30)', '浙江省杭州市西湖区浙大路38号', '古荡 b支7路、15路、193路、194路、15路', '201-300人', '240人', '￥100.00', '￥200.00', '￥300.00', '浙江大学玉泉校区位于西湖西北角，紧邻杭州植物园。校区占地总面积1700多亩，校舍建筑总面积70万平方米。玉泉校区是原浙江大学所在地。校区综合办学条件优良，基本设施齐全。\n浙江大学玉泉校区邵逸夫一楼报告厅为椭圆形造型，总面积为300平方米，共设有240座，全都为课桌式，报告厅四周隔音，音响设备音质保真、音场均匀，混响效果好，另外配有投影设备，并配又一定数量的扬声器、同声翻译，可供各类学术演讲、培训及研讨之用。\n\n', '￥100.00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `work_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `work` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_tag` varchar(10) CHARACTER SET utf8 DEFAULT '0',
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('13167226393', null, '96E79218965EB72C92A549DD5A330112', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('13758063153', null, 'B7E0F155BC44064723622728213E3745', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('17826801111', null, 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('17826806385', 'ccj', 'E10ADC3949BA59ABBE56E057F20F883E', '0000000@qq.com', '浙江科技学院', '男', '1996-03-18', '蔡成就', 'CLTeam', '学生', '0');
INSERT INTO `user` VALUES ('17826807419', null, 'E10ADC3949BA59ABBE56E057F20F883E', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('17826808951', null, '670B14728AD9902AECBA32E22FA4F6BD', null, null, null, null, null, null, null, '1');
INSERT INTO `user` VALUES ('17858513478', '1', 'F944A5FE00B727180566205307BAF043', '1', '1', '女', null, '1', '1', '1', '0');

-- ----------------------------
-- Table structure for wd_activity_type
-- ----------------------------
DROP TABLE IF EXISTS `wd_activity_type`;
CREATE TABLE `wd_activity_type` (
  `activity_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `activity_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wd_activity_type
-- ----------------------------
INSERT INTO `wd_activity_type` VALUES ('100', '全面健身');
INSERT INTO `wd_activity_type` VALUES ('101', '运动会');
INSERT INTO `wd_activity_type` VALUES ('103', '社区足球赛');
INSERT INTO `wd_activity_type` VALUES ('105', '社区晚会');
INSERT INTO `wd_activity_type` VALUES ('106', '培训');
INSERT INTO `wd_activity_type` VALUES ('107', '授课');
INSERT INTO `wd_activity_type` VALUES ('108', '考试');
INSERT INTO `wd_activity_type` VALUES ('109', '影视活动');
INSERT INTO `wd_activity_type` VALUES ('110', '路演');
INSERT INTO `wd_activity_type` VALUES ('111', '展览');
INSERT INTO `wd_activity_type` VALUES ('112', '讲座');
INSERT INTO `wd_activity_type` VALUES ('113', '公开课');
INSERT INTO `wd_activity_type` VALUES ('114', '住宿');
INSERT INTO `wd_activity_type` VALUES ('115', '会议');
INSERT INTO `wd_activity_type` VALUES ('116', '研讨');
INSERT INTO `wd_activity_type` VALUES ('117', '交流');
INSERT INTO `wd_activity_type` VALUES ('118', '借阅');
INSERT INTO `wd_activity_type` VALUES ('119', '实验课程');
INSERT INTO `wd_activity_type` VALUES ('120', '排练');
INSERT INTO `wd_activity_type` VALUES ('121', '舞蹈');
INSERT INTO `wd_activity_type` VALUES ('123', '社区篮球比赛');
INSERT INTO `wd_activity_type` VALUES ('127', '其他');

-- ----------------------------
-- Table structure for wd_city
-- ----------------------------
DROP TABLE IF EXISTS `wd_city`;
CREATE TABLE `wd_city` (
  `id` int(11) NOT NULL COMMENT '市级城市ID',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级省份ID',
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '城市名称',
  `parent_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '上级省份名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wd_city
-- ----------------------------

-- ----------------------------
-- Table structure for wd_people_count
-- ----------------------------
DROP TABLE IF EXISTS `wd_people_count`;
CREATE TABLE `wd_people_count` (
  `people_id` varchar(11) CHARACTER SET utf8 NOT NULL,
  `people_count` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`people_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wd_people_count
-- ----------------------------
INSERT INTO `wd_people_count` VALUES ('100', '0-100人');
INSERT INTO `wd_people_count` VALUES ('101', '101-200人');
INSERT INTO `wd_people_count` VALUES ('102', '201-300人');
INSERT INTO `wd_people_count` VALUES ('103', '301-400人');
INSERT INTO `wd_people_count` VALUES ('104', '401-500人');
INSERT INTO `wd_people_count` VALUES ('105', '501-600人');
INSERT INTO `wd_people_count` VALUES ('106', '601-700人');
INSERT INTO `wd_people_count` VALUES ('107', '701-800人');
INSERT INTO `wd_people_count` VALUES ('108', '801-900人');
INSERT INTO `wd_people_count` VALUES ('109', '901-1000人');
INSERT INTO `wd_people_count` VALUES ('110', '1001-1500人');
INSERT INTO `wd_people_count` VALUES ('111', '1500人以上');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '省份ID',
  `province` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '省份名称',
  `parent_id` int(11) DEFAULT NULL COMMENT '上级ID',
  `parent_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '上级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('100', '北京', '0', null);
INSERT INTO `province` VALUES ('101', '天津', '0', null);
INSERT INTO `province` VALUES ('102', '上海', '0', null);
INSERT INTO `province` VALUES ('103', '重庆', '0', null);
INSERT INTO `province` VALUES ('104', '河北', '0', null);
INSERT INTO `province` VALUES ('105', '山西', '0', null);
INSERT INTO `province` VALUES ('106', '内蒙古', '0', null);
INSERT INTO `province` VALUES ('107', '辽宁', '0', null);
INSERT INTO `province` VALUES ('108', '吉林', '0', null);
INSERT INTO `province` VALUES ('109', '黑龙江', '0', null);
INSERT INTO `province` VALUES ('110', '江苏', '0', null);
INSERT INTO `province` VALUES ('111', '浙江', '0', null);
INSERT INTO `province` VALUES ('112', '安徽', '0', null);
INSERT INTO `province` VALUES ('113', '福建', '0', null);
INSERT INTO `province` VALUES ('114', '江西', '0', null);
INSERT INTO `province` VALUES ('115', '山东', '0', null);
INSERT INTO `province` VALUES ('116', '河南', '0', null);
INSERT INTO `province` VALUES ('117', '湖北', '0', null);
INSERT INTO `province` VALUES ('118', '湖南', '0', null);
INSERT INTO `province` VALUES ('119', '四川', '0', null);
INSERT INTO `province` VALUES ('120', '贵州', '0', null);
INSERT INTO `province` VALUES ('121', '云南', '0', null);
INSERT INTO `province` VALUES ('122', '西藏', '0', null);
INSERT INTO `province` VALUES ('123', '陕西', '0', null);
INSERT INTO `province` VALUES ('124', '甘肃', '0', null);
INSERT INTO `province` VALUES ('125', '青海', '0', null);
INSERT INTO `province` VALUES ('126', '宁夏', '0', null);
INSERT INTO `province` VALUES ('127', '新疆', '0', null);
INSERT INTO `province` VALUES ('128', '广东', '0', null);
INSERT INTO `province` VALUES ('129', '广西', '0', null);
INSERT INTO `province` VALUES ('130', '海南', '0', null);
INSERT INTO `province` VALUES ('131', null, null, '中国');

-- ----------------------------
-- Table structure for wd_space_type
-- ----------------------------
DROP TABLE IF EXISTS `wd_space_type`;
CREATE TABLE `wd_space_type` (
  `space_id` varchar(11) CHARACTER SET utf8 NOT NULL,
  `space_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`space_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wd_space_type
-- ----------------------------
INSERT INTO `wd_space_type` VALUES ('100', '羽毛球场');
INSERT INTO `wd_space_type` VALUES ('101', '乒乓球场');
INSERT INTO `wd_space_type` VALUES ('102', '篮球场');
INSERT INTO `wd_space_type` VALUES ('103', '足球场');
INSERT INTO `wd_space_type` VALUES ('104', '田径场');
INSERT INTO `wd_space_type` VALUES ('105', '教室');
INSERT INTO `wd_space_type` VALUES ('106', '礼堂');
INSERT INTO `wd_space_type` VALUES ('107', '报告厅');
INSERT INTO `wd_space_type` VALUES ('108', '寝室');
INSERT INTO `wd_space_type` VALUES ('109', '会议室');
INSERT INTO `wd_space_type` VALUES ('110', '图书馆');
INSERT INTO `wd_space_type` VALUES ('111', '实验室');
INSERT INTO `wd_space_type` VALUES ('112', '舞蹈室');
INSERT INTO `wd_space_type` VALUES ('113', '体育场馆');

-- ----------------------------
-- Table structure for wd_university
-- ----------------------------
DROP TABLE IF EXISTS `wd_university`;
CREATE TABLE `wd_university` (
  `school_id` varchar(255) NOT NULL,
  `school_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of wd_university
-- ----------------------------
INSERT INTO `wd_university` VALUES ('100', '浙江科技学院');
INSERT INTO `wd_university` VALUES ('101', '中国计量大学');
INSERT INTO `wd_university` VALUES ('103', '杭州电子科技大学');
INSERT INTO `wd_university` VALUES ('104', '浙江工商大学');
INSERT INTO `wd_university` VALUES ('105', '浙江工业大学');
INSERT INTO `wd_university` VALUES ('106', '浙江中医药大学');
INSERT INTO `wd_university` VALUES ('107', '浙江理工大学');
INSERT INTO `wd_university` VALUES ('108', '浙江树人大学');
INSERT INTO `wd_university` VALUES ('109', '浙江水利水电学院');
INSERT INTO `wd_university` VALUES ('110', '浙江大学医学院');
INSERT INTO `wd_university` VALUES ('111', '浙江音乐学院');
INSERT INTO `wd_university` VALUES ('112', '浙江大学');
INSERT INTO `wd_university` VALUES ('113', '杭州科技职业技术学院');
INSERT INTO `wd_university` VALUES ('114', '浙江农林大学');
