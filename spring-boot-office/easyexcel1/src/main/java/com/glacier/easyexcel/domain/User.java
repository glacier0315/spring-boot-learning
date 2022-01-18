package com.glacier.easyexcel.domain;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.NumberFormat;
import com.glacier.easyexcel.converter.LocalDateConverter;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-10-16 15:01
 */
@ExcelIgnoreUnannotated
public class User implements Serializable {
    private static final long serialVersionUID = -5948191351150509559L;
    private String id;

    @ExcelProperty(value = {"用户信息", "用户名"}, index = 0)
    private String username;

    private String password;

    @ExcelProperty(value = {"用户信息", "昵称"}, index = 1)
    private String nickname;

    @ExcelProperty(value = {"用户信息", "出生日期"}, index = 4, converter = LocalDateConverter.class)
    private LocalDate birthday;

    @ExcelProperty(value = {"用户信息", "身份证号"}, index = 3)
    private String idCard;

    @ExcelProperty(value = {"用户信息", "性别"}, index = 2)
    private String sex;

    @ExcelProperty(value = {"用户信息", "岗位"}, index = 5)
    private String duty;

    @ExcelProperty(value = {"用户信息", "入职日期"}, index = 6)
    private LocalDateTime joinDate;

    @NumberFormat("#.##%")
    @ExcelProperty(value = {"用户信息", "数字标题"}, index = 7)
    private Double doubleData;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public LocalDateTime getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(LocalDateTime joinDate) {
        this.joinDate = joinDate;
    }

    public Double getDoubleData() {
        return doubleData;
    }

    public void setDoubleData(Double doubleData) {
        this.doubleData = doubleData;
    }
	
	@Override
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof User)) {
			return false;
		}
		User user = (User) o;
		return Objects.equals(id, user.id);
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}
	
	@Override
	public String toString() {
		return "User{" +
				"id='" + id + '\'' +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", nickname='" + nickname + '\'' +
				", birthday=" + birthday +
				", idCard='" + idCard + '\'' +
				", sex='" + sex + '\'' +
				", duty='" + duty + '\'' +
				", joinDate=" + joinDate +
				", doubleData=" + doubleData +
				'}';
	}
}
