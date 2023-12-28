package com.glacier.mybatis.interceptor;

import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlCommandType;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Signature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Field;
import java.time.LocalDateTime;

/**
 * date 2023-12-28 21:27
 *
 * @author glacier
 * @version 1.0
 */
@Intercepts({
        @Signature(type = Executor.class, method = "update", args = {MappedStatement.class, Object.class})
})
public class CreateOrUpdateInterceptor implements Interceptor {
    private static final Logger LOGGER = LoggerFactory.getLogger(CreateOrUpdateInterceptor.class);

    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        MappedStatement mappedStatement = (MappedStatement) invocation.getArgs()[0];
        String sqlId = mappedStatement.getId();
        LOGGER.info("sqlI： {}", sqlId);
        SqlCommandType sqlCommandType = mappedStatement.getSqlCommandType();
        Object parameter = invocation.getArgs()[1];
        LOGGER.info("sqlCommandType： {}", sqlCommandType);
        LOGGER.info("拦截查询请求 Executor#update 方法 {}", invocation.getMethod());
        if (parameter == null) {
            return invocation.proceed();
        }
        if (SqlCommandType.INSERT == sqlCommandType) {
            fillField(parameter, "createDate", LocalDateTime.now());
        } else if (SqlCommandType.UPDATE == sqlCommandType) {
            fillField(parameter, "updateDate", LocalDateTime.now());
        }
        return invocation.proceed();
    }

    /**
     * 设置字段值
     *
     * @param parameter 参数
     * @param fieldName 字段名
     * @param value     值
     * @throws NoSuchFieldException   异常
     * @throws IllegalAccessException 异常
     */
    private static void fillField(Object parameter, String fieldName, Object value) throws NoSuchFieldException, IllegalAccessException {
        try {
            Field field = parameter.getClass().getDeclaredField(fieldName);
            field.setAccessible(true);
            field.set(parameter, value);
            field.setAccessible(false);
        } catch (Exception e) {
            LOGGER.error("出现错误", e);
            throw e;
        }
    }
}
