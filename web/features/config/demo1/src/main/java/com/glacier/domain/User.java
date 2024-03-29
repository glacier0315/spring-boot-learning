package com.glacier.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.io.Serial;
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
@Data
@EqualsAndHashCode
@ToString
public class User implements Serializable {
	@Serial
    private static final long serialVersionUID = -5948191351150509559L;
	private String id;
	private String username;
	private String password;
	private String nickname;
	private LocalDate birthday;
	private String idCard;
	private String sex;
	private String duty;
	private LocalDateTime joinDate;
	private Double doubleData;
}
