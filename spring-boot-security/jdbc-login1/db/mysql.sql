CREATE DATABASE sb_learn CHARACTER SET 'utf8' COLLATE 'utf8_general_ci';

use sb_learn;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS sys_user;
CREATE TABLE sys_user
(
    id          varchar(64) NOT NULL COMMENT '主键',
    username    varchar(50) COMMENT '用户名',
    password    varchar(255) COMMENT '密码',
    nickname    varchar(50) COMMENT '昵称',
    id_card     varchar(20) COMMENT '身份证号',
    birthday    date COMMENT '生日',
    sex         int(4) COMMENT '性别',
    email       varchar(100) COMMENT '邮箱',
    mobile      varchar(20) COMMENT '手机号',
    post_id     varchar(64) COMMENT '岗位',
    dept_id     varchar(64) COMMENT '单位',
    dept_name   varchar(64) COMMENT '单位',
    status      varchar(4) COMMENT '状态',
    avatar      varchar(500) COMMENT '头像',
    create_by   varchar(64) COMMENT '创建人',
    create_date timestamp  DEFAULT current_timestamp COMMENT '创建时间',
    update_by   varchar(64) COMMENT '更新人',
    update_date timestamp  DEFAULT current_timestamp COMMENT '更新时间',
    del_flag    varchar(4) default '0' COMMENT '删除标记',
    PRIMARY KEY (id) USING BTREE,
    INDEX sys_user_1 (username) USING BTREE,
    INDEX sys_user_2 (id_card) USING BTREE,
    INDEX sys_user_3 (status) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci COMMENT = '用户表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO sys_user (id, username, password, nickname, id_card, birthday, sex, email, mobile, dept_id, dept_name,
                      status, avatar, create_by, create_date, update_by, update_date, del_flag)
VALUES ('1', 'admin', '$2a$10$RCvUyaqalDebEuYPVSOqCOlpRBO9hfslhp4SEN1dK/kJcc0FYY0aW', '超级管理员', '421121198604137015',
        '1990-03-04', 1, '14151@126.com', '15926081406', '4c963d38ae25416ea3c1f141656b8f78', '湖北荆州', '1', null, null,
        '2019-11-07 17:01:42', '1', '2020-09-03 20:36:24', '0');
INSERT INTO sys_user (id, username, password, nickname, id_card, birthday, sex, email, mobile, dept_id, dept_name,
                      status, avatar, create_by, create_date, update_by, update_date, del_flag)
VALUES ('3d908373717c4539ba02011e2bfc2398', 'ceshi2', '$2a$10$68/saBjPxR8aLuhTI7reR.OFj0pnIhx/CG/bopFsbCbEIp17I5Pe2',
        '测试22', '421121198604137016', '1990-06-02', 1, '321@126.com', '15970121345', 'ca06d9feadf143a7adb7977923e4e3cc',
        '湖北武汉', '1', null, null, '2020-08-08 05:26:38', '1', '2020-09-03 20:36:34', '0');
INSERT INTO sys_user (id, username, password, nickname, id_card, birthday, sex, email, mobile, dept_id, dept_name,
                      status, avatar, create_by, create_date, update_by, update_date, del_flag)
VALUES ('651c74980f0f40729b28d6bd9fe32c80', 'ceshi1', '$2a$10$aJ/mxyNZZe3AfYpykFA8G.ubIDfHboYMtJH/ejgkk3h4bUDs3Dvsy',
        '测试11', '421121198604137017', '1988-07-08', 1, '123@126.com', '15927021502', '4c963d38ae25416ea3c1f141656b8f78',
        '湖北荆州', '1', null, null, '2020-08-08 05:22:02', '1', '2020-08-27 10:26:04', '0');
INSERT INTO sys_user (id, username, password, nickname, id_card, birthday, sex, email, mobile, dept_id, dept_name,
                      status, avatar, create_by, create_date, update_by, update_date, del_flag)
VALUES ('c35d5b94aca547799fbe56ddd90bcfc4', 'ceshi', '$2a$10$RP6MGP8lFqKhh0.2/SroKepKV25y8u2XSjvD8dzRXBzwAZGZYSYl.',
        '普通用户', '421121198604137018', '1992-08-06', 2, '14151@126.com', '15926081406',
        '4c963d38ae25416ea3c1f141656b8f78', '湖北荆州', '1', null, null, '2020-06-25 07:45:59', '1', '2020-08-27 10:27:20',
        '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role
(
    id          varchar(64) NOT NULL COMMENT '主键',
    name        varchar(200) COMMENT '角色名',
    code        varchar(255) COMMENT '角色编码',
    status      varchar(4) default '1' COMMENT '状态',
    data_scope  varchar(4) default '6' COMMENT '数据权限 1 所有单位  2 所属一级单位及以下  3 所属二级单位及以下  4 所属单位部门及以下  5 自定义 6 自己',
    description varchar(500) COMMENT '说明',
    create_by   varchar(64) COMMENT '创建人',
    create_date timestamp  DEFAULT current_timestamp COMMENT '创建时间',
    update_by   varchar(64) COMMENT '更新人',
    update_date timestamp  DEFAULT current_timestamp COMMENT '更新时间',
    del_flag    varchar(4) default '0' COMMENT '删除标记',
    PRIMARY KEY (id) USING BTREE,
    INDEX sys_role_1 (code) USING BTREE,
    INDEX sys_role_2 (status) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci COMMENT = '角色表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role (id, name, code, status, data_scope, description, create_by, create_date, update_by, update_date,
                      del_flag)
VALUES ('1', '超级管理员', 'admin', '1', '1', null, null, '2020-06-25 07:45:59', '1', '2020-09-03 20:40:19', '0');
INSERT INTO sys_role (id, name, code, status, data_scope, description, create_by, create_date, update_by, update_date,
                      del_flag)
VALUES ('d1ece8903278fe25e8be2804fd755025', '普通用户', 'user', '1', '2', null, null, '2020-07-04 01:49:03', '1',
        '2020-09-03 20:40:55', '0');


-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS sys_user_role;
CREATE TABLE sys_user_role
(
    user_id varchar(64) COMMENT '用户主键',
    role_id varchar(64) COMMENT '角色主键',
    PRIMARY KEY (user_id, role_id) USING BTREE,
    INDEX sys_user_role_1 (user_id) USING BTREE,
    INDEX sys_user_role_2 (role_id) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci COMMENT = '用户角色关联表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO sys_user_role (user_id, role_id)
VALUES ('1', '1');
INSERT INTO sys_user_role (user_id, role_id)
VALUES ('c35d5b94aca547799fbe56ddd90bcfc4', 'd1ece8903278fe25e8be2804fd755025');
