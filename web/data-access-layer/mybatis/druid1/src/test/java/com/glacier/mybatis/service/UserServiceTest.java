package com.glacier.mybatis.service;

import com.glacier.mybatis.entity.User;
import jakarta.annotation.Resource;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

/**
 * date 2023-11-25 10:42
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class UserServiceTest {

    @Resource
    private UserService userService;
    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void add() {
        User user = User.UserBuilder.anUser()
                .id(UUID.randomUUID().toString().replace("-", ""))
                .username("zhangsan")
                .password("zhangsanpw")
                .birthday(LocalDate.of(1990, 10, 11))
                .build();
        int update = userService.add(user);
        Assertions.assertEquals(1, update);
    }

    @Test
    void update() {
        User user = User.UserBuilder.anUser()
                .id("651c74980f0f40729b28d6bd9fe32c80")
                .username("zhangsan")
                .password("zhangsanpw")
                .birthday(LocalDate.of(1990, 10, 11))
                .build();
        int update = userService.update(user);
        Assertions.assertEquals(1, update);
    }

    @Test
    void delete() {
        String id = "651c74980f0f40729b28d6bd9fe32c80";
        int update = userService.delete(id);
        Assertions.assertEquals(1, update);
    }

    @Test
    void selectAll() {
        List<User> users = userService.selectAll();
        Assertions.assertNotNull(users);
        Assertions.assertFalse(users.isEmpty());
    }
}
