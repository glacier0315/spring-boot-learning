package com.glacier.domain;

import lombok.*;

/**
 * date 2024-01-19 17:22
 *
 * @author glacier
 * @version 1.0
 */
@Data
@EqualsAndHashCode
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class PlaceOfBirth {
    private String city;
    private String country;
}
