package com.glacier.domain;

import lombok.*;

import java.io.Serial;
import java.io.Serializable;

/**
 * date 2022-01-24 15:41
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Address implements Serializable {
	@Serial
    private static final long serialVersionUID = -2913782531605603031L;
	private String id;
	private String country;
	private String province;
	private String city;
	private String detail;

}
