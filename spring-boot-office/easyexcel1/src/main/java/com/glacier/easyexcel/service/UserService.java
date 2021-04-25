package com.glacier.easyexcel.service;

import com.glacier.easyexcel.domain.User;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-10-16 15:04
 */
public interface UserService {

    List<User> findAll();

    List<User> findList(User user);

    void export(User user, HttpServletResponse response);
}
