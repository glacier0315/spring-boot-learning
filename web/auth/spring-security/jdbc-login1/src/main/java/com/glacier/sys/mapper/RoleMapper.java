package com.glacier.sys.mapper;

import com.glacier.sys.domain.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * date 2021-07-16 10:17
 *
 * @author glacier
 * @version 1.0
 */
public interface RoleMapper {
	/**
	 * 根据用户id 查询角色
	 *
	 * @param userId 用户id
	 * @return 角色
	 */
	List<Role> findByUserId(@Param("userId") String userId);
}
