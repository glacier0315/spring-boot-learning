package com.glacier.swagger3.entity.form;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-08-11 10:37
 */
@ApiModel(description = "用户查询封装类")
public class UserQuery implements Serializable {
    private static final long serialVersionUID = -8762218735167626499L;
    /**
     * 用户名
     */
    @ApiModelProperty(value = "用户名")
    private String username;
    /**
     * 昵称
     */
    @ApiModelProperty(value = "昵称")
    private String nickname;
    /**
     * 身份证号
     */
    @ApiModelProperty(value = "身份证号")
    private String idCard;
    /**
     * 性别 1=男 2=女 3 其他(保密)
     */
    @ApiModelProperty(value = "性别 1=男 2=女 3 其他(保密)")
    private Integer sex;
    /**
     * 状态  1 正常  2 锁定
     */
    @ApiModelProperty(value = "状态  1 正常  2 锁定")
    private String status;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getIdCard() {
        return this.idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public Integer getSex() {
        return this.sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "UserQuery{" +
                "username='" + this.username + '\'' +
                ", nickname='" + this.nickname + '\'' +
                ", idCard='" + this.idCard + '\'' +
                ", sex=" + this.sex +
                ", status='" + this.status + '\'' +
                '}';
    }
}
