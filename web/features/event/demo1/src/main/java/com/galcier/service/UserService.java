package com.galcier.service;

import com.galcier.domain.User;

/**
 * date 2023-12-16 10:56
 *
 * @author glacier
 * @version 1.0
 */
public interface UserService {

    String register(User user);

    String login(User user);

    String logout(String username);
}
