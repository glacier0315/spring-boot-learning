package com.glacier.service.impl;

import com.glacier.mapper.UserMapper;
import com.glacier.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @author glacier
 * @version 1.0
 * @description 用户业务类
 * @date 2019-08-04 21:50
 */
@Transactional(readOnly = true)
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;

    public void test() {

    }

}
