package com.glacier.excel.listener;

import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.event.AnalysisEventListener;
import com.alibaba.excel.exception.ExcelAnalysisException;
import com.alibaba.excel.exception.ExcelAnalysisStopException;
import com.glacier.excel.domain.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Map;

/**
 * date 2022-06-30 10:18
 *
 * @author glacier
 * @version 1.0
 */
public class UserAnalysisEventListener extends AnalysisEventListener<User> {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserAnalysisEventListener.class);
	
	/**
	 * When analysis one row trigger invoke function.
	 *
	 * @param user    one row value. Is is same as {@link AnalysisContext#readRowHolder()}
	 * @param context analysis context
	 */
	@Override
	public void invoke(User user, AnalysisContext context) {
		validate(user, context);
		LOGGER.info("解析到一条数据:{}", user);
	}
	
	public void validate(User user, AnalysisContext context) {
		if (user.getUsername() == null || user.getUsername().trim().isEmpty()) {
			throw new ExcelAnalysisStopException("第 " + (context.readRowHolder().getRowIndex() + 1) + " 行用户名为空");
		}
	}
	
	@Override
	public void onException(Exception exception, AnalysisContext context) throws Exception {
		LOGGER.error("解析失败, exception: {}", exception.getMessage());
		super.onException(exception, context);
	}
	
	@Override
	public void invokeHeadMap(Map<Integer, String> headMap, AnalysisContext context) {
		// 不是表头则返回
		if (!isHeader(context)) {
			return;
		}
		LOGGER.info("解析到一条头数据:{}", headMap);
		if (!"用户名".equals(headMap.get(0))) {
			throw new ExcelAnalysisException("上传文件格式不正确！");
		}
	}
	
	/**
	 * 通过 AnalysisContext 对象可以获取到 Excel 判断当前行是否为表头
	 */
	public boolean isHeader(AnalysisContext context) {
		return context.readRowHolder().getRowIndex() + 1 == context.readSheetHolder().getHeadRowNumber();
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
