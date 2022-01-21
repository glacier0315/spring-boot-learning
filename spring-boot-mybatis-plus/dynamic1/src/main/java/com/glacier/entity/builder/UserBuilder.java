package com.glacier.entity.builder;

import com.glacier.entity.User;

import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * date 2022-01-21 08:58
 *
 * @author glacier
 * @version 1.0
 */
public final class UserBuilder {
	private String id;
	private String username;
	private String password;
	private String nickname;
	private String idCard;
	private LocalDate birthday;
	private Integer sex;
	private String status;
	private String email;
	private String mobile;
	private String avatar;
	private String postId;
	private String deptId;
	private String deptName;
	private String createBy;
	private LocalDateTime createDate;
	private String updateBy;
	private LocalDateTime updateDate;
	private String delFlag;
	
	private UserBuilder() {
	}
	
	public static UserBuilder anUser() {
		return new UserBuilder();
	}
	
	public UserBuilder id(String id) {
		this.id = id;
		return this;
	}
	
	public UserBuilder username(String username) {
		this.username = username;
		return this;
	}
	
	public UserBuilder password(String password) {
		this.password = password;
		return this;
	}
	
	public UserBuilder nickname(String nickname) {
		this.nickname = nickname;
		return this;
	}
	
	public UserBuilder idCard(String idCard) {
		this.idCard = idCard;
		return this;
	}
	
	public UserBuilder birthday(LocalDate birthday) {
		this.birthday = birthday;
		return this;
	}
	
	public UserBuilder sex(Integer sex) {
		this.sex = sex;
		return this;
	}
	
	public UserBuilder status(String status) {
		this.status = status;
		return this;
	}
	
	public UserBuilder email(String email) {
		this.email = email;
		return this;
	}
	
	public UserBuilder mobile(String mobile) {
		this.mobile = mobile;
		return this;
	}
	
	public UserBuilder avatar(String avatar) {
		this.avatar = avatar;
		return this;
	}
	
	public UserBuilder postId(String postId) {
		this.postId = postId;
		return this;
	}
	
	public UserBuilder deptId(String deptId) {
		this.deptId = deptId;
		return this;
	}
	
	public UserBuilder deptName(String deptName) {
		this.deptName = deptName;
		return this;
	}
	
	public UserBuilder createBy(String createBy) {
		this.createBy = createBy;
		return this;
	}
	
	public UserBuilder createDate(LocalDateTime createDate) {
		this.createDate = createDate;
		return this;
	}
	
	public UserBuilder updateBy(String updateBy) {
		this.updateBy = updateBy;
		return this;
	}
	
	public UserBuilder updateDate(LocalDateTime updateDate) {
		this.updateDate = updateDate;
		return this;
	}
	
	public UserBuilder delFlag(String delFlag) {
		this.delFlag = delFlag;
		return this;
	}
	
	public User build() {
		User user = new User();
		user.setId(id);
		user.setUsername(username);
		user.setPassword(password);
		user.setNickname(nickname);
		user.setIdCard(idCard);
		user.setBirthday(birthday);
		user.setSex(sex);
		user.setStatus(status);
		user.setEmail(email);
		user.setMobile(mobile);
		user.setAvatar(avatar);
		user.setPostId(postId);
		user.setDeptId(deptId);
		user.setDeptName(deptName);
		user.setCreateBy(createBy);
		user.setCreateDate(createDate);
		user.setUpdateBy(updateBy);
		user.setUpdateDate(updateDate);
		user.setDelFlag(delFlag);
		return user;
	}
}
