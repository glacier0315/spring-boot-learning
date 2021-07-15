package com.glacier.sys.mapper;

import com.glacier.sys.domain.User;
import org.apache.ibatis.annotations.Param;

/**
 * date 2021-07-16 10:17
 *
 * @author glacier
 * @version 1.0
 */
public interface UserMapper {
	
	/**
	 * 根据用户名查询用户
	 *
	 * @param username 用户名
	 * @return 用户
	 */
	User selectOneByUsername(@Param("username") String username);
}
