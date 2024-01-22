package com.glacier.domain;

import lombok.*;

import java.io.Serial;
import java.io.Serializable;

/**
 * date 2024-01-22 12:04
 *
 * @author glacier
 * @version 1.0
 */
@Data
@ToString
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
public class ReliableMsg<T> implements Serializable {

    @Serial
    private static final long serialVersionUID = -3676920139978422189L;
    private String id;
    private T body;
    private Long timestamp;
}
