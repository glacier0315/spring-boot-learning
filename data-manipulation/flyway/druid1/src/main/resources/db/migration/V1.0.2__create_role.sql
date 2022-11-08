/*
DROP DATABASE if exists sb_learn;
CREATE DATABASE sb_learn CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';
*/
-- use sb_learn;


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role
(
    id          varchar(64) NOT NULL COMMENT '主键',
    code    varchar(100) COMMENT '编码',
    name    varchar(255) COMMENT '名称',
    dept_id     varchar(64) COMMENT '单位',
    status      varchar(4) COMMENT '状态',
    create_by   varchar(64) COMMENT '创建人',
    create_date timestamp  DEFAULT current_timestamp COMMENT '创建时间',
    update_by   varchar(64) COMMENT '更新人',
    update_date timestamp  DEFAULT current_timestamp COMMENT '更新时间',
    del_flag    varchar(4) default '0' COMMENT '删除标记',
    PRIMARY KEY (id) USING BTREE,
    INDEX sys_role_1 (dept_id) USING BTREE
) ENGINE = InnoDB
  COMMENT = '角色'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO sys_role (id, code, name, dept_id, status, create_by, create_date, update_by, update_date, del_flag)
    VALUES ('1', 'sys', '超级管理员', '1', '1', '1', '2022-11-08 10:37:03', '1', '2022-11-08 10:37:15', '0');


