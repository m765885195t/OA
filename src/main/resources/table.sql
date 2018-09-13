create database if not exists oa;
use oa;

drop table if exists oa_user;


create table oa_user(
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL  COMMENT '用户id',
  `nickname` VARCHAR(128) NOT NULL   COMMENT '用户昵称',
  `identity` VARCHAR(128) NOT NULL   COMMENT '用户所属身份',
  `department` VARCHAR(128) NOT NULL  COMMENT '用户所在部门',
  `db_create_time` TIMESTAMP NOT NULL DEFAULT '2017-01-01 00:00:00' COMMENT 'create time of record, for db',
  `db_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  PRIMARY KEY (`id`),
  UNIQUE KEY `user_index` (`user_id`),
  UNIQUE KEY `username_index` (`nickname`)

) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT='user信息';
