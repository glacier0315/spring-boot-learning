package com.glacier.domain;

import lombok.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * date 2024-01-19 17:21
 *
 * @author glacier
 * @version 1.0
 */
@Data
@EqualsAndHashCode
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Society {
    private String name;

    public static String Advisors = "advisors";
    public static String President = "president";

    private final List<Inventor> members = new ArrayList<>();
    private final Map<String, Object> officers = new HashMap<>();

    public boolean isMember(String name) {
        return members.stream()
                .anyMatch(inventor -> name.equals(inventor.getName()));
    }

}
