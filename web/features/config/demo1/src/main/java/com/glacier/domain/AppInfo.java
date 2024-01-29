package com.glacier.domain;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * date 2022-01-19 15:38
 *
 * @author glacier
 * @version 1.0
 */
@Component
@ConfigurationProperties(prefix = "app.info", ignoreInvalidFields = true)
@Data
@EqualsAndHashCode
@ToString
public class AppInfo implements Serializable {
    @Serial
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
}
