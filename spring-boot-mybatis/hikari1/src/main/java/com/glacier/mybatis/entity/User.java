package com.glacier.mybatis.entity;

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
public class User implements Serializable {
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
	
	public String getIdCard() {
		return idCard;
	}
	
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	
	public LocalDate getBirthday() {
		return birthday;
	}
	
	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}
	
	public Integer getSex() {
		return sex;
	}
	
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getMobile() {
		return mobile;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getAvatar() {
		return avatar;
	}
	
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
	public String getPostId() {
		return postId;
	}
	
	public void setPostId(String postId) {
		this.postId = postId;
	}
	
	public String getDeptId() {
		return deptId;
	}
	
	public void setDeptId(String deptId) {
		this.deptId = deptId;
	}
	
	public String getDeptName() {
		return deptName;
	}
	
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	
	public String getCreateBy() {
		return createBy;
	}
	
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	
	public LocalDateTime getCreateDate() {
		return createDate;
	}
	
	public void setCreateDate(LocalDateTime createDate) {
		this.createDate = createDate;
	}
	
	public String getUpdateBy() {
		return updateBy;
	}
	
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	
	public LocalDateTime getUpdateDate() {
		return updateDate;
	}
	
	public void setUpdateDate(LocalDateTime updateDate) {
		this.updateDate = updateDate;
	}
	
	public String getDelFlag() {
		return delFlag;
	}
	
	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}
	
	@Override
	public String toString() {
		return "User{" +
				"id='" + id + '\'' +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", nickname='" + nickname + '\'' +
				", idCard='" + idCard + '\'' +
				", birthday=" + birthday +
				", sex=" + sex +
				", status='" + status + '\'' +
				", email='" + email + '\'' +
				", mobile='" + mobile + '\'' +
				", avatar='" + avatar + '\'' +
				", postId='" + postId + '\'' +
				", deptId='" + deptId + '\'' +
				", deptName='" + deptName + '\'' +
				", createBy='" + createBy + '\'' +
				", createDate=" + createDate +
				", updateBy='" + updateBy + '\'' +
				", updateDate=" + updateDate +
				'}';
	}
	
	
	public static final class UserBuilder {
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
}
