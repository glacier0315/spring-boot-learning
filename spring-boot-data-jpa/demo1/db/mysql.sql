/*
DROP DATABASE if exists sb_learn;
CREATE DATABASE sb_learn CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_general_ci';
*/
use sb_learn;


create table t_s_base_user
(
    id          varchar(64)  not null
        primary key,
    create_by   varchar(64)  null,
    create_time datetime(6)  null,
    update_by   varchar(64)  null,
    update_time datetime(6)  null,
    password    varchar(100) null,
    real_name   varchar(50)  null,
    status      int          null,
    user_key    varchar(50)  null,
    username    varchar(64)  null
);

INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e8029e', null, null, null, null, 'n_gl1', 'n_gl1', 0, 'n_gl1', 'n_gl1');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e9029f', null, null, null, null, 'n_l2', 'n_l2', 0, 'n_l2', 'n_l2');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a0', null, null, null, null, 'n_tfe3', 'n_tfe3', 0, 'n_tfe3', 'n_tfe3');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a1', null, null, null, null, 'n_ufhigk4', 'n_ufhigk4', 1, 'n_ufhigk4',
        'n_ufhigk4');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a2', null, null, null, null, 'n_5', 'n_5', 2, 'n_5', 'n_5');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a3', null, null, null, null, 'n_htw6', 'n_htw6', 0, 'n_htw6', 'n_htw6');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a4', null, null, null, null, 'n_uynr7', 'n_uynr7', 2, 'n_uynr7', 'n_uynr7');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a5', null, null, null, null, 'n_clwq8', 'n_clwq8', 0, 'n_clwq8', 'n_clwq8');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a6', null, null, null, null, 'n_azt9', 'n_azt9', 0, 'n_azt9', 'n_azt9');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a7', null, null, null, null, 'n_yg10', 'n_yg10', 0, 'n_yg10', 'n_yg10');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a8', null, null, null, null, 'n_11', 'n_11', 0, 'n_11', 'n_11');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902a9', null, null, null, null, 'n_qmj12', 'n_qmj12', 2, 'n_qmj12', 'n_qmj12');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902aa', null, null, null, null, 'n_c13', 'n_c13', 1, 'n_c13', 'n_c13');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902ab', null, null, null, null, 'n_ow14', 'n_ow14', 0, 'n_ow14', 'n_ow14');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45e902ac', null, null, null, null, 'n_eyad15', 'n_eyad15', 0, 'n_eyad15', 'n_eyad15');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ea02ad', null, null, null, null, 'n_p16', 'n_p16', 1, 'n_p16', 'n_p16');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ec02ae', null, null, null, null, 'n_17', 'n_17', 1, 'n_17', 'n_17');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ec02af', null, null, null, null, 'n_b18', 'n_b18', 0, 'n_b18', 'n_b18');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b0', null, null, null, null, 'n_vappn19', 'n_vappn19', 0, 'n_vappn19',
        'n_vappn19');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b1', null, null, null, null, 'n_acjg20', 'n_acjg20', 0, 'n_acjg20', 'n_acjg20');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b2', null, null, null, null, 'n_oq21', 'n_oq21', 0, 'n_oq21', 'n_oq21');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b3', null, null, null, null, 'n_vwdm22', 'n_vwdm22', 0, 'n_vwdm22', 'n_vwdm22');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b4', null, null, null, null, 'n_f23', 'n_f23', 2, 'n_f23', 'n_f23');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b5', null, null, null, null, 'n_ym24', 'n_ym24', 1, 'n_ym24', 'n_ym24');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b6', null, null, null, null, 'n_rgwux25', 'n_rgwux25', 2, 'n_rgwux25',
        'n_rgwux25');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b7', null, null, null, null, 'n_yp26', 'n_yp26', 1, 'n_yp26', 'n_yp26');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b8', null, null, null, null, 'n_d27', 'n_d27', 0, 'n_d27', 'n_d27');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02b9', null, null, null, null, 'n_nhz28', 'n_nhz28', 2, 'n_nhz28', 'n_nhz28');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02ba', null, null, null, null, 'n_oy29', 'n_oy29', 2, 'n_oy29', 'n_oy29');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02bb', null, null, null, null, 'n_fqw30', 'n_fqw30', 1, 'n_fqw30', 'n_fqw30');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02bc', null, null, null, null, 'n_db31', 'n_db31', 1, 'n_db31', 'n_db31');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02bd', null, null, null, null, 'n_rzw32', 'n_rzw32', 0, 'n_rzw32', 'n_rzw32');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02be', null, null, null, null, 'n_q33', 'n_q33', 1, 'n_q33', 'n_q33');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02bf', null, null, null, null, 'n_ekvqzxe34', 'n_ekvqzxe34', 0, 'n_ekvqzxe34',
        'n_ekvqzxe34');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02c0', null, null, null, null, 'n_35', 'n_35', 1, 'n_35', 'n_35');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02c1', null, null, null, null, 'n_naeqzs36', 'n_naeqzs36', 2, 'n_naeqzs36',
        'n_naeqzs36');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02c2', null, null, null, null, 'n_rqvk37', 'n_rqvk37', 2, 'n_rqvk37', 'n_rqvk37');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02c3', null, null, null, null, 'n_obw38', 'n_obw38', 1, 'n_obw38', 'n_obw38');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02c4', null, null, null, null, 'n_nk39', 'n_nk39', 2, 'n_nk39', 'n_nk39');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02c5', null, null, null, null, 'n_isb40', 'n_isb40', 2, 'n_isb40', 'n_isb40');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02c6', null, null, null, null, 'n_lv41', 'n_lv41', 0, 'n_lv41', 'n_lv41');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ed02c7', null, null, null, null, 'n_hy42', 'n_hy42', 1, 'n_hy42', 'n_hy42');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ee02c8', null, null, null, null, 'n_qfc43', 'n_qfc43', 2, 'n_qfc43', 'n_qfc43');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ee02c9', null, null, null, null, 'n_gisf44', 'n_gisf44', 1, 'n_gisf44', 'n_gisf44');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ee02ca', null, null, null, null, 'n_myi45', 'n_myi45', 0, 'n_myi45', 'n_myi45');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ee02cb', null, null, null, null, 'n_46', 'n_46', 1, 'n_46', 'n_46');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ee02cc', null, null, null, null, 'n_kbjzc47', 'n_kbjzc47', 2, 'n_kbjzc47',
        'n_kbjzc47');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ee02cd', null, null, null, null, 'n_48', 'n_48', 2, 'n_48', 'n_48');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ee02ce', null, null, null, null, 'n_49', 'n_49', 1, 'n_49', 'n_49');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ee02cf', null, null, null, null, 'n_l50', 'n_l50', 0, 'n_l50', 'n_l50');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d0', null, null, null, null, 'n_yeekrbm51', 'n_yeekrbm51', 2, 'n_yeekrbm51',
        'n_yeekrbm51');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d1', null, null, null, null, 'n_lb52', 'n_lb52', 2, 'n_lb52', 'n_lb52');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d2', null, null, null, null, 'n_bfz53', 'n_bfz53', 2, 'n_bfz53', 'n_bfz53');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d3', null, null, null, null, 'n_54', 'n_54', 1, 'n_54', 'n_54');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d4', null, null, null, null, 'n_gtzas55', 'n_gtzas55', 2, 'n_gtzas55',
        'n_gtzas55');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d5', null, null, null, null, 'n_56', 'n_56', 1, 'n_56', 'n_56');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d6', null, null, null, null, 'n_phqu57', 'n_phqu57', 2, 'n_phqu57', 'n_phqu57');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d7', null, null, null, null, 'n_zk58', 'n_zk58', 0, 'n_zk58', 'n_zk58');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d8', null, null, null, null, 'n_tkyo59', 'n_tkyo59', 2, 'n_tkyo59', 'n_tkyo59');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02d9', null, null, null, null, 'n_dc60', 'n_dc60', 1, 'n_dc60', 'n_dc60');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02da', null, null, null, null, 'n_cr61', 'n_cr61', 1, 'n_cr61', 'n_cr61');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02db', null, null, null, null, 'n_zr62', 'n_zr62', 0, 'n_zr62', 'n_zr62');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02dc', null, null, null, null, 'n_ksy63', 'n_ksy63', 1, 'n_ksy63', 'n_ksy63');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02dd', null, null, null, null, 'n_qh64', 'n_qh64', 1, 'n_qh64', 'n_qh64');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02de', null, null, null, null, 'n_hnerx65', 'n_hnerx65', 1, 'n_hnerx65',
        'n_hnerx65');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02df', null, null, null, null, 'n_bgp66', 'n_bgp66', 1, 'n_bgp66', 'n_bgp66');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e0', null, null, null, null, 'n_67', 'n_67', 1, 'n_67', 'n_67');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e1', null, null, null, null, 'n_acwmo68', 'n_acwmo68', 0, 'n_acwmo68',
        'n_acwmo68');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e2', null, null, null, null, 'n_rudn69', 'n_rudn69', 1, 'n_rudn69', 'n_rudn69');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e3', null, null, null, null, 'n_q70', 'n_q70', 0, 'n_q70', 'n_q70');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e4', null, null, null, null, 'n_cn71', 'n_cn71', 0, 'n_cn71', 'n_cn71');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e5', null, null, null, null, 'n_72', 'n_72', 1, 'n_72', 'n_72');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e6', null, null, null, null, 'n_gpp73', 'n_gpp73', 2, 'n_gpp73', 'n_gpp73');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e7', null, null, null, null, 'n_khj74', 'n_khj74', 2, 'n_khj74', 'n_khj74');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e8', null, null, null, null, 'n_pvtd75', 'n_pvtd75', 1, 'n_pvtd75', 'n_pvtd75');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02e9', null, null, null, null, 'n_xjpb76', 'n_xjpb76', 0, 'n_xjpb76', 'n_xjpb76');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02ea', null, null, null, null, 'n_77', 'n_77', 2, 'n_77', 'n_77');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02eb', null, null, null, null, 'n_ycoir78', 'n_ycoir78', 0, 'n_ycoir78',
        'n_ycoir78');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ef02ec', null, null, null, null, 'n_79', 'n_79', 1, 'n_79', 'n_79');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002ed', null, null, null, null, 'n_hj80', 'n_hj80', 1, 'n_hj80', 'n_hj80');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002ee', null, null, null, null, 'n_81', 'n_81', 0, 'n_81', 'n_81');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002ef', null, null, null, null, 'n_bhg82', 'n_bhg82', 0, 'n_bhg82', 'n_bhg82');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f0', null, null, null, null, 'n_uzo83', 'n_uzo83', 2, 'n_uzo83', 'n_uzo83');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f1', null, null, null, null, 'n_kxjds84', 'n_kxjds84', 2, 'n_kxjds84',
        'n_kxjds84');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f2', null, null, null, null, 'n_l85', 'n_l85', 1, 'n_l85', 'n_l85');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f3', null, null, null, null, 'n_xwqvaxv86', 'n_xwqvaxv86', 1, 'n_xwqvaxv86',
        'n_xwqvaxv86');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f4', null, null, null, null, 'n_aoidbp87', 'n_aoidbp87', 2, 'n_aoidbp87',
        'n_aoidbp87');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f5', null, null, null, null, 'n_i88', 'n_i88', 1, 'n_i88', 'n_i88');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f6', null, null, null, null, 'n_d89', 'n_d89', 2, 'n_d89', 'n_d89');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f7', null, null, null, null, 'n_oj90', 'n_oj90', 1, 'n_oj90', 'n_oj90');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f8', null, null, null, null, 'n_mw91', 'n_mw91', 1, 'n_mw91', 'n_mw91');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002f9', null, null, null, null, 'n_td92', 'n_td92', 1, 'n_td92', 'n_td92');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f002fa', null, null, null, null, 'n_dhj93', 'n_dhj93', 0, 'n_dhj93', 'n_dhj93');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f102fb', null, null, null, null, 'n_zq94', 'n_zq94', 2, 'n_zq94', 'n_zq94');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f102fc', null, null, null, null, 'n_hu95', 'n_hu95', 2, 'n_hu95', 'n_hu95');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f102fd', null, null, null, null, 'n_96', 'n_96', 0, 'n_96', 'n_96');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f102fe', null, null, null, null, 'n_ilcpor97', 'n_ilcpor97', 2, 'n_ilcpor97',
        'n_ilcpor97');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f102ff', null, null, null, null, 'n_98', 'n_98', 2, 'n_98', 'n_98');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f20300', null, null, null, null, 'n_plox99', 'n_plox99', 2, 'n_plox99', 'n_plox99');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f20301', null, null, null, null, 'n_gsm100', 'n_gsm100', 0, 'n_gsm100', 'n_gsm100');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30302', null, null, null, null, 'n_avq101', 'n_avq101', 1, 'n_avq101', 'n_avq101');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30303', null, null, null, null, 'n_ypdw102', 'n_ypdw102', 1, 'n_ypdw102',
        'n_ypdw102');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30304', null, null, null, null, 'n_mc103', 'n_mc103', 2, 'n_mc103', 'n_mc103');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30305', null, null, null, null, 'n_c104', 'n_c104', 1, 'n_c104', 'n_c104');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30306', null, null, null, null, 'n_x105', 'n_x105', 2, 'n_x105', 'n_x105');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30307', null, null, null, null, 'n_106', 'n_106', 1, 'n_106', 'n_106');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30308', null, null, null, null, 'n_zf107', 'n_zf107', 1, 'n_zf107', 'n_zf107');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30309', null, null, null, null, 'n_vwe108', 'n_vwe108', 2, 'n_vwe108', 'n_vwe108');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f3030a', null, null, null, null, 'n_eoyo109', 'n_eoyo109', 1, 'n_eoyo109',
        'n_eoyo109');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f3030b', null, null, null, null, 'n_ozet110', 'n_ozet110', 0, 'n_ozet110',
        'n_ozet110');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f3030c', null, null, null, null, 'n_rj111', 'n_rj111', 2, 'n_rj111', 'n_rj111');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f3030d', null, null, null, null, 'n_kog112', 'n_kog112', 0, 'n_kog112', 'n_kog112');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f3030e', null, null, null, null, 'n_113', 'n_113', 2, 'n_113', 'n_113');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f3030f', null, null, null, null, 'n_sbzzw114', 'n_sbzzw114', 0, 'n_sbzzw114',
        'n_sbzzw114');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30310', null, null, null, null, 'n_r115', 'n_r115', 0, 'n_r115', 'n_r115');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30311', null, null, null, null, 'n_116', 'n_116', 0, 'n_116', 'n_116');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30312', null, null, null, null, 'n_m117', 'n_m117', 2, 'n_m117', 'n_m117');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30313', null, null, null, null, 'n_o118', 'n_o118', 2, 'n_o118', 'n_o118');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30314', null, null, null, null, 'n_a119', 'n_a119', 1, 'n_a119', 'n_a119');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30315', null, null, null, null, 'n_nik120', 'n_nik120', 2, 'n_nik120', 'n_nik120');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30316', null, null, null, null, 'n_ut121', 'n_ut121', 2, 'n_ut121', 'n_ut121');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30317', null, null, null, null, 'n_yxz122', 'n_yxz122', 2, 'n_yxz122', 'n_yxz122');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30318', null, null, null, null, 'n_nxdrpe123', 'n_nxdrpe123', 1, 'n_nxdrpe123',
        'n_nxdrpe123');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f30319', null, null, null, null, 'n_mcv124', 'n_mcv124', 2, 'n_mcv124', 'n_mcv124');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f3031a', null, null, null, null, 'n_pr125', 'n_pr125', 1, 'n_pr125', 'n_pr125');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f4031b', null, null, null, null, 'n_rhvtwj126', 'n_rhvtwj126', 1, 'n_rhvtwj126',
        'n_rhvtwj126');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f4031c', null, null, null, null, 'n_ot127', 'n_ot127', 0, 'n_ot127', 'n_ot127');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f4031d', null, null, null, null, 'n_jcry128', 'n_jcry128', 0, 'n_jcry128',
        'n_jcry128');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f4031e', null, null, null, null, 'n_xr129', 'n_xr129', 2, 'n_xr129', 'n_xr129');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f4031f', null, null, null, null, 'n_iuv130', 'n_iuv130', 2, 'n_iuv130', 'n_iuv130');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f40320', null, null, null, null, 'n_bkfs131', 'n_bkfs131', 1, 'n_bkfs131',
        'n_bkfs131');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f40321', null, null, null, null, 'n_a132', 'n_a132', 0, 'n_a132', 'n_a132');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50322', null, null, null, null, 'n_cgoas133', 'n_cgoas133', 1, 'n_cgoas133',
        'n_cgoas133');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50323', null, null, null, null, 'n_mnu134', 'n_mnu134', 1, 'n_mnu134', 'n_mnu134');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50324', null, null, null, null, 'n_135', 'n_135', 1, 'n_135', 'n_135');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50325', null, null, null, null, 'n_xxp136', 'n_xxp136', 2, 'n_xxp136', 'n_xxp136');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50326', null, null, null, null, 'n_ehj137', 'n_ehj137', 0, 'n_ehj137', 'n_ehj137');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50327', null, null, null, null, 'n_oa138', 'n_oa138', 0, 'n_oa138', 'n_oa138');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50328', null, null, null, null, 'n_ai139', 'n_ai139', 2, 'n_ai139', 'n_ai139');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50329', null, null, null, null, 'n_cu140', 'n_cu140', 1, 'n_cu140', 'n_cu140');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f5032a', null, null, null, null, 'n_c141', 'n_c141', 0, 'n_c141', 'n_c141');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f5032b', null, null, null, null, 'n_jd142', 'n_jd142', 1, 'n_jd142', 'n_jd142');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f5032c', null, null, null, null, 'n_143', 'n_143', 0, 'n_143', 'n_143');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f5032d', null, null, null, null, 'n_kqiryi144', 'n_kqiryi144', 1, 'n_kqiryi144',
        'n_kqiryi144');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f5032e', null, null, null, null, 'n_qb145', 'n_qb145', 1, 'n_qb145', 'n_qb145');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f5032f', null, null, null, null, 'n_ik146', 'n_ik146', 0, 'n_ik146', 'n_ik146');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50330', null, null, null, null, 'n_ivuqq147', 'n_ivuqq147', 2, 'n_ivuqq147',
        'n_ivuqq147');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50331', null, null, null, null, 'n_148', 'n_148', 2, 'n_148', 'n_148');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50332', null, null, null, null, 'n_149', 'n_149', 1, 'n_149', 'n_149');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50333', null, null, null, null, 'n_150', 'n_150', 0, 'n_150', 'n_150');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50334', null, null, null, null, 'n_ksyjo151', 'n_ksyjo151', 2, 'n_ksyjo151',
        'n_ksyjo151');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50335', null, null, null, null, 'n_n152', 'n_n152', 0, 'n_n152', 'n_n152');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50336', null, null, null, null, 'n_rhg153', 'n_rhg153', 0, 'n_rhg153', 'n_rhg153');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50337', null, null, null, null, 'n_qf154', 'n_qf154', 0, 'n_qf154', 'n_qf154');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50338', null, null, null, null, 'n_ac155', 'n_ac155', 0, 'n_ac155', 'n_ac155');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f50339', null, null, null, null, 'n_rq156', 'n_rq156', 0, 'n_rq156', 'n_rq156');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f5033a', null, null, null, null, 'n_vlp157', 'n_vlp157', 1, 'n_vlp157', 'n_vlp157');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f6033b', null, null, null, null, 'n_paj158', 'n_paj158', 1, 'n_paj158', 'n_paj158');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f6033c', null, null, null, null, 'n_159', 'n_159', 0, 'n_159', 'n_159');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f6033d', null, null, null, null, 'n_j160', 'n_j160', 2, 'n_j160', 'n_j160');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f6033e', null, null, null, null, 'n_ntcnz161', 'n_ntcnz161', 1, 'n_ntcnz161',
        'n_ntcnz161');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f6033f', null, null, null, null, 'n_bzzhe162', 'n_bzzhe162', 2, 'n_bzzhe162',
        'n_bzzhe162');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f60340', null, null, null, null, 'n_wsiq163', 'n_wsiq163', 2, 'n_wsiq163',
        'n_wsiq163');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f60341', null, null, null, null, 'n_zts164', 'n_zts164', 1, 'n_zts164', 'n_zts164');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70342', null, null, null, null, 'n_mrcw165', 'n_mrcw165', 0, 'n_mrcw165',
        'n_mrcw165');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70343', null, null, null, null, 'n_o166', 'n_o166', 2, 'n_o166', 'n_o166');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70344', null, null, null, null, 'n_xgquw167', 'n_xgquw167', 0, 'n_xgquw167',
        'n_xgquw167');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70345', null, null, null, null, 'n_sfuv168', 'n_sfuv168', 0, 'n_sfuv168',
        'n_sfuv168');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70346', null, null, null, null, 'n_gnn169', 'n_gnn169', 0, 'n_gnn169', 'n_gnn169');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70347', null, null, null, null, 'n_170', 'n_170', 0, 'n_170', 'n_170');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70348', null, null, null, null, 'n_nz171', 'n_nz171', 0, 'n_nz171', 'n_nz171');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70349', null, null, null, null, 'n_ypke172', 'n_ypke172', 2, 'n_ypke172',
        'n_ypke172');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f7034a', null, null, null, null, 'n_h173', 'n_h173', 2, 'n_h173', 'n_h173');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f7034b', null, null, null, null, 'n_hc174', 'n_hc174', 2, 'n_hc174', 'n_hc174');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f7034c', null, null, null, null, 'n_tkz175', 'n_tkz175', 2, 'n_tkz175', 'n_tkz175');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f7034d', null, null, null, null, 'n_ssb176', 'n_ssb176', 1, 'n_ssb176', 'n_ssb176');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f7034e', null, null, null, null, 'n_ann177', 'n_ann177', 1, 'n_ann177', 'n_ann177');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f7034f', null, null, null, null, 'n_fehyk178', 'n_fehyk178', 0, 'n_fehyk178',
        'n_fehyk178');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70350', null, null, null, null, 'n_inui179', 'n_inui179', 2, 'n_inui179',
        'n_inui179');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70351', null, null, null, null, 'n_yfyro180', 'n_yfyro180', 2, 'n_yfyro180',
        'n_yfyro180');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70352', null, null, null, null, 'n_v181', 'n_v181', 0, 'n_v181', 'n_v181');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70353', null, null, null, null, 'n_uq182', 'n_uq182', 0, 'n_uq182', 'n_uq182');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70354', null, null, null, null, 'n_rl183', 'n_rl183', 1, 'n_rl183', 'n_rl183');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70355', null, null, null, null, 'n_x184', 'n_x184', 1, 'n_x184', 'n_x184');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70356', null, null, null, null, 'n_k185', 'n_k185', 2, 'n_k185', 'n_k185');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70357', null, null, null, null, 'n_aht186', 'n_aht186', 0, 'n_aht186', 'n_aht186');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70358', null, null, null, null, 'n_iup187', 'n_iup187', 2, 'n_iup187', 'n_iup187');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f70359', null, null, null, null, 'n_qve188', 'n_qve188', 1, 'n_qve188', 'n_qve188');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f8035a', null, null, null, null, 'n_a189', 'n_a189', 1, 'n_a189', 'n_a189');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f8035b', null, null, null, null, 'n_zd190', 'n_zd190', 0, 'n_zd190', 'n_zd190');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f8035c', null, null, null, null, 'n_bg191', 'n_bg191', 0, 'n_bg191', 'n_bg191');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f8035d', null, null, null, null, 'n_uu192', 'n_uu192', 0, 'n_uu192', 'n_uu192');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f8035e', null, null, null, null, 'n_arn193', 'n_arn193', 1, 'n_arn193', 'n_arn193');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f8035f', null, null, null, null, 'n_v194', 'n_v194', 1, 'n_v194', 'n_v194');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f80360', null, null, null, null, 'n_d195', 'n_d195', 1, 'n_d195', 'n_d195');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f80361', null, null, null, null, 'n_l196', 'n_l196', 1, 'n_l196', 'n_l196');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f80362', null, null, null, null, 'n_jnb197', 'n_jnb197', 1, 'n_jnb197', 'n_jnb197');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f80363', null, null, null, null, 'n_wn198', 'n_wn198', 2, 'n_wn198', 'n_wn198');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f80364', null, null, null, null, 'n_ofh199', 'n_ofh199', 0, 'n_ofh199', 'n_ofh199');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f80365', null, null, null, null, 'n_200', 'n_200', 0, 'n_200', 'n_200');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f80366', null, null, null, null, 'n_qjo201', 'n_qjo201', 2, 'n_qjo201', 'n_qjo201');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90367', null, null, null, null, 'n_c202', 'n_c202', 2, 'n_c202', 'n_c202');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90368', null, null, null, null, 'n_e203', 'n_e203', 2, 'n_e203', 'n_e203');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90369', null, null, null, null, 'n_kblz204', 'n_kblz204', 2, 'n_kblz204',
        'n_kblz204');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f9036a', null, null, null, null, 'n_pymw205', 'n_pymw205', 1, 'n_pymw205',
        'n_pymw205');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f9036b', null, null, null, null, 'n_aru206', 'n_aru206', 1, 'n_aru206', 'n_aru206');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f9036c', null, null, null, null, 'n_n207', 'n_n207', 1, 'n_n207', 'n_n207');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f9036d', null, null, null, null, 'n_f208', 'n_f208', 1, 'n_f208', 'n_f208');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f9036e', null, null, null, null, 'n_ixv209', 'n_ixv209', 2, 'n_ixv209', 'n_ixv209');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f9036f', null, null, null, null, 'n_210', 'n_210', 0, 'n_210', 'n_210');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90370', null, null, null, null, 'n_xdnps211', 'n_xdnps211', 1, 'n_xdnps211',
        'n_xdnps211');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90371', null, null, null, null, 'n_u212', 'n_u212', 2, 'n_u212', 'n_u212');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90372', null, null, null, null, 'n_x213', 'n_x213', 2, 'n_x213', 'n_x213');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90373', null, null, null, null, 'n_rlh214', 'n_rlh214', 0, 'n_rlh214', 'n_rlh214');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90374', null, null, null, null, 'n_n215', 'n_n215', 2, 'n_n215', 'n_n215');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90375', null, null, null, null, 'n_hgu216', 'n_hgu216', 0, 'n_hgu216', 'n_hgu216');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90376', null, null, null, null, 'n_gd217', 'n_gd217', 0, 'n_gd217', 'n_gd217');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90377', null, null, null, null, 'n_gq218', 'n_gq218', 1, 'n_gq218', 'n_gq218');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90378', null, null, null, null, 'n_t219', 'n_t219', 1, 'n_t219', 'n_t219');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45f90379', null, null, null, null, 'n_220', 'n_220', 1, 'n_220', 'n_220');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa037a', null, null, null, null, 'n_zloht221', 'n_zloht221', 1, 'n_zloht221',
        'n_zloht221');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa037b', null, null, null, null, 'n_gr222', 'n_gr222', 1, 'n_gr222', 'n_gr222');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa037c', null, null, null, null, 'n_ejj223', 'n_ejj223', 1, 'n_ejj223', 'n_ejj223');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa037d', null, null, null, null, 'n_ytdu224', 'n_ytdu224', 1, 'n_ytdu224',
        'n_ytdu224');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa037e', null, null, null, null, 'n_eoyg225', 'n_eoyg225', 2, 'n_eoyg225',
        'n_eoyg225');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa037f', null, null, null, null, 'n_mc226', 'n_mc226', 2, 'n_mc226', 'n_mc226');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa0380', null, null, null, null, 'n_wf227', 'n_wf227', 2, 'n_wf227', 'n_wf227');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa0381', null, null, null, null, 'n_f228', 'n_f228', 0, 'n_f228', 'n_f228');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa0382', null, null, null, null, 'n_rtwefqnqd229', 'n_rtwefqnqd229', 2,
        'n_rtwefqnqd229', 'n_rtwefqnqd229');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa0383', null, null, null, null, 'n_fubnv230', 'n_fubnv230', 0, 'n_fubnv230',
        'n_fubnv230');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa0384', null, null, null, null, 'n_j231', 'n_j231', 0, 'n_j231', 'n_j231');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa0385', null, null, null, null, 'n_uwe232', 'n_uwe232', 2, 'n_uwe232', 'n_uwe232');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa0386', null, null, null, null, 'n_lrhpyq233', 'n_lrhpyq233', 1, 'n_lrhpyq233',
        'n_lrhpyq233');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fa0387', null, null, null, null, 'n_of234', 'n_of234', 1, 'n_of234', 'n_of234');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0388', null, null, null, null, 'n_x235', 'n_x235', 1, 'n_x235', 'n_x235');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0389', null, null, null, null, 'n_h236', 'n_h236', 1, 'n_h236', 'n_h236');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb038a', null, null, null, null, 'n_hhx237', 'n_hhx237', 0, 'n_hhx237', 'n_hhx237');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb038b', null, null, null, null, 'n_npljd238', 'n_npljd238', 0, 'n_npljd238',
        'n_npljd238');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb038c', null, null, null, null, 'n_239', 'n_239', 1, 'n_239', 'n_239');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb038d', null, null, null, null, 'n_jj240', 'n_jj240', 0, 'n_jj240', 'n_jj240');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb038e', null, null, null, null, 'n_a241', 'n_a241', 1, 'n_a241', 'n_a241');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb038f', null, null, null, null, 'n_mv242', 'n_mv242', 0, 'n_mv242', 'n_mv242');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0390', null, null, null, null, 'n_ine243', 'n_ine243', 0, 'n_ine243', 'n_ine243');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0391', null, null, null, null, 'n_kfgv244', 'n_kfgv244', 1, 'n_kfgv244',
        'n_kfgv244');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0392', null, null, null, null, 'n_rnwid245', 'n_rnwid245', 0, 'n_rnwid245',
        'n_rnwid245');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0393', null, null, null, null, 'n_tzgo246', 'n_tzgo246', 1, 'n_tzgo246',
        'n_tzgo246');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0394', null, null, null, null, 'n_bbc247', 'n_bbc247', 0, 'n_bbc247', 'n_bbc247');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0395', null, null, null, null, 'n_hjj248', 'n_hjj248', 1, 'n_hjj248', 'n_hjj248');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0396', null, null, null, null, 'n_blvwad249', 'n_blvwad249', 1, 'n_blvwad249',
        'n_blvwad249');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0397', null, null, null, null, 'n_mc250', 'n_mc250', 1, 'n_mc250', 'n_mc250');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0398', null, null, null, null, 'n_zfqukl251', 'n_zfqukl251', 0, 'n_zfqukl251',
        'n_zfqukl251');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb0399', null, null, null, null, 'n_252', 'n_252', 2, 'n_252', 'n_252');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb039a', null, null, null, null, 'n_253', 'n_253', 0, 'n_253', 'n_253');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb039b', null, null, null, null, 'n_kcsme254', 'n_kcsme254', 2, 'n_kcsme254',
        'n_kcsme254');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb039c', null, null, null, null, 'n_i255', 'n_i255', 0, 'n_i255', 'n_i255');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb039d', null, null, null, null, 'n_256', 'n_256', 2, 'n_256', 'n_256');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fb039e', null, null, null, null, 'n_prer257', 'n_prer257', 2, 'n_prer257',
        'n_prer257');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc039f', null, null, null, null, 'n_z258', 'n_z258', 0, 'n_z258', 'n_z258');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a0', null, null, null, null, 'n_dju259', 'n_dju259', 1, 'n_dju259', 'n_dju259');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a1', null, null, null, null, 'n_dpog260', 'n_dpog260', 2, 'n_dpog260',
        'n_dpog260');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a2', null, null, null, null, 'n_abjlsf261', 'n_abjlsf261', 0, 'n_abjlsf261',
        'n_abjlsf261');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a3', null, null, null, null, 'n_fdp262', 'n_fdp262', 0, 'n_fdp262', 'n_fdp262');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a4', null, null, null, null, 'n_bp263', 'n_bp263', 0, 'n_bp263', 'n_bp263');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a5', null, null, null, null, 'n_jpu264', 'n_jpu264', 1, 'n_jpu264', 'n_jpu264');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a6', null, null, null, null, 'n_d265', 'n_d265', 2, 'n_d265', 'n_d265');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a7', null, null, null, null, 'n_kcl266', 'n_kcl266', 1, 'n_kcl266', 'n_kcl266');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a8', null, null, null, null, 'n_zmjj267', 'n_zmjj267', 1, 'n_zmjj267',
        'n_zmjj267');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03a9', null, null, null, null, 'n_nx268', 'n_nx268', 0, 'n_nx268', 'n_nx268');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03aa', null, null, null, null, 'n_hewdh269', 'n_hewdh269', 1, 'n_hewdh269',
        'n_hewdh269');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03ab', null, null, null, null, 'n_shx270', 'n_shx270', 2, 'n_shx270', 'n_shx270');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03ac', null, null, null, null, 'n_ykb271', 'n_ykb271', 0, 'n_ykb271', 'n_ykb271');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03ad', null, null, null, null, 'n_sij272', 'n_sij272', 0, 'n_sij272', 'n_sij272');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03ae', null, null, null, null, 'n_qjs273', 'n_qjs273', 0, 'n_qjs273', 'n_qjs273');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03af', null, null, null, null, 'n_274', 'n_274', 1, 'n_274', 'n_274');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b0', null, null, null, null, 'n_bebz275', 'n_bebz275', 2, 'n_bebz275',
        'n_bebz275');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b1', null, null, null, null, 'n_dfpsq276', 'n_dfpsq276', 2, 'n_dfpsq276',
        'n_dfpsq276');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b2', null, null, null, null, 'n_ufh277', 'n_ufh277', 2, 'n_ufh277', 'n_ufh277');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b3', null, null, null, null, 'n_278', 'n_278', 1, 'n_278', 'n_278');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b4', null, null, null, null, 'n_wbegjemb279', 'n_wbegjemb279', 0,
        'n_wbegjemb279', 'n_wbegjemb279');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b5', null, null, null, null, 'n_fszu280', 'n_fszu280', 1, 'n_fszu280',
        'n_fszu280');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b6', null, null, null, null, 'n_rskbp281', 'n_rskbp281', 1, 'n_rskbp281',
        'n_rskbp281');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b7', null, null, null, null, 'n_jwh282', 'n_jwh282', 1, 'n_jwh282', 'n_jwh282');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b8', null, null, null, null, 'n_xfgno283', 'n_xfgno283', 0, 'n_xfgno283',
        'n_xfgno283');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03b9', null, null, null, null, 'n_t284', 'n_t284', 1, 'n_t284', 'n_t284');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03ba', null, null, null, null, 'n_qclwqe285', 'n_qclwqe285', 1, 'n_qclwqe285',
        'n_qclwqe285');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fc03bb', null, null, null, null, 'n_dog286', 'n_dog286', 1, 'n_dog286', 'n_dog286');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03bc', null, null, null, null, 'n_vzf287', 'n_vzf287', 1, 'n_vzf287', 'n_vzf287');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03bd', null, null, null, null, 'n_el288', 'n_el288', 2, 'n_el288', 'n_el288');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03be', null, null, null, null, 'n_ru289', 'n_ru289', 1, 'n_ru289', 'n_ru289');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03bf', null, null, null, null, 'n_zcljc290', 'n_zcljc290', 2, 'n_zcljc290',
        'n_zcljc290');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c0', null, null, null, null, 'n_o291', 'n_o291', 1, 'n_o291', 'n_o291');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c1', null, null, null, null, 'n_zu292', 'n_zu292', 2, 'n_zu292', 'n_zu292');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c2', null, null, null, null, 'n_wjwvlvr293', 'n_wjwvlvr293', 1, 'n_wjwvlvr293',
        'n_wjwvlvr293');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c3', null, null, null, null, 'n_pi294', 'n_pi294', 0, 'n_pi294', 'n_pi294');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c4', null, null, null, null, 'n_r295', 'n_r295', 1, 'n_r295', 'n_r295');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c5', null, null, null, null, 'n_pwut296', 'n_pwut296', 0, 'n_pwut296',
        'n_pwut296');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c6', null, null, null, null, 'n_297', 'n_297', 0, 'n_297', 'n_297');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c7', null, null, null, null, 'n_u298', 'n_u298', 0, 'n_u298', 'n_u298');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c8', null, null, null, null, 'n_299', 'n_299', 0, 'n_299', 'n_299');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03c9', null, null, null, null, 'n_zsrp300', 'n_zsrp300', 0, 'n_zsrp300',
        'n_zsrp300');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03ca', null, null, null, null, 'n_rnx301', 'n_rnx301', 2, 'n_rnx301', 'n_rnx301');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fd03cb', null, null, null, null, 'n_xu302', 'n_xu302', 0, 'n_xu302', 'n_xu302');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03cc', null, null, null, null, 'n_v303', 'n_v303', 1, 'n_v303', 'n_v303');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03cd', null, null, null, null, 'n_wgm304', 'n_wgm304', 1, 'n_wgm304', 'n_wgm304');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03ce', null, null, null, null, 'n_g305', 'n_g305', 1, 'n_g305', 'n_g305');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03cf', null, null, null, null, 'n_ew306', 'n_ew306', 0, 'n_ew306', 'n_ew306');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d0', null, null, null, null, 'n_unt307', 'n_unt307', 2, 'n_unt307', 'n_unt307');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d1', null, null, null, null, 'n_bvestg308', 'n_bvestg308', 0, 'n_bvestg308',
        'n_bvestg308');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d2', null, null, null, null, 'n_lg309', 'n_lg309', 0, 'n_lg309', 'n_lg309');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d3', null, null, null, null, 'n_zwfv310', 'n_zwfv310', 2, 'n_zwfv310',
        'n_zwfv310');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d4', null, null, null, null, 'n_vbj311', 'n_vbj311', 1, 'n_vbj311', 'n_vbj311');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d5', null, null, null, null, 'n_trhdur312', 'n_trhdur312', 2, 'n_trhdur312',
        'n_trhdur312');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d6', null, null, null, null, 'n_cnu313', 'n_cnu313', 2, 'n_cnu313', 'n_cnu313');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d7', null, null, null, null, 'n_leeu314', 'n_leeu314', 1, 'n_leeu314',
        'n_leeu314');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d8', null, null, null, null, 'n_c315', 'n_c315', 0, 'n_c315', 'n_c315');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03d9', null, null, null, null, 'n_ezowp316', 'n_ezowp316', 1, 'n_ezowp316',
        'n_ezowp316');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03da', null, null, null, null, 'n_317', 'n_317', 1, 'n_317', 'n_317');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03db', null, null, null, null, 'n_ta318', 'n_ta318', 1, 'n_ta318', 'n_ta318');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03dc', null, null, null, null, 'n_zohe319', 'n_zohe319', 1, 'n_zohe319',
        'n_zohe319');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03dd', null, null, null, null, 'n_peao320', 'n_peao320', 2, 'n_peao320',
        'n_peao320');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03de', null, null, null, null, 'n_fr321', 'n_fr321', 0, 'n_fr321', 'n_fr321');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03df', null, null, null, null, 'n_wtvk322', 'n_wtvk322', 1, 'n_wtvk322',
        'n_wtvk322');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03e0', null, null, null, null, 'n_ens323', 'n_ens323', 2, 'n_ens323', 'n_ens323');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03e1', null, null, null, null, 'n_ew324', 'n_ew324', 1, 'n_ew324', 'n_ew324');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03e2', null, null, null, null, 'n_raex325', 'n_raex325', 2, 'n_raex325',
        'n_raex325');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03e3', null, null, null, null, 'n_e326', 'n_e326', 1, 'n_e326', 'n_e326');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03e4', null, null, null, null, 'n_jdkeq327', 'n_jdkeq327', 0, 'n_jdkeq327',
        'n_jdkeq327');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03e5', null, null, null, null, 'n_js328', 'n_js328', 0, 'n_js328', 'n_js328');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03e6', null, null, null, null, 'n_wz329', 'n_wz329', 2, 'n_wz329', 'n_wz329');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45fe03e7', null, null, null, null, 'n_ym330', 'n_ym330', 1, 'n_ym330', 'n_ym330');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03e8', null, null, null, null, 'n_g331', 'n_g331', 2, 'n_g331', 'n_g331');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03e9', null, null, null, null, 'n_sijd332', 'n_sijd332', 1, 'n_sijd332',
        'n_sijd332');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03ea', null, null, null, null, 'n_nmzo333', 'n_nmzo333', 1, 'n_nmzo333',
        'n_nmzo333');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03eb', null, null, null, null, 'n_fj334', 'n_fj334', 1, 'n_fj334', 'n_fj334');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03ec', null, null, null, null, 'n_xoiu335', 'n_xoiu335', 1, 'n_xoiu335',
        'n_xoiu335');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03ed', null, null, null, null, 'n_s336', 'n_s336', 2, 'n_s336', 'n_s336');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03ee', null, null, null, null, 'n_nt337', 'n_nt337', 1, 'n_nt337', 'n_nt337');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03ef', null, null, null, null, 'n_grn338', 'n_grn338', 0, 'n_grn338', 'n_grn338');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f0', null, null, null, null, 'n_fxa339', 'n_fxa339', 1, 'n_fxa339', 'n_fxa339');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f1', null, null, null, null, 'n_i340', 'n_i340', 2, 'n_i340', 'n_i340');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f2', null, null, null, null, 'n_cpta341', 'n_cpta341', 2, 'n_cpta341',
        'n_cpta341');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f3', null, null, null, null, 'n_gqxm342', 'n_gqxm342', 1, 'n_gqxm342',
        'n_gqxm342');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f4', null, null, null, null, 'n_tz343', 'n_tz343', 0, 'n_tz343', 'n_tz343');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f5', null, null, null, null, 'n_tbhu344', 'n_tbhu344', 0, 'n_tbhu344',
        'n_tbhu344');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f6', null, null, null, null, 'n_vcd345', 'n_vcd345', 2, 'n_vcd345', 'n_vcd345');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f7', null, null, null, null, 'n_mcih346', 'n_mcih346', 2, 'n_mcih346',
        'n_mcih346');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f8', null, null, null, null, 'n_egt347', 'n_egt347', 1, 'n_egt347', 'n_egt347');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03f9', null, null, null, null, 'n_348', 'n_348', 1, 'n_348', 'n_348');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03fa', null, null, null, null, 'n_cztp349', 'n_cztp349', 2, 'n_cztp349',
        'n_cztp349');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03fb', null, null, null, null, 'n_r350', 'n_r350', 2, 'n_r350', 'n_r350');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03fc', null, null, null, null, 'n_h351', 'n_h351', 1, 'n_h351', 'n_h351');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03fd', null, null, null, null, 'n_bw352', 'n_bw352', 2, 'n_bw352', 'n_bw352');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03fe', null, null, null, null, 'n_la353', 'n_la353', 0, 'n_la353', 'n_la353');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa45ff03ff', null, null, null, null, 'n_hm354', 'n_hm354', 2, 'n_hm354', 'n_hm354');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000400', null, null, null, null, 'n_azni355', 'n_azni355', 0, 'n_azni355',
        'n_azni355');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000401', null, null, null, null, 'n_f356', 'n_f356', 0, 'n_f356', 'n_f356');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000402', null, null, null, null, 'n_vs357', 'n_vs357', 2, 'n_vs357', 'n_vs357');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000403', null, null, null, null, 'n_lqln358', 'n_lqln358', 0, 'n_lqln358',
        'n_lqln358');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000404', null, null, null, null, 'n_dkj359', 'n_dkj359', 2, 'n_dkj359', 'n_dkj359');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000405', null, null, null, null, 'n_el360', 'n_el360', 0, 'n_el360', 'n_el360');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000406', null, null, null, null, 'n_mlns361', 'n_mlns361', 1, 'n_mlns361',
        'n_mlns361');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000407', null, null, null, null, 'n_lcve362', 'n_lcve362', 0, 'n_lcve362',
        'n_lcve362');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000408', null, null, null, null, 'n_ht363', 'n_ht363', 1, 'n_ht363', 'n_ht363');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000409', null, null, null, null, 'n_hdj364', 'n_hdj364', 0, 'n_hdj364', 'n_hdj364');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4600040a', null, null, null, null, 'n_n365', 'n_n365', 1, 'n_n365', 'n_n365');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4600040b', null, null, null, null, 'n_v366', 'n_v366', 0, 'n_v366', 'n_v366');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4600040c', null, null, null, null, 'n_e367', 'n_e367', 2, 'n_e367', 'n_e367');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4600040d', null, null, null, null, 'n_b368', 'n_b368', 1, 'n_b368', 'n_b368');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4600040e', null, null, null, null, 'n_c369', 'n_c369', 0, 'n_c369', 'n_c369');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4600040f', null, null, null, null, 'n_zq370', 'n_zq370', 2, 'n_zq370', 'n_zq370');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000410', null, null, null, null, 'n_lwb371', 'n_lwb371', 2, 'n_lwb371', 'n_lwb371');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000411', null, null, null, null, 'n_yz372', 'n_yz372', 2, 'n_yz372', 'n_yz372');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000412', null, null, null, null, 'n_lsq373', 'n_lsq373', 1, 'n_lsq373', 'n_lsq373');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000413', null, null, null, null, 'n_374', 'n_374', 2, 'n_374', 'n_374');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46000414', null, null, null, null, 'n_hdkpn375', 'n_hdkpn375', 2, 'n_hdkpn375',
        'n_hdkpn375');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010415', null, null, null, null, 'n_jra376', 'n_jra376', 0, 'n_jra376', 'n_jra376');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010416', null, null, null, null, 'n_mirary377', 'n_mirary377', 1, 'n_mirary377',
        'n_mirary377');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010417', null, null, null, null, 'n_rjn378', 'n_rjn378', 2, 'n_rjn378', 'n_rjn378');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010418', null, null, null, null, 'n_lqfr379', 'n_lqfr379', 0, 'n_lqfr379',
        'n_lqfr379');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010419', null, null, null, null, 'n_pgud380', 'n_pgud380', 1, 'n_pgud380',
        'n_pgud380');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4601041a', null, null, null, null, 'n_wgrkj381', 'n_wgrkj381', 0, 'n_wgrkj381',
        'n_wgrkj381');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4601041b', null, null, null, null, 'n_m382', 'n_m382', 0, 'n_m382', 'n_m382');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4601041c', null, null, null, null, 'n_383', 'n_383', 1, 'n_383', 'n_383');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4601041d', null, null, null, null, 'n_zy384', 'n_zy384', 1, 'n_zy384', 'n_zy384');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4601041e', null, null, null, null, 'n_zgt385', 'n_zgt385', 0, 'n_zgt385', 'n_zgt385');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4601041f', null, null, null, null, 'n_a386', 'n_a386', 2, 'n_a386', 'n_a386');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010420', null, null, null, null, 'n_lp387', 'n_lp387', 0, 'n_lp387', 'n_lp387');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010421', null, null, null, null, 'n_vb388', 'n_vb388', 1, 'n_vb388', 'n_vb388');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010422', null, null, null, null, 'n_wn389', 'n_wn389', 2, 'n_wn389', 'n_wn389');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010423', null, null, null, null, 'n_zlrq390', 'n_zlrq390', 1, 'n_zlrq390',
        'n_zlrq390');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010424', null, null, null, null, 'n_yxwadu391', 'n_yxwadu391', 1, 'n_yxwadu391',
        'n_yxwadu391');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010425', null, null, null, null, 'n_uwdh392', 'n_uwdh392', 2, 'n_uwdh392',
        'n_uwdh392');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010426', null, null, null, null, 'n_jwwxs393', 'n_jwwxs393', 1, 'n_jwwxs393',
        'n_jwwxs393');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010427', null, null, null, null, 'n_z394', 'n_z394', 2, 'n_z394', 'n_z394');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010428', null, null, null, null, 'n_zoy395', 'n_zoy395', 2, 'n_zoy395', 'n_zoy395');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46010429', null, null, null, null, 'n_ybafn396', 'n_ybafn396', 0, 'n_ybafn396',
        'n_ybafn396');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4602042a', null, null, null, null, 'n_wz397', 'n_wz397', 2, 'n_wz397', 'n_wz397');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4602042b', null, null, null, null, 'n_ohpxe398', 'n_ohpxe398', 0, 'n_ohpxe398',
        'n_ohpxe398');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4602042c', null, null, null, null, 'n_laihl399', 'n_laihl399', 2, 'n_laihl399',
        'n_laihl399');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4602042d', null, null, null, null, 'n_gm400', 'n_gm400', 0, 'n_gm400', 'n_gm400');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4602042e', null, null, null, null, 'n_cv401', 'n_cv401', 2, 'n_cv401', 'n_cv401');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4602042f', null, null, null, null, 'n_402', 'n_402', 0, 'n_402', 'n_402');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46020430', null, null, null, null, 'n_a403', 'n_a403', 1, 'n_a403', 'n_a403');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46020431', null, null, null, null, 'n_dcm404', 'n_dcm404', 0, 'n_dcm404', 'n_dcm404');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46020432', null, null, null, null, 'n_405', 'n_405', 1, 'n_405', 'n_405');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46020433', null, null, null, null, 'n_406', 'n_406', 0, 'n_406', 'n_406');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46020434', null, null, null, null, 'n_bz407', 'n_bz407', 2, 'n_bz407', 'n_bz407');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46020435', null, null, null, null, 'n_yxi408', 'n_yxi408', 2, 'n_yxi408', 'n_yxi408');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46030436', null, null, null, null, 'n_ujcv409', 'n_ujcv409', 1, 'n_ujcv409',
        'n_ujcv409');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46030437', null, null, null, null, 'n_whtqa410', 'n_whtqa410', 1, 'n_whtqa410',
        'n_whtqa410');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46030438', null, null, null, null, 'n_wnx411', 'n_wnx411', 2, 'n_wnx411', 'n_wnx411');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46030439', null, null, null, null, 'n_owz412', 'n_owz412', 0, 'n_owz412', 'n_owz412');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4603043a', null, null, null, null, 'n_ep413', 'n_ep413', 0, 'n_ep413', 'n_ep413');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4603043b', null, null, null, null, 'n_xn414', 'n_xn414', 1, 'n_xn414', 'n_xn414');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4603043c', null, null, null, null, 'n_415', 'n_415', 2, 'n_415', 'n_415');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4603043d', null, null, null, null, 'n_kisg416', 'n_kisg416', 0, 'n_kisg416',
        'n_kisg416');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4603043e', null, null, null, null, 'n_bln417', 'n_bln417', 1, 'n_bln417', 'n_bln417');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4603043f', null, null, null, null, 'n_twhi418', 'n_twhi418', 2, 'n_twhi418',
        'n_twhi418');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46030440', null, null, null, null, 'n_mjta419', 'n_mjta419', 2, 'n_mjta419',
        'n_mjta419');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040441', null, null, null, null, 'n_z420', 'n_z420', 1, 'n_z420', 'n_z420');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040442', null, null, null, null, 'n_lbzdy421', 'n_lbzdy421', 1, 'n_lbzdy421',
        'n_lbzdy421');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040443', null, null, null, null, 'n_qj422', 'n_qj422', 0, 'n_qj422', 'n_qj422');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040444', null, null, null, null, 'n_xdzso423', 'n_xdzso423', 1, 'n_xdzso423',
        'n_xdzso423');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040445', null, null, null, null, 'n_pthxt424', 'n_pthxt424', 0, 'n_pthxt424',
        'n_pthxt424');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040446', null, null, null, null, 'n_duco425', 'n_duco425', 0, 'n_duco425',
        'n_duco425');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040447', null, null, null, null, 'n_onbswq426', 'n_onbswq426', 2, 'n_onbswq426',
        'n_onbswq426');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040448', null, null, null, null, 'n_c427', 'n_c427', 2, 'n_c427', 'n_c427');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040449', null, null, null, null, 'n_l428', 'n_l428', 0, 'n_l428', 'n_l428');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604044a', null, null, null, null, 'n_bd429', 'n_bd429', 2, 'n_bd429', 'n_bd429');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604044b', null, null, null, null, 'n_exq430', 'n_exq430', 0, 'n_exq430', 'n_exq430');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604044c', null, null, null, null, 'n_wqy431', 'n_wqy431', 0, 'n_wqy431', 'n_wqy431');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604044d', null, null, null, null, 'n_vkset432', 'n_vkset432', 2, 'n_vkset432',
        'n_vkset432');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604044e', null, null, null, null, 'n_433', 'n_433', 2, 'n_433', 'n_433');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604044f', null, null, null, null, 'n_a434', 'n_a434', 0, 'n_a434', 'n_a434');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040450', null, null, null, null, 'n_ytva435', 'n_ytva435', 1, 'n_ytva435',
        'n_ytva435');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040451', null, null, null, null, 'n_qxygh436', 'n_qxygh436', 2, 'n_qxygh436',
        'n_qxygh436');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040452', null, null, null, null, 'n_d437', 'n_d437', 2, 'n_d437', 'n_d437');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040453', null, null, null, null, 'n_hqr438', 'n_hqr438', 2, 'n_hqr438', 'n_hqr438');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040454', null, null, null, null, 'n_hixv439', 'n_hixv439', 2, 'n_hixv439',
        'n_hixv439');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040455', null, null, null, null, 'n_kuc440', 'n_kuc440', 2, 'n_kuc440', 'n_kuc440');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040456', null, null, null, null, 'n_edaieh441', 'n_edaieh441', 0, 'n_edaieh441',
        'n_edaieh441');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040457', null, null, null, null, 'n_442', 'n_442', 2, 'n_442', 'n_442');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040458', null, null, null, null, 'n_ysd443', 'n_ysd443', 0, 'n_ysd443', 'n_ysd443');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040459', null, null, null, null, 'n_dgfs444', 'n_dgfs444', 1, 'n_dgfs444',
        'n_dgfs444');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604045a', null, null, null, null, 'n_xzpb445', 'n_xzpb445', 1, 'n_xzpb445',
        'n_xzpb445');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604045b', null, null, null, null, 'n_izxu446', 'n_izxu446', 2, 'n_izxu446',
        'n_izxu446');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604045c', null, null, null, null, 'n_k447', 'n_k447', 2, 'n_k447', 'n_k447');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604045d', null, null, null, null, 'n_koa448', 'n_koa448', 0, 'n_koa448', 'n_koa448');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604045e', null, null, null, null, 'n_yki449', 'n_yki449', 2, 'n_yki449', 'n_yki449');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4604045f', null, null, null, null, 'n_a450', 'n_a450', 0, 'n_a450', 'n_a450');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040460', null, null, null, null, 'n_l451', 'n_l451', 0, 'n_l451', 'n_l451');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46040461', null, null, null, null, 'n_werw452', 'n_werw452', 1, 'n_werw452',
        'n_werw452');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050462', null, null, null, null, 'n_453', 'n_453', 0, 'n_453', 'n_453');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050463', null, null, null, null, 'n_tgy454', 'n_tgy454', 1, 'n_tgy454', 'n_tgy454');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050464', null, null, null, null, 'n_ppk455', 'n_ppk455', 2, 'n_ppk455', 'n_ppk455');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050465', null, null, null, null, 'n_l456', 'n_l456', 2, 'n_l456', 'n_l456');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050466', null, null, null, null, 'n_ov457', 'n_ov457', 2, 'n_ov457', 'n_ov457');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050467', null, null, null, null, 'n_abac458', 'n_abac458', 1, 'n_abac458',
        'n_abac458');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050468', null, null, null, null, 'n_foto459', 'n_foto459', 1, 'n_foto459',
        'n_foto459');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050469', null, null, null, null, 'n_u460', 'n_u460', 2, 'n_u460', 'n_u460');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4605046a', null, null, null, null, 'n_uivc461', 'n_uivc461', 2, 'n_uivc461',
        'n_uivc461');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4605046b', null, null, null, null, 'n_xc462', 'n_xc462', 2, 'n_xc462', 'n_xc462');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4605046c', null, null, null, null, 'n_mgp463', 'n_mgp463', 1, 'n_mgp463', 'n_mgp463');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4605046d', null, null, null, null, 'n_vuzrb464', 'n_vuzrb464', 0, 'n_vuzrb464',
        'n_vuzrb464');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4605046e', null, null, null, null, 'n_se465', 'n_se465', 2, 'n_se465', 'n_se465');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4605046f', null, null, null, null, 'n_smlp466', 'n_smlp466', 0, 'n_smlp466',
        'n_smlp466');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050470', null, null, null, null, 'n_nnmofgv467', 'n_nnmofgv467', 0, 'n_nnmofgv467',
        'n_nnmofgv467');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050471', null, null, null, null, 'n_zgc468', 'n_zgc468', 1, 'n_zgc468', 'n_zgc468');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050472', null, null, null, null, 'n_pg469', 'n_pg469', 0, 'n_pg469', 'n_pg469');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050473', null, null, null, null, 'n_omait470', 'n_omait470', 0, 'n_omait470',
        'n_omait470');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050474', null, null, null, null, 'n_pk471', 'n_pk471', 2, 'n_pk471', 'n_pk471');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050475', null, null, null, null, 'n_i472', 'n_i472', 0, 'n_i472', 'n_i472');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050476', null, null, null, null, 'n_e473', 'n_e473', 1, 'n_e473', 'n_e473');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050477', null, null, null, null, 'n_474', 'n_474', 0, 'n_474', 'n_474');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050478', null, null, null, null, 'n_cgx475', 'n_cgx475', 1, 'n_cgx475', 'n_cgx475');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46050479', null, null, null, null, 'n_ofx476', 'n_ofx476', 2, 'n_ofx476', 'n_ofx476');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4605047a', null, null, null, null, 'n_ypz477', 'n_ypz477', 2, 'n_ypz477', 'n_ypz477');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4605047b', null, null, null, null, 'n_bxz478', 'n_bxz478', 1, 'n_bxz478', 'n_bxz478');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606047c', null, null, null, null, 'n_b479', 'n_b479', 0, 'n_b479', 'n_b479');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606047d', null, null, null, null, 'n_iv480', 'n_iv480', 1, 'n_iv480', 'n_iv480');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606047e', null, null, null, null, 'n_481', 'n_481', 0, 'n_481', 'n_481');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606047f', null, null, null, null, 'n_putj482', 'n_putj482', 1, 'n_putj482',
        'n_putj482');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060480', null, null, null, null, 'n_hviu483', 'n_hviu483', 2, 'n_hviu483',
        'n_hviu483');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060481', null, null, null, null, 'n_x484', 'n_x484', 2, 'n_x484', 'n_x484');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060482', null, null, null, null, 'n_fuaf485', 'n_fuaf485', 1, 'n_fuaf485',
        'n_fuaf485');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060483', null, null, null, null, 'n_pn486', 'n_pn486', 0, 'n_pn486', 'n_pn486');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060484', null, null, null, null, 'n_x487', 'n_x487', 2, 'n_x487', 'n_x487');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060485', null, null, null, null, 'n_vjje488', 'n_vjje488', 0, 'n_vjje488',
        'n_vjje488');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060486', null, null, null, null, 'n_x489', 'n_x489', 0, 'n_x489', 'n_x489');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060487', null, null, null, null, 'n_mfym490', 'n_mfym490', 1, 'n_mfym490',
        'n_mfym490');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060488', null, null, null, null, 'n_iazlmb491', 'n_iazlmb491', 0, 'n_iazlmb491',
        'n_iazlmb491');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060489', null, null, null, null, 'n_sl492', 'n_sl492', 1, 'n_sl492', 'n_sl492');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606048a', null, null, null, null, 'n_x493', 'n_x493', 0, 'n_x493', 'n_x493');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606048b', null, null, null, null, 'n_kgdut494', 'n_kgdut494', 1, 'n_kgdut494',
        'n_kgdut494');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606048c', null, null, null, null, 'n_ajqr495', 'n_ajqr495', 2, 'n_ajqr495',
        'n_ajqr495');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606048d', null, null, null, null, 'n_rqhx496', 'n_rqhx496', 2, 'n_rqhx496',
        'n_rqhx496');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606048e', null, null, null, null, 'n_sqd497', 'n_sqd497', 2, 'n_sqd497', 'n_sqd497');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa4606048f', null, null, null, null, 'n_pn498', 'n_pn498', 0, 'n_pn498', 'n_pn498');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060490', null, null, null, null, 'n_499', 'n_499', 1, 'n_499', 'n_499');
INSERT INTO t_s_base_user (id, create_by, create_time, update_by, update_time, password, real_name, status, user_key,
                           username)
VALUES ('402894817e70aa23017e70aa46060491', null, null, null, null, 'n_plw500', 'n_plw500', 2, 'n_plw500', 'n_plw500');


create table t_s_province
(
    id          varchar(64) not null
        primary key,
    create_by   varchar(64) null,
    create_time datetime(6) null,
    update_by   varchar(64) null,
    update_time datetime(6) null,
    code        varchar(20) null,
    name        varchar(50) null,
    parent_id   varchar(64) null,
    type        int         null,
    constraint FKa5ebwhcrqqhpicig14exc8xu6
        foreign key (parent_id) references t_s_province (id)
);

INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3359000a', null, '2022-01-19 12:48:29.521145', null, null, 'P_LNKV0', 'P_LNKV0', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa337a000b', null, '2022-01-19 12:48:29.521145', null, null, 'C_JM0', 'C_JM0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3381000c', null, '2022-01-19 12:48:29.521145', null, null, 'C_J0', 'C_J0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3389000d', null, '2022-01-19 12:48:29.521145', null, null, 'C_0', 'C_0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3392000e', null, '2022-01-19 12:48:29.521145', null, null, 'C_XBJP0', 'C_XBJP0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa339a000f', null, '2022-01-19 12:48:29.521145', null, null, 'C_LWSQ0', 'C_LWSQ0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33a20010', null, '2022-01-19 12:48:29.521145', null, null, 'C_B0', 'C_B0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33aa0011', null, '2022-01-19 12:48:29.521145', null, null, 'C_0', 'C_0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33b00012', null, '2022-01-19 12:48:29.521145', null, null, 'C_C0', 'C_C0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33b70013', null, '2022-01-19 12:48:29.521145', null, null, 'C_T0', 'C_T0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33be0014', null, '2022-01-19 12:48:29.521145', null, null, 'C_VGLF0', 'C_VGLF0',
        '402894817e70aa23017e70aa3359000a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33c60015', null, '2022-01-19 12:48:29.521145', null, null, 'P_G1', 'P_G1', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33cd0016', null, '2022-01-19 12:48:29.521145', null, null, 'C_P1', 'C_P1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33d30017', null, '2022-01-19 12:48:29.521145', null, null, 'C_AXOU1', 'C_AXOU1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33dc0018', null, '2022-01-19 12:48:29.521145', null, null, 'C_VPGVO1', 'C_VPGVO1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33e30019', null, '2022-01-19 12:48:29.521145', null, null, 'C_G1', 'C_G1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33ea001a', null, '2022-01-19 12:48:29.521145', null, null, 'C_UQ1', 'C_UQ1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33f1001b', null, '2022-01-19 12:48:29.521145', null, null, 'C_RCR1', 'C_RCR1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa33f9001c', null, '2022-01-19 12:48:29.521145', null, null, 'C_1', 'C_1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3403001d', null, '2022-01-19 12:48:29.521145', null, null, 'C_CUD1', 'C_CUD1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa340a001e', null, '2022-01-19 12:48:29.521145', null, null, 'C_F1', 'C_F1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3412001f', null, '2022-01-19 12:48:29.521145', null, null, 'C_GXF1', 'C_GXF1',
        '402894817e70aa23017e70aa33c60015', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa341a0020', null, '2022-01-19 12:48:29.521145', null, null, 'P_GUPE2', 'P_GUPE2', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34220021', null, '2022-01-19 12:48:29.521145', null, null, 'C_H2', 'C_H2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34280022', null, '2022-01-19 12:48:29.521145', null, null, 'C_Y2', 'C_Y2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34310023', null, '2022-01-19 12:48:29.521145', null, null, 'C_2', 'C_2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34370024', null, '2022-01-19 12:48:29.521145', null, null, 'C_QAUHDO2', 'C_QAUHDO2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa343f0025', null, '2022-01-19 12:48:29.521145', null, null, 'C_2', 'C_2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34450026', null, '2022-01-19 12:48:29.521145', null, null, 'C_GYK2', 'C_GYK2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa344e0027', null, '2022-01-19 12:48:29.521145', null, null, 'C_PNK2', 'C_PNK2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34550028', null, '2022-01-19 12:48:29.521145', null, null, 'C_MCMF2', 'C_MCMF2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa345d0029', null, '2022-01-19 12:48:29.521145', null, null, 'C_ULAWIM2', 'C_ULAWIM2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3463002a', null, '2022-01-19 12:48:29.521145', null, null, 'C_NYUPQ2', 'C_NYUPQ2',
        '402894817e70aa23017e70aa341a0020', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa346c002b', null, '2022-01-19 12:48:29.521145', null, null, 'P_IRSV3', 'P_IRSV3', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3476002c', null, '2022-01-19 12:48:29.521145', null, null, 'C_R3', 'C_R3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa347f002d', null, '2022-01-19 12:48:29.521145', null, null, 'C_MZ3', 'C_MZ3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3488002e', null, '2022-01-19 12:48:29.521145', null, null, 'C_NSOKHK3', 'C_NSOKHK3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3491002f', null, '2022-01-19 12:48:29.521145', null, null, 'C_FA3', 'C_FA3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34990030', null, '2022-01-19 12:48:29.521145', null, null, 'C_3', 'C_3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa349e0031', null, '2022-01-19 12:48:29.521145', null, null, 'C_CPN3', 'C_CPN3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34a50032', null, '2022-01-19 12:48:29.521145', null, null, 'C_TCA3', 'C_TCA3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34ac0033', null, '2022-01-19 12:48:29.521145', null, null, 'C_HJSIL3', 'C_HJSIL3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34b20034', null, '2022-01-19 12:48:29.521145', null, null, 'C_AH3', 'C_AH3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34b80035', null, '2022-01-19 12:48:29.521145', null, null, 'C_LNSM3', 'C_LNSM3',
        '402894817e70aa23017e70aa346c002b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34be0036', null, '2022-01-19 12:48:29.521145', null, null, 'P_SA4', 'P_SA4', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34c50037', null, '2022-01-19 12:48:29.521145', null, null, 'C_I4', 'C_I4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34cc0038', null, '2022-01-19 12:48:29.521145', null, null, 'C_QL4', 'C_QL4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34d10039', null, '2022-01-19 12:48:29.521145', null, null, 'C_YCKW4', 'C_YCKW4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34d9003a', null, '2022-01-19 12:48:29.521145', null, null, 'C_VFGI4', 'C_VFGI4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34de003b', null, '2022-01-19 12:48:29.521145', null, null, 'C_KW4', 'C_KW4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34e6003c', null, '2022-01-19 12:48:29.521145', null, null, 'C_CJUG4', 'C_CJUG4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34ec003d', null, '2022-01-19 12:48:29.521145', null, null, 'C_XDP4', 'C_XDP4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34f4003e', null, '2022-01-19 12:48:29.521145', null, null, 'C_4', 'C_4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa34fa003f', null, '2022-01-19 12:48:29.521145', null, null, 'C_BXUFIT4', 'C_BXUFIT4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35010040', null, '2022-01-19 12:48:29.521145', null, null, 'C_DWRW4', 'C_DWRW4',
        '402894817e70aa23017e70aa34be0036', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35070041', null, '2022-01-19 12:48:29.521145', null, null, 'P_POLBM5', 'P_POLBM5',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa350d0042', null, '2022-01-19 12:48:29.521145', null, null, 'C_HQZYEY5', 'C_HQZYEY5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35120043', null, '2022-01-19 12:48:29.521145', null, null, 'C_HIBFX5', 'C_HIBFX5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35190044', null, '2022-01-19 12:48:29.521145', null, null, 'C_QPWES5', 'C_QPWES5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa351e0045', null, '2022-01-19 12:48:29.521145', null, null, 'C_5', 'C_5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35230046', null, '2022-01-19 12:48:29.521145', null, null, 'C_QKA5', 'C_QKA5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35290047', null, '2022-01-19 12:48:29.521145', null, null, 'C_VE5', 'C_VE5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35300048', null, '2022-01-19 12:48:29.521145', null, null, 'C_X5', 'C_X5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35360049', null, '2022-01-19 12:48:29.521145', null, null, 'C_QCVY5', 'C_QCVY5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa353b004a', null, '2022-01-19 12:48:29.521145', null, null, 'C_W5', 'C_W5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3542004b', null, '2022-01-19 12:48:29.521145', null, null, 'C_QAR5', 'C_QAR5',
        '402894817e70aa23017e70aa35070041', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3548004c', null, '2022-01-19 12:48:29.521145', null, null, 'P_QKB6', 'P_QKB6', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3550004d', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZEA6', 'C_ZEA6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3556004e', null, '2022-01-19 12:48:29.521145', null, null, 'C_6', 'C_6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa355d004f', null, '2022-01-19 12:48:29.521145', null, null, 'C_RPU6', 'C_RPU6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35640050', null, '2022-01-19 12:48:29.521145', null, null, 'C_NR6', 'C_NR6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35680051', null, '2022-01-19 12:48:29.521145', null, null, 'C_JWN6', 'C_JWN6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35720052', null, '2022-01-19 12:48:29.521145', null, null, 'C_VMI6', 'C_VMI6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa357a0053', null, '2022-01-19 12:48:29.521145', null, null, 'C_O6', 'C_O6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35840054', null, '2022-01-19 12:48:29.521145', null, null, 'C_JRUX6', 'C_JRUX6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa358d0055', null, '2022-01-19 12:48:29.521145', null, null, 'C_UTPF6', 'C_UTPF6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35920056', null, '2022-01-19 12:48:29.521145', null, null, 'C_VFWN6', 'C_VFWN6',
        '402894817e70aa23017e70aa3548004c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35980057', null, '2022-01-19 12:48:29.521145', null, null, 'P_7', 'P_7', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa359f0058', null, '2022-01-19 12:48:29.521145', null, null, 'C_XSW7', 'C_XSW7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35a50059', null, '2022-01-19 12:48:29.521145', null, null, 'C_DLHK7', 'C_DLHK7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35ab005a', null, '2022-01-19 12:48:29.521145', null, null, 'C_AFFN7', 'C_AFFN7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35b2005b', null, '2022-01-19 12:48:29.521145', null, null, 'C_PLJPJV7', 'C_PLJPJV7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35b8005c', null, '2022-01-19 12:48:29.521145', null, null, 'C_QCN7', 'C_QCN7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35be005d', null, '2022-01-19 12:48:29.521145', null, null, 'C_N7', 'C_N7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35c4005e', null, '2022-01-19 12:48:29.521145', null, null, 'C_K7', 'C_K7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35cb005f', null, '2022-01-19 12:48:29.521145', null, null, 'C_DC7', 'C_DC7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35d10060', null, '2022-01-19 12:48:29.521145', null, null, 'C_G7', 'C_G7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35d80061', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZSPZFV7', 'C_ZSPZFV7',
        '402894817e70aa23017e70aa35980057', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35dd0062', null, '2022-01-19 12:48:29.521145', null, null, 'P_S8', 'P_S8', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35e20063', null, '2022-01-19 12:48:29.521145', null, null, 'C_PI8', 'C_PI8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35e80064', null, '2022-01-19 12:48:29.521145', null, null, 'C_MCYC8', 'C_MCYC8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35ee0065', null, '2022-01-19 12:48:29.521145', null, null, 'C_YNO8', 'C_YNO8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35f40066', null, '2022-01-19 12:48:29.521145', null, null, 'C_TOHEHM8', 'C_TOHEHM8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35f90067', null, '2022-01-19 12:48:29.521145', null, null, 'C_DXNE8', 'C_DXNE8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa35fe0068', null, '2022-01-19 12:48:29.521145', null, null, 'C_KJY8', 'C_KJY8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36050069', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZEP8', 'C_ZEP8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa360a006a', null, '2022-01-19 12:48:29.521145', null, null, 'C_SZSE8', 'C_SZSE8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa360e006b', null, '2022-01-19 12:48:29.521145', null, null, 'C_D8', 'C_D8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3615006c', null, '2022-01-19 12:48:29.521145', null, null, 'C_G8', 'C_G8',
        '402894817e70aa23017e70aa35dd0062', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa361a006d', null, '2022-01-19 12:48:29.521145', null, null, 'P_B9', 'P_B9', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3620006e', null, '2022-01-19 12:48:29.521145', null, null, 'C_DAYGK9', 'C_DAYGK9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3624006f', null, '2022-01-19 12:48:29.521145', null, null, 'C_AFP9', 'C_AFP9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36280070', null, '2022-01-19 12:48:29.521145', null, null, 'C_JYX9', 'C_JYX9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36310071', null, '2022-01-19 12:48:29.521145', null, null, 'C_M9', 'C_M9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36380072', null, '2022-01-19 12:48:29.521145', null, null, 'C_X9', 'C_X9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa363e0073', null, '2022-01-19 12:48:29.521145', null, null, 'C_NF9', 'C_NF9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36450074', null, '2022-01-19 12:48:29.521145', null, null, 'C_YY9', 'C_YY9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa364a0075', null, '2022-01-19 12:48:29.521145', null, null, 'C_E9', 'C_E9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36500076', null, '2022-01-19 12:48:29.521145', null, null, 'C_IQFNT9', 'C_IQFNT9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36560077', null, '2022-01-19 12:48:29.521145', null, null, 'C_A9', 'C_A9',
        '402894817e70aa23017e70aa361a006d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa365b0078', null, '2022-01-19 12:48:29.521145', null, null, 'P_EO10', 'P_EO10', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36620079', null, '2022-01-19 12:48:29.521145', null, null, 'C_V10', 'C_V10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3668007a', null, '2022-01-19 12:48:29.521145', null, null, 'C_VEAZE10', 'C_VEAZE10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3673007b', null, '2022-01-19 12:48:29.521145', null, null, 'C_I10', 'C_I10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3678007c', null, '2022-01-19 12:48:29.521145', null, null, 'C_MFR10', 'C_MFR10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3681007d', null, '2022-01-19 12:48:29.521145', null, null, 'C_BFX10', 'C_BFX10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3688007e', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZT10', 'C_ZT10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa368f007f', null, '2022-01-19 12:48:29.521145', null, null, 'C_W10', 'C_W10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36960080', null, '2022-01-19 12:48:29.521145', null, null, 'C_EQB10', 'C_EQB10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa369c0081', null, '2022-01-19 12:48:29.521145', null, null, 'C_AMK10', 'C_AMK10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36a30082', null, '2022-01-19 12:48:29.521145', null, null, 'C_DF10', 'C_DF10',
        '402894817e70aa23017e70aa365b0078', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36a80083', null, '2022-01-19 12:48:29.521145', null, null, 'P_ZUW11', 'P_ZUW11', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36af0084', null, '2022-01-19 12:48:29.521145', null, null, 'C_11', 'C_11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36b30085', null, '2022-01-19 12:48:29.521145', null, null, 'C_SFM11', 'C_SFM11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36ba0086', null, '2022-01-19 12:48:29.521145', null, null, 'C_MHZ11', 'C_MHZ11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36c00087', null, '2022-01-19 12:48:29.521145', null, null, 'C_CBL11', 'C_CBL11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36c60088', null, '2022-01-19 12:48:29.521145', null, null, 'C_E11', 'C_E11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36cb0089', null, '2022-01-19 12:48:29.521145', null, null, 'C_AB11', 'C_AB11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36d2008a', null, '2022-01-19 12:48:29.521145', null, null, 'C_XJASC11', 'C_XJASC11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36d7008b', null, '2022-01-19 12:48:29.521145', null, null, 'C_GQGC11', 'C_GQGC11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36db008c', null, '2022-01-19 12:48:29.521145', null, null, 'C_JIN11', 'C_JIN11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36e1008d', null, '2022-01-19 12:48:29.521145', null, null, 'C_NG11', 'C_NG11',
        '402894817e70aa23017e70aa36a80083', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36e5008e', null, '2022-01-19 12:48:29.521145', null, null, 'P_DCN12', 'P_DCN12', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36eb008f', null, '2022-01-19 12:48:29.521145', null, null, 'C_NE12', 'C_NE12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36ef0090', null, '2022-01-19 12:48:29.521145', null, null, 'C_J12', 'C_J12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36f50091', null, '2022-01-19 12:48:29.521145', null, null, 'C_JCV12', 'C_JCV12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa36fb0092', null, '2022-01-19 12:48:29.521145', null, null, 'C_E12', 'C_E12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37000093', null, '2022-01-19 12:48:29.521145', null, null, 'C_D12', 'C_D12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37050094', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZEVJZ12', 'C_ZEVJZ12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa370a0095', null, '2022-01-19 12:48:29.521145', null, null, 'C_YUKYQ12', 'C_YUKYQ12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa370f0096', null, '2022-01-19 12:48:29.521145', null, null, 'C_12', 'C_12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37140097', null, '2022-01-19 12:48:29.521145', null, null, 'C_YR12', 'C_YR12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa371b0098', null, '2022-01-19 12:48:29.521145', null, null, 'C_DDVW12', 'C_DDVW12',
        '402894817e70aa23017e70aa36e5008e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37200099', null, '2022-01-19 12:48:29.521145', null, null, 'P_UIEP13', 'P_UIEP13',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3725009a', null, '2022-01-19 12:48:29.521145', null, null, 'C_HROQWJ13', 'C_HROQWJ13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa372a009b', null, '2022-01-19 12:48:29.521145', null, null, 'C_YXJR13', 'C_YXJR13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3730009c', null, '2022-01-19 12:48:29.521145', null, null, 'C_LTZ13', 'C_LTZ13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3735009d', null, '2022-01-19 12:48:29.521145', null, null, 'C_JEXH13', 'C_JEXH13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa373c009e', null, '2022-01-19 12:48:29.521145', null, null, 'C_CNOGZ13', 'C_CNOGZ13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3742009f', null, '2022-01-19 12:48:29.521145', null, null, 'C_XBSXG13', 'C_XBSXG13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa374700a0', null, '2022-01-19 12:48:29.521145', null, null, 'C_U13', 'C_U13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa374b00a1', null, '2022-01-19 12:48:29.521145', null, null, 'C_SG13', 'C_SG13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa375300a2', null, '2022-01-19 12:48:29.521145', null, null, 'C_OQS13', 'C_OQS13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa375700a3', null, '2022-01-19 12:48:29.521145', null, null, 'C_BYNV13', 'C_BYNV13',
        '402894817e70aa23017e70aa37200099', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa375e00a4', null, '2022-01-19 12:48:29.521145', null, null, 'P_G14', 'P_G14', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa376300a5', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZKS14', 'C_ZKS14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa376900a6', null, '2022-01-19 12:48:29.521145', null, null, 'C_D14', 'C_D14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa377000a7', null, '2022-01-19 12:48:29.521145', null, null, 'C_EURGI14', 'C_EURGI14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa377600a8', null, '2022-01-19 12:48:29.521145', null, null, 'C_YGWP14', 'C_YGWP14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa377c00a9', null, '2022-01-19 12:48:29.521145', null, null, 'C_PIZKU14', 'C_PIZKU14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa378200aa', null, '2022-01-19 12:48:29.521145', null, null, 'C_PQ14', 'C_PQ14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa378800ab', null, '2022-01-19 12:48:29.521145', null, null, 'C_N14', 'C_N14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa379000ac', null, '2022-01-19 12:48:29.521145', null, null, 'C_SB14', 'C_SB14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa379600ad', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZRBF14', 'C_ZRBF14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa379c00ae', null, '2022-01-19 12:48:29.521145', null, null, 'C_NE14', 'C_NE14',
        '402894817e70aa23017e70aa375e00a4', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37a100af', null, '2022-01-19 12:48:29.521145', null, null, 'P_MH15', 'P_MH15', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37a900b0', null, '2022-01-19 12:48:29.521145', null, null, 'C_LFQX15', 'C_LFQX15',
        '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37af00b1', null, '2022-01-19 12:48:29.521145', null, null, 'C_YMNC15', 'C_YMNC15',
        '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37b300b2', null, '2022-01-19 12:48:29.521145', null, null, 'C_QZFI15', 'C_QZFI15',
        '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37b800b3', null, '2022-01-19 12:48:29.521145', null, null, 'C_MUFDGRV15',
        'C_MUFDGRV15', '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37bc00b4', null, '2022-01-19 12:48:29.521145', null, null, 'C_15', 'C_15',
        '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37be00b5', null, '2022-01-19 12:48:29.521145', null, null, 'C_JY15', 'C_JY15',
        '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37c500b6', null, '2022-01-19 12:48:29.521145', null, null, 'C_FL15', 'C_FL15',
        '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37cb00b7', null, '2022-01-19 12:48:29.521145', null, null, 'C_BCXQIE15', 'C_BCXQIE15',
        '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37d000b8', null, '2022-01-19 12:48:29.521145', null, null, 'C_BESUN15', 'C_BESUN15',
        '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37d500b9', null, '2022-01-19 12:48:29.521145', null, null, 'C_WT15', 'C_WT15',
        '402894817e70aa23017e70aa37a100af', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37da00ba', null, '2022-01-19 12:48:29.521145', null, null, 'P_AJY16', 'P_AJY16', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37de00bb', null, '2022-01-19 12:48:29.521145', null, null, 'C_S16', 'C_S16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37e300bc', null, '2022-01-19 12:48:29.521145', null, null, 'C_SJZOT16', 'C_SJZOT16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37e800bd', null, '2022-01-19 12:48:29.521145', null, null, 'C_BA16', 'C_BA16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37ed00be', null, '2022-01-19 12:48:29.521145', null, null, 'C_ML16', 'C_ML16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37f200bf', null, '2022-01-19 12:48:29.521145', null, null, 'C_D16', 'C_D16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37f800c0', null, '2022-01-19 12:48:29.521145', null, null, 'C_PFTT16', 'C_PFTT16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa37fe00c1', null, '2022-01-19 12:48:29.521145', null, null, 'C_OV16', 'C_OV16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa380300c2', null, '2022-01-19 12:48:29.521145', null, null, 'C_JOKS16', 'C_JOKS16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa380800c3', null, '2022-01-19 12:48:29.521145', null, null, 'C_16', 'C_16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa380d00c4', null, '2022-01-19 12:48:29.521145', null, null, 'C_F16', 'C_F16',
        '402894817e70aa23017e70aa37da00ba', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa381400c5', null, '2022-01-19 12:48:29.521145', null, null, 'P_LINXG17', 'P_LINXG17',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa381a00c6', null, '2022-01-19 12:48:29.521145', null, null, 'C_JD17', 'C_JD17',
        '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa381e00c7', null, '2022-01-19 12:48:29.521145', null, null, 'C_C17', 'C_C17',
        '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa382500c8', null, '2022-01-19 12:48:29.521145', null, null, 'C_17', 'C_17',
        '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa382b00c9', null, '2022-01-19 12:48:29.521145', null, null, 'C_K17', 'C_K17',
        '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa383100ca', null, '2022-01-19 12:48:29.521145', null, null, 'C_BCP17', 'C_BCP17',
        '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa383600cb', null, '2022-01-19 12:48:29.521145', null, null, 'C_DJ17', 'C_DJ17',
        '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa383b00cc', null, '2022-01-19 12:48:29.521145', null, null, 'C_YR17', 'C_YR17',
        '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa384200cd', null, '2022-01-19 12:48:29.521145', null, null, 'C_JVERDRBU17',
        'C_JVERDRBU17', '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa384700ce', null, '2022-01-19 12:48:29.521145', null, null, 'C_KK17', 'C_KK17',
        '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa384c00cf', null, '2022-01-19 12:48:29.521145', null, null, 'C_HSBNMU17', 'C_HSBNMU17',
        '402894817e70aa23017e70aa381400c5', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa385200d0', null, '2022-01-19 12:48:29.521145', null, null, 'P_18', 'P_18', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa385700d1', null, '2022-01-19 12:48:29.521145', null, null, 'C_U18', 'C_U18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa385c00d2', null, '2022-01-19 12:48:29.521145', null, null, 'C_AM18', 'C_AM18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa386200d3', null, '2022-01-19 12:48:29.521145', null, null, 'C_H18', 'C_H18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa386700d4', null, '2022-01-19 12:48:29.521145', null, null, 'C_XM18', 'C_XM18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa386e00d5', null, '2022-01-19 12:48:29.521145', null, null, 'C_DV18', 'C_DV18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa387100d6', null, '2022-01-19 12:48:29.521145', null, null, 'C_YA18', 'C_YA18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa387900d7', null, '2022-01-19 12:48:29.521145', null, null, 'C_18', 'C_18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa387f00d8', null, '2022-01-19 12:48:29.521145', null, null, 'C_CCMPOY18', 'C_CCMPOY18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa388400d9', null, '2022-01-19 12:48:29.521145', null, null, 'C_EDNV18', 'C_EDNV18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa388a00da', null, '2022-01-19 12:48:29.521145', null, null, 'C_FYI18', 'C_FYI18',
        '402894817e70aa23017e70aa385200d0', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa389000db', null, '2022-01-19 12:48:29.521145', null, null, 'P_NFNO19', 'P_NFNO19',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa389a00dc', null, '2022-01-19 12:48:29.521145', null, null, 'C_BSJE19', 'C_BSJE19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38a000dd', null, '2022-01-19 12:48:29.521145', null, null, 'C_SH19', 'C_SH19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38a500de', null, '2022-01-19 12:48:29.521145', null, null, 'C_AHDKCF19', 'C_AHDKCF19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38aa00df', null, '2022-01-19 12:48:29.521145', null, null, 'C_B19', 'C_B19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38ae00e0', null, '2022-01-19 12:48:29.521145', null, null, 'C_XZXOKP19', 'C_XZXOKP19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38b500e1', null, '2022-01-19 12:48:29.521145', null, null, 'C_GJYA19', 'C_GJYA19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38bb00e2', null, '2022-01-19 12:48:29.521145', null, null, 'C_UJU19', 'C_UJU19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38c000e3', null, '2022-01-19 12:48:29.521145', null, null, 'C_U19', 'C_U19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38c500e4', null, '2022-01-19 12:48:29.521145', null, null, 'C_WSO19', 'C_WSO19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38cb00e5', null, '2022-01-19 12:48:29.521145', null, null, 'C_KXY19', 'C_KXY19',
        '402894817e70aa23017e70aa389000db', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38d100e6', null, '2022-01-19 12:48:29.521145', null, null, 'P_ZKFC20', 'P_ZKFC20',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38d800e7', null, '2022-01-19 12:48:29.521145', null, null, 'C_TDI20', 'C_TDI20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38dc00e8', null, '2022-01-19 12:48:29.521145', null, null, 'C_20', 'C_20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38e100e9', null, '2022-01-19 12:48:29.521145', null, null, 'C_PWO20', 'C_PWO20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38e700ea', null, '2022-01-19 12:48:29.521145', null, null, 'C_B20', 'C_B20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38ec00eb', null, '2022-01-19 12:48:29.521145', null, null, 'C_TOJA20', 'C_TOJA20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38f100ec', null, '2022-01-19 12:48:29.521145', null, null, 'C_20', 'C_20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38f600ed', null, '2022-01-19 12:48:29.521145', null, null, 'C_20', 'C_20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa38fb00ee', null, '2022-01-19 12:48:29.521145', null, null, 'C_JZ20', 'C_JZ20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa390100ef', null, '2022-01-19 12:48:29.521145', null, null, 'C_20', 'C_20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa390700f0', null, '2022-01-19 12:48:29.521145', null, null, 'C_Y20', 'C_Y20',
        '402894817e70aa23017e70aa38d100e6', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa390b00f1', null, '2022-01-19 12:48:29.521145', null, null, 'P_YJSNB21', 'P_YJSNB21',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa391100f2', null, '2022-01-19 12:48:29.521145', null, null, 'C_21', 'C_21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa391500f3', null, '2022-01-19 12:48:29.521145', null, null, 'C_WMF21', 'C_WMF21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa391b00f4', null, '2022-01-19 12:48:29.521145', null, null, 'C_TXIYDR21', 'C_TXIYDR21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa392200f5', null, '2022-01-19 12:48:29.521145', null, null, 'C_HR21', 'C_HR21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa392900f6', null, '2022-01-19 12:48:29.521145', null, null, 'C_G21', 'C_G21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa392d00f7', null, '2022-01-19 12:48:29.521145', null, null, 'C_KVC21', 'C_KVC21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa393300f8', null, '2022-01-19 12:48:29.521145', null, null, 'C_MLP21', 'C_MLP21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa393a00f9', null, '2022-01-19 12:48:29.521145', null, null, 'C_KU21', 'C_KU21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa393e00fa', null, '2022-01-19 12:48:29.521145', null, null, 'C_OP21', 'C_OP21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa394500fb', null, '2022-01-19 12:48:29.521145', null, null, 'C_21', 'C_21',
        '402894817e70aa23017e70aa390b00f1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa394b00fc', null, '2022-01-19 12:48:29.521145', null, null, 'P_QRM22', 'P_QRM22', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa395000fd', null, '2022-01-19 12:48:29.521145', null, null, 'C_EYVJ22', 'C_EYVJ22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa395500fe', null, '2022-01-19 12:48:29.521145', null, null, 'C_22', 'C_22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa395a00ff', null, '2022-01-19 12:48:29.521145', null, null, 'C_V22', 'C_V22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa395f0100', null, '2022-01-19 12:48:29.521145', null, null, 'C_BG22', 'C_BG22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39660101', null, '2022-01-19 12:48:29.521145', null, null, 'C_EWSWAJ22', 'C_EWSWAJ22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa396c0102', null, '2022-01-19 12:48:29.521145', null, null, 'C_WSN22', 'C_WSN22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39700103', null, '2022-01-19 12:48:29.521145', null, null, 'C_WAH22', 'C_WAH22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39760104', null, '2022-01-19 12:48:29.521145', null, null, 'C_QUWC22', 'C_QUWC22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa397d0105', null, '2022-01-19 12:48:29.521145', null, null, 'C_TOT22', 'C_TOT22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39840106', null, '2022-01-19 12:48:29.521145', null, null, 'C_22', 'C_22',
        '402894817e70aa23017e70aa394b00fc', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa398b0107', null, '2022-01-19 12:48:29.521145', null, null, 'P_H23', 'P_H23', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39930108', null, '2022-01-19 12:48:29.521145', null, null, 'C_CWL23', 'C_CWL23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39980109', null, '2022-01-19 12:48:29.521145', null, null, 'C_23', 'C_23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa399f010a', null, '2022-01-19 12:48:29.521145', null, null, 'C_BF23', 'C_BF23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39a4010b', null, '2022-01-19 12:48:29.521145', null, null, 'C_DH23', 'C_DH23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39a9010c', null, '2022-01-19 12:48:29.521145', null, null, 'C_DTA23', 'C_DTA23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39ae010d', null, '2022-01-19 12:48:29.521145', null, null, 'C_CIIT23', 'C_CIIT23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39b0010e', null, '2022-01-19 12:48:29.521145', null, null, 'C_TS23', 'C_TS23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39b8010f', null, '2022-01-19 12:48:29.521145', null, null, 'C_VF23', 'C_VF23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39bd0110', null, '2022-01-19 12:48:29.521145', null, null, 'C_Y23', 'C_Y23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39c30111', null, '2022-01-19 12:48:29.521145', null, null, 'C_KO23', 'C_KO23',
        '402894817e70aa23017e70aa398b0107', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39c70112', null, '2022-01-19 12:48:29.521145', null, null, 'P_J24', 'P_J24', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39cc0113', null, '2022-01-19 12:48:29.521145', null, null, 'C_24', 'C_24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39d20114', null, '2022-01-19 12:48:29.521145', null, null, 'C_WWCUE24', 'C_WWCUE24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39d60115', null, '2022-01-19 12:48:29.521145', null, null, 'C_GOAO24', 'C_GOAO24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39da0116', null, '2022-01-19 12:48:29.521145', null, null, 'C_YA24', 'C_YA24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39e10117', null, '2022-01-19 12:48:29.521145', null, null, 'C_BJ24', 'C_BJ24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39e60118', null, '2022-01-19 12:48:29.521145', null, null, 'C_OKXNB24', 'C_OKXNB24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39e90119', null, '2022-01-19 12:48:29.521145', null, null, 'C_AQ24', 'C_AQ24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39ef011a', null, '2022-01-19 12:48:29.521145', null, null, 'C_Q24', 'C_Q24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39f4011b', null, '2022-01-19 12:48:29.521145', null, null, 'C_ELQ24', 'C_ELQ24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa39fa011c', null, '2022-01-19 12:48:29.521145', null, null, 'C_OW24', 'C_OW24',
        '402894817e70aa23017e70aa39c70112', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a01011d', null, '2022-01-19 12:48:29.521145', null, null, 'P_VNI25', 'P_VNI25', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a05011e', null, '2022-01-19 12:48:29.521145', null, null, 'C_O25', 'C_O25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a0a011f', null, '2022-01-19 12:48:29.521145', null, null, 'C_D25', 'C_D25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a100120', null, '2022-01-19 12:48:29.521145', null, null, 'C_FR25', 'C_FR25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a140121', null, '2022-01-19 12:48:29.521145', null, null, 'C_X25', 'C_X25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a1a0122', null, '2022-01-19 12:48:29.521145', null, null, 'C_AA25', 'C_AA25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a1f0123', null, '2022-01-19 12:48:29.521145', null, null, 'C_IPPF25', 'C_IPPF25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a240124', null, '2022-01-19 12:48:29.521145', null, null, 'C_VMSQ25', 'C_VMSQ25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a290125', null, '2022-01-19 12:48:29.521145', null, null, 'C_QVYFD25', 'C_QVYFD25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a2e0126', null, '2022-01-19 12:48:29.521145', null, null, 'C_IO25', 'C_IO25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a340127', null, '2022-01-19 12:48:29.521145', null, null, 'C_BHFEB25', 'C_BHFEB25',
        '402894817e70aa23017e70aa3a01011d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a390128', null, '2022-01-19 12:48:29.521145', null, null, 'P_UBLMUJ26', 'P_UBLMUJ26',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a3f0129', null, '2022-01-19 12:48:29.521145', null, null, 'C_YHPSPM26', 'C_YHPSPM26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a44012a', null, '2022-01-19 12:48:29.521145', null, null, 'C_MEFMYK26', 'C_MEFMYK26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a48012b', null, '2022-01-19 12:48:29.521145', null, null, 'C_QENG26', 'C_QENG26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a4e012c', null, '2022-01-19 12:48:29.521145', null, null, 'C_NTLP26', 'C_NTLP26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a52012d', null, '2022-01-19 12:48:29.521145', null, null, 'C_Y26', 'C_Y26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a58012e', null, '2022-01-19 12:48:29.521145', null, null, 'C_AYH26', 'C_AYH26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a5e012f', null, '2022-01-19 12:48:29.521145', null, null, 'C_P26', 'C_P26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a630130', null, '2022-01-19 12:48:29.521145', null, null, 'C_N26', 'C_N26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a680131', null, '2022-01-19 12:48:29.521145', null, null, 'C_VVQMR26', 'C_VVQMR26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a6d0132', null, '2022-01-19 12:48:29.521145', null, null, 'C_XIU26', 'C_XIU26',
        '402894817e70aa23017e70aa3a390128', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a730133', null, '2022-01-19 12:48:29.521145', null, null, 'P_I27', 'P_I27', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a790134', null, '2022-01-19 12:48:29.521145', null, null, 'C_W27', 'C_W27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a800135', null, '2022-01-19 12:48:29.521145', null, null, 'C_NKDI27', 'C_NKDI27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a850136', null, '2022-01-19 12:48:29.521145', null, null, 'C_BSOEE27', 'C_BSOEE27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a8b0137', null, '2022-01-19 12:48:29.521145', null, null, 'C_X27', 'C_X27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a8f0138', null, '2022-01-19 12:48:29.521145', null, null, 'C_QNXKT27', 'C_QNXKT27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a940139', null, '2022-01-19 12:48:29.521145', null, null, 'C_XFV27', 'C_XFV27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a99013a', null, '2022-01-19 12:48:29.521145', null, null, 'C_DUWS27', 'C_DUWS27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3a9f013b', null, '2022-01-19 12:48:29.521145', null, null, 'C_PTSB27', 'C_PTSB27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3aa4013c', null, '2022-01-19 12:48:29.521145', null, null, 'C_BVWN27', 'C_BVWN27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3aaa013d', null, '2022-01-19 12:48:29.521145', null, null, 'C_QPEF27', 'C_QPEF27',
        '402894817e70aa23017e70aa3a730133', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3aae013e', null, '2022-01-19 12:48:29.521145', null, null, 'P_MYSEE28', 'P_MYSEE28',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ab4013f', null, '2022-01-19 12:48:29.521145', null, null, 'C_U28', 'C_U28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3aba0140', null, '2022-01-19 12:48:29.521145', null, null, 'C_QOFP28', 'C_QOFP28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ac20141', null, '2022-01-19 12:48:29.521145', null, null, 'C_ATIC28', 'C_ATIC28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ac60142', null, '2022-01-19 12:48:29.521145', null, null, 'C_PI28', 'C_PI28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3acf0143', null, '2022-01-19 12:48:29.521145', null, null, 'C_EV28', 'C_EV28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ad30144', null, '2022-01-19 12:48:29.521145', null, null, 'C_XL28', 'C_XL28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ada0145', null, '2022-01-19 12:48:29.521145', null, null, 'C_BHL28', 'C_BHL28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ae10146', null, '2022-01-19 12:48:29.521145', null, null, 'C_QL28', 'C_QL28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ae50147', null, '2022-01-19 12:48:29.521145', null, null, 'C_PMQ28', 'C_PMQ28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3aed0148', null, '2022-01-19 12:48:29.521145', null, null, 'C_J28', 'C_J28',
        '402894817e70aa23017e70aa3aae013e', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3af10149', null, '2022-01-19 12:48:29.521145', null, null, 'P_BOJKRQT29',
        'P_BOJKRQT29', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3af9014a', null, '2022-01-19 12:48:29.521145', null, null, 'C_O29', 'C_O29',
        '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b01014b', null, '2022-01-19 12:48:29.521145', null, null, 'C_29', 'C_29',
        '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b06014c', null, '2022-01-19 12:48:29.521145', null, null, 'C_29', 'C_29',
        '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b0b014d', null, '2022-01-19 12:48:29.521145', null, null, 'C_ODZ29', 'C_ODZ29',
        '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b10014e', null, '2022-01-19 12:48:29.521145', null, null, 'C_N29', 'C_N29',
        '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b16014f', null, '2022-01-19 12:48:29.521145', null, null, 'C_EC29', 'C_EC29',
        '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b1b0150', null, '2022-01-19 12:48:29.521145', null, null, 'C_29', 'C_29',
        '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b200151', null, '2022-01-19 12:48:29.521145', null, null, 'C_HEDTLHR29',
        'C_HEDTLHR29', '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b240152', null, '2022-01-19 12:48:29.521145', null, null, 'C_RMQR29', 'C_RMQR29',
        '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b2b0153', null, '2022-01-19 12:48:29.521145', null, null, 'C_NFBBW29', 'C_NFBBW29',
        '402894817e70aa23017e70aa3af10149', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b2f0154', null, '2022-01-19 12:48:29.521145', null, null, 'P_30', 'P_30', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b360155', null, '2022-01-19 12:48:29.521145', null, null, 'C_B30', 'C_B30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b3b0156', null, '2022-01-19 12:48:29.521145', null, null, 'C_URK30', 'C_URK30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b3f0157', null, '2022-01-19 12:48:29.521145', null, null, 'C_EF30', 'C_EF30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b440158', null, '2022-01-19 12:48:29.521145', null, null, 'C_JSS30', 'C_JSS30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b4a0159', null, '2022-01-19 12:48:29.521145', null, null, 'C_YC30', 'C_YC30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b4f015a', null, '2022-01-19 12:48:29.521145', null, null, 'C_UK30', 'C_UK30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b54015b', null, '2022-01-19 12:48:29.521145', null, null, 'C_XHU30', 'C_XHU30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b59015c', null, '2022-01-19 12:48:29.521145', null, null, 'C_UQ30', 'C_UQ30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b5d015d', null, '2022-01-19 12:48:29.521145', null, null, 'C_WY30', 'C_WY30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b63015e', null, '2022-01-19 12:48:29.521145', null, null, 'C_30', 'C_30',
        '402894817e70aa23017e70aa3b2f0154', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b67015f', null, '2022-01-19 12:48:29.521145', null, null, 'P_AW31', 'P_AW31', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b6c0160', null, '2022-01-19 12:48:29.521145', null, null, 'C_LQG31', 'C_LQG31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b700161', null, '2022-01-19 12:48:29.521145', null, null, 'C_Q31', 'C_Q31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b760162', null, '2022-01-19 12:48:29.521145', null, null, 'C_R31', 'C_R31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b7c0163', null, '2022-01-19 12:48:29.521145', null, null, 'C_RDZ31', 'C_RDZ31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b820164', null, '2022-01-19 12:48:29.521145', null, null, 'C_A31', 'C_A31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b880165', null, '2022-01-19 12:48:29.521145', null, null, 'C_WP31', 'C_WP31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b8e0166', null, '2022-01-19 12:48:29.521145', null, null, 'C_QAYNNE31', 'C_QAYNNE31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b940167', null, '2022-01-19 12:48:29.521145', null, null, 'C_GR31', 'C_GR31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b990168', null, '2022-01-19 12:48:29.521145', null, null, 'C_WIHM31', 'C_WIHM31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3b9a0169', null, '2022-01-19 12:48:29.521145', null, null, 'C_31', 'C_31',
        '402894817e70aa23017e70aa3b67015f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ba2016a', null, '2022-01-19 12:48:29.521145', null, null, 'P_GLP32', 'P_GLP32', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ba8016b', null, '2022-01-19 12:48:29.521145', null, null, 'C_WPNQDJD32',
        'C_WPNQDJD32', '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bac016c', null, '2022-01-19 12:48:29.521145', null, null, 'C_ECMDV32', 'C_ECMDV32',
        '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bb2016d', null, '2022-01-19 12:48:29.521145', null, null, 'C_UDLU32', 'C_UDLU32',
        '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bb6016e', null, '2022-01-19 12:48:29.521145', null, null, 'C_S32', 'C_S32',
        '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bba016f', null, '2022-01-19 12:48:29.521145', null, null, 'C_OB32', 'C_OB32',
        '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bbf0170', null, '2022-01-19 12:48:29.521145', null, null, 'C_DYBCB32', 'C_DYBCB32',
        '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bc40171', null, '2022-01-19 12:48:29.521145', null, null, 'C_32', 'C_32',
        '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bc80172', null, '2022-01-19 12:48:29.521145', null, null, 'C_DOESB32', 'C_DOESB32',
        '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bcc0173', null, '2022-01-19 12:48:29.521145', null, null, 'C_A32', 'C_A32',
        '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bd20174', null, '2022-01-19 12:48:29.521145', null, null, 'C_SPWTJ32', 'C_SPWTJ32',
        '402894817e70aa23017e70aa3ba2016a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bd40175', null, '2022-01-19 12:48:29.521145', null, null, 'P_TBV33', 'P_TBV33', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bdd0176', null, '2022-01-19 12:48:29.521145', null, null, 'C_QHWY33', 'C_QHWY33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3be20177', null, '2022-01-19 12:48:29.521145', null, null, 'C_33', 'C_33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3be80178', null, '2022-01-19 12:48:29.521145', null, null, 'C_WWDET33', 'C_WWDET33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bed0179', null, '2022-01-19 12:48:29.521145', null, null, 'C_YO33', 'C_YO33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bf3017a', null, '2022-01-19 12:48:29.521145', null, null, 'C_33', 'C_33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bf9017b', null, '2022-01-19 12:48:29.521145', null, null, 'C_QD33', 'C_QD33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3bfe017c', null, '2022-01-19 12:48:29.521145', null, null, 'C_SFG33', 'C_SFG33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c04017d', null, '2022-01-19 12:48:29.521145', null, null, 'C_J33', 'C_J33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c08017e', null, '2022-01-19 12:48:29.521145', null, null, 'C_OZTDQ33', 'C_OZTDQ33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c0e017f', null, '2022-01-19 12:48:29.521145', null, null, 'C_P33', 'C_P33',
        '402894817e70aa23017e70aa3bd40175', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c140180', null, '2022-01-19 12:48:29.521145', null, null, 'P_YY34', 'P_YY34', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c180181', null, '2022-01-19 12:48:29.521145', null, null, 'C_IRJ34', 'C_IRJ34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c1e0182', null, '2022-01-19 12:48:29.521145', null, null, 'C_KKPHQ34', 'C_KKPHQ34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c230183', null, '2022-01-19 12:48:29.521145', null, null, 'C_SZDT34', 'C_SZDT34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c280184', null, '2022-01-19 12:48:29.521145', null, null, 'C_VR34', 'C_VR34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c2d0185', null, '2022-01-19 12:48:29.521145', null, null, 'C_UD34', 'C_UD34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c320186', null, '2022-01-19 12:48:29.521145', null, null, 'C_E34', 'C_E34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c370187', null, '2022-01-19 12:48:29.521145', null, null, 'C_WIIG34', 'C_WIIG34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c3e0188', null, '2022-01-19 12:48:29.521145', null, null, 'C_ORY34', 'C_ORY34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c440189', null, '2022-01-19 12:48:29.521145', null, null, 'C_DKVCUA34', 'C_DKVCUA34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c48018a', null, '2022-01-19 12:48:29.521145', null, null, 'C_KHF34', 'C_KHF34',
        '402894817e70aa23017e70aa3c140180', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c4e018b', null, '2022-01-19 12:48:29.521145', null, null, 'P_D35', 'P_D35', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c53018c', null, '2022-01-19 12:48:29.521145', null, null, 'C_TSHZ35', 'C_TSHZ35',
        '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c57018d', null, '2022-01-19 12:48:29.521145', null, null, 'C_35', 'C_35',
        '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c5d018e', null, '2022-01-19 12:48:29.521145', null, null, 'C_EF35', 'C_EF35',
        '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c62018f', null, '2022-01-19 12:48:29.521145', null, null, 'C_KCPH35', 'C_KCPH35',
        '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c660190', null, '2022-01-19 12:48:29.521145', null, null, 'C_PEG35', 'C_PEG35',
        '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c6a0191', null, '2022-01-19 12:48:29.521145', null, null, 'C_GLYRR35', 'C_GLYRR35',
        '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c6f0192', null, '2022-01-19 12:48:29.521145', null, null, 'C_PHD35', 'C_PHD35',
        '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c740193', null, '2022-01-19 12:48:29.521145', null, null, 'C_TWBVGKW35',
        'C_TWBVGKW35', '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c780194', null, '2022-01-19 12:48:29.521145', null, null, 'C_WOTU35', 'C_WOTU35',
        '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c7f0195', null, '2022-01-19 12:48:29.521145', null, null, 'C_35', 'C_35',
        '402894817e70aa23017e70aa3c4e018b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c840196', null, '2022-01-19 12:48:29.521145', null, null, 'P_JSYG36', 'P_JSYG36',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c8a0197', null, '2022-01-19 12:48:29.521145', null, null, 'C_V36', 'C_V36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c8e0198', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZUTJDK36', 'C_ZUTJDK36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c940199', null, '2022-01-19 12:48:29.521145', null, null, 'C_36', 'C_36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c99019a', null, '2022-01-19 12:48:29.521145', null, null, 'C_XTM36', 'C_XTM36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3c9d019b', null, '2022-01-19 12:48:29.521145', null, null, 'C_FBLG36', 'C_FBLG36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ca1019c', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZKGP36', 'C_ZKGP36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ca7019d', null, '2022-01-19 12:48:29.521145', null, null, 'C_VSTH36', 'C_VSTH36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cad019e', null, '2022-01-19 12:48:29.521145', null, null, 'C_YDK36', 'C_YDK36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cb2019f', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZUD36', 'C_ZUD36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cb701a0', null, '2022-01-19 12:48:29.521145', null, null, 'C_JAQS36', 'C_JAQS36',
        '402894817e70aa23017e70aa3c840196', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cbf01a1', null, '2022-01-19 12:48:29.521145', null, null, 'P_VJH37', 'P_VJH37', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cc401a2', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZF37', 'C_ZF37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ccb01a3', null, '2022-01-19 12:48:29.521145', null, null, 'C_YQFL37', 'C_YQFL37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ccf01a4', null, '2022-01-19 12:48:29.521145', null, null, 'C_E37', 'C_E37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cd401a5', null, '2022-01-19 12:48:29.521145', null, null, 'C_XOF37', 'C_XOF37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cda01a6', null, '2022-01-19 12:48:29.521145', null, null, 'C_JOS37', 'C_JOS37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cdf01a7', null, '2022-01-19 12:48:29.521145', null, null, 'C_HB37', 'C_HB37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ce301a8', null, '2022-01-19 12:48:29.521145', null, null, 'C_37', 'C_37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ce901a9', null, '2022-01-19 12:48:29.521145', null, null, 'C_BWR37', 'C_BWR37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cee01aa', null, '2022-01-19 12:48:29.521145', null, null, 'C_37', 'C_37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cf301ab', null, '2022-01-19 12:48:29.521145', null, null, 'C_37', 'C_37',
        '402894817e70aa23017e70aa3cbf01a1', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cf801ac', null, '2022-01-19 12:48:29.521145', null, null, 'P_HR38', 'P_HR38', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3cfe01ad', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZT38', 'C_ZT38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d0201ae', null, '2022-01-19 12:48:29.521145', null, null, 'C_GINFW38', 'C_GINFW38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d0a01af', null, '2022-01-19 12:48:29.521145', null, null, 'C_SV38', 'C_SV38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d0f01b0', null, '2022-01-19 12:48:29.521145', null, null, 'C_RY38', 'C_RY38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d1401b1', null, '2022-01-19 12:48:29.521145', null, null, 'C_HQG38', 'C_HQG38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d1a01b2', null, '2022-01-19 12:48:29.521145', null, null, 'C_P38', 'C_P38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d1f01b3', null, '2022-01-19 12:48:29.521145', null, null, 'C_F38', 'C_F38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d2401b4', null, '2022-01-19 12:48:29.521145', null, null, 'C_DH38', 'C_DH38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d2b01b5', null, '2022-01-19 12:48:29.521145', null, null, 'C_DQ38', 'C_DQ38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d3001b6', null, '2022-01-19 12:48:29.521145', null, null, 'C_XVZKX38', 'C_XVZKX38',
        '402894817e70aa23017e70aa3cf801ac', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d3501b7', null, '2022-01-19 12:48:29.521145', null, null, 'P_ROL39', 'P_ROL39', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d3a01b8', null, '2022-01-19 12:48:29.521145', null, null, 'C_QDRCT39', 'C_QDRCT39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d3e01b9', null, '2022-01-19 12:48:29.521145', null, null, 'C_FSEG39', 'C_FSEG39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d4301ba', null, '2022-01-19 12:48:29.521145', null, null, 'C_A39', 'C_A39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d4901bb', null, '2022-01-19 12:48:29.521145', null, null, 'C_NFKZM39', 'C_NFKZM39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d4d01bc', null, '2022-01-19 12:48:29.521145', null, null, 'C_WWK39', 'C_WWK39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d5101bd', null, '2022-01-19 12:48:29.521145', null, null, 'C_U39', 'C_U39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d5601be', null, '2022-01-19 12:48:29.521145', null, null, 'C_F39', 'C_F39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d5901bf', null, '2022-01-19 12:48:29.521145', null, null, 'C_XHHP39', 'C_XHHP39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d5f01c0', null, '2022-01-19 12:48:29.521145', null, null, 'C_39', 'C_39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d6401c1', null, '2022-01-19 12:48:29.521145', null, null, 'C_LKHO39', 'C_LKHO39',
        '402894817e70aa23017e70aa3d3501b7', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d6a01c2', null, '2022-01-19 12:48:29.521145', null, null, 'P_FA40', 'P_FA40', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d6f01c3', null, '2022-01-19 12:48:29.521145', null, null, 'C_40', 'C_40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d7401c4', null, '2022-01-19 12:48:29.521145', null, null, 'C_40', 'C_40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d7a01c5', null, '2022-01-19 12:48:29.521145', null, null, 'C_FO40', 'C_FO40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d8001c6', null, '2022-01-19 12:48:29.521145', null, null, 'C_TCWKV40', 'C_TCWKV40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d8601c7', null, '2022-01-19 12:48:29.521145', null, null, 'C_A40', 'C_A40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d8b01c8', null, '2022-01-19 12:48:29.521145', null, null, 'C_R40', 'C_R40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d9001c9', null, '2022-01-19 12:48:29.521145', null, null, 'C_JBAT40', 'C_JBAT40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d9601ca', null, '2022-01-19 12:48:29.521145', null, null, 'C_DA40', 'C_DA40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3d9e01cb', null, '2022-01-19 12:48:29.521145', null, null, 'C_YNCX40', 'C_YNCX40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3da401cc', null, '2022-01-19 12:48:29.521145', null, null, 'C_HDA40', 'C_HDA40',
        '402894817e70aa23017e70aa3d6a01c2', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dab01cd', null, '2022-01-19 12:48:29.521145', null, null, 'P_UNNF41', 'P_UNNF41',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3daf01ce', null, '2022-01-19 12:48:29.521145', null, null, 'C_EOREA41', 'C_EOREA41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3db501cf', null, '2022-01-19 12:48:29.521145', null, null, 'C_VPISM41', 'C_VPISM41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dba01d0', null, '2022-01-19 12:48:29.521145', null, null, 'C_QSK41', 'C_QSK41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dbf01d1', null, '2022-01-19 12:48:29.521145', null, null, 'C_41', 'C_41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dc501d2', null, '2022-01-19 12:48:29.521145', null, null, 'C_41', 'C_41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dc901d3', null, '2022-01-19 12:48:29.521145', null, null, 'C_UCRX41', 'C_UCRX41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dce01d4', null, '2022-01-19 12:48:29.521145', null, null, 'C_41', 'C_41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dd301d5', null, '2022-01-19 12:48:29.521145', null, null, 'C_PA41', 'C_PA41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dd701d6', null, '2022-01-19 12:48:29.521145', null, null, 'C_41', 'C_41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ddb01d7', null, '2022-01-19 12:48:29.521145', null, null, 'C_41', 'C_41',
        '402894817e70aa23017e70aa3dab01cd', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3de101d8', null, '2022-01-19 12:48:29.521145', null, null, 'P_V42', 'P_V42', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3de701d9', null, '2022-01-19 12:48:29.521145', null, null, 'C_AJ42', 'C_AJ42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dec01da', null, '2022-01-19 12:48:29.521145', null, null, 'C_WLZZ42', 'C_WLZZ42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3df201db', null, '2022-01-19 12:48:29.521145', null, null, 'C_EURNL42', 'C_EURNL42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3df901dc', null, '2022-01-19 12:48:29.521145', null, null, 'C_I42', 'C_I42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3dfc01dd', null, '2022-01-19 12:48:29.521145', null, null, 'C_ETVWRJ42', 'C_ETVWRJ42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e0001de', null, '2022-01-19 12:48:29.521145', null, null, 'C_OF42', 'C_OF42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e0601df', null, '2022-01-19 12:48:29.521145', null, null, 'C_ILDE42', 'C_ILDE42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e0a01e0', null, '2022-01-19 12:48:29.521145', null, null, 'C_Y42', 'C_Y42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e0e01e1', null, '2022-01-19 12:48:29.521145', null, null, 'C_AVUU42', 'C_AVUU42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e1401e2', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZHL42', 'C_ZHL42',
        '402894817e70aa23017e70aa3de101d8', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e1701e3', null, '2022-01-19 12:48:29.521145', null, null, 'P_HCD43', 'P_HCD43', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e1c01e4', null, '2022-01-19 12:48:29.521145', null, null, 'C_VF43', 'C_VF43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e2301e5', null, '2022-01-19 12:48:29.521145', null, null, 'C_JO43', 'C_JO43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e2601e6', null, '2022-01-19 12:48:29.521145', null, null, 'C_NOQ43', 'C_NOQ43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e2a01e7', null, '2022-01-19 12:48:29.521145', null, null, 'C_43', 'C_43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e2e01e8', null, '2022-01-19 12:48:29.521145', null, null, 'C_CXK43', 'C_CXK43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e3401e9', null, '2022-01-19 12:48:29.521145', null, null, 'C_RRUKU43', 'C_RRUKU43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e3801ea', null, '2022-01-19 12:48:29.521145', null, null, 'C_HQCYO43', 'C_HQCYO43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e3c01eb', null, '2022-01-19 12:48:29.521145', null, null, 'C_FO43', 'C_FO43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e4001ec', null, '2022-01-19 12:48:29.521145', null, null, 'C_CAH43', 'C_CAH43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e4501ed', null, '2022-01-19 12:48:29.521145', null, null, 'C_YI43', 'C_YI43',
        '402894817e70aa23017e70aa3e1701e3', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e4901ee', null, '2022-01-19 12:48:29.521145', null, null, 'P_GMFI44', 'P_GMFI44',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e4e01ef', null, '2022-01-19 12:48:29.521145', null, null, 'C_44', 'C_44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e5301f0', null, '2022-01-19 12:48:29.521145', null, null, 'C_PQUVUL44', 'C_PQUVUL44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e5801f1', null, '2022-01-19 12:48:29.521145', null, null, 'C_MWXK44', 'C_MWXK44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e5d01f2', null, '2022-01-19 12:48:29.521145', null, null, 'C_LCF44', 'C_LCF44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e6101f3', null, '2022-01-19 12:48:29.521145', null, null, 'C_OTYR44', 'C_OTYR44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e6701f4', null, '2022-01-19 12:48:29.521145', null, null, 'C_S44', 'C_S44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e6b01f5', null, '2022-01-19 12:48:29.521145', null, null, 'C_QRI44', 'C_QRI44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e7001f6', null, '2022-01-19 12:48:29.521145', null, null, 'C_DDDOYR44', 'C_DDDOYR44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e7301f7', null, '2022-01-19 12:48:29.521145', null, null, 'C_AE44', 'C_AE44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e7901f8', null, '2022-01-19 12:48:29.521145', null, null, 'C_DSI44', 'C_DSI44',
        '402894817e70aa23017e70aa3e4901ee', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e7e01f9', null, '2022-01-19 12:48:29.521145', null, null, 'P_D45', 'P_D45', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e8301fa', null, '2022-01-19 12:48:29.521145', null, null, 'C_XOXLZ45', 'C_XOXLZ45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e8901fb', null, '2022-01-19 12:48:29.521145', null, null, 'C_G45', 'C_G45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e8e01fc', null, '2022-01-19 12:48:29.521145', null, null, 'C_GF45', 'C_GF45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e9401fd', null, '2022-01-19 12:48:29.521145', null, null, 'C_GROM45', 'C_GROM45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e9801fe', null, '2022-01-19 12:48:29.521145', null, null, 'C_HGK45', 'C_HGK45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3e9e01ff', null, '2022-01-19 12:48:29.521145', null, null, 'C_GMR45', 'C_GMR45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ea20200', null, '2022-01-19 12:48:29.521145', null, null, 'C_WPB45', 'C_WPB45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3eaa0201', null, '2022-01-19 12:48:29.521145', null, null, 'C_AYARQ45', 'C_AYARQ45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3eb20202', null, '2022-01-19 12:48:29.521145', null, null, 'C_T45', 'C_T45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3eb70203', null, '2022-01-19 12:48:29.521145', null, null, 'C_45', 'C_45',
        '402894817e70aa23017e70aa3e7e01f9', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ec00204', null, '2022-01-19 12:48:29.521145', null, null, 'P_JQY46', 'P_JQY46', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ec70205', null, '2022-01-19 12:48:29.521145', null, null, 'C_46', 'C_46',
        '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ecc0206', null, '2022-01-19 12:48:29.521145', null, null, 'C_OZ46', 'C_OZ46',
        '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ed10207', null, '2022-01-19 12:48:29.521145', null, null, 'C_QDL46', 'C_QDL46',
        '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ed70208', null, '2022-01-19 12:48:29.521145', null, null, 'C_46', 'C_46',
        '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ede0209', null, '2022-01-19 12:48:29.521145', null, null, 'C_WOSMF46', 'C_WOSMF46',
        '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ee4020a', null, '2022-01-19 12:48:29.521145', null, null, 'C_R46', 'C_R46',
        '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3eea020b', null, '2022-01-19 12:48:29.521145', null, null, 'C_DRNJYIF46',
        'C_DRNJYIF46', '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3eee020c', null, '2022-01-19 12:48:29.521145', null, null, 'C_UB46', 'C_UB46',
        '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ef4020d', null, '2022-01-19 12:48:29.521145', null, null, 'C_WW46', 'C_WW46',
        '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ef8020e', null, '2022-01-19 12:48:29.521145', null, null, 'C_CA46', 'C_CA46',
        '402894817e70aa23017e70aa3ec00204', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3efe020f', null, '2022-01-19 12:48:29.521145', null, null, 'P_LWMC47', 'P_LWMC47',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f020210', null, '2022-01-19 12:48:29.521145', null, null, 'C_XCA47', 'C_XCA47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f060211', null, '2022-01-19 12:48:29.521145', null, null, 'C_KBOQCK47', 'C_KBOQCK47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f0b0212', null, '2022-01-19 12:48:29.521145', null, null, 'C_RT47', 'C_RT47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f100213', null, '2022-01-19 12:48:29.521145', null, null, 'C_FV47', 'C_FV47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f140214', null, '2022-01-19 12:48:29.521145', null, null, 'C_YG47', 'C_YG47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f180215', null, '2022-01-19 12:48:29.521145', null, null, 'C_LMAA47', 'C_LMAA47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f1e0216', null, '2022-01-19 12:48:29.521145', null, null, 'C_C47', 'C_C47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f220217', null, '2022-01-19 12:48:29.521145', null, null, 'C_LYRD47', 'C_LYRD47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f260218', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZIH47', 'C_ZIH47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f2b0219', null, '2022-01-19 12:48:29.521145', null, null, 'C_CSGD47', 'C_CSGD47',
        '402894817e70aa23017e70aa3efe020f', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f30021a', null, '2022-01-19 12:48:29.521145', null, null, 'P_QLUWQ48', 'P_QLUWQ48',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f34021b', null, '2022-01-19 12:48:29.521145', null, null, 'C_IOPG48', 'C_IOPG48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f39021c', null, '2022-01-19 12:48:29.521145', null, null, 'C_T48', 'C_T48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f3e021d', null, '2022-01-19 12:48:29.521145', null, null, 'C_UGX48', 'C_UGX48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f43021e', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZW48', 'C_ZW48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f49021f', null, '2022-01-19 12:48:29.521145', null, null, 'C_UB48', 'C_UB48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f4d0220', null, '2022-01-19 12:48:29.521145', null, null, 'C_AQ48', 'C_AQ48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f520221', null, '2022-01-19 12:48:29.521145', null, null, 'C_ORI48', 'C_ORI48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f560222', null, '2022-01-19 12:48:29.521145', null, null, 'C_48', 'C_48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f5a0223', null, '2022-01-19 12:48:29.521145', null, null, 'C_BL48', 'C_BL48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f5e0224', null, '2022-01-19 12:48:29.521145', null, null, 'C_QWXRU48', 'C_QWXRU48',
        '402894817e70aa23017e70aa3f30021a', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f620225', null, '2022-01-19 12:48:29.521145', null, null, 'P_EAHQ49', 'P_EAHQ49',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f670226', null, '2022-01-19 12:48:29.521145', null, null, 'C_HDP49', 'C_HDP49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f6b0227', null, '2022-01-19 12:48:29.521145', null, null, 'C_O49', 'C_O49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f710228', null, '2022-01-19 12:48:29.521145', null, null, 'C_M49', 'C_M49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f770229', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZCR49', 'C_ZCR49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f7c022a', null, '2022-01-19 12:48:29.521145', null, null, 'C_NOYCC49', 'C_NOYCC49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f80022b', null, '2022-01-19 12:48:29.521145', null, null, 'C_WWYX49', 'C_WWYX49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f85022c', null, '2022-01-19 12:48:29.521145', null, null, 'C_ULZL49', 'C_ULZL49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f8a022d', null, '2022-01-19 12:48:29.521145', null, null, 'C_YFF49', 'C_YFF49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f8f022e', null, '2022-01-19 12:48:29.521145', null, null, 'C_KM49', 'C_KM49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f92022f', null, '2022-01-19 12:48:29.521145', null, null, 'C_49', 'C_49',
        '402894817e70aa23017e70aa3f620225', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f970230', null, '2022-01-19 12:48:29.521145', null, null, 'P_PI50', 'P_PI50', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3f9c0231', null, '2022-01-19 12:48:29.521145', null, null, 'C_50', 'C_50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fa10232', null, '2022-01-19 12:48:29.521145', null, null, 'C_JX50', 'C_JX50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fa60233', null, '2022-01-19 12:48:29.521145', null, null, 'C_FCK50', 'C_FCK50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3faa0234', null, '2022-01-19 12:48:29.521145', null, null, 'C_QTR50', 'C_QTR50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fae0235', null, '2022-01-19 12:48:29.521145', null, null, 'C_W50', 'C_W50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fb20236', null, '2022-01-19 12:48:29.521145', null, null, 'C_QIUXT50', 'C_QIUXT50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fb90237', null, '2022-01-19 12:48:29.521145', null, null, 'C_50', 'C_50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fbe0238', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZEVM50', 'C_ZEVM50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fc40239', null, '2022-01-19 12:48:29.521145', null, null, 'C_S50', 'C_S50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fc9023a', null, '2022-01-19 12:48:29.521145', null, null, 'C_NJ50', 'C_NJ50',
        '402894817e70aa23017e70aa3f970230', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fcf023b', null, '2022-01-19 12:48:29.521145', null, null, 'P_V51', 'P_V51', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fd5023c', null, '2022-01-19 12:48:29.521145', null, null, 'C_QXVQ51', 'C_QXVQ51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fda023d', null, '2022-01-19 12:48:29.521145', null, null, 'C_MZGZC51', 'C_MZGZC51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fdf023e', null, '2022-01-19 12:48:29.521145', null, null, 'C_Z51', 'C_Z51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fe5023f', null, '2022-01-19 12:48:29.521145', null, null, 'C_EHB51', 'C_EHB51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fe80240', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZHWN51', 'C_ZHWN51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3fec0241', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZF51', 'C_ZF51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ff00242', null, '2022-01-19 12:48:29.521145', null, null, 'C_HJV51', 'C_HJV51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ff50243', null, '2022-01-19 12:48:29.521145', null, null, 'C_51', 'C_51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ff90244', null, '2022-01-19 12:48:29.521145', null, null, 'C_J51', 'C_J51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa3ffd0245', null, '2022-01-19 12:48:29.521145', null, null, 'C_C51', 'C_C51',
        '402894817e70aa23017e70aa3fcf023b', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40000246', null, '2022-01-19 12:48:29.521145', null, null, 'P_HQ52', 'P_HQ52', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40040247', null, '2022-01-19 12:48:29.521145', null, null, 'C_UK52', 'C_UK52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40080248', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZPYFO52', 'C_ZPYFO52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa400c0249', null, '2022-01-19 12:48:29.521145', null, null, 'C_USP52', 'C_USP52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa400f024a', null, '2022-01-19 12:48:29.521145', null, null, 'C_PR52', 'C_PR52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4015024b', null, '2022-01-19 12:48:29.521145', null, null, 'C_E52', 'C_E52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4019024c', null, '2022-01-19 12:48:29.521145', null, null, 'C_52', 'C_52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa401c024d', null, '2022-01-19 12:48:29.521145', null, null, 'C_G52', 'C_G52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4020024e', null, '2022-01-19 12:48:29.521145', null, null, 'C_IGSGKW52', 'C_IGSGKW52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4024024f', null, '2022-01-19 12:48:29.521145', null, null, 'C_NC52', 'C_NC52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40280250', null, '2022-01-19 12:48:29.521145', null, null, 'C_NZZ52', 'C_NZZ52',
        '402894817e70aa23017e70aa40000246', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa402d0251', null, '2022-01-19 12:48:29.521145', null, null, 'P_A53', 'P_A53', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40320252', null, '2022-01-19 12:48:29.521145', null, null, 'C_53', 'C_53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40370253', null, '2022-01-19 12:48:29.521145', null, null, 'C_ROW53', 'C_ROW53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa403b0254', null, '2022-01-19 12:48:29.521145', null, null, 'C_53', 'C_53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40410255', null, '2022-01-19 12:48:29.521145', null, null, 'C_AZRSAO53', 'C_AZRSAO53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40460256', null, '2022-01-19 12:48:29.521145', null, null, 'C_FVV53', 'C_FVV53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa404a0257', null, '2022-01-19 12:48:29.521145', null, null, 'C_LMJQX53', 'C_LMJQX53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa404e0258', null, '2022-01-19 12:48:29.521145', null, null, 'C_UGJ53', 'C_UGJ53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40540259', null, '2022-01-19 12:48:29.521145', null, null, 'C_H53', 'C_H53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4058025a', null, '2022-01-19 12:48:29.521145', null, null, 'C_B53', 'C_B53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa405c025b', null, '2022-01-19 12:48:29.521145', null, null, 'C_MCF53', 'C_MCF53',
        '402894817e70aa23017e70aa402d0251', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4061025c', null, '2022-01-19 12:48:29.521145', null, null, 'P_DKOQN54', 'P_DKOQN54',
        null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4065025d', null, '2022-01-19 12:48:29.521145', null, null, 'C_QD54', 'C_QD54',
        '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4069025e', null, '2022-01-19 12:48:29.521145', null, null, 'C_TZPAT54', 'C_TZPAT54',
        '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa406f025f', null, '2022-01-19 12:48:29.521145', null, null, 'C_K54', 'C_K54',
        '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40730260', null, '2022-01-19 12:48:29.521145', null, null, 'C_GTKF54', 'C_GTKF54',
        '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40780261', null, '2022-01-19 12:48:29.521145', null, null, 'C_Z54', 'C_Z54',
        '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa407c0262', null, '2022-01-19 12:48:29.521145', null, null, 'C_A54', 'C_A54',
        '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40800263', null, '2022-01-19 12:48:29.521145', null, null, 'C_54', 'C_54',
        '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40850264', null, '2022-01-19 12:48:29.521145', null, null, 'C_QEAIKMR54',
        'C_QEAIKMR54', '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40890265', null, '2022-01-19 12:48:29.521145', null, null, 'C_QK54', 'C_QK54',
        '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa408f0266', null, '2022-01-19 12:48:29.521145', null, null, 'C_X54', 'C_X54',
        '402894817e70aa23017e70aa4061025c', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40940267', null, '2022-01-19 12:48:29.521145', null, null, 'P_55', 'P_55', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40980268', null, '2022-01-19 12:48:29.521145', null, null, 'C_QEH55', 'C_QEH55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa409c0269', null, '2022-01-19 12:48:29.521145', null, null, 'C_OLO55', 'C_OLO55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40a0026a', null, '2022-01-19 12:48:29.521145', null, null, 'C_55', 'C_55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40a5026b', null, '2022-01-19 12:48:29.521145', null, null, 'C_WW55', 'C_WW55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40a9026c', null, '2022-01-19 12:48:29.521145', null, null, 'C_PJK55', 'C_PJK55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40ae026d', null, '2022-01-19 12:48:29.521145', null, null, 'C_MPQ55', 'C_MPQ55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40b2026e', null, '2022-01-19 12:48:29.521145', null, null, 'C_WM55', 'C_WM55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40b6026f', null, '2022-01-19 12:48:29.521145', null, null, 'C_KVCJ55', 'C_KVCJ55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40ba0270', null, '2022-01-19 12:48:29.521145', null, null, 'C_PVZ55', 'C_PVZ55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40bf0271', null, '2022-01-19 12:48:29.521145', null, null, 'C_V55', 'C_V55',
        '402894817e70aa23017e70aa40940267', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40c30272', null, '2022-01-19 12:48:29.521145', null, null, 'P_X56', 'P_X56', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40ca0273', null, '2022-01-19 12:48:29.521145', null, null, 'C_KFAP56', 'C_KFAP56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40d00274', null, '2022-01-19 12:48:29.521145', null, null, 'C_MJ56', 'C_MJ56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40d60275', null, '2022-01-19 12:48:29.521145', null, null, 'C_QE56', 'C_QE56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40dc0276', null, '2022-01-19 12:48:29.521145', null, null, 'C_VOBA56', 'C_VOBA56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40e10277', null, '2022-01-19 12:48:29.521145', null, null, 'C_56', 'C_56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40e60278', null, '2022-01-19 12:48:29.521145', null, null, 'C_Y56', 'C_Y56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40e90279', null, '2022-01-19 12:48:29.521145', null, null, 'C_56', 'C_56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40f0027a', null, '2022-01-19 12:48:29.521145', null, null, 'C_ML56', 'C_ML56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40f5027b', null, '2022-01-19 12:48:29.521145', null, null, 'C_VIHFK56', 'C_VIHFK56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40f9027c', null, '2022-01-19 12:48:29.521145', null, null, 'C_UDTW56', 'C_UDTW56',
        '402894817e70aa23017e70aa40c30272', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa40fe027d', null, '2022-01-19 12:48:29.521145', null, null, 'P_CG57', 'P_CG57', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4103027e', null, '2022-01-19 12:48:29.521145', null, null, 'C_W57', 'C_W57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4108027f', null, '2022-01-19 12:48:29.521145', null, null, 'C_LXC57', 'C_LXC57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa410d0280', null, '2022-01-19 12:48:29.521145', null, null, 'C_X57', 'C_X57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41120281', null, '2022-01-19 12:48:29.521145', null, null, 'C_IB57', 'C_IB57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa411a0282', null, '2022-01-19 12:48:29.521145', null, null, 'C_CDZ57', 'C_CDZ57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa411f0283', null, '2022-01-19 12:48:29.521145', null, null, 'C_N57', 'C_N57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41250284', null, '2022-01-19 12:48:29.521145', null, null, 'C_MPT57', 'C_MPT57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa412a0285', null, '2022-01-19 12:48:29.521145', null, null, 'C_IJL57', 'C_IJL57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41300286', null, '2022-01-19 12:48:29.521145', null, null, 'C_UE57', 'C_UE57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41360287', null, '2022-01-19 12:48:29.521145', null, null, 'C_X57', 'C_X57',
        '402894817e70aa23017e70aa40fe027d', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa413c0288', null, '2022-01-19 12:48:29.521145', null, null, 'P_58', 'P_58', null, 0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41430289', null, '2022-01-19 12:48:29.521145', null, null, 'C_WGLHW58', 'C_WGLHW58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa414a028a', null, '2022-01-19 12:48:29.521145', null, null, 'C_TPB58', 'C_TPB58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa414f028b', null, '2022-01-19 12:48:29.521145', null, null, 'C_YQAZ58', 'C_YQAZ58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4155028c', null, '2022-01-19 12:48:29.521145', null, null, 'C_JIJC58', 'C_JIJC58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa415b028d', null, '2022-01-19 12:48:29.521145', null, null, 'C_J58', 'C_J58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4161028e', null, '2022-01-19 12:48:29.521145', null, null, 'C_JRBSV58', 'C_JRBSV58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa4169028f', null, '2022-01-19 12:48:29.521145', null, null, 'C_VCQ58', 'C_VCQ58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41700290', null, '2022-01-19 12:48:29.521145', null, null, 'C_IRN58', 'C_IRN58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41760291', null, '2022-01-19 12:48:29.521145', null, null, 'C_F58', 'C_F58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa417c0292', null, '2022-01-19 12:48:29.521145', null, null, 'C_JZ58', 'C_JZ58',
        '402894817e70aa23017e70aa413c0288', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41810293', null, '2022-01-19 12:48:29.521145', null, null, 'P_MBU59', 'P_MBU59', null,
        0);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41880294', null, '2022-01-19 12:48:29.521145', null, null, 'C_CJWWI59', 'C_CJWWI59',
        '402894817e70aa23017e70aa41810293', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa418e0295', null, '2022-01-19 12:48:29.521145', null, null, 'C_ZZUHO59', 'C_ZZUHO59',
        '402894817e70aa23017e70aa41810293', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41930296', null, '2022-01-19 12:48:29.521145', null, null, 'C_TR59', 'C_TR59',
        '402894817e70aa23017e70aa41810293', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41990297', null, '2022-01-19 12:48:29.521145', null, null, 'C_FCLDM59', 'C_FCLDM59',
        '402894817e70aa23017e70aa41810293', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa419e0298', null, '2022-01-19 12:48:29.521145', null, null, 'C_LWQEU59', 'C_LWQEU59',
        '402894817e70aa23017e70aa41810293', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41a40299', null, '2022-01-19 12:48:29.521145', null, null, 'C_JTN59', 'C_JTN59',
        '402894817e70aa23017e70aa41810293', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41aa029a', null, '2022-01-19 12:48:29.521145', null, null, 'C_CWWOZ59', 'C_CWWOZ59',
        '402894817e70aa23017e70aa41810293', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41af029b', null, '2022-01-19 12:48:29.521145', null, null, 'C_CZLWCPBDQ59',
        'C_CZLWCPBDQ59', '402894817e70aa23017e70aa41810293', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41b3029c', null, '2022-01-19 12:48:29.521145', null, null, 'C_XEXP59', 'C_XEXP59',
        '402894817e70aa23017e70aa41810293', 1);
INSERT INTO t_s_province (id, create_by, create_time, update_by, update_time, code, name, parent_id, type)
VALUES ('402894817e70aa23017e70aa41bb029d', null, '2022-01-19 12:48:29.521145', null, null, 'C_R59', 'C_R59',
        '402894817e70aa23017e70aa41810293', 1);


create table t_s_user
(
    address      varchar(200) null,
    email        varchar(100) null,
    id_card      varchar(50)  null,
    mobile_phone varchar(50)  null,
    office_phone varchar(50)  null,
    id           varchar(64)  not null
        primary key,
    city_id      varchar(64)  null,
    constraint FK8q5tqxgnq2icjcvqm2u63mtfc
        foreign key (id) references t_s_base_user (id),
    constraint FKjf0lfchkplo2f9a705yefkx68
        foreign key (city_id) references t_s_province (id)
);

INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gl1', 'n_gl1@126.com', null, null, null, '402894817e70aa23017e70aa45e8029e',
        '402894817e70aa23017e70aa387900d7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_l2', 'n_l2@126.com', null, null, null, '402894817e70aa23017e70aa45e9029f',
        '402894817e70aa23017e70aa3cdf01a7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_tfe3', 'n_tfe3@126.com', null, null, null, '402894817e70aa23017e70aa45e902a0',
        '402894817e70aa23017e70aa39b0010e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ufhigk4', 'n_ufhigk4@126.com', null, null, null, '402894817e70aa23017e70aa45e902a1',
        '402894817e70aa23017e70aa3bed0179');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_5', 'n_5@126.com', null, null, null, '402894817e70aa23017e70aa45e902a2', '402894817e70aa23017e70aa3d8601c7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_htw6', 'n_htw6@126.com', null, null, null, '402894817e70aa23017e70aa45e902a3',
        '402894817e70aa23017e70aa3b54015b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_uynr7', 'n_uynr7@126.com', null, null, null, '402894817e70aa23017e70aa45e902a4',
        '402894817e70aa23017e70aa396c0102');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_clwq8', 'n_clwq8@126.com', null, null, null, '402894817e70aa23017e70aa45e902a5',
        '402894817e70aa23017e70aa3b3b0156');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_azt9', 'n_azt9@126.com', null, null, null, '402894817e70aa23017e70aa45e902a6',
        '402894817e70aa23017e70aa417c0292');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_yg10', 'n_yg10@126.com', null, null, null, '402894817e70aa23017e70aa45e902a7',
        '402894817e70aa23017e70aa3e8301fa');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_11', 'n_11@126.com', null, null, null, '402894817e70aa23017e70aa45e902a8',
        '402894817e70aa23017e70aa36a30082');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qmj12', 'n_qmj12@126.com', null, null, null, '402894817e70aa23017e70aa45e902a9',
        '402894817e70aa23017e70aa34e6003c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_c13', 'n_c13@126.com', null, null, null, '402894817e70aa23017e70aa45e902aa',
        '402894817e70aa23017e70aa350d0042');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ow14', 'n_ow14@126.com', null, null, null, '402894817e70aa23017e70aa45e902ab',
        '402894817e70aa23017e70aa3ae50147');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_eyad15', 'n_eyad15@126.com', null, null, null, '402894817e70aa23017e70aa45e902ac',
        '402894817e70aa23017e70aa359f0058');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_p16', 'n_p16@126.com', null, null, null, '402894817e70aa23017e70aa45ea02ad',
        '402894817e70aa23017e70aa35360049');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_17', 'n_17@126.com', null, null, null, '402894817e70aa23017e70aa45ec02ae',
        '402894817e70aa23017e70aa38dc00e8');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_b18', 'n_b18@126.com', null, null, null, '402894817e70aa23017e70aa45ec02af',
        '402894817e70aa23017e70aa370a0095');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vappn19', 'n_vappn19@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b0',
        '402894817e70aa23017e70aa381a00c6');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_acjg20', 'n_acjg20@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b1',
        '402894817e70aa23017e70aa386200d3');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_oq21', 'n_oq21@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b2',
        '402894817e70aa23017e70aa3f710228');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vwdm22', 'n_vwdm22@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b3',
        '402894817e70aa23017e70aa34280022');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_f23', 'n_f23@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b4',
        '402894817e70aa23017e70aa3c48018a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ym24', 'n_ym24@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b5',
        '402894817e70aa23017e70aa3556004e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rgwux25', 'n_rgwux25@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b6',
        '402894817e70aa23017e70aa3d6401c1');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_yp26', 'n_yp26@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b7',
        '402894817e70aa23017e70aa3730009c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_d27', 'n_d27@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b8',
        '402894817e70aa23017e70aa3ce301a8');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_nhz28', 'n_nhz28@126.com', null, null, null, '402894817e70aa23017e70aa45ed02b9',
        '402894817e70aa23017e70aa347f002d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_oy29', 'n_oy29@126.com', null, null, null, '402894817e70aa23017e70aa45ed02ba',
        '402894817e70aa23017e70aa38e100e9');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_fqw30', 'n_fqw30@126.com', null, null, null, '402894817e70aa23017e70aa45ed02bb',
        '402894817e70aa23017e70aa3688007e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_db31', 'n_db31@126.com', null, null, null, '402894817e70aa23017e70aa45ed02bc',
        '402894817e70aa23017e70aa36280070');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rzw32', 'n_rzw32@126.com', null, null, null, '402894817e70aa23017e70aa45ed02bd',
        '402894817e70aa23017e70aa35f40066');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_q33', 'n_q33@126.com', null, null, null, '402894817e70aa23017e70aa45ed02be',
        '402894817e70aa23017e70aa3a5e012f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ekvqzxe34', 'n_ekvqzxe34@126.com', null, null, null, '402894817e70aa23017e70aa45ed02bf',
        '402894817e70aa23017e70aa3b940167');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_35', 'n_35@126.com', null, null, null, '402894817e70aa23017e70aa45ed02c0',
        '402894817e70aa23017e70aa35f40066');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_naeqzs36', 'n_naeqzs36@126.com', null, null, null, '402894817e70aa23017e70aa45ed02c1',
        '402894817e70aa23017e70aa372a009b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rqvk37', 'n_rqvk37@126.com', null, null, null, '402894817e70aa23017e70aa45ed02c2',
        '402894817e70aa23017e70aa36620079');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_obw38', 'n_obw38@126.com', null, null, null, '402894817e70aa23017e70aa45ed02c3',
        '402894817e70aa23017e70aa3e8e01fc');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_nk39', 'n_nk39@126.com', null, null, null, '402894817e70aa23017e70aa45ed02c4',
        '402894817e70aa23017e70aa3e3c01eb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_isb40', 'n_isb40@126.com', null, null, null, '402894817e70aa23017e70aa45ed02c5',
        '402894817e70aa23017e70aa41700290');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lv41', 'n_lv41@126.com', null, null, null, '402894817e70aa23017e70aa45ed02c6',
        '402894817e70aa23017e70aa39a4010b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hy42', 'n_hy42@126.com', null, null, null, '402894817e70aa23017e70aa45ed02c7',
        '402894817e70aa23017e70aa38c000e3');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qfc43', 'n_qfc43@126.com', null, null, null, '402894817e70aa23017e70aa45ee02c8',
        '402894817e70aa23017e70aa34b80035');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gisf44', 'n_gisf44@126.com', null, null, null, '402894817e70aa23017e70aa45ee02c9',
        '402894817e70aa23017e70aa3730009c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_myi45', 'n_myi45@126.com', null, null, null, '402894817e70aa23017e70aa45ee02ca',
        '402894817e70aa23017e70aa38ae00e0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_46', 'n_46@126.com', null, null, null, '402894817e70aa23017e70aa45ee02cb',
        '402894817e70aa23017e70aa418e0295');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kbjzc47', 'n_kbjzc47@126.com', null, null, null, '402894817e70aa23017e70aa45ee02cc',
        '402894817e70aa23017e70aa370a0095');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_48', 'n_48@126.com', null, null, null, '402894817e70aa23017e70aa45ee02cd',
        '402894817e70aa23017e70aa3fb20236');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_49', 'n_49@126.com', null, null, null, '402894817e70aa23017e70aa45ee02ce',
        '402894817e70aa23017e70aa375700a3');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_l50', 'n_l50@126.com', null, null, null, '402894817e70aa23017e70aa45ee02cf',
        '402894817e70aa23017e70aa36560077');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_yeekrbm51', 'n_yeekrbm51@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d0',
        '402894817e70aa23017e70aa3ca1019c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lb52', 'n_lb52@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d1',
        '402894817e70aa23017e70aa3f180215');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bfz53', 'n_bfz53@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d2',
        '402894817e70aa23017e70aa3ce901a9');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_54', 'n_54@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d3',
        '402894817e70aa23017e70aa37140097');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gtzas55', 'n_gtzas55@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d4',
        '402894817e70aa23017e70aa3b59015c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_56', 'n_56@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d5',
        '402894817e70aa23017e70aa34e6003c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_phqu57', 'n_phqu57@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d6',
        '402894817e70aa23017e70aa374b00a1');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zk58', 'n_zk58@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d7',
        '402894817e70aa23017e70aa37b800b3');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_tkyo59', 'n_tkyo59@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d8',
        '402894817e70aa23017e70aa3ca7019d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_dc60', 'n_dc60@126.com', null, null, null, '402894817e70aa23017e70aa45ef02d9',
        '402894817e70aa23017e70aa37f200bf');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_cr61', 'n_cr61@126.com', null, null, null, '402894817e70aa23017e70aa45ef02da',
        '402894817e70aa23017e70aa357a0053');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zr62', 'n_zr62@126.com', null, null, null, '402894817e70aa23017e70aa45ef02db',
        '402894817e70aa23017e70aa3fc9023a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ksy63', 'n_ksy63@126.com', null, null, null, '402894817e70aa23017e70aa45ef02dc',
        '402894817e70aa23017e70aa349e0031');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qh64', 'n_qh64@126.com', null, null, null, '402894817e70aa23017e70aa45ef02dd',
        '402894817e70aa23017e70aa3d4d01bc');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hnerx65', 'n_hnerx65@126.com', null, null, null, '402894817e70aa23017e70aa45ef02de',
        '402894817e70aa23017e70aa3e6b01f5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bgp66', 'n_bgp66@126.com', null, null, null, '402894817e70aa23017e70aa45ef02df',
        '402894817e70aa23017e70aa34550028');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_67', 'n_67@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e0',
        '402894817e70aa23017e70aa3ea20200');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_acwmo68', 'n_acwmo68@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e1',
        '402894817e70aa23017e70aa3a3f0129');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rudn69', 'n_rudn69@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e2',
        '402894817e70aa23017e70aa37cb00b7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_q70', 'n_q70@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e3',
        '402894817e70aa23017e70aa3cda01a6');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_cn71', 'n_cn71@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e4',
        '402894817e70aa23017e70aa40320252');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_72', 'n_72@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e5',
        '402894817e70aa23017e70aa40a5026b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gpp73', 'n_gpp73@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e6',
        '402894817e70aa23017e70aa3c230183');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_khj74', 'n_khj74@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e7',
        '402894817e70aa23017e70aa3b200151');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pvtd75', 'n_pvtd75@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e8',
        '402894817e70aa23017e70aa41880294');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xjpb76', 'n_xjpb76@126.com', null, null, null, '402894817e70aa23017e70aa45ef02e9',
        '402894817e70aa23017e70aa3d6f01c3');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_77', 'n_77@126.com', null, null, null, '402894817e70aa23017e70aa45ef02ea',
        '402894817e70aa23017e70aa39e10117');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ycoir78', 'n_ycoir78@126.com', null, null, null, '402894817e70aa23017e70aa45ef02eb',
        '402894817e70aa23017e70aa3d0f01b0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_79', 'n_79@126.com', null, null, null, '402894817e70aa23017e70aa45ef02ec',
        '402894817e70aa23017e70aa3ab4013f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hj80', 'n_hj80@126.com', null, null, null, '402894817e70aa23017e70aa45f002ed',
        '402894817e70aa23017e70aa38fb00ee');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_81', 'n_81@126.com', null, null, null, '402894817e70aa23017e70aa45f002ee',
        '402894817e70aa23017e70aa3742009f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bhg82', 'n_bhg82@126.com', null, null, null, '402894817e70aa23017e70aa45f002ef',
        '402894817e70aa23017e70aa3b7c0163');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_uzo83', 'n_uzo83@126.com', null, null, null, '402894817e70aa23017e70aa45f002f0',
        '402894817e70aa23017e70aa3a1a0122');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kxjds84', 'n_kxjds84@126.com', null, null, null, '402894817e70aa23017e70aa45f002f1',
        '402894817e70aa23017e70aa3cc401a2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_l85', 'n_l85@126.com', null, null, null, '402894817e70aa23017e70aa45f002f2',
        '402894817e70aa23017e70aa376300a5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xwqvaxv86', 'n_xwqvaxv86@126.com', null, null, null, '402894817e70aa23017e70aa45f002f3',
        '402894817e70aa23017e70aa360a006a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_aoidbp87', 'n_aoidbp87@126.com', null, null, null, '402894817e70aa23017e70aa45f002f4',
        '402894817e70aa23017e70aa36560077');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_i88', 'n_i88@126.com', null, null, null, '402894817e70aa23017e70aa45f002f5',
        '402894817e70aa23017e70aa3ede0209');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_d89', 'n_d89@126.com', null, null, null, '402894817e70aa23017e70aa45f002f6',
        '402894817e70aa23017e70aa3aed0148');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_oj90', 'n_oj90@126.com', null, null, null, '402894817e70aa23017e70aa45f002f7',
        '402894817e70aa23017e70aa3a340127');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mw91', 'n_mw91@126.com', null, null, null, '402894817e70aa23017e70aa45f002f8',
        '402894817e70aa23017e70aa394500fb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_td92', 'n_td92@126.com', null, null, null, '402894817e70aa23017e70aa45f002f9',
        '402894817e70aa23017e70aa3dce01d4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_dhj93', 'n_dhj93@126.com', null, null, null, '402894817e70aa23017e70aa45f002fa',
        '402894817e70aa23017e70aa395a00ff');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zq94', 'n_zq94@126.com', null, null, null, '402894817e70aa23017e70aa45f102fb',
        '402894817e70aa23017e70aa3e3c01eb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hu95', 'n_hu95@126.com', null, null, null, '402894817e70aa23017e70aa45f102fc',
        '402894817e70aa23017e70aa4169028f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_96', 'n_96@126.com', null, null, null, '402894817e70aa23017e70aa45f102fd',
        '402894817e70aa23017e70aa35e20063');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ilcpor97', 'n_ilcpor97@126.com', null, null, null, '402894817e70aa23017e70aa45f102fe',
        '402894817e70aa23017e70aa3ad30144');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_98', 'n_98@126.com', null, null, null, '402894817e70aa23017e70aa45f102ff',
        '402894817e70aa23017e70aa34ec003d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_plox99', 'n_plox99@126.com', null, null, null, '402894817e70aa23017e70aa45f20300',
        '402894817e70aa23017e70aa3b06014c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gsm100', 'n_gsm100@126.com', null, null, null, '402894817e70aa23017e70aa45f20301',
        '402894817e70aa23017e70aa35e80064');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_avq101', 'n_avq101@126.com', null, null, null, '402894817e70aa23017e70aa45f30302',
        '402894817e70aa23017e70aa3c180181');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ypdw102', 'n_ypdw102@126.com', null, null, null, '402894817e70aa23017e70aa45f30303',
        '402894817e70aa23017e70aa3ffd0245');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mc103', 'n_mc103@126.com', null, null, null, '402894817e70aa23017e70aa45f30304',
        '402894817e70aa23017e70aa3d7a01c5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_c104', 'n_c104@126.com', null, null, null, '402894817e70aa23017e70aa45f30305',
        '402894817e70aa23017e70aa3e9801fe');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_x105', 'n_x105@126.com', null, null, null, '402894817e70aa23017e70aa45f30306',
        '402894817e70aa23017e70aa3ac60142');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_106', 'n_106@126.com', null, null, null, '402894817e70aa23017e70aa45f30307',
        '402894817e70aa23017e70aa3db501cf');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zf107', 'n_zf107@126.com', null, null, null, '402894817e70aa23017e70aa45f30308',
        '402894817e70aa23017e70aa3e8301fa');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vwe108', 'n_vwe108@126.com', null, null, null, '402894817e70aa23017e70aa45f30309',
        '402894817e70aa23017e70aa34fa003f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_eoyo109', 'n_eoyo109@126.com', null, null, null, '402894817e70aa23017e70aa45f3030a',
        '402894817e70aa23017e70aa3c62018f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ozet110', 'n_ozet110@126.com', null, null, null, '402894817e70aa23017e70aa45f3030b',
        '402894817e70aa23017e70aa3dc501d2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rj111', 'n_rj111@126.com', null, null, null, '402894817e70aa23017e70aa45f3030c',
        '402894817e70aa23017e70aa3ffd0245');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kog112', 'n_kog112@126.com', null, null, null, '402894817e70aa23017e70aa45f3030d',
        '402894817e70aa23017e70aa40280250');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_113', 'n_113@126.com', null, null, null, '402894817e70aa23017e70aa45f3030e',
        '402894817e70aa23017e70aa35cb005f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_sbzzw114', 'n_sbzzw114@126.com', null, null, null, '402894817e70aa23017e70aa45f3030f',
        '402894817e70aa23017e70aa3c780194');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_r115', 'n_r115@126.com', null, null, null, '402894817e70aa23017e70aa45f30310',
        '402894817e70aa23017e70aa34c50037');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_116', 'n_116@126.com', null, null, null, '402894817e70aa23017e70aa45f30311',
        '402894817e70aa23017e70aa410d0280');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_m117', 'n_m117@126.com', null, null, null, '402894817e70aa23017e70aa45f30312',
        '402894817e70aa23017e70aa34d9003a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_o118', 'n_o118@126.com', null, null, null, '402894817e70aa23017e70aa45f30313',
        '402894817e70aa23017e70aa3c5d018e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_a119', 'n_a119@126.com', null, null, null, '402894817e70aa23017e70aa45f30314',
        '402894817e70aa23017e70aa38c000e3');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_nik120', 'n_nik120@126.com', null, null, null, '402894817e70aa23017e70aa45f30315',
        '402894817e70aa23017e70aa3dec01da');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ut121', 'n_ut121@126.com', null, null, null, '402894817e70aa23017e70aa45f30316',
        '402894817e70aa23017e70aa34990030');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_yxz122', 'n_yxz122@126.com', null, null, null, '402894817e70aa23017e70aa45f30317',
        '402894817e70aa23017e70aa38ae00e0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_nxdrpe123', 'n_nxdrpe123@126.com', null, null, null, '402894817e70aa23017e70aa45f30318',
        '402894817e70aa23017e70aa3ef4020d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mcv124', 'n_mcv124@126.com', null, null, null, '402894817e70aa23017e70aa45f30319',
        '402894817e70aa23017e70aa3a850136');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pr125', 'n_pr125@126.com', null, null, null, '402894817e70aa23017e70aa45f3031a',
        '402894817e70aa23017e70aa3ca1019c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rhvtwj126', 'n_rhvtwj126@126.com', null, null, null, '402894817e70aa23017e70aa45f4031b',
        '402894817e70aa23017e70aa389a00dc');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ot127', 'n_ot127@126.com', null, null, null, '402894817e70aa23017e70aa45f4031c',
        '402894817e70aa23017e70aa374700a0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_jcry128', 'n_jcry128@126.com', null, null, null, '402894817e70aa23017e70aa45f4031d',
        '402894817e70aa23017e70aa391100f2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xr129', 'n_xr129@126.com', null, null, null, '402894817e70aa23017e70aa45f4031e',
        '402894817e70aa23017e70aa36500076');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_iuv130', 'n_iuv130@126.com', null, null, null, '402894817e70aa23017e70aa45f4031f',
        '402894817e70aa23017e70aa37fe00c1');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bkfs131', 'n_bkfs131@126.com', null, null, null, '402894817e70aa23017e70aa45f40320',
        '402894817e70aa23017e70aa36280070');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_a132', 'n_a132@126.com', null, null, null, '402894817e70aa23017e70aa45f40321',
        '402894817e70aa23017e70aa34d9003a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_cgoas133', 'n_cgoas133@126.com', null, null, null, '402894817e70aa23017e70aa45f50322',
        '402894817e70aa23017e70aa39840106');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mnu134', 'n_mnu134@126.com', null, null, null, '402894817e70aa23017e70aa45f50323',
        '402894817e70aa23017e70aa3b700161');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_135', 'n_135@126.com', null, null, null, '402894817e70aa23017e70aa45f50324',
        '402894817e70aa23017e70aa3e2a01e7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xxp136', 'n_xxp136@126.com', null, null, null, '402894817e70aa23017e70aa45f50325',
        '402894817e70aa23017e70aa3e7001f6');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ehj137', 'n_ehj137@126.com', null, null, null, '402894817e70aa23017e70aa45f50326',
        '402894817e70aa23017e70aa386e00d5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_oa138', 'n_oa138@126.com', null, null, null, '402894817e70aa23017e70aa45f50327',
        '402894817e70aa23017e70aa407c0262');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ai139', 'n_ai139@126.com', null, null, null, '402894817e70aa23017e70aa45f50328',
        '402894817e70aa23017e70aa3b0b014d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_cu140', 'n_cu140@126.com', null, null, null, '402894817e70aa23017e70aa45f50329',
        '402894817e70aa23017e70aa40460256');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_c141', 'n_c141@126.com', null, null, null, '402894817e70aa23017e70aa45f5032a',
        '402894817e70aa23017e70aa41120281');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_jd142', 'n_jd142@126.com', null, null, null, '402894817e70aa23017e70aa45f5032b',
        '402894817e70aa23017e70aa36ba0086');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_143', 'n_143@126.com', null, null, null, '402894817e70aa23017e70aa45f5032c',
        '402894817e70aa23017e70aa34220021');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kqiryi144', 'n_kqiryi144@126.com', null, null, null, '402894817e70aa23017e70aa45f5032d',
        '402894817e70aa23017e70aa3412001f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qb145', 'n_qb145@126.com', null, null, null, '402894817e70aa23017e70aa45f5032e',
        '402894817e70aa23017e70aa380300c2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ik146', 'n_ik146@126.com', null, null, null, '402894817e70aa23017e70aa45f5032f',
        '402894817e70aa23017e70aa37de00bb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ivuqq147', 'n_ivuqq147@126.com', null, null, null, '402894817e70aa23017e70aa45f50330',
        '402894817e70aa23017e70aa3e5301f0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_148', 'n_148@126.com', null, null, null, '402894817e70aa23017e70aa45f50331',
        '402894817e70aa23017e70aa3be20177');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_149', 'n_149@126.com', null, null, null, '402894817e70aa23017e70aa45f50332',
        '402894817e70aa23017e70aa4024024f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_150', 'n_150@126.com', null, null, null, '402894817e70aa23017e70aa45f50333',
        '402894817e70aa23017e70aa3392000e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ksyjo151', 'n_ksyjo151@126.com', null, null, null, '402894817e70aa23017e70aa45f50334',
        '402894817e70aa23017e70aa3cb2019f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_n152', 'n_n152@126.com', null, null, null, '402894817e70aa23017e70aa45f50335',
        '402894817e70aa23017e70aa375700a3');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rhg153', 'n_rhg153@126.com', null, null, null, '402894817e70aa23017e70aa45f50336',
        '402894817e70aa23017e70aa37c500b6');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qf154', 'n_qf154@126.com', null, null, null, '402894817e70aa23017e70aa45f50337',
        '402894817e70aa23017e70aa37de00bb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ac155', 'n_ac155@126.com', null, null, null, '402894817e70aa23017e70aa45f50338',
        '402894817e70aa23017e70aa3da401cc');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rq156', 'n_rq156@126.com', null, null, null, '402894817e70aa23017e70aa45f50339',
        '402894817e70aa23017e70aa33a20010');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vlp157', 'n_vlp157@126.com', null, null, null, '402894817e70aa23017e70aa45f5033a',
        '402894817e70aa23017e70aa35300048');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_paj158', 'n_paj158@126.com', null, null, null, '402894817e70aa23017e70aa45f6033b',
        '402894817e70aa23017e70aa3a100120');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_159', 'n_159@126.com', null, null, null, '402894817e70aa23017e70aa45f6033c',
        '402894817e70aa23017e70aa35300048');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_j160', 'n_j160@126.com', null, null, null, '402894817e70aa23017e70aa45f6033d',
        '402894817e70aa23017e70aa3f85022c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ntcnz161', 'n_ntcnz161@126.com', null, null, null, '402894817e70aa23017e70aa45f6033e',
        '402894817e70aa23017e70aa3c99019a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bzzhe162', 'n_bzzhe162@126.com', null, null, null, '402894817e70aa23017e70aa45f6033f',
        '402894817e70aa23017e70aa3e2301e5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wsiq163', 'n_wsiq163@126.com', null, null, null, '402894817e70aa23017e70aa45f60340',
        '402894817e70aa23017e70aa3fae0235');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zts164', 'n_zts164@126.com', null, null, null, '402894817e70aa23017e70aa45f60341',
        '402894817e70aa23017e70aa3e9801fe');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mrcw165', 'n_mrcw165@126.com', null, null, null, '402894817e70aa23017e70aa45f70342',
        '402894817e70aa23017e70aa34370024');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_o166', 'n_o166@126.com', null, null, null, '402894817e70aa23017e70aa45f70343',
        '402894817e70aa23017e70aa3a680131');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xgquw167', 'n_xgquw167@126.com', null, null, null, '402894817e70aa23017e70aa45f70344',
        '402894817e70aa23017e70aa3fe80240');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_sfuv168', 'n_sfuv168@126.com', null, null, null, '402894817e70aa23017e70aa45f70345',
        '402894817e70aa23017e70aa3a3f0129');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gnn169', 'n_gnn169@126.com', null, null, null, '402894817e70aa23017e70aa45f70346',
        '402894817e70aa23017e70aa390700f0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_170', 'n_170@126.com', null, null, null, '402894817e70aa23017e70aa45f70347',
        '402894817e70aa23017e70aa3d2b01b5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_nz171', 'n_nz171@126.com', null, null, null, '402894817e70aa23017e70aa45f70348',
        '402894817e70aa23017e70aa3da401cc');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ypke172', 'n_ypke172@126.com', null, null, null, '402894817e70aa23017e70aa45f70349',
        '402894817e70aa23017e70aa36d2008a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_h173', 'n_h173@126.com', null, null, null, '402894817e70aa23017e70aa45f7034a',
        '402894817e70aa23017e70aa375300a2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hc174', 'n_hc174@126.com', null, null, null, '402894817e70aa23017e70aa45f7034b',
        '402894817e70aa23017e70aa3fb90237');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_tkz175', 'n_tkz175@126.com', null, null, null, '402894817e70aa23017e70aa45f7034c',
        '402894817e70aa23017e70aa3b8e0166');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ssb176', 'n_ssb176@126.com', null, null, null, '402894817e70aa23017e70aa45f7034d',
        '402894817e70aa23017e70aa345d0029');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ann177', 'n_ann177@126.com', null, null, null, '402894817e70aa23017e70aa45f7034e',
        '402894817e70aa23017e70aa3faa0234');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_fehyk178', 'n_fehyk178@126.com', null, null, null, '402894817e70aa23017e70aa45f7034f',
        '402894817e70aa23017e70aa3c2d0185');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_inui179', 'n_inui179@126.com', null, null, null, '402894817e70aa23017e70aa45f70350',
        '402894817e70aa23017e70aa3fda023d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_yfyro180', 'n_yfyro180@126.com', null, null, null, '402894817e70aa23017e70aa45f70351',
        '402894817e70aa23017e70aa3ee4020a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_v181', 'n_v181@126.com', null, null, null, '402894817e70aa23017e70aa45f70352',
        '402894817e70aa23017e70aa4161028e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_uq182', 'n_uq182@126.com', null, null, null, '402894817e70aa23017e70aa45f70353',
        '402894817e70aa23017e70aa3e4001ec');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rl183', 'n_rl183@126.com', null, null, null, '402894817e70aa23017e70aa45f70354',
        '402894817e70aa23017e70aa34220021');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_x184', 'n_x184@126.com', null, null, null, '402894817e70aa23017e70aa45f70355',
        '402894817e70aa23017e70aa3d2401b4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_k185', 'n_k185@126.com', null, null, null, '402894817e70aa23017e70aa45f70356',
        '402894817e70aa23017e70aa3cf301ab');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_aht186', 'n_aht186@126.com', null, null, null, '402894817e70aa23017e70aa45f70357',
        '402894817e70aa23017e70aa3b760162');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_iup187', 'n_iup187@126.com', null, null, null, '402894817e70aa23017e70aa45f70358',
        '402894817e70aa23017e70aa408f0266');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qve188', 'n_qve188@126.com', null, null, null, '402894817e70aa23017e70aa45f70359',
        '402894817e70aa23017e70aa40280250');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_a189', 'n_a189@126.com', null, null, null, '402894817e70aa23017e70aa45f8035a',
        '402894817e70aa23017e70aa3ec70205');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zd190', 'n_zd190@126.com', null, null, null, '402894817e70aa23017e70aa45f8035b',
        '402894817e70aa23017e70aa3ac20141');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bg191', 'n_bg191@126.com', null, null, null, '402894817e70aa23017e70aa45f8035c',
        '402894817e70aa23017e70aa3a680131');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_uu192', 'n_uu192@126.com', null, null, null, '402894817e70aa23017e70aa45f8035d',
        '402894817e70aa23017e70aa395f0100');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_arn193', 'n_arn193@126.com', null, null, null, '402894817e70aa23017e70aa45f8035e',
        '402894817e70aa23017e70aa36a30082');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_v194', 'n_v194@126.com', null, null, null, '402894817e70aa23017e70aa45f8035f',
        '402894817e70aa23017e70aa40080248');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_d195', 'n_d195@126.com', null, null, null, '402894817e70aa23017e70aa45f80360',
        '402894817e70aa23017e70aa4103027e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_l196', 'n_l196@126.com', null, null, null, '402894817e70aa23017e70aa45f80361',
        '402894817e70aa23017e70aa3a1a0122');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_jnb197', 'n_jnb197@126.com', null, null, null, '402894817e70aa23017e70aa45f80362',
        '402894817e70aa23017e70aa3a800135');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wn198', 'n_wn198@126.com', null, null, null, '402894817e70aa23017e70aa45f80363',
        '402894817e70aa23017e70aa40370253');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ofh199', 'n_ofh199@126.com', null, null, null, '402894817e70aa23017e70aa45f80364',
        '402894817e70aa23017e70aa3b5d015d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_200', 'n_200@126.com', null, null, null, '402894817e70aa23017e70aa45f80365',
        '402894817e70aa23017e70aa40a0026a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qjo201', 'n_qjo201@126.com', null, null, null, '402894817e70aa23017e70aa45f80366',
        '402894817e70aa23017e70aa3ccf01a4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_c202', 'n_c202@126.com', null, null, null, '402894817e70aa23017e70aa45f90367',
        '402894817e70aa23017e70aa4058025a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_e203', 'n_e203@126.com', null, null, null, '402894817e70aa23017e70aa45f90368',
        '402894817e70aa23017e70aa349e0031');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kblz204', 'n_kblz204@126.com', null, null, null, '402894817e70aa23017e70aa45f90369',
        '402894817e70aa23017e70aa40d00274');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pymw205', 'n_pymw205@126.com', null, null, null, '402894817e70aa23017e70aa45f9036a',
        '402894817e70aa23017e70aa3a100120');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_aru206', 'n_aru206@126.com', null, null, null, '402894817e70aa23017e70aa45f9036b',
        '402894817e70aa23017e70aa3c5d018e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_n207', 'n_n207@126.com', null, null, null, '402894817e70aa23017e70aa45f9036c',
        '402894817e70aa23017e70aa37000093');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_f208', 'n_f208@126.com', null, null, null, '402894817e70aa23017e70aa45f9036d',
        '402894817e70aa23017e70aa3b760162');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ixv209', 'n_ixv209@126.com', null, null, null, '402894817e70aa23017e70aa45f9036e',
        '402894817e70aa23017e70aa41af029b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_210', 'n_210@126.com', null, null, null, '402894817e70aa23017e70aa45f9036f',
        '402894817e70aa23017e70aa385c00d2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xdnps211', 'n_xdnps211@126.com', null, null, null, '402894817e70aa23017e70aa45f90370',
        '402894817e70aa23017e70aa3412001f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_u212', 'n_u212@126.com', null, null, null, '402894817e70aa23017e70aa45f90371',
        '402894817e70aa23017e70aa3678007c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_x213', 'n_x213@126.com', null, null, null, '402894817e70aa23017e70aa45f90372',
        '402894817e70aa23017e70aa39930108');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rlh214', 'n_rlh214@126.com', null, null, null, '402894817e70aa23017e70aa45f90373',
        '402894817e70aa23017e70aa3be20177');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_n215', 'n_n215@126.com', null, null, null, '402894817e70aa23017e70aa45f90374',
        '402894817e70aa23017e70aa3a340127');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hgu216', 'n_hgu216@126.com', null, null, null, '402894817e70aa23017e70aa45f90375',
        '402894817e70aa23017e70aa34450026');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gd217', 'n_gd217@126.com', null, null, null, '402894817e70aa23017e70aa45f90376',
        '402894817e70aa23017e70aa36f50091');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gq218', 'n_gq218@126.com', null, null, null, '402894817e70aa23017e70aa45f90377',
        '402894817e70aa23017e70aa391b00f4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_t219', 'n_t219@126.com', null, null, null, '402894817e70aa23017e70aa45f90378',
        '402894817e70aa23017e70aa373c009e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_220', 'n_220@126.com', null, null, null, '402894817e70aa23017e70aa45f90379',
        '402894817e70aa23017e70aa3f85022c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zloht221', 'n_zloht221@126.com', null, null, null, '402894817e70aa23017e70aa45fa037a',
        '402894817e70aa23017e70aa3e4001ec');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gr222', 'n_gr222@126.com', null, null, null, '402894817e70aa23017e70aa45fa037b',
        '402894817e70aa23017e70aa37b300b2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ejj223', 'n_ejj223@126.com', null, null, null, '402894817e70aa23017e70aa45fa037c',
        '402894817e70aa23017e70aa3c940199');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ytdu224', 'n_ytdu224@126.com', null, null, null, '402894817e70aa23017e70aa45fa037d',
        '402894817e70aa23017e70aa3ce901a9');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_eoyg225', 'n_eoyg225@126.com', null, null, null, '402894817e70aa23017e70aa45fa037e',
        '402894817e70aa23017e70aa376900a6');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mc226', 'n_mc226@126.com', null, null, null, '402894817e70aa23017e70aa45fa037f',
        '402894817e70aa23017e70aa33be0014');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wf227', 'n_wf227@126.com', null, null, null, '402894817e70aa23017e70aa45fa0380',
        '402894817e70aa23017e70aa40410255');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_f228', 'n_f228@126.com', null, null, null, '402894817e70aa23017e70aa45fa0381',
        '402894817e70aa23017e70aa3f670226');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rtwefqnqd229', 'n_rtwefqnqd229@126.com', null, null, null, '402894817e70aa23017e70aa45fa0382',
        '402894817e70aa23017e70aa38fb00ee');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_fubnv230', 'n_fubnv230@126.com', null, null, null, '402894817e70aa23017e70aa45fa0383',
        '402894817e70aa23017e70aa3bfe017c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_j231', 'n_j231@126.com', null, null, null, '402894817e70aa23017e70aa45fa0384',
        '402894817e70aa23017e70aa3e2601e6');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_uwe232', 'n_uwe232@126.com', null, null, null, '402894817e70aa23017e70aa45fa0385',
        '402894817e70aa23017e70aa4108027f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lrhpyq233', 'n_lrhpyq233@126.com', null, null, null, '402894817e70aa23017e70aa45fa0386',
        '402894817e70aa23017e70aa339a000f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_of234', 'n_of234@126.com', null, null, null, '402894817e70aa23017e70aa45fa0387',
        '402894817e70aa23017e70aa35b2005b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_x235', 'n_x235@126.com', null, null, null, '402894817e70aa23017e70aa45fb0388',
        '402894817e70aa23017e70aa3fe5023f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_h236', 'n_h236@126.com', null, null, null, '402894817e70aa23017e70aa45fb0389',
        '402894817e70aa23017e70aa3c6f0192');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hhx237', 'n_hhx237@126.com', null, null, null, '402894817e70aa23017e70aa45fb038a',
        '402894817e70aa23017e70aa3d1a01b2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_npljd238', 'n_npljd238@126.com', null, null, null, '402894817e70aa23017e70aa45fb038b',
        '402894817e70aa23017e70aa396c0102');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_239', 'n_239@126.com', null, null, null, '402894817e70aa23017e70aa45fb038c',
        '402894817e70aa23017e70aa3c08017e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_jj240', 'n_jj240@126.com', null, null, null, '402894817e70aa23017e70aa45fb038d',
        '402894817e70aa23017e70aa3e0a01e0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_a241', 'n_a241@126.com', null, null, null, '402894817e70aa23017e70aa45fb038e',
        '402894817e70aa23017e70aa3e3c01eb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mv242', 'n_mv242@126.com', null, null, null, '402894817e70aa23017e70aa45fb038f',
        '402894817e70aa23017e70aa3faa0234');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ine243', 'n_ine243@126.com', null, null, null, '402894817e70aa23017e70aa45fb0390',
        '402894817e70aa23017e70aa3f3e021d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kfgv244', 'n_kfgv244@126.com', null, null, null, '402894817e70aa23017e70aa45fb0391',
        '402894817e70aa23017e70aa33d30017');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rnwid245', 'n_rnwid245@126.com', null, null, null, '402894817e70aa23017e70aa45fb0392',
        '402894817e70aa23017e70aa34cc0038');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_tzgo246', 'n_tzgo246@126.com', null, null, null, '402894817e70aa23017e70aa45fb0393',
        '402894817e70aa23017e70aa36af0084');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bbc247', 'n_bbc247@126.com', null, null, null, '402894817e70aa23017e70aa45fb0394',
        '402894817e70aa23017e70aa40780261');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hjj248', 'n_hjj248@126.com', null, null, null, '402894817e70aa23017e70aa45fb0395',
        '402894817e70aa23017e70aa40e10277');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_blvwad249', 'n_blvwad249@126.com', null, null, null, '402894817e70aa23017e70aa45fb0396',
        '402894817e70aa23017e70aa3725009a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mc250', 'n_mc250@126.com', null, null, null, '402894817e70aa23017e70aa45fb0397',
        '402894817e70aa23017e70aa3b10014e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zfqukl251', 'n_zfqukl251@126.com', null, null, null, '402894817e70aa23017e70aa45fb0398',
        '402894817e70aa23017e70aa40ae026d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_252', 'n_252@126.com', null, null, null, '402894817e70aa23017e70aa45fb0399',
        '402894817e70aa23017e70aa3f100213');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_253', 'n_253@126.com', null, null, null, '402894817e70aa23017e70aa45fb039a',
        '402894817e70aa23017e70aa3e3c01eb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kcsme254', 'n_kcsme254@126.com', null, null, null, '402894817e70aa23017e70aa45fb039b',
        '402894817e70aa23017e70aa3e5301f0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_i255', 'n_i255@126.com', null, null, null, '402894817e70aa23017e70aa45fb039c',
        '402894817e70aa23017e70aa41760291');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_256', 'n_256@126.com', null, null, null, '402894817e70aa23017e70aa45fb039d',
        '402894817e70aa23017e70aa4020024e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_prer257', 'n_prer257@126.com', null, null, null, '402894817e70aa23017e70aa45fb039e',
        '402894817e70aa23017e70aa3f5e0224');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_z258', 'n_z258@126.com', null, null, null, '402894817e70aa23017e70aa45fc039f',
        '402894817e70aa23017e70aa36e1008d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_dju259', 'n_dju259@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a0',
        '402894817e70aa23017e70aa34d10039');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_dpog260', 'n_dpog260@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a1',
        '402894817e70aa23017e70aa3a940139');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_abjlsf261', 'n_abjlsf261@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a2',
        '402894817e70aa23017e70aa385c00d2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_fdp262', 'n_fdp262@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a3',
        '402894817e70aa23017e70aa382b00c9');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bp263', 'n_bp263@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a4',
        '402894817e70aa23017e70aa40280250');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_jpu264', 'n_jpu264@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a5',
        '402894817e70aa23017e70aa399f010a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_d265', 'n_d265@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a6',
        '402894817e70aa23017e70aa3a9f013b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kcl266', 'n_kcl266@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a7',
        '402894817e70aa23017e70aa3742009f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zmjj267', 'n_zmjj267@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a8',
        '402894817e70aa23017e70aa35300048');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_nx268', 'n_nx268@126.com', null, null, null, '402894817e70aa23017e70aa45fc03a9',
        '402894817e70aa23017e70aa3c9d019b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hewdh269', 'n_hewdh269@126.com', null, null, null, '402894817e70aa23017e70aa45fc03aa',
        '402894817e70aa23017e70aa368f007f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_shx270', 'n_shx270@126.com', null, null, null, '402894817e70aa23017e70aa45fc03ab',
        '402894817e70aa23017e70aa4015024b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ykb271', 'n_ykb271@126.com', null, null, null, '402894817e70aa23017e70aa45fc03ac',
        '402894817e70aa23017e70aa33aa0011');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_sij272', 'n_sij272@126.com', null, null, null, '402894817e70aa23017e70aa45fc03ad',
        '402894817e70aa23017e70aa36eb008f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qjs273', 'n_qjs273@126.com', null, null, null, '402894817e70aa23017e70aa45fc03ae',
        '402894817e70aa23017e70aa3d7401c4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_274', 'n_274@126.com', null, null, null, '402894817e70aa23017e70aa45fc03af',
        '402894817e70aa23017e70aa3b940167');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bebz275', 'n_bebz275@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b0',
        '402894817e70aa23017e70aa35190044');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_dfpsq276', 'n_dfpsq276@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b1',
        '402894817e70aa23017e70aa41760291');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ufh277', 'n_ufh277@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b2',
        '402894817e70aa23017e70aa384200cd');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_278', 'n_278@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b3',
        '402894817e70aa23017e70aa3e4001ec');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wbegjemb279', 'n_wbegjemb279@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b4',
        '402894817e70aa23017e70aa419e0298');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_fszu280', 'n_fszu280@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b5',
        '402894817e70aa23017e70aa3b880165');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rskbp281', 'n_rskbp281@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b6',
        '402894817e70aa23017e70aa36cb0089');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_jwh282', 'n_jwh282@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b7',
        '402894817e70aa23017e70aa3b4a0159');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xfgno283', 'n_xfgno283@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b8',
        '402894817e70aa23017e70aa38dc00e8');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_t284', 'n_t284@126.com', null, null, null, '402894817e70aa23017e70aa45fc03b9',
        '402894817e70aa23017e70aa3e5801f1');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qclwqe285', 'n_qclwqe285@126.com', null, null, null, '402894817e70aa23017e70aa45fc03ba',
        '402894817e70aa23017e70aa38bb00e2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_dog286', 'n_dog286@126.com', null, null, null, '402894817e70aa23017e70aa45fc03bb',
        '402894817e70aa23017e70aa393e00fa');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vzf287', 'n_vzf287@126.com', null, null, null, '402894817e70aa23017e70aa45fd03bc',
        '402894817e70aa23017e70aa3b59015c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_el288', 'n_el288@126.com', null, null, null, '402894817e70aa23017e70aa45fd03bd',
        '402894817e70aa23017e70aa35190044');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ru289', 'n_ru289@126.com', null, null, null, '402894817e70aa23017e70aa45fd03be',
        '402894817e70aa23017e70aa3725009a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zcljc290', 'n_zcljc290@126.com', null, null, null, '402894817e70aa23017e70aa45fd03bf',
        '402894817e70aa23017e70aa408f0266');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_o291', 'n_o291@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c0',
        '402894817e70aa23017e70aa36280070');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zu292', 'n_zu292@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c1',
        '402894817e70aa23017e70aa379600ad');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wjwvlvr293', 'n_wjwvlvr293@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c2',
        '402894817e70aa23017e70aa3aed0148');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pi294', 'n_pi294@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c3',
        '402894817e70aa23017e70aa3ff00242');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_r295', 'n_r295@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c4',
        '402894817e70aa23017e70aa3ad30144');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pwut296', 'n_pwut296@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c5',
        '402894817e70aa23017e70aa40280250');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_297', 'n_297@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c6',
        '402894817e70aa23017e70aa38a500de');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_u298', 'n_u298@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c7',
        '402894817e70aa23017e70aa3d0a01af');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_299', 'n_299@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c8',
        '402894817e70aa23017e70aa39b0010e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zsrp300', 'n_zsrp300@126.com', null, null, null, '402894817e70aa23017e70aa45fd03c9',
        '402894817e70aa23017e70aa3f92022f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rnx301', 'n_rnx301@126.com', null, null, null, '402894817e70aa23017e70aa45fd03ca',
        '402894817e70aa23017e70aa3c440189');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xu302', 'n_xu302@126.com', null, null, null, '402894817e70aa23017e70aa45fd03cb',
        '402894817e70aa23017e70aa383600cb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_v303', 'n_v303@126.com', null, null, null, '402894817e70aa23017e70aa45fe03cc',
        '402894817e70aa23017e70aa3d7401c4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wgm304', 'n_wgm304@126.com', null, null, null, '402894817e70aa23017e70aa45fe03cd',
        '402894817e70aa23017e70aa343f0025');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_g305', 'n_g305@126.com', null, null, null, '402894817e70aa23017e70aa45fe03ce',
        '402894817e70aa23017e70aa3b880165');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ew306', 'n_ew306@126.com', null, null, null, '402894817e70aa23017e70aa45fe03cf',
        '402894817e70aa23017e70aa3eee020c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_unt307', 'n_unt307@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d0',
        '402894817e70aa23017e70aa3bc40171');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bvestg308', 'n_bvestg308@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d1',
        '402894817e70aa23017e70aa3a48012b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lg309', 'n_lg309@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d2',
        '402894817e70aa23017e70aa3c53018c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zwfv310', 'n_zwfv310@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d3',
        '402894817e70aa23017e70aa384c00cf');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vbj311', 'n_vbj311@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d4',
        '402894817e70aa23017e70aa3730009c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_trhdur312', 'n_trhdur312@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d5',
        '402894817e70aa23017e70aa409c0269');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_cnu313', 'n_cnu313@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d6',
        '402894817e70aa23017e70aa3c280184');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_leeu314', 'n_leeu314@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d7',
        '402894817e70aa23017e70aa41120281');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_c315', 'n_c315@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d8',
        '402894817e70aa23017e70aa3735009d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ezowp316', 'n_ezowp316@126.com', null, null, null, '402894817e70aa23017e70aa45fe03d9',
        '402894817e70aa23017e70aa3f34021b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_317', 'n_317@126.com', null, null, null, '402894817e70aa23017e70aa45fe03da',
        '402894817e70aa23017e70aa3f4d0220');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ta318', 'n_ta318@126.com', null, null, null, '402894817e70aa23017e70aa45fe03db',
        '402894817e70aa23017e70aa399f010a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zohe319', 'n_zohe319@126.com', null, null, null, '402894817e70aa23017e70aa45fe03dc',
        '402894817e70aa23017e70aa3bb6016e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_peao320', 'n_peao320@126.com', null, null, null, '402894817e70aa23017e70aa45fe03dd',
        '402894817e70aa23017e70aa39980109');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_fr321', 'n_fr321@126.com', null, null, null, '402894817e70aa23017e70aa45fe03de',
        '402894817e70aa23017e70aa3b7c0163');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wtvk322', 'n_wtvk322@126.com', null, null, null, '402894817e70aa23017e70aa45fe03df',
        '402894817e70aa23017e70aa3de701d9');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ens323', 'n_ens323@126.com', null, null, null, '402894817e70aa23017e70aa45fe03e0',
        '402894817e70aa23017e70aa40f9027c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ew324', 'n_ew324@126.com', null, null, null, '402894817e70aa23017e70aa45fe03e1',
        '402894817e70aa23017e70aa3c940199');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_raex325', 'n_raex325@126.com', null, null, null, '402894817e70aa23017e70aa45fe03e2',
        '402894817e70aa23017e70aa3c940199');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_e326', 'n_e326@126.com', null, null, null, '402894817e70aa23017e70aa45fe03e3',
        '402894817e70aa23017e70aa38c500e4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_jdkeq327', 'n_jdkeq327@126.com', null, null, null, '402894817e70aa23017e70aa45fe03e4',
        '402894817e70aa23017e70aa381e00c7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_js328', 'n_js328@126.com', null, null, null, '402894817e70aa23017e70aa45fe03e5',
        '402894817e70aa23017e70aa3b7c0163');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wz329', 'n_wz329@126.com', null, null, null, '402894817e70aa23017e70aa45fe03e6',
        '402894817e70aa23017e70aa3c180181');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ym330', 'n_ym330@126.com', null, null, null, '402894817e70aa23017e70aa45fe03e7',
        '402894817e70aa23017e70aa35ab005a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_g331', 'n_g331@126.com', null, null, null, '402894817e70aa23017e70aa45ff03e8',
        '402894817e70aa23017e70aa3e5301f0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_sijd332', 'n_sijd332@126.com', null, null, null, '402894817e70aa23017e70aa45ff03e9',
        '402894817e70aa23017e70aa40d60275');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_nmzo333', 'n_nmzo333@126.com', null, null, null, '402894817e70aa23017e70aa45ff03ea',
        '402894817e70aa23017e70aa34550028');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_fj334', 'n_fj334@126.com', null, null, null, '402894817e70aa23017e70aa45ff03eb',
        '402894817e70aa23017e70aa34e6003c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xoiu335', 'n_xoiu335@126.com', null, null, null, '402894817e70aa23017e70aa45ff03ec',
        '402894817e70aa23017e70aa3de701d9');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_s336', 'n_s336@126.com', null, null, null, '402894817e70aa23017e70aa45ff03ed',
        '402894817e70aa23017e70aa34550028');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_nt337', 'n_nt337@126.com', null, null, null, '402894817e70aa23017e70aa45ff03ee',
        '402894817e70aa23017e70aa37b800b3');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_grn338', 'n_grn338@126.com', null, null, null, '402894817e70aa23017e70aa45ff03ef',
        '402894817e70aa23017e70aa39d20114');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_fxa339', 'n_fxa339@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f0',
        '402894817e70aa23017e70aa3b240152');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_i340', 'n_i340@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f1',
        '402894817e70aa23017e70aa370f0096');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_cpta341', 'n_cpta341@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f2',
        '402894817e70aa23017e70aa35b2005b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gqxm342', 'n_gqxm342@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f3',
        '402894817e70aa23017e70aa3a3f0129');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_tz343', 'n_tz343@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f4',
        '402894817e70aa23017e70aa3d9e01cb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_tbhu344', 'n_tbhu344@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f5',
        '402894817e70aa23017e70aa41760291');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vcd345', 'n_vcd345@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f6',
        '402894817e70aa23017e70aa3ef4020d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mcih346', 'n_mcih346@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f7',
        '402894817e70aa23017e70aa3cb2019f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_egt347', 'n_egt347@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f8',
        '402894817e70aa23017e70aa379000ac');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_348', 'n_348@126.com', null, null, null, '402894817e70aa23017e70aa45ff03f9',
        '402894817e70aa23017e70aa419e0298');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_cztp349', 'n_cztp349@126.com', null, null, null, '402894817e70aa23017e70aa45ff03fa',
        '402894817e70aa23017e70aa399f010a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_r350', 'n_r350@126.com', null, null, null, '402894817e70aa23017e70aa45ff03fb',
        '402894817e70aa23017e70aa3d0201ae');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_h351', 'n_h351@126.com', null, null, null, '402894817e70aa23017e70aa45ff03fc',
        '402894817e70aa23017e70aa3d1a01b2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bw352', 'n_bw352@126.com', null, null, null, '402894817e70aa23017e70aa45ff03fd',
        '402894817e70aa23017e70aa3a8b0137');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_la353', 'n_la353@126.com', null, null, null, '402894817e70aa23017e70aa45ff03fe',
        '402894817e70aa23017e70aa3b200151');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hm354', 'n_hm354@126.com', null, null, null, '402894817e70aa23017e70aa45ff03ff',
        '402894817e70aa23017e70aa34b20034');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_azni355', 'n_azni355@126.com', null, null, null, '402894817e70aa23017e70aa46000400',
        '402894817e70aa23017e70aa3cb2019f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_f356', 'n_f356@126.com', null, null, null, '402894817e70aa23017e70aa46000401',
        '402894817e70aa23017e70aa34550028');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vs357', 'n_vs357@126.com', null, null, null, '402894817e70aa23017e70aa46000402',
        '402894817e70aa23017e70aa3d5901bf');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lqln358', 'n_lqln358@126.com', null, null, null, '402894817e70aa23017e70aa46000403',
        '402894817e70aa23017e70aa39bd0110');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_dkj359', 'n_dkj359@126.com', null, null, null, '402894817e70aa23017e70aa46000404',
        '402894817e70aa23017e70aa3bf3017a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_el360', 'n_el360@126.com', null, null, null, '402894817e70aa23017e70aa46000405',
        '402894817e70aa23017e70aa349e0031');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mlns361', 'n_mlns361@126.com', null, null, null, '402894817e70aa23017e70aa46000406',
        '402894817e70aa23017e70aa376300a5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lcve362', 'n_lcve362@126.com', null, null, null, '402894817e70aa23017e70aa46000407',
        '402894817e70aa23017e70aa418e0295');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ht363', 'n_ht363@126.com', null, null, null, '402894817e70aa23017e70aa46000408',
        '402894817e70aa23017e70aa40e90279');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hdj364', 'n_hdj364@126.com', null, null, null, '402894817e70aa23017e70aa46000409',
        '402894817e70aa23017e70aa38c500e4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_n365', 'n_n365@126.com', null, null, null, '402894817e70aa23017e70aa4600040a',
        '402894817e70aa23017e70aa392d00f7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_v366', 'n_v366@126.com', null, null, null, '402894817e70aa23017e70aa4600040b',
        '402894817e70aa23017e70aa3ce301a8');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_e367', 'n_e367@126.com', null, null, null, '402894817e70aa23017e70aa4600040c',
        '402894817e70aa23017e70aa3b3f0157');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_b368', 'n_b368@126.com', null, null, null, '402894817e70aa23017e70aa4600040d',
        '402894817e70aa23017e70aa3389000d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_c369', 'n_c369@126.com', null, null, null, '402894817e70aa23017e70aa4600040e',
        '402894817e70aa23017e70aa3a340127');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zq370', 'n_zq370@126.com', null, null, null, '402894817e70aa23017e70aa4600040f',
        '402894817e70aa23017e70aa3a58012e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lwb371', 'n_lwb371@126.com', null, null, null, '402894817e70aa23017e70aa46000410',
        '402894817e70aa23017e70aa403b0254');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_yz372', 'n_yz372@126.com', null, null, null, '402894817e70aa23017e70aa46000411',
        '402894817e70aa23017e70aa3a99013a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lsq373', 'n_lsq373@126.com', null, null, null, '402894817e70aa23017e70aa46000412',
        '402894817e70aa23017e70aa3ddb01d7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_374', 'n_374@126.com', null, null, null, '402894817e70aa23017e70aa46000413',
        '402894817e70aa23017e70aa3b700161');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hdkpn375', 'n_hdkpn375@126.com', null, null, null, '402894817e70aa23017e70aa46000414',
        '402894817e70aa23017e70aa411f0283');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_jra376', 'n_jra376@126.com', null, null, null, '402894817e70aa23017e70aa46010415',
        '402894817e70aa23017e70aa40410255');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mirary377', 'n_mirary377@126.com', null, null, null, '402894817e70aa23017e70aa46010416',
        '402894817e70aa23017e70aa41250284');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rjn378', 'n_rjn378@126.com', null, null, null, '402894817e70aa23017e70aa46010417',
        '402894817e70aa23017e70aa39a4010b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lqfr379', 'n_lqfr379@126.com', null, null, null, '402894817e70aa23017e70aa46010418',
        '402894817e70aa23017e70aa37d500b9');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pgud380', 'n_pgud380@126.com', null, null, null, '402894817e70aa23017e70aa46010419',
        '402894817e70aa23017e70aa36450074');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wgrkj381', 'n_wgrkj381@126.com', null, null, null, '402894817e70aa23017e70aa4601041a',
        '402894817e70aa23017e70aa39fa011c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_m382', 'n_m382@126.com', null, null, null, '402894817e70aa23017e70aa4601041b',
        '402894817e70aa23017e70aa419e0298');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_383', 'n_383@126.com', null, null, null, '402894817e70aa23017e70aa4601041c',
        '402894817e70aa23017e70aa3f43021e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zy384', 'n_zy384@126.com', null, null, null, '402894817e70aa23017e70aa4601041d',
        '402894817e70aa23017e70aa3bb6016e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zgt385', 'n_zgt385@126.com', null, null, null, '402894817e70aa23017e70aa4601041e',
        '402894817e70aa23017e70aa39760104');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_a386', 'n_a386@126.com', null, null, null, '402894817e70aa23017e70aa4601041f',
        '402894817e70aa23017e70aa3f8f022e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lp387', 'n_lp387@126.com', null, null, null, '402894817e70aa23017e70aa46010420',
        '402894817e70aa23017e70aa3b9a0169');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vb388', 'n_vb388@126.com', null, null, null, '402894817e70aa23017e70aa46010421',
        '402894817e70aa23017e70aa3a140121');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wn389', 'n_wn389@126.com', null, null, null, '402894817e70aa23017e70aa46010422',
        '402894817e70aa23017e70aa3d7401c4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zlrq390', 'n_zlrq390@126.com', null, null, null, '402894817e70aa23017e70aa46010423',
        '402894817e70aa23017e70aa38a500de');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_yxwadu391', 'n_yxwadu391@126.com', null, null, null, '402894817e70aa23017e70aa46010424',
        '402894817e70aa23017e70aa35120043');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_uwdh392', 'n_uwdh392@126.com', null, null, null, '402894817e70aa23017e70aa46010425',
        '402894817e70aa23017e70aa3cad019e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_jwwxs393', 'n_jwwxs393@126.com', null, null, null, '402894817e70aa23017e70aa46010426',
        '402894817e70aa23017e70aa3faa0234');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_z394', 'n_z394@126.com', null, null, null, '402894817e70aa23017e70aa46010427',
        '402894817e70aa23017e70aa35f40066');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zoy395', 'n_zoy395@126.com', null, null, null, '402894817e70aa23017e70aa46010428',
        '402894817e70aa23017e70aa3c940199');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ybafn396', 'n_ybafn396@126.com', null, null, null, '402894817e70aa23017e70aa46010429',
        '402894817e70aa23017e70aa36280070');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wz397', 'n_wz397@126.com', null, null, null, '402894817e70aa23017e70aa4602042a',
        '402894817e70aa23017e70aa39700103');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ohpxe398', 'n_ohpxe398@126.com', null, null, null, '402894817e70aa23017e70aa4602042b',
        '402894817e70aa23017e70aa3cf301ab');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_laihl399', 'n_laihl399@126.com', null, null, null, '402894817e70aa23017e70aa4602042c',
        '402894817e70aa23017e70aa3d5901bf');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_gm400', 'n_gm400@126.com', null, null, null, '402894817e70aa23017e70aa4602042d',
        '402894817e70aa23017e70aa35fe0068');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_cv401', 'n_cv401@126.com', null, null, null, '402894817e70aa23017e70aa4602042e',
        '402894817e70aa23017e70aa3dc501d2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_402', 'n_402@126.com', null, null, null, '402894817e70aa23017e70aa4602042f',
        '402894817e70aa23017e70aa3d9601ca');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_a403', 'n_a403@126.com', null, null, null, '402894817e70aa23017e70aa46020430',
        '402894817e70aa23017e70aa33d30017');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_dcm404', 'n_dcm404@126.com', null, null, null, '402894817e70aa23017e70aa46020431',
        '402894817e70aa23017e70aa36db008c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_405', 'n_405@126.com', null, null, null, '402894817e70aa23017e70aa46020432',
        '402894817e70aa23017e70aa40460256');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_406', 'n_406@126.com', null, null, null, '402894817e70aa23017e70aa46020433',
        '402894817e70aa23017e70aa3d8601c7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bz407', 'n_bz407@126.com', null, null, null, '402894817e70aa23017e70aa46020434',
        '402894817e70aa23017e70aa3b54015b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_yxi408', 'n_yxi408@126.com', null, null, null, '402894817e70aa23017e70aa46020435',
        '402894817e70aa23017e70aa3fae0235');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ujcv409', 'n_ujcv409@126.com', null, null, null, '402894817e70aa23017e70aa46030436',
        '402894817e70aa23017e70aa3c2d0185');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_whtqa410', 'n_whtqa410@126.com', null, null, null, '402894817e70aa23017e70aa46030437',
        '402894817e70aa23017e70aa3e9e01ff');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wnx411', 'n_wnx411@126.com', null, null, null, '402894817e70aa23017e70aa46030438',
        '402894817e70aa23017e70aa3b63015e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_owz412', 'n_owz412@126.com', null, null, null, '402894817e70aa23017e70aa46030439',
        '402894817e70aa23017e70aa34de003b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ep413', 'n_ep413@126.com', null, null, null, '402894817e70aa23017e70aa4603043a',
        '402894817e70aa23017e70aa381a00c6');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xn414', 'n_xn414@126.com', null, null, null, '402894817e70aa23017e70aa4603043b',
        '402894817e70aa23017e70aa3d0201ae');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_415', 'n_415@126.com', null, null, null, '402894817e70aa23017e70aa4603043c',
        '402894817e70aa23017e70aa40320252');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kisg416', 'n_kisg416@126.com', null, null, null, '402894817e70aa23017e70aa4603043d',
        '402894817e70aa23017e70aa39d20114');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bln417', 'n_bln417@126.com', null, null, null, '402894817e70aa23017e70aa4603043e',
        '402894817e70aa23017e70aa35d10060');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_twhi418', 'n_twhi418@126.com', null, null, null, '402894817e70aa23017e70aa4603043f',
        '402894817e70aa23017e70aa3d5901bf');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mjta419', 'n_mjta419@126.com', null, null, null, '402894817e70aa23017e70aa46030440',
        '402894817e70aa23017e70aa33e30019');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_z420', 'n_z420@126.com', null, null, null, '402894817e70aa23017e70aa46040441',
        '402894817e70aa23017e70aa381a00c6');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_lbzdy421', 'n_lbzdy421@126.com', null, null, null, '402894817e70aa23017e70aa46040442',
        '402894817e70aa23017e70aa3cdf01a7');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qj422', 'n_qj422@126.com', null, null, null, '402894817e70aa23017e70aa46040443',
        '402894817e70aa23017e70aa3730009c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xdzso423', 'n_xdzso423@126.com', null, null, null, '402894817e70aa23017e70aa46040444',
        '402894817e70aa23017e70aa3f180215');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pthxt424', 'n_pthxt424@126.com', null, null, null, '402894817e70aa23017e70aa46040445',
        '402894817e70aa23017e70aa383600cb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_duco425', 'n_duco425@126.com', null, null, null, '402894817e70aa23017e70aa46040446',
        '402894817e70aa23017e70aa39e60118');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_onbswq426', 'n_onbswq426@126.com', null, null, null, '402894817e70aa23017e70aa46040447',
        '402894817e70aa23017e70aa35840054');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_c427', 'n_c427@126.com', null, null, null, '402894817e70aa23017e70aa46040448',
        '402894817e70aa23017e70aa39a9010c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_l428', 'n_l428@126.com', null, null, null, '402894817e70aa23017e70aa46040449',
        '402894817e70aa23017e70aa41120281');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bd429', 'n_bd429@126.com', null, null, null, '402894817e70aa23017e70aa4604044a',
        '402894817e70aa23017e70aa3f92022f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_exq430', 'n_exq430@126.com', null, null, null, '402894817e70aa23017e70aa4604044b',
        '402894817e70aa23017e70aa370a0095');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_wqy431', 'n_wqy431@126.com', null, null, null, '402894817e70aa23017e70aa4604044c',
        '402894817e70aa23017e70aa3556004e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vkset432', 'n_vkset432@126.com', null, null, null, '402894817e70aa23017e70aa4604044d',
        '402894817e70aa23017e70aa34d10039');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_433', 'n_433@126.com', null, null, null, '402894817e70aa23017e70aa4604044e',
        '402894817e70aa23017e70aa387100d6');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_a434', 'n_a434@126.com', null, null, null, '402894817e70aa23017e70aa4604044f',
        '402894817e70aa23017e70aa3a800135');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ytva435', 'n_ytva435@126.com', null, null, null, '402894817e70aa23017e70aa46040450',
        '402894817e70aa23017e70aa3e6b01f5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_qxygh436', 'n_qxygh436@126.com', null, null, null, '402894817e70aa23017e70aa46040451',
        '402894817e70aa23017e70aa41760291');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_d437', 'n_d437@126.com', null, null, null, '402894817e70aa23017e70aa46040452',
        '402894817e70aa23017e70aa33aa0011');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hqr438', 'n_hqr438@126.com', null, null, null, '402894817e70aa23017e70aa46040453',
        '402894817e70aa23017e70aa3cd401a5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hixv439', 'n_hixv439@126.com', null, null, null, '402894817e70aa23017e70aa46040454',
        '402894817e70aa23017e70aa386700d4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kuc440', 'n_kuc440@126.com', null, null, null, '402894817e70aa23017e70aa46040455',
        '402894817e70aa23017e70aa379600ad');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_edaieh441', 'n_edaieh441@126.com', null, null, null, '402894817e70aa23017e70aa46040456',
        '402894817e70aa23017e70aa411f0283');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_442', 'n_442@126.com', null, null, null, '402894817e70aa23017e70aa46040457',
        '402894817e70aa23017e70aa40f9027c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ysd443', 'n_ysd443@126.com', null, null, null, '402894817e70aa23017e70aa46040458',
        '402894817e70aa23017e70aa3d5101bd');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_dgfs444', 'n_dgfs444@126.com', null, null, null, '402894817e70aa23017e70aa46040459',
        '402894817e70aa23017e70aa39d20114');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xzpb445', 'n_xzpb445@126.com', null, null, null, '402894817e70aa23017e70aa4604045a',
        '402894817e70aa23017e70aa3e0e01e1');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_izxu446', 'n_izxu446@126.com', null, null, null, '402894817e70aa23017e70aa4604045b',
        '402894817e70aa23017e70aa3bc80172');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_k447', 'n_k447@126.com', null, null, null, '402894817e70aa23017e70aa4604045c',
        '402894817e70aa23017e70aa3ac20141');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_koa448', 'n_koa448@126.com', null, null, null, '402894817e70aa23017e70aa4604045d',
        '402894817e70aa23017e70aa3cee01aa');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_yki449', 'n_yki449@126.com', null, null, null, '402894817e70aa23017e70aa4604045e',
        '402894817e70aa23017e70aa3b59015c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_a450', 'n_a450@126.com', null, null, null, '402894817e70aa23017e70aa4604045f',
        '402894817e70aa23017e70aa40040247');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_l451', 'n_l451@126.com', null, null, null, '402894817e70aa23017e70aa46040460',
        '402894817e70aa23017e70aa3cb701a0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_werw452', 'n_werw452@126.com', null, null, null, '402894817e70aa23017e70aa46040461',
        '402894817e70aa23017e70aa3a48012b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_453', 'n_453@126.com', null, null, null, '402894817e70aa23017e70aa46050462',
        '402894817e70aa23017e70aa3f39021c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_tgy454', 'n_tgy454@126.com', null, null, null, '402894817e70aa23017e70aa46050463',
        '402894817e70aa23017e70aa343f0025');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ppk455', 'n_ppk455@126.com', null, null, null, '402894817e70aa23017e70aa46050464',
        '402894817e70aa23017e70aa39b8010f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_l456', 'n_l456@126.com', null, null, null, '402894817e70aa23017e70aa46050465',
        '402894817e70aa23017e70aa385c00d2');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ov457', 'n_ov457@126.com', null, null, null, '402894817e70aa23017e70aa46050466',
        '402894817e70aa23017e70aa34de003b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_abac458', 'n_abac458@126.com', null, null, null, '402894817e70aa23017e70aa46050467',
        '402894817e70aa23017e70aa373c009e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_foto459', 'n_foto459@126.com', null, null, null, '402894817e70aa23017e70aa46050468',
        '402894817e70aa23017e70aa37e800bd');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_u460', 'n_u460@126.com', null, null, null, '402894817e70aa23017e70aa46050469',
        '402894817e70aa23017e70aa3bfe017c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_uivc461', 'n_uivc461@126.com', null, null, null, '402894817e70aa23017e70aa4605046a',
        '402894817e70aa23017e70aa3fdf023e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_xc462', 'n_xc462@126.com', null, null, null, '402894817e70aa23017e70aa4605046b',
        '402894817e70aa23017e70aa392200f5');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mgp463', 'n_mgp463@126.com', null, null, null, '402894817e70aa23017e70aa4605046c',
        '402894817e70aa23017e70aa39c30111');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vuzrb464', 'n_vuzrb464@126.com', null, null, null, '402894817e70aa23017e70aa4605046d',
        '402894817e70aa23017e70aa3e3801ea');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_se465', 'n_se465@126.com', null, null, null, '402894817e70aa23017e70aa4605046e',
        '402894817e70aa23017e70aa3b1b0150');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_smlp466', 'n_smlp466@126.com', null, null, null, '402894817e70aa23017e70aa4605046f',
        '402894817e70aa23017e70aa3d9e01cb');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_nnmofgv467', 'n_nnmofgv467@126.com', null, null, null, '402894817e70aa23017e70aa46050470',
        '402894817e70aa23017e70aa3a44012a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_zgc468', 'n_zgc468@126.com', null, null, null, '402894817e70aa23017e70aa46050471',
        '402894817e70aa23017e70aa35230046');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pg469', 'n_pg469@126.com', null, null, null, '402894817e70aa23017e70aa46050472',
        '402894817e70aa23017e70aa407c0262');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_omait470', 'n_omait470@126.com', null, null, null, '402894817e70aa23017e70aa46050473',
        '402894817e70aa23017e70aa33ea001a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pk471', 'n_pk471@126.com', null, null, null, '402894817e70aa23017e70aa46050474',
        '402894817e70aa23017e70aa3bac016c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_i472', 'n_i472@126.com', null, null, null, '402894817e70aa23017e70aa46050475',
        '402894817e70aa23017e70aa3aaa013d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_e473', 'n_e473@126.com', null, null, null, '402894817e70aa23017e70aa46050476',
        '402894817e70aa23017e70aa3b54015b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_474', 'n_474@126.com', null, null, null, '402894817e70aa23017e70aa46050477',
        '402894817e70aa23017e70aa3550004d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_cgx475', 'n_cgx475@126.com', null, null, null, '402894817e70aa23017e70aa46050478',
        '402894817e70aa23017e70aa3b5d015d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ofx476', 'n_ofx476@126.com', null, null, null, '402894817e70aa23017e70aa46050479',
        '402894817e70aa23017e70aa39a9010c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ypz477', 'n_ypz477@126.com', null, null, null, '402894817e70aa23017e70aa4605047a',
        '402894817e70aa23017e70aa3b360155');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_bxz478', 'n_bxz478@126.com', null, null, null, '402894817e70aa23017e70aa4605047b',
        '402894817e70aa23017e70aa3f0b0212');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_b479', 'n_b479@126.com', null, null, null, '402894817e70aa23017e70aa4606047c',
        '402894817e70aa23017e70aa3e3801ea');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_iv480', 'n_iv480@126.com', null, null, null, '402894817e70aa23017e70aa4606047d',
        '402894817e70aa23017e70aa3dce01d4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_481', 'n_481@126.com', null, null, null, '402894817e70aa23017e70aa4606047e',
        '402894817e70aa23017e70aa3f7c022a');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_putj482', 'n_putj482@126.com', null, null, null, '402894817e70aa23017e70aa4606047f',
        '402894817e70aa23017e70aa405c025b');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_hviu483', 'n_hviu483@126.com', null, null, null, '402894817e70aa23017e70aa46060480',
        '402894817e70aa23017e70aa3bcc0173');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_x484', 'n_x484@126.com', null, null, null, '402894817e70aa23017e70aa46060481',
        '402894817e70aa23017e70aa3cb701a0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_fuaf485', 'n_fuaf485@126.com', null, null, null, '402894817e70aa23017e70aa46060482',
        '402894817e70aa23017e70aa3aaa013d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pn486', 'n_pn486@126.com', null, null, null, '402894817e70aa23017e70aa46060483',
        '402894817e70aa23017e70aa35010040');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_x487', 'n_x487@126.com', null, null, null, '402894817e70aa23017e70aa46060484',
        '402894817e70aa23017e70aa3b0b014d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_vjje488', 'n_vjje488@126.com', null, null, null, '402894817e70aa23017e70aa46060485',
        '402894817e70aa23017e70aa35230046');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_x489', 'n_x489@126.com', null, null, null, '402894817e70aa23017e70aa46060486',
        '402894817e70aa23017e70aa3e6701f4');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_mfym490', 'n_mfym490@126.com', null, null, null, '402894817e70aa23017e70aa46060487',
        '402894817e70aa23017e70aa3f92022f');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_iazlmb491', 'n_iazlmb491@126.com', null, null, null, '402894817e70aa23017e70aa46060488',
        '402894817e70aa23017e70aa36a30082');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_sl492', 'n_sl492@126.com', null, null, null, '402894817e70aa23017e70aa46060489',
        '402894817e70aa23017e70aa3ea20200');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_x493', 'n_x493@126.com', null, null, null, '402894817e70aa23017e70aa4606048a',
        '402894817e70aa23017e70aa3389000d');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_kgdut494', 'n_kgdut494@126.com', null, null, null, '402894817e70aa23017e70aa4606048b',
        '402894817e70aa23017e70aa40b2026e');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_ajqr495', 'n_ajqr495@126.com', null, null, null, '402894817e70aa23017e70aa4606048c',
        '402894817e70aa23017e70aa3e5301f0');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_rqhx496', 'n_rqhx496@126.com', null, null, null, '402894817e70aa23017e70aa4606048d',
        '402894817e70aa23017e70aa36fb0092');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_sqd497', 'n_sqd497@126.com', null, null, null, '402894817e70aa23017e70aa4606048e',
        '402894817e70aa23017e70aa35b8005c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_pn498', 'n_pn498@126.com', null, null, null, '402894817e70aa23017e70aa4606048f',
        '402894817e70aa23017e70aa3df201db');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_499', 'n_499@126.com', null, null, null, '402894817e70aa23017e70aa46060490',
        '402894817e70aa23017e70aa3381000c');
INSERT INTO t_s_user (address, email, id_card, mobile_phone, office_phone, id, city_id)
VALUES ('n_plw500', 'n_plw500@126.com', null, null, null, '402894817e70aa23017e70aa46060491',
        '402894817e70aa23017e70aa3a48012b');


create table t_s_role
(
    id          varchar(64)  not null
        primary key,
    create_by   varchar(64)  null,
    create_time datetime(6)  null,
    update_by   varchar(64)  null,
    update_time datetime(6)  null,
    code        varchar(20)  null,
    name        varchar(50)  null,
    remark      varchar(500) null
);

INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa32f90000', null, null, null, null, 'r_s1', 'r_s1', 'r_s1');
INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa330f0001', null, null, null, null, 'r_e2', 'r_e2', 'r_e2');
INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa330f0002', null, null, null, null, 'r_kd3', 'r_kd3', 'r_kd3');
INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa330f0003', null, null, null, null, 'r_za4', 'r_za4', 'r_za4');
INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa330f0004', null, null, null, null, 'r_yogk5', 'r_yogk5', 'r_yogk5');
INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa330f0005', null, null, null, null, 'r_rulgd6', 'r_rulgd6', 'r_rulgd6');
INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa330f0006', null, null, null, null, 'r_ac7', 'r_ac7', 'r_ac7');
INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa330f0007', null, null, null, null, 'r_ou8', 'r_ou8', 'r_ou8');
INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa33100008', null, null, null, null, 'r_ty9', 'r_ty9', 'r_ty9');
INSERT INTO t_s_role (id, create_by, create_time, update_by, update_time, code, name, remark)
VALUES ('402894817e70aa23017e70aa33100009', null, null, null, null, 'r_uuetc10', 'r_uuetc10', 'r_uuetc10');


create table t_s_user_role
(
    id          varchar(64) not null
        primary key,
    create_by   varchar(64) null,
    create_time datetime(6) null,
    update_by   varchar(64) null,
    update_time datetime(6) null,
    role_id     varchar(64) null,
    user_id     varchar(64) null,
    constraint FK3uioe0bqa0xm79li4s1bwd6q0
        foreign key (user_id) references t_s_user (id),
    constraint FKn3iupfu5h33lq5wx35gmk9gnb
        foreign key (role_id) references t_s_role (id)
);

INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afc0492', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45e8029e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd0493', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45e9029f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd0494', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45e9029f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd0495', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45e902a0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd0496', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45e902a0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd0497', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45e902a1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd0498', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45e902a1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd0499', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45e902a2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd049a', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45e902a3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd049b', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45e902a3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd049c', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45e902a4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd049d', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45e902a4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd049e', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45e902a5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd049f', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45e902a5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd04a0', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45e902a6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd04a1', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45e902a7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd04a2', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45e902a8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd04a3', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45e902a8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd04a4', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45e902a9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afd04a5', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45e902aa');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04a6', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45e902ab');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04a7', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45e902ac');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04a8', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ea02ad');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04a9', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ec02ae');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04aa', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ec02ae');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04ab', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ec02af');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04ac', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ed02b0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04ad', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ed02b0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04ae', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ed02b1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04af', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ed02b1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b0', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ed02b2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b1', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ed02b3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b2', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ed02b4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b3', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45ed02b5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b4', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ed02b5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b5', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ed02b6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b6', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ed02b7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b7', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45ed02b7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b8', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ed02b8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04b9', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ed02b9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04ba', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ed02ba');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04bb', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ed02bb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04bc', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ed02bc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04bd', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ed02bd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04be', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ed02be');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04bf', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ed02be');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04c0', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ed02bf');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04c1', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ed02c0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04c2', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ed02c0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04c3', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ed02c1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04c4', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ed02c1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04c5', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ed02c2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04c6', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ed02c2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04c7', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ed02c3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4afe04c8', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ed02c4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04c9', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ed02c4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04ca', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ed02c5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04cb', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ed02c6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04cc', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ed02c6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04cd', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ed02c7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04ce', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45ed02c7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04cf', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ee02c8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d0', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ee02c8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d1', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ee02c9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d2', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ee02ca');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d3', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ee02ca');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d4', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ee02cb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d5', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45ee02cc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d6', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ee02cd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d7', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ee02cd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d8', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ee02ce');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04d9', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ee02cf');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04da', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ee02cf');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04db', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ef02d0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04dc', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ef02d0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04dd', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ef02d1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04de', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ef02d1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04df', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45ef02d2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e0', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ef02d3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e1', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ef02d4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e2', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ef02d5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e3', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ef02d5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e4', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ef02d6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e5', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ef02d7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e6', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ef02d8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e7', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45ef02d9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e8', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ef02d9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04e9', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ef02da');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04ea', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ef02da');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04eb', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ef02db');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04ec', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ef02db');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04ed', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ef02dc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04ee', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45ef02dc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04ef', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ef02dd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f0', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ef02de');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f1', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ef02de');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f2', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ef02df');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f3', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ef02e0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f4', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ef02e1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f5', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ef02e2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f6', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ef02e2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f7', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ef02e3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f8', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ef02e4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04f9', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ef02e5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04fa', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ef02e5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04fb', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ef02e6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04fc', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ef02e6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04fd', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ef02e7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04fe', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ef02e7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff04ff', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ef02e8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0500', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ef02e9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0501', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ef02ea');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0502', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ef02ea');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0503', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ef02eb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0504', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ef02eb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0505', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45ef02ec');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0506', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ef02ec');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0507', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f002ed');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0508', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f002ee');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff0509', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f002ee');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff050a', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f002ef');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff050b', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f002f0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff050c', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f002f1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff050d', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f002f2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff050e', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f002f2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4aff050f', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f002f3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000510', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f002f3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000511', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f002f4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000512', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f002f5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000513', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f002f5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000514', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f002f6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000515', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f002f6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000516', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f002f7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000517', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f002f7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000518', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f002f8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000519', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f002f8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00051a', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f002f9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00051b', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f002fa');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00051c', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f102fb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00051d', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f102fb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00051e', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f102fc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00051f', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f102fd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000520', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f102fd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000521', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f102fe');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000522', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f102fe');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000523', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f102ff');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000524', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f102ff');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000525', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f20300');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000526', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f20301');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000527', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f20301');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000528', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f30302');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000529', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f30303');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00052a', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f30304');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00052b', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f30305');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00052c', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f30306');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00052d', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f30306');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00052e', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f30307');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00052f', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f30307');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000530', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f30308');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000531', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f30308');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000532', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f30309');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000533', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f30309');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000534', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f3030a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000535', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f3030b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000536', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f3030b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000537', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f3030c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000538', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f3030c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b000539', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f3030d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00053a', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f3030d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00053b', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f3030e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00053c', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f3030f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b00053d', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f30310');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01053e', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f30310');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01053f', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f30311');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010540', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f30312');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010541', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f30313');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010542', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f30313');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010543', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f30314');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010544', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f30314');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010545', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f30315');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010546', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f30315');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010547', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f30316');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010548', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f30317');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010549', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f30317');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01054a', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f30318');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01054b', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f30318');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01054c', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f30319');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01054d', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f3031a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01054e', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f3031a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01054f', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f4031b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010550', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f4031b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010551', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f4031c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010552', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f4031d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010553', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f4031d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010554', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f4031e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010555', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f4031f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010556', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f4031f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010557', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f40320');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010558', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f40320');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010559', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f40321');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01055a', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f40321');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01055b', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f50322');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01055c', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f50322');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01055d', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f50323');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01055e', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f50324');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01055f', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f50325');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010560', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f50325');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010561', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f50326');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010562', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f50326');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010563', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f50327');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010564', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f50327');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010565', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f50328');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010566', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f50329');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010567', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f5032a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010568', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f5032b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010569', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f5032b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01056a', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f5032c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01056b', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f5032c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01056c', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f5032d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01056d', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f5032e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01056e', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f5032e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01056f', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f5032f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010570', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f50330');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010571', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f50330');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010572', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f50331');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010573', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f50332');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010574', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f50332');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010575', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f50333');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010576', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f50333');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010577', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f50334');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010578', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f50335');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010579', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f50336');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01057a', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f50336');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01057b', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f50337');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01057c', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f50337');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01057d', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f50338');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01057e', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f50338');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b01057f', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f50339');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010580', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f5033a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010581', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f6033b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010582', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f6033c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010583', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f6033d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010584', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f6033d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010585', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f6033e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b010586', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f6033e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020587', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f6033f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020588', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f6033f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020589', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f60340');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02058a', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f60341');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02058b', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f60341');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02058c', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f70342');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02058d', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f70342');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02058e', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f70343');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02058f', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f70343');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020590', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f70344');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020591', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f70344');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020592', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f70345');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020593', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f70345');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020594', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f70346');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020595', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f70346');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020596', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f70347');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020597', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f70347');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020598', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f70348');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b020599', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f70349');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02059a', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f70349');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02059b', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f7034a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02059c', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f7034a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02059d', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f7034b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02059e', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f7034b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b02059f', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f7034c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0205a0', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f7034c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0205a1', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f7034d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0205a2', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f7034d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0205a3', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f7034e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0205a4', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f7034f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305a5', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f70350');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305a6', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f70351');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305a7', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f70352');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305a8', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f70353');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305a9', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f70353');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305aa', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f70354');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305ab', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f70355');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305ac', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f70355');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305ad', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f70356');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305ae', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f70356');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305af', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f70357');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b0', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f70358');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b1', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f70358');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b2', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f70359');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b3', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f70359');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b4', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f8035a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b5', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f8035a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b6', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f8035b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b7', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f8035b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b8', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f8035c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305b9', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f8035c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305ba', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f8035d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305bb', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f8035d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305bc', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f8035e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305bd', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f8035f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305be', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f8035f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305bf', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f80360');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c0', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f80360');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c1', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f80361');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c2', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f80362');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c3', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f80362');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c4', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f80363');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c5', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f80363');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c6', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f80364');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c7', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f80365');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c8', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f80365');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305c9', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f80366');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305ca', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f90367');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305cb', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f90367');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305cc', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f90368');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305cd', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f90369');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305ce', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f9036a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0305cf', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f9036b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d0', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f9036b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d1', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f9036c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d2', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f9036c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d3', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f9036d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d4', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f9036e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d5', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f9036f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d6', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f9036f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d7', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f90370');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d8', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f90370');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405d9', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45f90371');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405da', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45f90371');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405db', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f90372');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405dc', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f90373');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405dd', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45f90373');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405de', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f90374');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405df', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45f90374');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405e0', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f90375');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405e1', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45f90375');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405e2', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45f90376');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405e3', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45f90376');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405e4', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45f90377');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405e5', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f90377');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0405e6', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45f90378');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505e7', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45f90379');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505e8', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fa037a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505e9', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fa037b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505ea', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fa037b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505eb', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fa037c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505ec', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fa037c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505ed', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fa037d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505ee', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fa037d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505ef', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fa037e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505f0', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fa037e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505f1', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fa037f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505f2', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fa0380');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505f3', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fa0381');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505f4', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fa0381');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0505f5', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fa0382');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605f6', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fa0383');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605f7', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fa0384');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605f8', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fa0384');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605f9', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fa0385');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605fa', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fa0386');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605fb', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fa0386');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605fc', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fa0387');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605fd', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fb0388');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605fe', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fb0389');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0605ff', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fb0389');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060600', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fb038a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060601', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fb038b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060602', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fb038b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060603', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fb038c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060604', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fb038c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060605', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fb038d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060606', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fb038d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060607', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fb038e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060608', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fb038f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060609', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fb038f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06060a', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fb0390');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06060b', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fb0390');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06060c', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fb0391');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06060d', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fb0392');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06060e', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fb0392');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06060f', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fb0393');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060610', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fb0394');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060611', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fb0394');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060612', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fb0395');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060613', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fb0396');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060614', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fb0396');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060615', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fb0397');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060616', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fb0397');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060617', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fb0398');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060618', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fb0398');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060619', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fb0399');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06061a', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fb039a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06061b', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fb039b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06061c', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fb039b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06061d', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fb039c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06061e', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fb039d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06061f', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fb039e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060620', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fb039e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060621', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fc039f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060622', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fc03a0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060623', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fc03a1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060624', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fc03a2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060625', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fc03a2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060626', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fc03a3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060627', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fc03a3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060628', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fc03a4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b060629', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fc03a5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06062a', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fc03a5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06062b', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fc03a6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06062c', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fc03a7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06062d', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fc03a8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06062e', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fc03a8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b06062f', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fc03a9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070630', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fc03aa');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070631', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fc03aa');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070632', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fc03ab');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070633', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fc03ac');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070634', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fc03ad');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070635', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fc03ad');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070636', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fc03ae');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070637', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fc03af');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070638', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fc03af');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070639', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fc03b0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b07063a', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fc03b1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b07063b', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fc03b1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b07063c', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fc03b2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b07063d', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fc03b3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b07063e', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fc03b4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b07063f', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fc03b5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070640', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fc03b6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070641', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fc03b7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070642', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fc03b8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070643', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fc03b8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070644', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fc03b9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070645', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fc03b9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070646', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fc03ba');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070647', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fc03ba');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070648', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fc03bb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b070649', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fc03bb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08064a', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fd03bc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08064b', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fd03bc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08064c', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fd03bd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08064d', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fd03bd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08064e', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fd03be');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08064f', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fd03be');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080650', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fd03bf');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080651', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fd03bf');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080652', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fd03c0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080653', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fd03c0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080654', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fd03c1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080655', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fd03c1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080656', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fd03c2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080657', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fd03c3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080658', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fd03c3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080659', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fd03c4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08065a', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fd03c5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08065b', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fd03c5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08065c', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fd03c6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08065d', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fd03c6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08065e', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fd03c7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08065f', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fd03c8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080660', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fd03c9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080661', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fd03ca');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080662', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fd03ca');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080663', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fd03cb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080664', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fd03cb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080665', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fe03cc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080666', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fe03cc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080667', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03cd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080668', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03ce');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080669', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03ce');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08066a', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fe03cf');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08066b', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fe03d0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08066c', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fe03d0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08066d', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fe03d1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08066e', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fe03d2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08066f', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fe03d2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080670', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03d3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080671', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fe03d3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080672', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fe03d4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080673', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03d4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080674', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fe03d5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080675', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fe03d5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080676', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fe03d6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080677', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fe03d6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080678', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fe03d7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b080679', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fe03d8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b08067a', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03d9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09067b', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fe03d9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09067c', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fe03da');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09067d', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fe03db');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09067e', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fe03db');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09067f', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fe03dc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090680', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45fe03dd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090681', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fe03dd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090682', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03de');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090683', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fe03df');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090684', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fe03e0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090685', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03e1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090686', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03e1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090687', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45fe03e2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090688', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45fe03e3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090689', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45fe03e3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09068a', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45fe03e4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09068b', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45fe03e5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09068c', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03e5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09068d', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45fe03e6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09068e', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45fe03e6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b09068f', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45fe03e7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090690', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45fe03e7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090691', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ff03e8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090692', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ff03e9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b090693', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ff03e9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a0694', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ff03ea');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a0695', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ff03ea');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a0696', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ff03eb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a0697', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ff03eb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a0698', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ff03ec');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a0699', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ff03ec');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a069a', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ff03ed');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a069b', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ff03ed');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a069c', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ff03ee');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a069d', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa45ff03ef');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a069e', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ff03f0');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a069f', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ff03f1');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a0', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa45ff03f2');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a1', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ff03f3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a2', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ff03f3');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a3', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ff03f4');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a4', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ff03f5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a5', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ff03f5');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a6', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa45ff03f6');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a7', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ff03f7');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a8', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ff03f8');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06a9', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ff03f9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06aa', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa45ff03f9');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06ab', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ff03fa');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06ac', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ff03fa');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06ad', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ff03fb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0a06ae', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa45ff03fb');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06af', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa45ff03fc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b0', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa45ff03fc');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b1', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ff03fd');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b2', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa45ff03fe');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b3', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa45ff03fe');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b4', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ff03ff');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b5', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa45ff03ff');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b6', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46000400');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b7', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46000400');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b8', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46000401');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06b9', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46000401');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06ba', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46000402');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06bb', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46000402');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06bc', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46000403');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06bd', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46000403');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06be', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46000404');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06bf', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46000405');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c0', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46000405');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c1', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46000406');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c2', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46000407');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c3', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46000407');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c4', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46000408');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c5', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46000408');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c6', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46000409');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c7', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46000409');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c8', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa4600040a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06c9', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa4600040b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06ca', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa4600040c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06cb', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa4600040d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06cc', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4600040d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06cd', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa4600040e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06ce', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4600040e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06cf', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa4600040f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d0', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46000410');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d1', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46000410');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d2', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46000411');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d3', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46000412');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d4', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46000412');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d5', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46000413');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d6', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46000414');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d7', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46010415');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d8', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46010416');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06d9', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46010417');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06da', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46010417');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06db', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46010418');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06dc', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46010418');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06dd', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46010419');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06de', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46010419');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06df', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4601041a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06e0', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa4601041b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06e1', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa4601041b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06e2', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa4601041c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06e3', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa4601041d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06e4', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa4601041e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0b06e5', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa4601041f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06e6', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46010420');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06e7', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46010420');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06e8', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46010421');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06e9', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46010422');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06ea', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46010422');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06eb', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46010423');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06ec', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46010424');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06ed', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46010425');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06ee', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46010425');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06ef', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46010426');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f0', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46010427');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f1', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46010428');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f2', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46010429');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f3', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46010429');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f4', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa4602042a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f5', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa4602042a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f6', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa4602042b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f7', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa4602042c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f8', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa4602042d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06f9', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa4602042e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06fa', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa4602042e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06fb', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa4602042f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06fc', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46020430');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06fd', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46020431');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06fe', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46020431');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c06ff', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46020432');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0700', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46020433');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0701', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46020434');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0702', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46020434');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0703', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46020435');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0704', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46020435');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0705', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46030436');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0706', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46030437');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0707', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46030438');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0708', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46030438');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0709', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46030439');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c070a', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4603043a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c070b', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa4603043b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c070c', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa4603043c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c070d', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa4603043d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c070e', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa4603043e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c070f', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa4603043e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0710', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa4603043f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0711', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46030440');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0712', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46040441');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0713', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46040442');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0714', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46040442');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0715', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46040443');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0716', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46040444');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0717', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46040444');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0718', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46040445');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0719', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46040446');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c071a', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46040446');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c071b', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46040447');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c071c', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46040447');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c071d', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46040448');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c071e', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46040448');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c071f', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46040449');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0720', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46040449');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0721', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa4604044a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0c0722', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa4604044a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0723', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa4604044b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0724', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa4604044c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0725', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa4604044d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0726', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4604044d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0727', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4604044e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0728', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa4604044f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0729', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa4604044f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d072a', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46040450');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d072b', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46040451');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d072c', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46040451');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d072d', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46040452');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d072e', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46040452');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d072f', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46040453');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0730', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46040454');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0731', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46040455');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0732', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46040456');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0733', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46040456');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0734', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46040457');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0735', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46040458');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0736', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46040458');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0737', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46040459');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0738', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa4604045a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d0739', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa4604045a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d073a', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa4604045b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d073b', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa4604045b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0d073c', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa4604045c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e073d', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa4604045d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e073e', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4604045d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e073f', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa4604045e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e0740', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa4604045f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e0741', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46040460');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e0742', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46040461');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e0743', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46040461');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e0744', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46050462');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e0745', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46050462');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e0746', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46050463');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e0747', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46050463');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0e0748', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46050464');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0749', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46050464');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f074a', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46050465');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f074b', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46050466');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f074c', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46050467');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f074d', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46050467');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f074e', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46050468');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f074f', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46050468');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0750', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46050469');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0751', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa4605046a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0752', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa4605046a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0753', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa4605046b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0754', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4605046b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0755', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4605046c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0756', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa4605046d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0757', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa4605046d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0758', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa4605046e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0759', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa4605046f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f075a', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa4605046f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f075b', null, null, null, null, '402894817e70aa23017e70aa33100009',
        '402894817e70aa23017e70aa46050470');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f075c', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46050470');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f075d', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46050471');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f075e', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46050472');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f075f', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa46050473');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0760', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46050474');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0761', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46050475');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0762', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46050476');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0763', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46050476');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0764', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46050477');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0765', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46050477');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0766', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46050478');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0767', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46050478');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0768', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46050479');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0769', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa4605047a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f076a', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa4605047a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f076b', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4605047b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f076c', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa4606047c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f076d', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa4606047c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f076e', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa4606047d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f076f', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4606047e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0770', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa4606047e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0771', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa4606047f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0772', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa4606047f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0773', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46060480');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0774', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46060480');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0775', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46060481');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0776', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46060482');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0777', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46060482');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0778', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa46060483');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0779', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46060483');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f077a', null, null, null, null, '402894817e70aa23017e70aa32f90000',
        '402894817e70aa23017e70aa46060484');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f077b', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46060485');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f077c', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46060486');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f077d', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa46060487');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f077e', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46060488');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f077f', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46060488');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0780', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa46060489');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0781', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa4606048a');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0782', null, null, null, null, '402894817e70aa23017e70aa33100008',
        '402894817e70aa23017e70aa4606048b');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0783', null, null, null, null, '402894817e70aa23017e70aa330f0001',
        '402894817e70aa23017e70aa4606048c');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0784', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa4606048d');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0785', null, null, null, null, '402894817e70aa23017e70aa330f0002',
        '402894817e70aa23017e70aa4606048e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0786', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa4606048e');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0787', null, null, null, null, '402894817e70aa23017e70aa330f0003',
        '402894817e70aa23017e70aa4606048f');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0788', null, null, null, null, '402894817e70aa23017e70aa330f0006',
        '402894817e70aa23017e70aa46060490');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b0f0789', null, null, null, null, '402894817e70aa23017e70aa330f0007',
        '402894817e70aa23017e70aa46060490');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b10078a', null, null, null, null, '402894817e70aa23017e70aa330f0004',
        '402894817e70aa23017e70aa46060491');
INSERT INTO t_s_user_role (id, create_by, create_time, update_by, update_time, role_id, user_id)
VALUES ('402894817e70aa23017e70aa4b10078b', null, null, null, null, '402894817e70aa23017e70aa330f0005',
        '402894817e70aa23017e70aa46060491');
