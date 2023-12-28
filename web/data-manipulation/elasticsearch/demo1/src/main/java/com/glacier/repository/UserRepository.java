package com.glacier.repository;

import com.glacier.domain.User;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * date 2022-01-26 13:13
 *
 * @author glacier
 * @version 1.0
 */
@Repository
public interface UserRepository extends ElasticsearchRepository<User, String> {
	
	/**
	 * 根据用户名查找
	 * @param username
	 * @return
	 */
	User findByUsername(String username);
	
	/**
	 * 根据昵称查找
	 * @param nickname
	 * @return
	 */
	List<User> findByNickname(String nickname);
}
