package com.glacier.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import jakarta.validation.constraints.*;

import java.io.Serial;
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
@Data
@ToString
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
public class User implements Serializable {
	@Serial
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
}
