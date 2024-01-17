package com.glacier.service;

import com.glacier.entity.Product;

import java.util.List;

/**
 * date 2024-01-16 12:13
 * 广告业务层
 *
 * @author glacier
 * @version 1.0
 */
public interface ProductService {

    int save(Product product);

    int update(Product product);

    Product getProductById(Long id);

    Product getProductByName(String name);

    Product getProductByCode(String code);

    List<Product> findList(Product product);
}
