create database deploy;

create user deploy_test identified by '123456';

grant all privileges on deploy.* to deploy_test@"%";

flush privileges;

DROP TABLE IF EXISTS `deploy_plan_info`;
CREATE TABLE `deploy_plan_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `source_path` varchar(100) NOT NULL COMMENT '源码路径',
  `app_path` varchar(100) NOT NULL COMMENT '应用路径，编译后的路径',
  `log_path` varchar(100) NOT NULL COMMENT '日志路径',
  `bin_path` varchar(100) NOT NULL COMMENT '脚本路径',
  `config_path` varchar(100) NOT NULL COMMENT '配置文件路径',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `modify_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='部署方案表';
