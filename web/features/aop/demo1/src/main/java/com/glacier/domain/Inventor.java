package com.glacier.domain;

import lombok.*;

import java.time.LocalDate;

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
@Builder
public class Inventor {
    private String name;
    private String nationality;
    private String[] inventions;
    private LocalDate birthdate;
    private PlaceOfBirth placeOfBirth;
}
