package com.glacier.mybatis.service.impl;

import com.glacier.mybatis.entity.User;
import com.glacier.mybatis.mapper.UserMapper;
import com.glacier.mybatis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionTemplate;

import javax.annotation.Resource;
import java.util.List;
import java.util.Optional;

/**
 * date 2022-01-21 08:09
 *
 * @author glacier
 * @version 1.0
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private TransactionTemplate transactionTemplate;
    @Resource
    private UserMapper userMapper;

    @Override
    public int add(User user) {
        // 其他逻辑
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        //  保存
        Integer add = transactionTemplate.execute(status -> {
            // 其他逻辑
            return userMapper.insert(user);
        });
        // 其他逻辑
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        return Optional.ofNullable(add).orElse(0);
    }

    @Transactional(rollbackFor = {Exception.class})
    @Override
    public int update(User user) {
        return userMapper.updateByPrimaryKey(user);
    }

    @Transactional()
    @Override
    public int delete(String id) {
        return userMapper.deleteByPrimaryKey(id);
    }

    /**
     * 查询所有
     *
     * @return 所有实例
     */
    @Override
    public List<User> selectAll() {
        return userMapper.selectAll();
    }
}
