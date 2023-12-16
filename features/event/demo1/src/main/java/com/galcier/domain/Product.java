package com.galcier.domain;

import lombok.Data;

import java.io.Serializable;

/**
 * date 2023-12-16 13:25
 *
 * @author glacier
 * @version 1.0
 */
@Data
public class Product implements Serializable {

    private static final long serialVersionUID = 1175035463598184950L;
    private String id;

    private String name;

    private String price;

}
