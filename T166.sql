/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t166`;
CREATE DATABASE IF NOT EXISTS `t166` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t166`;

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/meishishangcheng/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/meishishangcheng/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/meishishangcheng/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-02-25 06:13:21'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-02-25 06:13:21'),
	(3, 'huiyuandengji_types', '会员等级类型', 1, '青铜会员', NULL, '0.98', '2022-02-25 06:13:21'),
	(4, 'huiyuandengji_types', '会员等级类型', 2, '白银会员', NULL, '0.96', '2022-02-25 06:13:21'),
	(5, 'huiyuandengji_types', '会员等级类型', 3, '黄金会员', NULL, '0.95', '2022-02-25 06:13:21'),
	(6, 'shangjia_xingji_types', '商家星级类型', 1, '一级', NULL, NULL, '2022-02-25 06:13:21'),
	(7, 'shangjia_xingji_types', '商家星级类型', 2, '二级', NULL, NULL, '2022-02-25 06:13:21'),
	(8, 'shangjia_xingji_types', '商家星级类型', 3, '三级', NULL, NULL, '2022-02-25 06:13:21'),
	(9, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-02-25 06:13:21'),
	(10, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-02-25 06:13:21'),
	(11, 'meishi_types', '美食类型', 1, '美食类型1', NULL, NULL, '2022-02-25 06:13:22'),
	(12, 'meishi_types', '美食类型', 2, '美食类型2', NULL, NULL, '2022-02-25 06:13:22'),
	(13, 'meishi_types', '美食类型', 3, '美食类型3', NULL, NULL, '2022-02-25 06:13:22'),
	(14, 'meishi_types', '美食类型', 4, '美食类型4', NULL, NULL, '2022-02-25 06:13:22'),
	(15, 'meishi_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-02-25 06:13:22'),
	(16, 'meishi_order_types', '订单类型', 1, '已评价', NULL, NULL, '2022-02-25 06:13:22'),
	(17, 'meishi_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-02-25 06:13:22'),
	(18, 'meishi_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-02-25 06:13:22'),
	(19, 'meishi_order_types', '订单类型', 4, '已确认', NULL, NULL, '2022-02-25 06:13:22'),
	(21, 'meishi_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-02-25 06:13:22'),
	(22, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-02-25 06:13:22'),
	(23, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-02-25 06:13:22'),
	(24, 'meishi_order_types', '订单类型', 5, '已收到', NULL, NULL, '2022-02-25 07:13:41');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/meishishangcheng/upload/gonggao1.jpg', 2, '2022-02-25 06:13:45', '公告详情1', '2022-02-25 06:13:45'),
	(2, '公告名称2', 'http://localhost:8080/meishishangcheng/upload/gonggao2.jpg', 1, '2022-02-25 06:13:45', '公告详情2', '2022-02-25 06:13:45'),
	(3, '公告名称3', 'http://localhost:8080/meishishangcheng/upload/gonggao3.jpg', 2, '2022-02-25 06:13:45', '公告详情3', '2022-02-25 06:13:45'),
	(4, '公告名称4', 'http://localhost:8080/meishishangcheng/upload/gonggao4.jpg', 1, '2022-02-25 06:13:45', '公告详情4', '2022-02-25 06:13:45'),
	(5, '公告名称5', 'http://localhost:8080/meishishangcheng/upload/gonggao5.jpg', 1, '2022-02-25 06:13:45', '公告详情5', '2022-02-25 06:13:45');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 2, '留言标题1', '留言内容1', '回复信息1', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(2, 2, '留言标题2', '留言内容2', '回复信息2', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(3, 1, '留言标题3', '留言内容3', '回复信息3', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(4, 1, '留言标题4', '留言内容4', '回复信息4', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(5, 3, '留言标题5', '留言内容5', '回复信息5', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(6, 1, '留言标题6', '留言内容6', NULL, '2022-02-25 07:23:39', NULL, '2022-02-25 07:23:39'),
	(7, 1, '666', '666', NULL, '2024-04-29 11:17:44', NULL, '2024-04-29 11:17:44');

DROP TABLE IF EXISTS `meishi`;
CREATE TABLE IF NOT EXISTS `meishi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int DEFAULT NULL COMMENT '商家',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称  Search111 ',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '美食照片',
  `meishi_types` int DEFAULT NULL COMMENT '美食类型 Search111',
  `meishi_kucun_number` int DEFAULT NULL COMMENT '美食库存',
  `meishi_price` int DEFAULT NULL COMMENT '购买获得积分 ',
  `meishi_old_money` decimal(10,2) DEFAULT NULL COMMENT '美食原价 ',
  `meishi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `meishi_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `meishi_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `meishi_content` text COMMENT '美食介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='美食';

DELETE FROM `meishi`;
INSERT INTO `meishi` (`id`, `shangjia_id`, `meishi_name`, `meishi_photo`, `meishi_types`, `meishi_kucun_number`, `meishi_price`, `meishi_old_money`, `meishi_new_money`, `meishi_clicknum`, `shangxia_types`, `meishi_delete`, `meishi_content`, `create_time`) VALUES
	(1, 2, '美食名称1', 'http://localhost:8080/meishishangcheng/upload/meishi1.jpg', 1, 10001, 197, 847.85, 164.53, 371, 1, 1, '美食介绍1', '2022-02-25 06:13:45'),
	(2, 3, '美食名称2', 'http://localhost:8080/meishishangcheng/upload/meishi2.jpg', 2, 10002, 321, 627.17, 296.94, 46, 1, 1, '美食介绍2', '2022-02-25 06:13:45'),
	(3, 3, '美食名称3', 'http://localhost:8080/meishishangcheng/upload/meishi3.jpg', 4, 10002, 323, 946.70, 247.95, 489, 1, 1, '美食介绍3', '2022-02-25 06:13:45'),
	(4, 2, '美食名称4', 'http://localhost:8080/meishishangcheng/upload/meishi4.jpg', 4, 10001, 222, 796.80, 143.06, 77, 1, 1, '美食介绍4', '2022-02-25 06:13:45'),
	(5, 3, '美食名称5', 'http://localhost:8080/meishishangcheng/upload/meishi5.jpg', 4, 10004, 486, 660.97, 105.99, 322, 1, 1, '美食介绍5', '2022-02-25 06:13:45');

DROP TABLE IF EXISTS `meishi_collection`;
CREATE TABLE IF NOT EXISTS `meishi_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meishi_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='美食收藏';

DELETE FROM `meishi_collection`;
INSERT INTO `meishi_collection` (`id`, `meishi_id`, `yonghu_id`, `meishi_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(2, 2, 3, 1, '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(3, 3, 1, 1, '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(4, 4, 3, 1, '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(5, 5, 2, 1, '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(6, 5, 1, 1, '2022-02-25 07:23:52', '2022-02-25 07:23:52'),
	(7, 1, 1, 1, '2024-04-29 11:17:52', '2024-04-29 11:17:52');

DROP TABLE IF EXISTS `meishi_commentback`;
CREATE TABLE IF NOT EXISTS `meishi_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `meishi_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='美食评价';

DELETE FROM `meishi_commentback`;
INSERT INTO `meishi_commentback` (`id`, `meishi_id`, `yonghu_id`, `meishi_commentback_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '回复信息1', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(2, 2, 1, '评价内容2', '回复信息2', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(3, 3, 1, '评价内容3', '回复信息3', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(4, 4, 1, '评价内容4', '回复信息4', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(5, 5, 2, '评价内容5', '回复信息5', '2022-02-25 06:13:45', '2022-02-25 06:13:45', '2022-02-25 06:13:45'),
	(6, 4, 1, '还可以', 'eneenn', '2022-02-25 07:18:31', '2022-02-25 07:26:24', '2022-02-25 07:18:31'),
	(7, 5, 1, '哈哈哈 挺好吃', NULL, '2022-02-25 07:27:29', NULL, '2022-02-25 07:27:29');

DROP TABLE IF EXISTS `meishi_order`;
CREATE TABLE IF NOT EXISTS `meishi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `meishi_id` int DEFAULT NULL COMMENT '美食',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `meishi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `meishi_order_types` int DEFAULT NULL COMMENT '订单类型',
  `meishi_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='美食订单';

DELETE FROM `meishi_order`;
INSERT INTO `meishi_order` (`id`, `meishi_order_uuid_number`, `meishi_id`, `yonghu_id`, `buy_number`, `meishi_order_true_price`, `meishi_order_types`, `meishi_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1645772952827', 4, 1, 2, 280.40, 1, 1, '2022-02-25 07:09:13', '2022-02-25 07:09:13'),
	(2, '1645773855234', 4, 1, 1, 140.20, 4, 1, '2022-02-25 07:24:15', '2022-02-25 07:24:15'),
	(3, '1645773865801', 3, 1, 1, 242.99, 5, 1, '2022-02-25 07:24:26', '2022-02-25 07:24:26'),
	(4, '1645773865801', 5, 1, 2, 207.74, 1, 1, '2022-02-25 07:24:26', '2022-02-25 07:24:26'),
	(5, '1645773865801', 4, 1, 3, 420.60, 2, 1, '2022-02-25 07:24:26', '2022-02-25 07:24:26');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int DEFAULT NULL COMMENT '商家星级类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家简介 ',
  `shangjia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `username`, `password`, `shangjia_name`, `shangjia_phone`, `shangjia_email`, `shangjia_photo`, `shangjia_xingji_types`, `new_money`, `shangjia_content`, `shangjia_delete`, `create_time`) VALUES
	(1, '商家1', '123456', '商家名称1', '17703786901', '1@qq.com', 'http://localhost:8080/meishishangcheng/upload/shangjia1.jpg', 1, 9.56, '商家简介1', 1, '2022-02-25 06:13:45'),
	(2, '商家2', '123456', '商家名称2', '17703786902', '2@qq.com', 'http://localhost:8080/meishishangcheng/upload/shangjia2.jpg', 3, 1042.61, '商家简介2', 1, '2022-02-25 06:13:45'),
	(3, '商家3', '123456', '商家名称3', '17703786903', '3@qq.com', 'http://localhost:8080/meishishangcheng/upload/shangjia3.jpg', 3, 463.98, '商家简介3', 1, '2022-02-25 06:13:45'),
	(4, '商家4', '123456', '商家5', '17703786905', '5@qq.com', 'http://localhost:8080/meishishangcheng/upload/1645774292101.jpg', 1, 0.00, '<p>商家介绍</p>', 1, '2022-02-25 07:28:48');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', '54sswkeor789axt3aij6urntycbzpleb', '2022-02-25 05:19:17', '2024-04-29 12:15:52'),
	(2, 1, 'a1', 'yonghu', '用户', 'yk9t6dtw4gpj3d08kboawru9ozc0xt1b', '2022-02-25 05:52:58', '2024-04-29 12:17:27'),
	(3, 1, 'a1', 'shangjia', '商家', 'sas3zrnp2n6q0gx45n5y6isgw4q928qt', '2022-02-25 05:59:29', '2024-04-29 12:17:01'),
	(4, 2, 'a2', 'shangjia', '商家', 'ogpid8dmz1rogqkjjm1ndccs3r2v6ql7', '2022-02-25 07:17:20', '2022-02-25 08:26:03'),
	(5, 3, 'a3', 'shangjia', '商家', 'ze2al1m3psvvckhrbogqubgec0o7d5pg', '2022-02-25 07:26:44', '2022-02-25 08:29:08'),
	(6, 4, 'a5', 'shangjia', '商家', 'sdahdxf1q8y2679hbbdz7znlcb1jrqo0', '2022-02-25 07:28:56', '2022-02-25 08:30:12');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2021-04-27 06:51:13');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `yonghu_sum_jifen`, `yonghu_new_jifen`, `huiyuandengji_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/meishishangcheng/upload/yonghu1.jpg', 1, '1@qq.com', 199638.71, 2798.91, 2078.09, 1, '2022-02-25 06:13:45'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/meishishangcheng/upload/yonghu2.jpg', 2, '2@qq.com', 854.77, 826.91, 310.43, 1, '2022-02-25 06:13:45'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/meishishangcheng/upload/yonghu3.jpg', 1, '3@qq.com', 906.53, 580.56, 264.29, 1, '2022-02-25 06:13:45');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
