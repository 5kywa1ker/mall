/*
Navicat MySQL Data Transfer

Source Server         : jesse_root
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : mall

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-11-26 16:23:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'admin', 'admin');
INSERT INTO `admin_user` VALUES ('2', 'hfb', 'hfb');

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '服装', '0', '1');
INSERT INTO `classification` VALUES ('2', '电脑', null, '1');
INSERT INTO `classification` VALUES ('3', '手机', null, '1');
INSERT INTO `classification` VALUES ('4', '食品', null, '1');
INSERT INTO `classification` VALUES ('5', '笔记本', '2', '2');
INSERT INTO `classification` VALUES ('6', '平板', '2', '2');
INSERT INTO `classification` VALUES ('7', '台式机', '2', '2');
INSERT INTO `classification` VALUES ('9', '家居', '0', '1');
INSERT INTO `classification` VALUES ('10', '饮料', '4', '2');
INSERT INTO `classification` VALUES ('11', '智能手机', '3', '2');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', 'fjsdakl', '小明', '2017-11-25 19:23:48', '12345654', '4', '8888', '1');
INSERT INTO `order` VALUES ('2', 'kdls;ajfklafkasld', 'tom', '2017-11-25 22:10:39', '123456894', '2', '17998', '1');
INSERT INTO `order` VALUES ('3', 'ffggghhhhfdfhjhff', 'Catalina', '2017-11-25 22:52:44', '1234322313', '2', '6077', '1');
INSERT INTO `order` VALUES ('4', 'fdsakldfjasl;', 'tomcat', '2017-11-25 23:35:01', '1234567878', '4', '8999', '1');
INSERT INTO `order` VALUES ('5', 'Gggggggg', 'Hfb', '2017-11-26 02:53:14', '18679658549', '1', '5999', '1');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES ('1', '1', '1', '10', '8888');
INSERT INTO `order_item` VALUES ('2', '2', '2', '9', '17998');
INSERT INTO `order_item` VALUES ('3', '2', '3', '11', '78');
INSERT INTO `order_item` VALUES ('4', '1', '3', '13', '5999');
INSERT INTO `order_item` VALUES ('5', '1', '4', '9', '8999');
INSERT INTO `order_item` VALUES ('6', '1', '5', '13', '5999');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `csid` int(11) DEFAULT NULL,
  `desc` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `shop_price` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('9', '5', '新一代 Surface Pro 比以往更出色，它不仅仅是一台笔记本，还能在工作室模式和平板间灵活切换.\r\n\r\n随心所欲，百变菁英 震撼的 PixelSense™ 显示屏支持触控笔* 和触摸操作，设计方面也有所改进，与 Surface Pro 4 相比，速度和性能都得到了进一步提升，电池续航能力有较大提高。\r\n\r\n无风扇，更安静 灵感随意 随手拈来 \r\n\r\n快捷刷脸登陆 保护隐私 轻松唤醒刷脸登陆 充分保护您的私人数据**** 无论您喜欢摄影、绘画、音乐或创作\r\n\r\n精彩视频\r\nSurface Pro总能满足您诸多创作需求 Surface Pro 酷睿 m3 和 i5 型号配备全新无风扇冷却系统***，\r\ni7 型号改进了混合冷却系统，您可以更安静地工作或播放喜欢的节目。', '/mall/admin/product/img/0B1CDC0C82A79A25A4BA159D88D8AC.jpg', '1', '9999', '2017-11-25 00:37:57', '8999', '微软（Microsoft）新Surface Pro 二合一平板电脑 12.3英寸（Intel Core i5 8G内存 256G存储 ）');
INSERT INTO `product` VALUES ('10', '11', '一直以来，我们都心存一个设想，期待着能够打造出这样一部 iPhone：它有整面的屏幕，能让你在使用时完全沉浸其中，仿佛忘记了它的存在。它是如此智能，你的一触、一碰、一言、一语，哪怕是轻轻一瞥，都会得到它心有灵犀的回应。而这个设想，终于随着 iPhone X 的到来成为了现实。现在，就跟未来见个面吧。', '/mall/admin/product/img/E98ECEAC9E68BE31BB623419FD0C9E.png', '1', '9999', '2017-11-24 22:17:54', '8888', 'Apple iPhone X (A1865) 64GB 银色 移动联通电信4G手机');
INSERT INTO `product` VALUES ('11', '10', '京东价：京东价为商品的销售价，是您最终决定是否购买商品的依据。\r\n划线价：商品展示的划横线价格为参考价，该价格可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在京东平台上曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价等可能会与您购物时展示的不一致，该价格仅供您参考。\r\n折扣：如无特殊说明，折扣指销售商在原价、或划线价（如品牌专柜标价、商品吊牌价、厂商指导价、厂商建议零售价）等某一价格基础上计算出的优惠比例或优惠金额；如有疑问，您可在购买前联系销售商进行咨询。\r\n异常问题：商品促销信息以商品详情页“促销”栏中的信息为准；商品的具体售价以订单结算页价格为准；如您发现活动商品售价或促销信息有异常，建议购买前先联系销售商咨询。', '/mall/admin/product/img/EA03D40CEC55463A958B3629511493.jpg', '0', '40.9', '2017-11-25 22:37:23', '39', '可口可乐330ml*24听整箱装');
INSERT INTO `product` VALUES ('12', '7', '搭载NVIDIA GeForce GTX1060 3G独立显卡，强大的图像显示和处理功能，\r\n既可以高画质下流畅运行工作软件，也支持主流大型游戏，工作游戏，左右兼顾。\r\n并支持兼容主流VR眼镜设备，为你带来身临其境的沉浸体验。', '/mall/admin/product/img/3E1E590D6BD2ED1CF047045C83B313.jpg', '1', '4999', '2017-11-25 22:39:01', '3999', '惠普（HP）光影精灵580 吃鸡游戏主机（i5-7400 8G 128GSSD+1T GTX1060）');
INSERT INTO `product` VALUES ('13', '7', '原本就拥有强劲的基础性能，能够轻松通吃时下的主流电竞游戏；外观方面整机采用多面切割搭配碳纤铠甲风格，搭配“胜利之眼”游戏氛围灯，凸显电竞元素；最主要的是这是一款UIY电竞主机，机箱内部已经给升级留足了接口和空间，在官方配置的基础上我们还可以进行性能和外观方面的额升级，而且官方配件仍然能在保修范围内。品牌PC厂商参与到PC个性化定制和部件升级服务中来，同时提供品牌厂商一贯的服务优势，完全解决了DIY模式下遇到的种种痛点。不得不说联想拯救者刃 7000的出现，开启了PC UIY时代。', '/mall/admin/product/img/9F6B955F4C732FF96793FC8BB2F244.jpg', '1', '6499', '2017-11-25 22:41:06', '5999', '联想（Lenovo）拯救者刃7000 UIY主机( i7-7700 8G 128G SSD 1T硬盘 GTX1060 Win10)');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'wew6698888', '89****96@qq.com', 'skywalker', '123456', '17688970006', 'hfb');
INSERT INTO `user` VALUES ('2', '1235645645646', '89***96@qq.com', 'hfb', '123456', '18645954845', 'jesse');
INSERT INTO `user` VALUES ('3', '江西省 吉安市 泰和县', '8976677657@qq.com', '曾涛涛', '123456', '12345678941', 'ztt');
