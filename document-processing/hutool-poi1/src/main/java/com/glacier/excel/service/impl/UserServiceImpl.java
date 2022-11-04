package com.glacier.excel.service.impl;

import cn.hutool.core.collection.CollUtil;
import cn.hutool.poi.excel.ExcelReader;
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
import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
		// 表头
		List<String> headers = CollUtil.newArrayList("用户名", "昵称", "性别", "身份证号", "出生日期", "岗位",
				"入职日期", "得分", "年龄", "占比", "登录日期");
		// 数据
		List<List<?>> datas = this.findAll().stream()
				.map(item ->
						CollUtil.newArrayList(
								item.getUsername(),
								item.getNickname(),
								item.getSex(),
								item.getIdCard(),
								Optional.ofNullable(item.getBirthday())
										.map(date -> date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd")))
										.orElse(""),
								item.getDuty(),
								Optional.ofNullable(item.getJoinDate())
										.map(date -> date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd")))
										.orElse(""),
								item.getScore(),
								item.getAge(),
								Optional.ofNullable(item.getRate())
										.map(rate -> new DecimalFormat("0.00%").format(rate))
										.orElse(""),
								Optional.ofNullable(item.getLastLoginDate())
										.map(date -> date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")))
										.orElse("")))
				.collect(Collectors.toList());
		ExcelWriter writer = ExcelUtil.getWriter();
		writer.renameSheet("用户信息")
				.merge(headers.size() - 1, "用户信息")
				.writeHeadRow(headers)
				.write(datas)
				.autoSizeColumnAll()
				.flush(out)
				.close();
	}
	
	@Override
	public int importExcel(InputStream ins) {
		ExcelReader reader = ExcelUtil.getReader(ins);
		// 读取第一个sheet
		// ExcelReader reader = ExcelUtil.getReader(ins, 0);
		List<List<Object>> lists = reader.read(2);
		lists.forEach(System.out::println);
		return 0;
	}
}
