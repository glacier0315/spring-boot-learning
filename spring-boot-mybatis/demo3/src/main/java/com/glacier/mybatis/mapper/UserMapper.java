package com.glacier.mybatis.mapper;

import com.glacier.mybatis.entity.User;

import java.util.List;

/**
 * date 2021-12-10 17:06
 *
 * @author glacier
 * @version 1.0
 */
public interface UserMapper {
	
	/**
	 * 根据主键 查询
	 *
	 * @param id 主键
	 * @return 删除记录数
	 */
	int deleteByPrimaryKey(String id);
	
	/**
	 * 插入 新记录
	 *
	 * @param user 记录实体
	 * @return 插入记录数
	 */
	int insert(User user);
	
	/**
	 * 根据主键查询
	 *
	 * @param id 主键
	 * @return 实例
	 */
	User selectByPrimaryKey(String id);
	
	/**
	 * 查询所有
	 *
	 * @return 所有实例
	 */
	List<User> selectAll();
	
	/**
	 * 更新记录
	 *
	 * @param user 记录
	 * @return 更新记录数
	 */
	int updateByPrimaryKey(User user);
	
	/**
	 * 根据条件查询
	 *
	 * @param user 查询参数
	 * @return 用户集合
	 */
	List<User> selectList(User user);
	
	/**
	 * 根据组织机构id 更新组织机构名称
	 *
	 * @param user 记录
	 * @return 更新行数
	 */
	int updateDeptByDeptId(User user);
	
	/**
	 * 根据用户名查询用户
	 *
	 * @param username 用户名
	 * @return 用户
	 */
	User selectOneByUsername(String username);
	
	/**
	 * 更新个人信息
	 *
	 * @param user  记录
	 * @return 更新行数
	 */
	int updateProfileByPrimaryKey(User user);
	
	/**
	 * 更新头像
	 *
	 * @param user 记录
	 * @return 更新行数
	 */
	int updateAvatarByPrimaryKey(User user);
	
	/**
	 * 更新密码
	 *
	 * @param user 记录
	 * @return 更新行数
	 */
	int updatePasswordByPrimaryKey(User user);
}
