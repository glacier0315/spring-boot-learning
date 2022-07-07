package com.glacier.excel.service.impl;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.glacier.excel.domain.User;
import com.glacier.excel.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-10-16 15:04
 */
@Service("userService")
public class UserServiceImpl implements UserService {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	
	private final Set<User> users = new HashSet<>(200);
	
	@PostConstruct
	public void init() {
		User user = null;
		SecureRandom random = new SecureRandom();
		for (int i = 0; i < 150; i++) {
			user = new User();
			user.setId(UUID.randomUUID().toString().replace("-", ""));
			user.setUsername("user_" + i);
			user.setPassword("passwd_" + i);
			user.setNickname("昵称_" + i);
			user.setBirthday(LocalDate.now());
			user.setIdCard("123748909876543254654785" + i);
			user.setSex(String.valueOf(random.nextInt(2)));
			user.setDuty("duty_" + i);
			user.setJoinDate(LocalDateTime.now());
			user.setAge(random.nextInt(80));
			user.setRate(random.nextDouble());
			user.setScore(random.nextDouble() + random.nextInt(500));
			user.setLastLoginDate(LocalDateTime.now());
			
			this.users.add(user);
		}
	}
	
	@Override
	public List<User> findAll() {
		return new ArrayList<>(this.users);
	}
	
	@Override
	public List<User> findList(User user) {
		return this.users.parallelStream()
				.limit(10)
				.collect(Collectors.toList());
	}
	
	@Override
	public void exportExcel(User user, OutputStream out) {
		ExcelWriter writer = ExcelUtil.getWriter();
		writer.renameSheet("用户信息")
				.addHeaderAlias("username", "用户名")
				.addHeaderAlias("nickname", "昵称")
				.addHeaderAlias("sex", "性别")
				.addHeaderAlias("idCard", "身份证号")
				.addHeaderAlias("birthday", "出生日期")
				.addHeaderAlias("duty", "岗位")
				.addHeaderAlias("joinDate", "入职日期")
				.addHeaderAlias("score", "得分")
				.addHeaderAlias("age", "年龄")
				.addHeaderAlias("rate", "占比")
				.addHeaderAlias("lastLoginDate", "最后登录时间")
				.setOnlyAlias(true)
				.merge(writer.getHeaderAlias().size(), "用户信息")
				.autoSizeColumnAll()
				.write(this.findAll(), true)
				.flush(out)
				.close();
	}
	
	@Override
	public int importExcel(InputStream ins) {
		
		return 0;
	}
}
