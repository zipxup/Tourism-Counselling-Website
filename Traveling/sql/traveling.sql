/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : traveling

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2014-12-17 22:24:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `announcement`
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '发布类型',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '正文',
  `time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=646 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('1', '发布时间', '九寨沟封山通知', '由于天气原因，考虑到游客的安全问题，原始森林生态景区于11月至次年3月暂不开放，其他景点正常开放。', '2014-10-25 08:13:05');
INSERT INTO `announcement` VALUES ('2', '发布时间', '乐山大佛维护统治', '乐山大佛临时维护，暂不开放，望游客谅解！', '2014-06-10 06:13:05');
INSERT INTO `announcement` VALUES ('645', '发布时间', '武隆天坑封闭通知', '近期武隆天坑泥石流频发，考虑游客人身安全，短期不向游客开放。', '2014-03-06 23:59:35');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `spots_id` varchar(20) DEFAULT NULL COMMENT '景点ID',
  `name` varchar(20) DEFAULT NULL COMMENT '留言人姓名',
  `content` text COMMENT '正文',
  `time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '1', '成都好吃的真不错，不愧为“天府之国”。', '2013-02-15 00:00:00');
INSERT INTO `comment` VALUES ('2', '1', '2', '成都很舒服，很好玩', '2013-02-15 00:00:00');
INSERT INTO `comment` VALUES ('3', '2', '1', '拜水都江堰，问道青城山', '2013-02-16 00:00:00');
INSERT INTO `comment` VALUES ('4', '2', '3', '走在山里感觉很舒服', '2013-02-18 00:00:00');
INSERT INTO `comment` VALUES ('5', '3', '2', '金顶很漂亮', '2013-02-18 17:48:54');
INSERT INTO `comment` VALUES ('6', '3', '3', '太阳辐射很厉害，记得带防晒霜', '2014-11-05 17:50:08');
INSERT INTO `comment` VALUES ('7', '4', '1', '挺美的，温泉很舒服', '2014-11-27 17:53:46');
INSERT INTO `comment` VALUES ('8', '4', '2', '有些地方很滑，注意安全', '2014-10-30 17:59:41');
INSERT INTO `comment` VALUES ('9', '5', '1', '黄龙真的很漂亮', '2014-10-21 18:00:00');
INSERT INTO `comment` VALUES ('10', '5', '3', '注意带防晒霜', '2013-02-18 18:47:31');
INSERT INTO `comment` VALUES ('11', '6', '2', '天气好的时候注意戴墨镜和防晒霜', '2013-02-18 18:47:36');
INSERT INTO `comment` VALUES ('12', '6', '3', '九寨沟很漂亮', '2013-02-18 18:48:12');
INSERT INTO `comment` VALUES ('13', '7', '1', '甜皮鸭不错', '2013-02-18 18:48:37');
INSERT INTO `comment` VALUES ('14', '7', '2', '乐山大佛很雄伟', '2013-02-18 18:48:53');
INSERT INTO `comment` VALUES ('15', '8', '1', '雪山很漂亮', '2013-02-18 18:49:11');
INSERT INTO `comment` VALUES ('16', '8', '3', '这地方真不错', '2013-02-18 18:49:15');
INSERT INTO `comment` VALUES ('17', '9', '2', '大熊猫很可爱', '2013-02-18 18:49:26');
INSERT INTO `comment` VALUES ('18', '9', '1', '虽然远但是这地方很不错', '2013-02-18 19:02:52');
INSERT INTO `comment` VALUES ('19', '10', '3', '看了爸爸去哪儿2来的，不错', '2013-02-18 19:04:43');
INSERT INTO `comment` VALUES ('20', '10', '1', '天坑真的很大', '2013-02-18 19:37:08');
INSERT INTO `comment` VALUES ('21', '11', '2', '雪山很漂亮，滑雪很好玩', '2013-02-18 21:45:40');
INSERT INTO `comment` VALUES ('22', '11', '3', '赶上免费的时间，真不错', '2013-02-18 21:46:22');
INSERT INTO `comment` VALUES ('23', '12', '1', '三峡不错，挺漂亮', '2013-02-18 21:49:36');
INSERT INTO `comment` VALUES ('24', '12', '2', '可惜了当初建三峡被淹的村庄', '2013-02-19 13:05:20');
INSERT INTO `comment` VALUES ('25', '13', '2', '稻城真漂亮，适合毕业旅行', '2013-02-19 15:47:37');
INSERT INTO `comment` VALUES ('26', '13', '3', '5-10月去比较好', '2013-03-01 00:21:01');
INSERT INTO `comment` VALUES ('27', '14', '1', '草原好宽广', '2014-12-07 14:39:49');
INSERT INTO `comment` VALUES ('28', '14', '3', '这地方让人心旷神怡', '2014-12-10 09:23:51');
INSERT INTO `comment` VALUES ('29', '15', '1', '很有历史感', '2014-12-10 09:38:34');
INSERT INTO `comment` VALUES ('30', '15', '2', '壁画让人肃然起敬', '2014-12-01 09:38:38');
INSERT INTO `comment` VALUES ('31', '16', '3', '据说《十面埋伏》在这儿拍的', '2014-11-17 09:38:42');
INSERT INTO `comment` VALUES ('32', '16', '1', '听着竹子的声音，感觉很舒服', '2014-11-24 09:38:47');

-- ----------------------------
-- Table structure for `comper_message`
-- ----------------------------
DROP TABLE IF EXISTS `comper_message`;
CREATE TABLE `comper_message` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `name` varchar(20) DEFAULT NULL COMMENT '意见人姓名',
  `title` varchar(50) DEFAULT NULL COMMENT '遇见的问题',
  `content` text COMMENT '详细描述',
  `time` datetime DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comper_message
-- ----------------------------
INSERT INTO `comper_message` VALUES ('1', '1', '好', '景点较详细', '2013-02-15 21:13:05');
INSERT INTO `comper_message` VALUES ('23', '1', '好', '好', '2014-12-07 14:15:56');
INSERT INTO `comper_message` VALUES ('24', '1', '较好', '较好', '2014-12-07 14:15:56');

-- ----------------------------
-- Table structure for `database1`
-- ----------------------------
DROP TABLE IF EXISTS `database1`;
CREATE TABLE `database1` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '资料名称',
  `pop` varchar(50) DEFAULT NULL COMMENT '发布人',
  `information` text COMMENT '保存的地址',
  `time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of database1
-- ----------------------------
INSERT INTO `database1` VALUES ('11', 'Introduction for DaoCheng.doc', '巴蜀行', 'E:Introduction for DaoCheng.doc', '2014-12-10 21:47:29');
INSERT INTO `database1` VALUES ('12', 'Introduction for WoLong.txt', '巴蜀行', 'E:Introduction for WoLong.txt', '2014-12-10 21:47:40');
INSERT INTO `database1` VALUES ('13', 'JinLi.jpg', '巴蜀行', 'E:JinLi.jpg', '2014-12-10 21:47:49');

-- ----------------------------
-- Table structure for `guide`
-- ----------------------------
DROP TABLE IF EXISTS `guide`;
CREATE TABLE `guide` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导游编号',
  `name` varchar(20) DEFAULT NULL COMMENT '导游姓名',
  `image` varchar(255) DEFAULT NULL COMMENT '导游图片',
  `sex` varchar(10) DEFAULT NULL COMMENT '导游性别',
  `tel` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT 'emil',
  `jianjie` text COMMENT '导游简介',
  `QQ` int(12) DEFAULT NULL COMMENT 'QQ号码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guide
-- ----------------------------
INSERT INTO `guide` VALUES ('1', '李玲', 'picture/guide/guide1.jpg', '女', '13637743641', '1062331861@qq.com', '我是一个热情，充满活力，活泼开朗，乐观向上的女孩。通过大学四年的学习，使我养成了勤奋好学、脚踏实地、吃苦耐劳的精神.在工作中我能够认真负责,勇于上进,能够处理好各方关系.我相信通过我不断的努力,我能够取得更大的成绩.', '1062331861');
INSERT INTO `guide` VALUES ('2', '刘洋', 'picture/guide/guide5.jpg', '女', '13637743642', '1062331862@qq.com', '本人刘婷 生于一九八八年，2009年毕业于江西行政管理干部学院旅游专业。我是鹰潭市旅游局散客接待中心的一名导游员，自从事导游工作以来，我始终要求自己做到认真钻研旅游业务知识，以丰富的文化内涵接待每位游客；始终做到真心真情，以灿烂的笑容迎接每位游客。我认为身导游不仅是为游客提供优质旅游服务的导游员，还要成为精神文明的传播者，让游客在感受秀美风光的同时，体会到人间真情，让景区因我更美丽.', '1062331862');
INSERT INTO `guide` VALUES ('3', '张智琴', 'picture/guide/guide1.jpg', '女', '13637743643', '1062331863@qq.com', '精神饱满，热忱服务，保质保量做好自己的导游讲解工作，让服务过的每一个游客高兴而来，尽兴而归。具备良好的业务能力和心理素质，热衷于旅游工作。积累了丰富的导游讲解、服务技巧。具有优秀的统筹规划能力，很强的团队合作精神。', '1062331863');
INSERT INTO `guide` VALUES ('4', ' 夏莉萍', 'picture/guide/guide4.jpg', '女', '13637743644', '1062331864@qq.com', '本人夏莉萍，女，1985年11月出生，汉族，共青团员，2007年6月毕业于江西省九江学院国际导游专业，大专学历，电大金融本科在读，现在是鹰潭市旅游局散客接待中心的专职导游。在这里，我不能向您出示任何有权威人士的推荐书来为自身加分，也拿不出一摞摞的获奖证书来作为我的筹码，而只能凭自己十几年来刻苦学习的结果和吃苦耐劳的本性来做为我的奠基石，如果说我有什么优点的话，那就是我年轻热情且富有拼搏精神，信奉认认真真做人，踏踏实实做事。', '1062331864');
INSERT INTO `guide` VALUES ('5', '彭松君', 'picture/guide/guide5.jpg', '女', '13637743645', '1062331865@qq.com', '几年来，在导游工作中经历了酸甜苦辣，用才艺感染了不少游客，化解了很多矛盾，排解了许多浮躁，给游客带去了很多欢笑。“要想给客人‘一碗’东西，导游就得有‘一桶’的东西。”一直把这句话作为自己的座右铭，虽然看似通俗易懂，但是要真正的做到却需要一个漫长的时期，特别是长时间一遍一遍的重复枯燥乏味的导游词。最后代表我们龙虎山向您敞开了热情欢迎的大门，恭候着您的到来，欢迎您-——来自八方的宾客，欢迎您-——来自五湖四海的朋友，我们期待着在龙虎山相会的那一天。', '1062331865');
INSERT INTO `guide` VALUES ('6', '周 菁', 'picture/guide/guide6.jpg', '男', '13637743646', '1062331866@qq.com', '2002年被评为鹰潭市“十佳导游员”、2005年被江西省旅游局评定为四星级导游员，2006年被江西省旅游局评为江西省模范导游员，同年被国家旅游局评为全国优秀导游员。2009年被评为“鹰潭市首届五四青年”、鹰潭市旅游系统先进个人、鹰潭市“十佳消防志愿者”。', '1062331866');
INSERT INTO `guide` VALUES ('7', '刘伟', 'picture/guide/guide7.jpg', '男', '13637743647', '1062331867@qq.com', '倡导文明，以身作则。来自大山的我，对绿色情有独钟。我将这种情愫融入到导游工作中，在向游客介绍龙虎山美丽山水的同时，更注重给游客灌输绿色环保的理念。眼前是青山绿水，耳边是委婉的宣传环保的话语，此时此刻的环保宣传是最具说服力的。“壁立千仞无欲则刚，海纳百川有容乃大。”导游生涯中，不懈努力，积极作为，挥洒青春和激情，锻炼毅力和耐力，我希望以甜美的微笑和优质的服务带给广大游客开心舒心难忘的旅途生活。', '1062331867');

-- ----------------------------
-- Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `spots_Id` varchar(20) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '1', 'picture/1/1-02.jpg', 'picture/1/1-03.jpg', 'picture/1/1-04.jpg', 'picture/1/1-05.jpg', 'picture/1/1-06.jpg');
INSERT INTO `image` VALUES ('2', '2', 'picture/2/2-02.jpg', 'picture/2/2-03.jpg', 'picture/2/2-04.jpg', 'picture/2/2-05.jpg', 'picture/2/2-06.jpg');
INSERT INTO `image` VALUES ('3', '3', 'picture/3/3-02.jpg', 'picture/3/3-03.jpg', 'picture/3/3-04.jpg', 'picture/3/3-05.jpg', 'picture/3/3-06.jpg');
INSERT INTO `image` VALUES ('4', '4', 'picture/4/4-02.jpg', 'picture/4/4-03.jpg', 'picture/4/4-04.jpg', 'picture/4/4-05.jpg', 'picture/4/4-06.jpg');
INSERT INTO `image` VALUES ('5', '5', 'picture/5/5-02.jpg', 'picture/5/5-03.jpg', 'picture/5/5-04.jpg', 'picture/5/5-05.jpg', 'picture/5/5-06.jpg');
INSERT INTO `image` VALUES ('6', '6', 'picture/6/6-02.jpg', 'picture/6/6-03.jpg', 'picture/6/6-04.jpg', 'picture/6/6-05.jpg', 'picture/6/6-06.jpg');
INSERT INTO `image` VALUES ('7', '7', 'picture/7/7-02.jpg', 'picture/7/7-03.jpg', 'picture/7/7-04.jpg', 'picture/7/7-05.jpg', 'picture/7/7-06.jpg');
INSERT INTO `image` VALUES ('8', '8', 'picture/8/8-02.jpg', 'picture/8/8-03.jpg', 'picture/8/8-04.jpg', 'picture/8/8-05.jpg', 'picture/8/8-06.jpg');
INSERT INTO `image` VALUES ('9', '9', 'picture/9/9-02.jpg', 'picture/9/9-03.jpg', 'picture/9/9-04.jpg', 'picture/9/9-05.jpg', 'picture/9/9-06.jpg');
INSERT INTO `image` VALUES ('10', '10', 'picture/10/10-02.jpg', 'picture/10/10-03.jpg', 'picture/10/10-04.jpg', 'picture/10/10-05.jpg', 'picture/10/10-06.jpg');
INSERT INTO `image` VALUES ('11', '11', 'picture/11/11-02.jpg', 'picture/11/11-03.jpg', 'picture/11/11-04.jpg', 'picture/11/11-05.jpg', 'picture/11/11-06.jpg');
INSERT INTO `image` VALUES ('12', '12', 'picture/12/12-02.jpg', 'picture/12/12-03.jpg', 'picture/12/12-04.jpg', 'picture/12/12-05.jpg', 'picture/12/12-06.jpg');
INSERT INTO `image` VALUES ('13', '13', 'picture/13/13-02.jpg', 'picture/13/13-03.jpg', 'picture/13/13-04.jpg', 'picture/13/13-05.jpg', 'picture/13/13-06.jpg');
INSERT INTO `image` VALUES ('14', '14', 'picture/14/14-02.jpg', 'picture/14/14-03.jpg', 'picture/14/14-04.jpg', 'picture/14/14-05.jpg', 'picture/14/14-06.jpg');
INSERT INTO `image` VALUES ('15', '15', 'picture/15/15-02.jpg', 'picture/15/15-03.jpg', 'picture/15/15-04.jpg', 'picture/15/15-05.jpg', 'picture/15/15-06.jpg');
INSERT INTO `image` VALUES ('16', '16', 'picture/16/16-02.jpg', 'picture/16/16-03.jpg', 'picture/16/16-04.jpg', 'picture/16/16-05.jpg', 'picture/16/16-06.jpg');

-- ----------------------------
-- Table structure for `number`
-- ----------------------------
DROP TABLE IF EXISTS `number`;
CREATE TABLE `number` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `spots_Id` varchar(20) DEFAULT NULL COMMENT '景点ID',
  `account` varchar(20) DEFAULT NULL COMMENT '报名账号',
  `type` int(11) DEFAULT NULL COMMENT '报名激活状态',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of number
-- ----------------------------
INSERT INTO `number` VALUES ('1', '1', '1', '1');
INSERT INTO `number` VALUES ('2', '2', '2', '1');
INSERT INTO `number` VALUES ('3', '3', '3', '1');
INSERT INTO `number` VALUES ('4', '4', '4', '1');
INSERT INTO `number` VALUES ('5', '5', '5', '1');
INSERT INTO `number` VALUES ('6', '6', '6', '1');
INSERT INTO `number` VALUES ('7', '7', '3', '1');
INSERT INTO `number` VALUES ('8', '8', '2', '1');
INSERT INTO `number` VALUES ('9', '9', '1', '1');
INSERT INTO `number` VALUES ('10', '10', '4', '1');
INSERT INTO `number` VALUES ('11', '11', '5', '1');
INSERT INTO `number` VALUES ('12', '12', '6', '1');
INSERT INTO `number` VALUES ('13', '13', '1', '1');
INSERT INTO `number` VALUES ('14', '14', '2', '1');
INSERT INTO `number` VALUES ('15', '15', '3', '1');
INSERT INTO `number` VALUES ('16', '16', '4', '1');
INSERT INTO `number` VALUES ('17', '15', '5', '0');
INSERT INTO `number` VALUES ('20', '4', '1', '0');
INSERT INTO `number` VALUES ('21', '7', '1', '0');

-- ----------------------------
-- Table structure for `scenic_spots_information`
-- ----------------------------
DROP TABLE IF EXISTS `scenic_spots_information`;
CREATE TABLE `scenic_spots_information` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '景点ID',
  `spots_Id` varchar(20) DEFAULT NULL COMMENT '景点编号',
  `spots_name` varchar(50) DEFAULT NULL COMMENT '景点名称',
  `money` varchar(20) DEFAULT NULL COMMENT '申报价格',
  `trip` text COMMENT '行程',
  `scenery` text COMMENT '主要景点',
  `datatime` datetime DEFAULT NULL COMMENT '出发时间',
  `introduction_j` text COMMENT '景点简介',
  `introduction_x` text COMMENT '详细介绍',
  `name` varchar(20) DEFAULT NULL COMMENT '导游',
  `time` datetime DEFAULT NULL COMMENT '发布时间',
  `company` varchar(50) DEFAULT NULL COMMENT '发布部门',
  `v3` text COMMENT '注意事项',
  `v4` text COMMENT '补充说明',
  `type` int(11) DEFAULT NULL COMMENT '旅游天数',
  `image` varchar(50) DEFAULT NULL COMMENT '图片地址',
  `xingji` varchar(10) DEFAULT NULL COMMENT '推荐星级',
  `number` int(11) DEFAULT NULL COMMENT '已报名人数',
  `numbermax` int(11) DEFAULT NULL COMMENT '允许报名人数',
  `style` varchar(20) DEFAULT NULL COMMENT '联系人',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenic_spots_information
-- ----------------------------
INSERT INTO `scenic_spots_information` VALUES ('1', '1', '成都市区', '100RMB', '武侯祠-锦里-杜甫草堂-宽窄巷子-春熙路-大熊猫繁育研究基地-154美食路线公交车;', '休闲之都，熊猫之乡', '2014-11-09 02:00:00', '一座来了就不想走的城市，一个让时间慢下来的“休闲之都”。', '成都是很悠闲的城市，文化底蕴深厚，生活节奏慢，周边有很多好玩的景点。成都的美食实在是让人流连忘返，最最最推荐的就是吃，宽窄巷子很多好吃的，走饿了可以吃吃小吃和正宗的川菜。', '1', '2014-12-09 07:00:00', '巴蜀行', '听取当地导游有关安全的提示和忠告，主要应预防意外事故和突发性疾病的发生。', '希望各位游客支持并谅解导游的工作。', '5', 'picture/1/1-01.jpg', '3', '1', '27', '1');
INSERT INTO `scenic_spots_information` VALUES ('2', '2', '都江堰-青城山', '200RMB', '都江堰景区—放水大典·道解都江堰—都江堰古城区—青城山', '拜水都江堰，问道青城山', '2014-10-09 02:00:00', '都江堰市以世界著名古代水利工程都江堰而得名，市境西部的青城山，是道教发祥地之一，也是正一道的祖庭，素有“青城天下幽”之称。', '都江堰建于战国时期的都江堰，历经两千多年风雨仍发挥着越来越巨大的作用，千年无坝古堰堪称人与自然和谐统一。青城山前山上密布宫观，而後山则幽深古雅，保持了相当的原始风貌。', '2', '2014-11-09 07:00:00', '巴蜀行', '经过危险地段（如陡峭、狭窄的同路、潮湿泛滑的道路等）不可拥挤；前往险峻处观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理。', '巴蜀行将竭诚为您服务。', '3', 'picture/2/2-01.jpg', '5', '1', '28', '2');
INSERT INTO `scenic_spots_information` VALUES ('3', '3', '峨眉山', '300RMB', '报国寺-雷音寺-神水-清音阁-一线天-九老洞-洗象池-金顶-万年寺；', '金顶祥光，圣积晚钟', '2014-12-01 02:00:00', '峨眉山位于四川盆地西南部，西距峨眉山市7公里，东距乐山市37公里，是我国的四大佛教名山之一。', '唐代大诗人李白有“蜀国多仙山，峨眉邈难匹”的千古绝唱。峨眉山包括大峨，二峨、三峨、四峨四座大山。大峨山为峨眉的主峰。大峨、二峨两山相对，远望峨眉山，有陡峭险峻、横空出世的雄伟气势。', '3', '2015-01-01 07:00:00', '巴蜀行', '游客登山或参与活动中根据应自身身体状况进行，注意适当休息，避免过度激烈运动以及自身身体无法适应的活动，同时做好防护工作。', '巴蜀行将竭诚为您服务。', '3', 'picture/3/3-01.jpg', '5', '1', '25', '3');
INSERT INTO `scenic_spots_information` VALUES ('4', '4', '海螺沟', '500RMB', '雅安-二郎山-泸定桥-泸定桥-磨西雅安-二郎山-泸定桥-泸定桥-磨西', '冰川倾泄、雪谷温泉', '2014-08-22 02:00:00', '海螺沟位于四川省甘孜藏族自治州东南部，贡嘎雪峰脚下，是青藏高原东缘的极高山地，以低海拔现代冰川著称于世。', '海螺沟有五绝：日照金山、冰川倾泄、雪谷温泉、原始森林和康巴藏族风情。有“一沟有四季，十里不同天”的气候特征，冬暖夏凉，云雾多日照少，年降水量2000mm。海螺沟四季可游，不受气候和景观条件的限制，是理想的旅游、度假、疗养、登山、科考、探险的好去处。', '1', '2014-09-22 07:00:00', '巴蜀行', '在水上（包括江河、湖海、水库）浏览或活动时，注意乘船安全要穿戴救生衣；不单独前往深水水域或危险河道。', '希望各位游客支持并谅解导游的工作。', '5', 'picture/4/4-01.jpg', '5', '2', '41', '1');
INSERT INTO `scenic_spots_information` VALUES ('5', '5', '黄龙', '800RMB', '黄龙-黄龙寺-五彩池', '佛门名刹，森林四绝', '2014-09-23 02:00:00', '黄龙名胜风景区位于四川省阿坝藏族羌族自治州松潘县境内，为国家5A级旅游景区，已列入《世界遗产名录》。', '黄龙风景名胜区因沟中有许多彩池，随着周围景色变化和阳光照射角度变化变幻出五彩的颜色，被誉为“人间瑶池”。由黄龙沟、丹云峡、牟尼沟、雪宝鼎、雪山梁、红星岩，西沟等景区组成，主景区黄龙沟位于岷山主峰雪宝顶下，面临涪江源流，长7.5千米，宽1.5千米。\r\n', '2', '2014-10-23 07:00:00', '巴蜀行', '乘坐缆车或其他土载人观光运载工具时，应服从景区工作人员安排；遇超载、超员或其他异常时，千万不要乘坐，以防发生危险。', '希望各位游客支持并谅解导游的工作。', '5', 'picture/5/5-01.jpg', '5', '1', '33', '2');
INSERT INTO `scenic_spots_information` VALUES ('6', '6', '九寨沟', '500RMB', '树正群海-犀牛海-诺日朗瀑布-长海-五彩池-箭竹海-熊猫海-熊猫海瀑布-五花海', '珍珠瀑布，童话世界', '2014-09-15 02:00:00', '九寨沟，因沟内有九个藏族寨子而得名。位于四川省阿坝藏族羌族自治州九寨沟县漳扎镇，距离成都540公里，车程8-10小时。1992年，九寨沟正式列入《世界自然遗产名录》。', '“九寨归来不看水”，是对九寨沟景色真实的诠释。泉、瀑、河、滩108个海子，构成一个个五彩斑斓的瑶池玉盆，飞动与静谧结合，刚烈与温柔相济，能见度高达20米。长海、剑岩、诺日朗、树正、扎如、黑海六大景观，呈“Y”字形分布。', '3', '2014-10-15 07:00:00', '巴蜀行', '浏览期间游客应三两成群，不要独行。如果迷失方向，原则上应原地等候导游的到来或打电话求救、求助，千万不要着急。', '希望各位游客支持并谅解导游的工作。', '3', 'picture/6/6-01.jpg', '5', '1', '32', '3');
INSERT INTO `scenic_spots_information` VALUES ('7', '7', '乐山', '300RMB', '乐山大佛-凌云寺-九曲栈道-龙湫-载酒亭-碑林；', '乐山大佛，虔诚之地', '2014-10-28 02:00:00', '乐山大佛是世界上最大的石刻弥勒佛坐像，安宁的佛像静坐于山间江边千余年，任世间如江水般的流逝。', '乐山有中国重点文物保护单位7个：乐山大佛、麻浩崖墓、峨眉山古建筑群、杨公阙、犍为文庙、千佛岩石窟、郭沫若故居；有省级文化保护单位41处，市级文物保护单位79处，馆藏文物2万多件，其中三级以上文物2600余件。', '1', '2014-11-28 07:00:00', '巴蜀行', '自由活动期间游客不要走的太远。带未成年人的游客，请认真履行监护责任，管好自己的孩子，不能让未成年人单独行动，并注意安全。', '希望各位游客支持并谅解导游的工作。', '3', 'picture/7/7-01.jpg', '5', '2', '34', '1');
INSERT INTO `scenic_spots_information` VALUES ('8', '8', '四姑娘山', '700RMB', '双桥沟-长坪沟-海子沟', '四姑娘山，婀娜多姿', '2014-10-01 02:00:00', '东方的圣山，蜀山的皇后，摄影家的天堂，感受自然的奇美与圣洁', '四姑娘山的东面有奔腾急泻的岷江纵贯而过，西有“天险”之称的大渡河。山谷地带气候温和、雨量充沛，山花遍野、溪流清澈；山腰冰川环绕；山顶地势险峻，白雪皑皑。举世闻名的卧龙大熊猫自然保护区就坐落在四姑娘山东坡。四姑娘山以雄峻挺拔闻名，山体陡峭，直指蓝天，冰雪覆盖，银光照人。山麓森林茂密，绿草如茵，清澈的溪流潺潺不绝，宛如一派秀美的南欧风光，人称“东方的阿尔卑斯”。', '2', '2014-11-01 07:00:00', '巴蜀行', '在旅游行程中的自由活动时间，游客应当选择自己能够控制风险的活动项目，并在自己能够控制风险的范围内活动。', '希望各位游客支持并谅解导游的工作。', '5', 'picture/8/8-01.jpg', '5', '1', '36', '2');
INSERT INTO `scenic_spots_information` VALUES ('9', '9', '卧龙', '600RMB', '熊猫沟-大熊猫博物馆-正河沟-巴朗山', '熊猫故乡，安宁静谧', '2014-11-01 02:00:00', '卧龙自然保护区位于四川省阿坝藏族、羌族自治州汶川县西南部，邛崃山脉东南坡，距四川省会成都130公里，交通便利。', '卧龙自然保护区东西长52公里、南北宽62公里，总面积约70万公顷。保护区内有各种兽类50多种，鸟类300多种，此外还有大量的爬行动物，两栖动物和昆虫。区内分布的大熊猫约占总数的十分之一，被誉为“大熊猫的故乡”。', '3', '2014-11-01 07:00:00', '巴蜀行', '除特殊团队外，旅行社不安排赛车、赛马、攀岩、滑翔、探险性漂流、滑雪、下海、潜水、滑板、跳伞、热气球、蹦极、冲浪、跳伞等高风险活动，也敬请游客在旅游中的自由活动期间尽量不要去参加这些活动，如若游客坚持参与，请自行承担风险。', '希望各位游客支持并谅解导游的工作。', '3', 'picture/9/9-01.jpg', '5', '1', '23', '3');
INSERT INTO `scenic_spots_information` VALUES ('10', '10', '武隆', '400RMB', '芙蓉洞-芙蓉江-天生三桥-龙水峡-地缝-仙女山', '地貌奇特，资源丰富', '2014-12-02 02:00:00', '武隆县地处重庆东南部乌江下游，东连彭水，西邻涪陵、南川，北接丰都，南界贵州道真。', '武隆县旅游资源极为丰富：芙蓉江国家重点风景名胜区、仙女山国家森林公园、武隆岩溶地质公园（含仙女山、天生三桥地质公园园区和芙蓉洞、芙蓉江地质公园园区）、千里乌江画廊、龙水峡地缝、黄泊渡、白马山；武隆南方喀斯特地形正在申报世界自然遗产；人文景观主要有唐代长孙无忌墓、李进士故里大型摩崖石刻、西汉时代的汉墓群、贺龙将军戌守屯兵的贵址、经国亭等。', '1', '2014-12-02 07:00:00', '巴蜀行', '听取当地导游有关安全的提示和忠告，主要应预防意外事故和突发性疾病的发生。\r\n', '希望各位游客支持并谅解导游的工作。', '3', 'picture/10/10-01.jpg', '5', '1', '45', '1');
INSERT INTO `scenic_spots_information` VALUES ('11', '11', '西岭雪山', '700RMB', '茶地坪-杜鹃林景区-金猴峰-白石尖-野牛道-阴阳界-红石尖', '春赏杜鹃夏避暑，秋观红叶冬滑雪', '2014-11-05 02:00:00', '西岭雪山，位于四川省成都市大邑县境内，景区内有终年积雪的大雪山，为成都第一峰。', '西岭雪山属立体气温带，现已形成“春赏杜鹃夏避暑，秋观红叶冬滑雪”的四季旅游格局。景区内旅游资源丰富，优势独特。有云海、日出、森林佛光、日照金山、阴阳界等变幻莫测的高山气象景观。', '2', '2014-11-05 07:00:00', '巴蜀行', '经过危险地段（如陡峭、狭窄的同路、潮湿泛滑的道路等）不可拥挤；前往险峻处观光时应充分考虑自身的条件是否可行，不要强求和存侥幸心理。', '巴蜀行将竭诚为您服务。', '5', 'picture/11/11-01.jpg', '5', '1', '41', '2');
INSERT INTO `scenic_spots_information` VALUES ('12', '12', '长江三峡', '400RMB', '宜昌-三峡大坝-长江三峡之西陵峡-长江三峡之巫峡-神农溪-瞿塘峡-三峡-丰都鬼城', '三峡人家，自然风光', '2014-11-10 02:00:00', '长江三峡，是世界上唯一可以乘船游览的大峡谷，是中国最早向世界推荐的两条黄金旅游线之一，以壮丽河山的天然胜景闻名中外。', '长江三峡建成世界上最大的水利枢纽工程—三峡工程。其中瞿塘峡，位于重庆奉节境内，巫峡，位于重庆巫山和湖北恩施州巴东两县境内，西陵峡在湖北宜昌市秭归县境内。', '3', '2014-11-10 07:00:00', '巴蜀行', '游客登山或参与活动中根据应自身身体状况进行，注意适当休息，避免过度激烈运动以及自身身体无法适应的活动，同时做好防护工作。', '巴蜀行将竭诚为您服务。', '3', 'picture/12/12-01.jpg', '5', '1', '21', '3');
INSERT INTO `scenic_spots_information` VALUES ('13', '13', '稻城', '800RMB', '稻城-桑堆小镇-奔波寺-茹布查卡温泉-贡嘎郎吉岭-寺亚丁自然保护区-冲古寺-珍珠海-仙乃日-夏纳多吉洛-绒牛场-五色海-牛奶海', '稻城亚丁，想象之外', '2014-10-23 02:00:00', '稻城亚丁风景区位于四川甘孜藏族自治州南部，地处著名的青藏高原东部，横断山脉中段，东南与凉山州木里县接壤，西邻乡城县并与云南省中甸县毗邻，北连理塘县，面积7323平方公里。', '一条悠长奇绝的山路，穿越尘嚣，向天空延伸；一队队无比虔诚的朝拜者，不辞辛劳，艰难跋涉，只为双脚踏上这块圣洁之地，奉献身心地为之叩首。鲜花和绿草辉映的草场，潺潺流淌的小溪，五光十色的海子古朴幽深，神峰戴冰雪冠冕，披白云哈达，卓然挺立，一尘不染--惊世骇俗的神韵让你不由得匍匐跪拜，将胸膛与大地贴近，把灵魂与天空相融。', '1', '2014-11-23 07:00:00', '巴蜀行', '在水上（包括江河、湖海、水库）浏览或活动时，注意乘船安全要穿戴救生衣；不单独前往深水水域或危险河道。', '巴蜀行将竭诚为您服务。', '7', 'picture/13/13-01.jpg', '5', '1', '21', '1');
INSERT INTO `scenic_spots_information` VALUES ('14', '14', '红原大草原', '800RMB', '红原-月亮湾-麦洼寺-瓦切塔林', '宽广草原，能歌善舞', '2014-09-24 02:00:00', '红原大草原位于四川省阿坝州的中部，红原县。到处都是绿色草如茵的大草原、黑白相间的帐篷以及黑黑点点的牛羊马群。', '红原草原与九寨沟、黄龙、四姑娘山、米亚罗风景区毗邻。处于大九寨国际旅游区核心区，具有十分重要的历史纪念意义“爬雪山、过草地”的长征史话，具有很高的知名度和震撼度。民族宗教文化悠远神秘。联合国教科文组织授予“中国湿地保护区”', '2', '2014-12-24 07:00:00', '巴蜀行', '乘坐缆车或其他土载人观光运载工具时，应服从景区工作人员安排；遇超载、超员或其他异常时，千万不要乘坐，以防发生危险。', '巴蜀行将竭诚为您服务。', '5', 'picture/14/14-01.jpg', '5', '2', '25', '2');
INSERT INTO `scenic_spots_information` VALUES ('15', '15', '大足石刻', '300RMB', '宝顶石刻景区-北山石刻景区-南山石刻景区', '大足石刻，活灵活现', '2014-09-30 02:00:00', '大足石刻是重庆市大足区境内主要表现为摩崖造像的石窟艺术的总称。', '大足石刻群有石刻造像70多处，总计10万多躯，其中以宝顶山和北山摩崖石刻最为著名，代表中国唐、宋时期最高水平的石刻造像艺术。其以佛教造像为主，儒、道教造像并陈，充分展示了中华民族忠孝、诚信、礼仪、廉耻的核心价值理念，是中国晚期石窟造像艺术的典范，与敦煌莫高窟、云冈石窟、龙门石窟、麦积山石窟等中国四大石窟齐名。', '3', '2014-10-30 07:00:00', '巴蜀行', '浏览期间游客应三两成群，不要独行。如果迷失方向，原则上应原地等候导游的到来或打电话求救、求助，千万不要着急。', '巴蜀行将竭诚为您服务。', '3', 'picture/15/15-01.jpg', '5', '1', '26', '3');
INSERT INTO `scenic_spots_information` VALUES ('16', '16', '蜀南竹海', '300RMB', '海中海-观云亭-七彩飞瀑', '蜀南竹海，天然氧吧', '2014-12-23 02:00:00', '蜀南竹海原名万岭箐，位于四川南部宜宾市境内，方圆120平方公里，中心景区44平方公里，共8大景区两大序景区134处景点。', '蜀南竹海集竹景、山水、溶洞、湖泊、瀑布于一体，兼有历史悠久的人文景观，主要景观有墨溪、忘忧谷、翡翠长廊、仙寓硐、天宝寨、七彩飞瀑、青龙湖、仙女湖、海中海、迎风湾、竹海博物馆、游人中心、鱼化石、育江、夕佳山古民居等。蜀南竹海的绝妙之处是500多个山头上成片生长着7万余亩翠竹，千峰万岭峰峰是竹，岭岭皆绿，恰似线丘上隆凸起的一个竹类大盆景，盆景表层似一片绿色的海洋，四周丹崖绝壁，风景异常奇绝。 ', '1', '2015-01-23 07:00:00', '巴蜀行', '自由活动期间游客不要走的太远。带未成年人的游客，请认真履行监护责任，管好自己的孩子，不能让未成年人单独行动，并注意安全。', '巴蜀行将竭诚为您服务。', '3', 'picture/16/16-01.jpg', '4', '1', '36', '1');

-- ----------------------------
-- Table structure for `usermanager`
-- ----------------------------
DROP TABLE IF EXISTS `usermanager`;
CREATE TABLE `usermanager` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL COMMENT '账号',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `emil` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `image` varchar(255) DEFAULT NULL COMMENT '照片',
  `PhoneNumber` varchar(20) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usermanager
-- ----------------------------
INSERT INTO `usermanager` VALUES ('1', '1', '长孙娜', '女', '1991-11-10', '123456789@qq.com', '123456', 'picture/user/user1.jpg', '18748582367');
INSERT INTO `usermanager` VALUES ('2', '2', '钱三可', '男', '1986-12-10', '132454897@qq.com', '123456', 'picture/user/user2.jpg', '18748582334');
INSERT INTO `usermanager` VALUES ('3', '3', '李遂', '男', '1980-12-10', '162331861@qq.com', '123456', 'picture/user/user3.jpg', '18748582365');
INSERT INTO `usermanager` VALUES ('4', '4', '南宫翎', '女', '1993-12-10', '152346678@qq.com', '123456', 'picture/user/user4.jpg', '18748582369');
INSERT INTO `usermanager` VALUES ('5', '5', '赵小小', '女', '1976-12-10', '166889234@qq.com', '123456', 'picture/user/user5.jpg', '18748582345');
INSERT INTO `usermanager` VALUES ('6', '6', '白君琳', '女', '1983-12-10', '236568423@qq.com', '123456', 'picture/user/user6.jpg', '18748514236');
