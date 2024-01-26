package com.glacier.service;

import com.glacier.entity.User;
import com.glacier.service.impl.UserServiceImpl;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * date 2021-09-27 17:09
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class UserServiceTest {

    @Autowired
    private UserService userService;

    @BeforeAll
    public static void init() {
        System.out.println("初始化数据");
        UserServiceImpl.USER_MAP
                .put("admin", User.builder()
                        .id("1")
                        .username("admin")
                        .password("admin")
                        .birthday(LocalDate.now())
                        .roles(Stream.of("admin", "user")
                                .collect(Collectors.toList()))
                        .permissions(Stream.of("user:add", "user:edit")
                                .collect(Collectors.toList()))
                        .build());
        UserServiceImpl.USER_MAP
                .put("admin9", User.builder()
                        .id("9")
                        .username("admin9")
                        .password("admin")
                        .birthday(LocalDate.now())
                        .roles(Stream.of("admin", "user")
                                .collect(Collectors.toList()))
                        .permissions(Stream.of("user:add", "user:edit")
                                .collect(Collectors.toList()))
                        .build());
    }

    @AfterAll
    public static void cleanup() {
        System.out.println("清理数据");
    }

    @BeforeEach
    void setUp() {

    }

    @AfterEach
    void tearDown() {

    }

    @Test
    void addUser() {
        User user = User.builder()
                .id("5")
                .username("admin4")
                .password("admin")
                .birthday(LocalDate.now())
                .roles(Stream.of("admin", "user")
                        .collect(Collectors.toList()))
                .permissions(Stream.of("user:add", "user:edit")
                        .collect(Collectors.toList()))
                .build();

        userService.addUser(user);

        User user1 = userService.getUserByUsername("admin4");
        Assertions.assertEquals(user1.getId(), "5", "查询用户错误");

        User user2 = userService.getUserByUsername("admin4");
        Assertions.assertEquals(user2.getId(), "5", "查询用户错误");
    }

    @RepeatedTest(10)
    void getUserByUsername() {
        User user1 = userService.getUserByUsername("admin9");
        Assertions.assertEquals(user1.getId(), "9", "查询用户错误");

        User user2 = userService.getUserByUsername("admin9");
        Assertions.assertEquals(user2.getId(), "9", "查询用户错误");
    }

    @Test
    void updateUser1() {
        final User user = User.builder()
                .id("1")
                .username("admin1")
                .password("admin")
                .birthday(LocalDate.now())
                .roles(Stream.of("admin", "user")
                        .collect(Collectors.toList()))
                .permissions(Stream.of("user:add", "user:edit")
                        .collect(Collectors.toList()))
                .build();
        Assertions.assertThrows(RuntimeException.class, () -> userService.updateUser(user));
    }

    @Test
    void updateUser2() {
        final String id = "2";
        User user = User.builder()
                .id(id)
                .username("admin")
                .password("admin2")
                .birthday(LocalDate.now())
                .roles(Stream.of("admin", "test")
                        .collect(Collectors.toList()))
                .permissions(Stream.of("user:add", "user:edit")
                        .collect(Collectors.toList()))
                .build();
        User updateUser = userService.updateUser(user);
        Assertions.assertEquals(updateUser.getId(), id, "更新失败！");
    }

    @Test
    void deleteByUsername() {
        userService.deleteByUsername("admin4");
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @Test
    void deleteAll() {
        userService.deleteAll();
    }
}
