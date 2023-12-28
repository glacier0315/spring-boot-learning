package com.glacier.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;

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
@TableName("sys_user")
public class User implements Serializable {
	private static final long serialVersionUID = -3083387263445135811L;
	
	/**
	 * 主键
	 */
	@TableId(type = IdType.ASSIGN_UUID)
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
	@TableLogic(value = "0", delval = "1")
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
}
