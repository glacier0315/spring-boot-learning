package com.glacier.easyexcel.service;

import com.glacier.easyexcel.domain.User;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

/**
 * @author glacier
 * @version 1.0
 * @date 2020-10-16 15:04
 */
public interface UserService {
	
	/**
	 * 查询所有
	 * @return
	 */
    List<User> findAll();
	
	/**
	 * 查询
	 * @param user
	 * @return
	 */
    List<User> findList(User user);
	
	/**
	 * 导出
	 * @param user
	 * @param out
	 */
	void exportExcel(User user, OutputStream out);
	
	/**
	 * 导入 excel
	 * @param ins
	 * @return
	 */
	int importExcel(InputStream ins);
}
