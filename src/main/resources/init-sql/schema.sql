CREATE TABLE `t_user_info` (
  `i_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id，自增长',
  `v_user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `v_password` varchar(20) DEFAULT NULL COMMENT '密码',
  `dtm_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `i_admin` int(11) DEFAULT NULL COMMENT '是否管理员：0否1是',
  PRIMARY KEY (`i_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

CREATE TABLE `t_equipment_info2` (
  `i_equipment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备ID',
  `v_equipment_name` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `v_equipment_type` varchar(100) DEFAULT NULL COMMENT '设备类型',
  `i_euiqpment_type_id` int(11) DEFAULT NULL COMMENT '设备类型ID',
  `v_equipment_check_code` varchar(100) DEFAULT NULL COMMENT '设备验证码',
  `dtm_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `v_company` varchar(500) DEFAULT '' COMMENT '公司名称',
  `v_phone` varchar(20) DEFAULT '' COMMENT '联系电话',
  `v_address` varchar(500) DEFAULT '' COMMENT '设备地址',
  `n_longitude` double(10,7) DEFAULT NULL COMMENT '经度',
  `n_latitude` double(10,7) DEFAULT NULL COMMENT '纬度',
  `n_longitude_bd` double(10,7) DEFAULT NULL COMMENT '百度经度',
  `n_latitude_bd` double(10,7) DEFAULT NULL COMMENT '百度纬度',
  PRIMARY KEY (`i_equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='设备信息表';

CREATE TABLE `t_equipment_data` (
  `v_equipment_name` varchar(100) CHARACTER SET gb2312 DEFAULT NULL COMMENT '设备编号',
  `p001` double(7,3) DEFAULT NULL COMMENT '传感器状态',
  `p002` double(7,3) DEFAULT NULL COMMENT 'PM2.5',
  `p003` double(7,3) DEFAULT NULL COMMENT 'pm10',
  `p004` double(7,3) DEFAULT NULL COMMENT '风速',
  `p005` double(7,3) DEFAULT NULL COMMENT '风向',
  `p006` double(7,3) DEFAULT NULL COMMENT '温度',
  `p007` double(7,3) DEFAULT NULL COMMENT '湿度',
  `p008` double(7,3) DEFAULT NULL COMMENT '噪音',
  `p009` double(7,3) DEFAULT NULL COMMENT 'pm100',
  `p010` double(7,3) DEFAULT NULL COMMENT '气压',
  `p011` double(7,3) DEFAULT NULL COMMENT '风级',
  `p012` double(7,3) DEFAULT NULL COMMENT '保留4',
  `p013` double(7,3) DEFAULT NULL COMMENT '保留5',
  `p014` double(10,6) DEFAULT NULL COMMENT '经度',
  `p015` double(10,6) DEFAULT NULL COMMENT '纬度',
  `dtm_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '数据插入时间',
  `p016` double(7,3) DEFAULT NULL,
  `p017` double(7,3) DEFAULT NULL,
  `p018` double(7,3) DEFAULT NULL,
  `p019` double(7,3) DEFAULT NULL,
  `p020` double(7,3) DEFAULT NULL,
  `p021` double(7,3) DEFAULT NULL,
  `p022` double(7,3) DEFAULT NULL,
  `p023` double(7,3) DEFAULT NULL,
  `p024` double(7,3) DEFAULT NULL,
  `p025` double(7,3) DEFAULT NULL,
  `p026` double(7,3) DEFAULT NULL,
  `p027` double(7,3) DEFAULT NULL,
  `p028` double(7,3) DEFAULT NULL,
  `p029` double(7,3) DEFAULT NULL,
  `p030` double(7,3) DEFAULT NULL,
  KEY `index_new_1` (`v_equipment_name`,`dtm_create`),
  KEY `index_new_2` (`v_equipment_name`),
  KEY `index_new_3` (`dtm_create`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备数据历史表';

CREATE TABLE `t_equipment_data2` (
  `v_equipment_name` varchar(100) CHARACTER SET gb2312 DEFAULT NULL COMMENT '设备编号',
  `p001` double(7,3) DEFAULT NULL COMMENT '传感器状态',
  `p002` double(7,3) DEFAULT NULL COMMENT 'PM2.5',
  `p003` double(7,3) DEFAULT NULL COMMENT 'pm10',
  `p004` double(7,3) DEFAULT NULL COMMENT '风速',
  `p005` double(7,3) DEFAULT NULL COMMENT '风向',
  `p006` double(7,3) DEFAULT NULL COMMENT '温度',
  `p007` double(7,3) DEFAULT NULL COMMENT '湿度',
  `p008` double(7,3) DEFAULT NULL COMMENT '噪音',
  `p009` double(7,3) DEFAULT NULL COMMENT 'pm100',
  `p010` double(7,3) DEFAULT NULL COMMENT '气压',
  `p011` double(7,3) DEFAULT NULL COMMENT '风级',
  `p012` double(7,3) DEFAULT NULL COMMENT '保留4',
  `p013` double(7,3) DEFAULT NULL COMMENT '保留5',
  `p014` double(10,6) DEFAULT NULL COMMENT '经度',
  `p015` double(10,6) DEFAULT NULL COMMENT '纬度',
  `dtm_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '数据插入时间',
  `p016` double(7,3) DEFAULT NULL,
  `p017` double(7,3) DEFAULT NULL,
  `p018` double(7,3) DEFAULT NULL,
  `p019` double(7,3) DEFAULT NULL,
  `p020` double(7,3) DEFAULT NULL,
  `p021` double(7,3) DEFAULT NULL,
  `p022` double(7,3) DEFAULT NULL,
  `p023` double(7,3) DEFAULT NULL,
  `p024` double(7,3) DEFAULT NULL,
  `p025` double(7,3) DEFAULT NULL,
  `p026` double(7,3) DEFAULT NULL,
  `p027` double(7,3) DEFAULT NULL,
  `p028` double(7,3) DEFAULT NULL,
  `p029` double(7,3) DEFAULT NULL,
  `p030` double(7,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='里面只存每个设备最新的一条数据';

CREATE TABLE `t_wind_direct_dic` (
  `i_wind_direct_id` int(11) DEFAULT NULL COMMENT '风向id',
  `v_wind_direct_name` varchar(50) DEFAULT NULL COMMENT '风向'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='风向字典表';

CREATE TABLE `t_order_buffer` (
  `i_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `v_equipment_name` varchar(100) DEFAULT NULL COMMENT '设备名称',
  `v_order_content` varchar(500) DEFAULT NULL COMMENT '发送内容',
  `i_send_flag` int(11) DEFAULT NULL COMMENT '发送状态，0未发送，1已发送',
  `dtm_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '数据添加时间',
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='发送缓存表';

CREATE TABLE `t_user_equipment_relation` (
  `i_user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `i_equipment_id` int(11) DEFAULT NULL COMMENT '设备ID',
  `dtm_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与设备关联关系表';

/**
insert into t_user_info(v_user_name,v_password,i_admin) values('admin','admin',1);
INSERT INTO `t_wind_direct_dic` VALUES ('1', '北');
INSERT INTO `t_wind_direct_dic` VALUES ('2', '东北');
INSERT INTO `t_wind_direct_dic` VALUES ('3', '东');
INSERT INTO `t_wind_direct_dic` VALUES ('4', '东南');
INSERT INTO `t_wind_direct_dic` VALUES ('5', '南');
INSERT INTO `t_wind_direct_dic` VALUES ('6', '西南');
INSERT INTO `t_wind_direct_dic` VALUES ('7', '西');
INSERT INTO `t_wind_direct_dic` VALUES ('8', '西北');
**/