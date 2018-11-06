
CREATE TABLE `chatting_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profilePath` varchar(200) NOT NULL COMMENT '头像图片位置',
  `motto` varchar(500) DEFAULT NULL COMMENT '聊天室签名',
  `name` varchar(50) NOT NULL COMMENT '聊天室名字',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `chatting_room_message` (
  `id` int(11) NOT NULL COMMENT '聊天室id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `type` varchar(45) NOT NULL COMMENT '消息类型',
  `value` varchar(2000) NOT NULL COMMENT '消息值',
  `time` datetime NOT NULL COMMENT '发送时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `chatting_room_user` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `room_id` int(11) NOT NULL COMMENT '聊天室id',
  `authority` varchar(50) NOT NULL COMMENT '身份'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `comment` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `time` datetime NOT NULL COMMENT '评论时间',
  `live_id` int(11) NOT NULL COMMENT '动态id',
  `value` varchar(500) NOT NULL COMMENT '评论内容',
  `target_user_id` int(11) DEFAULT NULL COMMENT '目标用户id，存在则代表该评论为评论的评论',
  `target_time` datetime DEFAULT NULL COMMENT '目标时间，存在则代表该评论为评论的评论',
  KEY `user_id_and_time` (`user_id`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `motto` varchar(500) DEFAULT NULL COMMENT '个性签名',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `star` varchar(30) DEFAULT NULL COMMENT '星座',
  `email` varchar(200) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL DEFAULT '未知' COMMENT '性别',
  `conpany` varchar(100) DEFAULT NULL COMMENT '公司',
  `school` varchar(100) DEFAULT NULL COMMENT '学校',
  `position` varchar(200) DEFAULT NULL COMMENT '地区',
  `profession` varchar(100) DEFAULT NULL COMMENT '职业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `friend_relationship` (
  `user_id` int(11) NOT NULL COMMENT '自己id',
  `friend_id` int(11) NOT NULL COMMENT '对方id',
  `intimacy` int(11) NOT NULL COMMENT '亲密度',
  `type` varchar(20) NOT NULL COMMENT '匿名好友\\好友',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  KEY `id_to_id` (`user_id`,`friend_id`),
  KEY `user_id` (`user_id`),
  KEY `friend_id` (`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `like` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `live_id` varchar(45) NOT NULL COMMENT '动态id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `live` (
  `live_id` int(11) NOT NULL COMMENT '动态id',
  `type` varchar(45) NOT NULL COMMENT '动态类型',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `value` varchar(1000) NOT NULL COMMENT '动态内容',
  `time` datetime NOT NULL COMMENT '时间',
  PRIMARY KEY (`live_id`),
  UNIQUE KEY `live_id_UNIQUE` (`live_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `message` (
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL COMMENT '消息类型',
  `value` varchar(2000) NOT NULL COMMENT '消息值',
  `time` datetime NOT NULL,
  KEY `user_id_and_target_id` (`user_id`,`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `name` varchar(50) NOT NULL COMMENT '用户名',
  `openid` varchar(100) NOT NULL COMMENT '小程序openId',
  `codePath` varchar(200) DEFAULT NULL COMMENT '二维码图片位置',
  `motto` varchar(500) DEFAULT NULL COMMENT '个性签名',
  `maskPath` varchar(200) NOT NULL COMMENT '面具图片位置',
  `profilePath` varchar(200) NOT NULL COMMENT '头像图片位置',
  `fackName` varchar(50) NOT NULL COMMENT '假名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `openid_UNIQUE` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
