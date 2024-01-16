package com.glacier.entity;

import lombok.*;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

/**
 * date 2021-09-27 15:31
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User implements Serializable {
	@Serial
    private static final long serialVersionUID = -6393419640047339141L;
	private String id;
	private String username;
	private String password;
	private List<String> roles;
	private List<String> permissions;
	private LocalDate birthday;

}
