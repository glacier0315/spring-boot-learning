package com.glacier.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Transient;
import org.springframework.data.elasticsearch.annotations.DateFormat;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Objects;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
@Document(indexName = "user", createIndex = true)
public class User implements Serializable {
	private static final long serialVersionUID = -5948191351150509559L;
	@Id
	private String id;
	@Field(type = FieldType.Text)
	private String username;
	@Field(type = FieldType.Text)
	private String password;
	@Field(type = FieldType.Text, analyzer = "ik_max_word")
	private String nickname;
	@Field(type = FieldType.Date, format = DateFormat.date)
	private LocalDate birthday;
	@Field(type = FieldType.Text)
	private String idCard;
	@Field(type = FieldType.Text)
	private String sex;
	@Field(type = FieldType.Text)
	private String duty;
	@Field(type = FieldType.Date, format = DateFormat.date_hour_minute_second)
	private LocalDateTime joinDate;
	@Field(type = FieldType.Double)
	private Double weight;
	@Field(type = FieldType.Double)
	private Double height;
	@Field(type = FieldType.Object)
	private Address address;
	
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
	
	public Double getWeight() {
		return weight;
	}
	
	public void setWeight(Double weight) {
		this.weight = weight;
	}
	
	public Double getHeight() {
		return height;
	}
	
	public void setHeight(Double height) {
		this.height = height;
	}
	
	public Address getAddress() {
		return address;
	}
	
	public void setAddress(Address address) {
		this.address = address;
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
				", weight=" + weight +
				", height=" + height +
				", address=" + address +
				'}';
	}
	
	public static final class UserBuilder {
		private String id;
		private String username;
		private String password;
		private String nickname;
		private LocalDate birthday;
		private String idCard;
		private String sex;
		private String duty;
		private LocalDateTime joinDate;
		private Double weight;
		private Double height;
		private Address address;
		
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
		
		public UserBuilder birthday(LocalDate birthday) {
			this.birthday = birthday;
			return this;
		}
		
		public UserBuilder idCard(String idCard) {
			this.idCard = idCard;
			return this;
		}
		
		public UserBuilder sex(String sex) {
			this.sex = sex;
			return this;
		}
		
		public UserBuilder duty(String duty) {
			this.duty = duty;
			return this;
		}
		
		public UserBuilder joinDate(LocalDateTime joinDate) {
			this.joinDate = joinDate;
			return this;
		}
		
		public UserBuilder weight(Double weight) {
			this.weight = weight;
			return this;
		}
		
		public UserBuilder height(Double height) {
			this.height = height;
			return this;
		}
		
		public UserBuilder address(Address address) {
			this.address = address;
			return this;
		}
		
		public User build() {
			User user = new User();
			user.setId(id);
			user.setUsername(username);
			user.setPassword(password);
			user.setNickname(nickname);
			user.setBirthday(birthday);
			user.setIdCard(idCard);
			user.setSex(sex);
			user.setDuty(duty);
			user.setJoinDate(joinDate);
			user.setWeight(weight);
			user.setHeight(height);
			user.setAddress(address);
			return user;
		}
	}
}
