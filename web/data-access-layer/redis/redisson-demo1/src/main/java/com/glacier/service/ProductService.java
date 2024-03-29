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

    int deleteById(Long id);

    int save(Product product);

    int update(Product product);

    Product getById1(Long id);

    Product getById2(Long id);

    Product findById(Long id);

    List<Product> findByName(String name);

    List<Product> findList(Product product);
}
