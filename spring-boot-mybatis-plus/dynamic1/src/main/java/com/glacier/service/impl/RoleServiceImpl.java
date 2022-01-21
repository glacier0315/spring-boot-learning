package com.glacier.service.impl;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.glacier.constant.Constant;
import com.glacier.entity.Role;
import com.glacier.mapper.RoleMapper;
import com.glacier.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * date 2022-01-21 09:07
 *
 * @author glacier
 * @version 1.0
 */
@DS(Constant.DATASOURCE_2)
@Service
public class RoleServiceImpl implements RoleService {
	private final RoleMapper roleMapper;
	
	@Autowired
	public RoleServiceImpl(RoleMapper roleMapper) {
		this.roleMapper = roleMapper;
	}
	
	/**
	 * 查找所有角色
	 *
	 * @return
	 */
	@Override
	public List<Role> findAll() {
		return roleMapper.selectList(null);
	}
}
