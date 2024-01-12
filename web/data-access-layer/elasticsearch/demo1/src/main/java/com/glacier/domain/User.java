package com.glacier.domain;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.DateFormat;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * date 2022-01-18 16:37
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString()
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Document(indexName = "user")
public class User implements Serializable {
	@Serial
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
}
