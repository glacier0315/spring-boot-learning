package com.glacier.domain;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.*;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
public class User implements Serializable {
	private static final long serialVersionUID = -5948191351150509559L;
	private String id;
	@Length(min = 8, max = 20, message = "长度是8到20")
	@NotBlank(message = "用户名不能为空")
	private String username;
	@NotBlank(message = "⽤户密码不能为空!")
	@Length(min = 6, max = 10, message = "密码⻓度⾄少6位但不超过10位!")
	private String password;
	private String nickname;
	@Past
	private LocalDate birthday;
	private String idCard;
	private String sex;
	private String duty;
	private LocalDateTime joinDate;
	@Email(message = "必须是邮箱")
	private String email;
	@Range(min = 5, max = 10)
	private Integer property1;
	private Long property2;
	@DecimalMin(value = "0.1")
	@DecimalMax(value = "2.1")
	private Double property3;
	private Float property4;
	private Date property5;
	@Future
	private LocalDate property6;
	@Past
	private LocalDateTime property7;
	/**
	 * 可以为null,如果不为null的话必须为true
	 */
	@AssertTrue
	private Boolean property8;
	
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
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public Integer getProperty1() {
		return property1;
	}
	
	public void setProperty1(Integer property1) {
		this.property1 = property1;
	}
	
	public Long getProperty2() {
		return property2;
	}
	
	public void setProperty2(Long property2) {
		this.property2 = property2;
	}
	
	public Double getProperty3() {
		return property3;
	}
	
	public void setProperty3(Double property3) {
		this.property3 = property3;
	}
	
	public Float getProperty4() {
		return property4;
	}
	
	public void setProperty4(Float property4) {
		this.property4 = property4;
	}
	
	public Date getProperty5() {
		return property5;
	}
	
	public void setProperty5(Date property5) {
		this.property5 = property5;
	}
	
	public LocalDate getProperty6() {
		return property6;
	}
	
	public void setProperty6(LocalDate property6) {
		this.property6 = property6;
	}
	
	public LocalDateTime getProperty7() {
		return property7;
	}
	
	public void setProperty7(LocalDateTime property7) {
		this.property7 = property7;
	}
	
	public Boolean getProperty8() {
		return property8;
	}
	
	public void setProperty8(Boolean property8) {
		this.property8 = property8;
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
				", email='" + email + '\'' +
				", property1=" + property1 +
				", property2=" + property2 +
				", property3=" + property3 +
				", property4=" + property4 +
				", property5=" + property5 +
				", property6=" + property6 +
				", property7=" + property7 +
				", property8=" + property8 +
				'}';
	}
}
