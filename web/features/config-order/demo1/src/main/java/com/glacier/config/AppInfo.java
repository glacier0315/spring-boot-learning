package com.glacier.config;

import com.glacier.domain.User;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;

/**
 * date 2022-01-19 15:38
 *
 * @author glacier
 * @version 1.0
 */
@Component
@ConfigurationProperties(prefix = "app.info", ignoreInvalidFields = true)
public class AppInfo implements Serializable {
	private static final long serialVersionUID = 5567913933019958102L;
	private String name1;
	private String name2;
	private String name3;
	private String name4;
	private String name5;
	private String name6;
	private String name7;
	private String name8;
	
	private Long property0;
	private Integer property1;
	private String property2;
	private Float property3;
	private Double property4;
	private Date property5;
	private LocalDate property6;
	private LocalDateTime property7;
	private String[] property8;
	private List<User> property9;
	private Set<String> property10;
	private Map<String, Object> property11;
	private List<Map<String, Object>> property12;
	private User property13;
	private List<Map<String, User>> property14;
	
	public String getName1() {
		return name1;
	}
	
	public void setName1(String name1) {
		this.name1 = name1;
	}
	
	public String getName2() {
		return name2;
	}
	
	public void setName2(String name2) {
		this.name2 = name2;
	}
	
	public String getName3() {
		return name3;
	}
	
	public void setName3(String name3) {
		this.name3 = name3;
	}
	
	public String getName4() {
		return name4;
	}
	
	public void setName4(String name4) {
		this.name4 = name4;
	}
	
	public String getName5() {
		return name5;
	}
	
	public void setName5(String name5) {
		this.name5 = name5;
	}
	
	public String getName6() {
		return name6;
	}
	
	public void setName6(String name6) {
		this.name6 = name6;
	}
	
	public String getName7() {
		return name7;
	}
	
	public void setName7(String name7) {
		this.name7 = name7;
	}
	
	public String getName8() {
		return name8;
	}
	
	public void setName8(String name8) {
		this.name8 = name8;
	}
	
	public Long getProperty0() {
		return property0;
	}
	
	public void setProperty0(Long property0) {
		this.property0 = property0;
	}
	
	public Integer getProperty1() {
		return property1;
	}
	
	public void setProperty1(Integer property1) {
		this.property1 = property1;
	}
	
	public String getProperty2() {
		return property2;
	}
	
	public void setProperty2(String property2) {
		this.property2 = property2;
	}
	
	public Float getProperty3() {
		return property3;
	}
	
	public void setProperty3(Float property3) {
		this.property3 = property3;
	}
	
	public Double getProperty4() {
		return property4;
	}
	
	public void setProperty4(Double property4) {
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
	
	public String[] getProperty8() {
		return property8;
	}
	
	public void setProperty8(String[] property8) {
		this.property8 = property8;
	}
	
	public List<User> getProperty9() {
		return property9;
	}
	
	public void setProperty9(List<User> property9) {
		this.property9 = property9;
	}
	
	public Set<String> getProperty10() {
		return property10;
	}
	
	public void setProperty10(Set<String> property10) {
		this.property10 = property10;
	}
	
	public Map<String, Object> getProperty11() {
		return property11;
	}
	
	public void setProperty11(Map<String, Object> property11) {
		this.property11 = property11;
	}
	
	public List<Map<String, Object>> getProperty12() {
		return property12;
	}
	
	public void setProperty12(List<Map<String, Object>> property12) {
		this.property12 = property12;
	}
	
	public User getProperty13() {
		return property13;
	}
	
	public void setProperty13(User property13) {
		this.property13 = property13;
	}
	
	public List<Map<String, User>> getProperty14() {
		return property14;
	}
	
	public void setProperty14(List<Map<String, User>> property14) {
		this.property14 = property14;
	}
	
	@Override
	public String toString() {
		return "AppInfo{" +
				", name1='" + name1 + '\'' +
				", name2='" + name2 + '\'' +
				", name3='" + name3 + '\'' +
				", name4='" + name4 + '\'' +
				", name5='" + name5 + '\'' +
				", name6='" + name6 + '\'' +
				", name7='" + name7 + '\'' +
				", name8='" + name8 + '\'' +
				", property0=" + property0 +
				", property1=" + property1 +
				", property2='" + property2 + '\'' +
				", property3=" + property3 +
				", property4=" + property4 +
				", property5=" + property5 +
				", property6=" + property6 +
				", property7=" + property7 +
				", property8=" + Arrays.toString(property8) +
				", property9=" + property9 +
				", property10=" + property10 +
				", property11=" + property11 +
				", property12=" + property12 +
				", property13=" + property13 +
				", property14=" + property14 +
				'}';
	}
}
