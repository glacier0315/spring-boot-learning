package com.glacier.mybatis.service;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * date 2021-04-22 15:43
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
public class RoleMenuServiceTest {

    @Autowired
    private RoleMenuService roleMenuService;

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void deleteByMenuId() {
    }

    @Test
    void deleteByRoleId() {
    }

    @Test
    void insert() {
    }

    @Test
    void findAll() {
        roleMenuService.findAll()
                .forEach(System.out::println);
    }
}