package com.glacier.mybatis.entity;

import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * 用户
 *
 * @author glacier
 * @version 1.0
 * date 2019-08-04 13:45
 */
@Builder
@Data
@ToString
@EqualsAndHashCode(callSuper = false)
public class User implements Serializable {
    @Serial
    private static final long serialVersionUID = -3083387263445135811L;

    /**
     * 主键
     */
    private String id;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;
    /**
     * 昵称
     */
    private String nickname;
    /**
     * 身份证号
     */
    private String idCard;
    /**
     * 出生日期
     */
    private LocalDate birthday;
    /**
     * 性别 1=男 2=女 其他=保密
     */
    private Integer sex;
    /**
     * 状态  1 正常  2 锁定
     */
    private String status;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 手机号
     */
    private String mobile;
    /**
     * 头像地址
     */
    private String avatar;
    /**
     * 岗位id
     */
    private String postId;
    /**
     * 单位id
     */
    private String deptId;

    /**
     * 单位名称
     */
    private String deptName;

    /**
     * 创建人
     */
    private String createBy;
    /**
     * 创建时间
     */
    private LocalDateTime createDate;
    /**
     * 更新人
     */
    private String updateBy;
    /**
     * 更新时间
     */
    private LocalDateTime updateDate;
    /**
     * 删除标记
     */
    private String delFlag;
}
