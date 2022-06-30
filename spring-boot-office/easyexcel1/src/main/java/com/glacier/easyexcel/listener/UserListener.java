package com.glacier.easyexcel.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.read.listener.ReadListener;
import com.glacier.easyexcel.domain.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * date 2022-06-30 10:18
 *
 * @author glacier
 * @version 1.0
 */
public class UserListener implements ReadListener<User> {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserListener.class);
	
	/**
	 * When analysis one row trigger invoke function.
	 *
	 * @param data    one row value. Is is same as {@link AnalysisContext#readRowHolder()}
	 * @param context analysis context
	 */
	@Override
	public void invoke(User data, AnalysisContext context) {
		LOGGER.info("解析到一条数据:{}", data);
	}
	
	/**
	 * if have something to do after all analysis
	 *
	 * @param context
	 */
	@Override
	public void doAfterAllAnalysed(AnalysisContext context) {
		LOGGER.info("所有数据解析完成！");
	}
}
