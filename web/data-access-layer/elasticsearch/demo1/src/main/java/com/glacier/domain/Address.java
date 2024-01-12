package com.glacier.domain;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import java.io.Serial;
import java.io.Serializable;

/**
 * date 2022-01-24 15:41
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
public class Address implements Serializable {
	@Serial
    private static final long serialVersionUID = -2913782531605603031L;
	@Id
	private String id;
	@Field(type = FieldType.Text)
	private String country;
	@Field(type = FieldType.Text)
	private String province;
	@Field(type = FieldType.Text)
	private String city;
	@Field(type = FieldType.Text)
	private String detail;
}
