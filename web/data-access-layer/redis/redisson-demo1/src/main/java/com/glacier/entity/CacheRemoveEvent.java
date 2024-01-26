package com.glacier.entity;

import lombok.*;

import java.io.Serial;
import java.io.Serializable;

/**
 * date 2024-01-26 15:14
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class CacheRemoveEvent implements Serializable {

    @Serial
    private static final long serialVersionUID = 3677899434633369834L;
    private String cacheName;
    private String key;
}
