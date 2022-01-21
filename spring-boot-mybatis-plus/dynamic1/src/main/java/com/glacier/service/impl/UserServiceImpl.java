package com.glacier.service.impl;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.glacier.constant.Constant;
import com.glacier.entity.User;
import com.glacier.entity.builder.UserBuilder;
import com.glacier.mapper.UserMapper;
import com.glacier.service.UserService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户业务类
 *
 * @author glacier
 * @version 1.0
 * @date 2019-08-04 21:50
 */
@DS(Constant.DATASOURCE_1)
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
	
	@Override
	public User findByUsername(String username) {
		return this.baseMapper.selectOne(
				new QueryWrapper<>(
						UserBuilder.anUser()
								.username(username)
								.build()));
	}

    @Override
    public List<User> findAll() {
        return this.baseMapper.selectList(null);
    }
}
