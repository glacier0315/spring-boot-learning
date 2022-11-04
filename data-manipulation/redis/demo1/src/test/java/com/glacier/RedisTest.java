package com.glacier;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

/**
 * date 2021-09-27 15:35
 *
 * @author glacier
 * @version 1.0
 */
@SpringBootTest
class RedisTest {
	
	@Autowired
	private RedisTemplate<String, Object> redisTemplate;
	
	@Test
	void test(){
		System.out.println(redisTemplate);
		redisTemplate.opsForValue().set("aaa", "123");
		redisTemplate.opsForValue().set("aaa1", "123");
		redisTemplate.delete("aaa1");
	}
}
