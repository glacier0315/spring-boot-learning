package com.glacier.easyexcel.service.impl;

import com.alibaba.excel.EasyExcelFactory;
import com.glacier.easyexcel.domain.User;
import com.glacier.easyexcel.listener.UserListener;
import com.glacier.easyexcel.service.UserService;
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
		EasyExcelFactory.write(out, User.class)
				.sheet("模板")
				.doWrite(this.findAll());
	}
	
	@Override
	public int importExcel(InputStream ins) {
		// 方式一
		EasyExcelFactory.read(ins, User.class, new UserListener())
				.sheet(0)
				.doRead();
		// 方式二 读取多个sheet
		//try (ExcelReader reader = EasyExcelFactory.read(ins).build();) {
		//	reader.read(EasyExcelFactory.readSheet(0)
		//			.registerConverter(new CustomLocalDateDateConverter())
		//			.head(User.class)
		//			.registerReadListener(new UserListener())
		//			.build());
		//}
		return 0;
	}
}
