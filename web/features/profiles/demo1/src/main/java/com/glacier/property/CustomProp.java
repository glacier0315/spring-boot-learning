package com.glacier.property;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Map;

/**
 * date 2024-01-12 22:13
 *
 * @author glacier
 * @version 1.0
 */
@Data
@NoArgsConstructor
@EqualsAndHashCode
@ToString
public class CustomProp {
    private String name;
    private int age;
    private Map<String, String> props;
}
