package com.glacier.mybatis.utils;

import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Function;

/**
 * date 2023-01-26 17:19
 *
 * @author glacier
 * @version 1.0.0
 */
public class MybatisBatchUtils {
    private static final Logger LOGGER = LoggerFactory.getLogger(MybatisBatchUtils.class);

    /**
     * 每次处理1000条
     */
    private static final int BATCH_SIZE = 1000;

    private final SqlSessionFactory sqlSessionFactory;

    public MybatisBatchUtils(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }

    /**
     * 批量处理修改或者插入
     *
     * @param data        需要被处理的数据
     * @param mapperClass Mybatis的Mapper类
     * @param function    自定义处理逻辑
     * @param <T>         数据类型
     * @param <U>         Mybatis的Mapper类型
     * @param <R>         返回值的类型
     * @return int 影响的总行数
     */
    public <T, U, R> int batchUpdateOrInsert(
            List<T> data, Class<U> mapperClass, BiFunction<T, U, R> function) {
        return batchExecute(sqlSession -> {
            int i = 0;
            U mapper = sqlSession.getMapper(mapperClass);
            int size = data.size();
            for (T element : data) {
                function.apply(element, mapper);
                i++;
                if ((i % BATCH_SIZE == 0) || i == size) {
                    sqlSession.flushStatements();
                    LOGGER.info("batch update or insert {} row", i);
                }
            }
            return i;
        });
    }

    /**
     * 批量处理
     *
     * @param function 处理逻辑
     * @return
     */
    public int batchExecute(Function<SqlSession, Integer> function) {
        int i;
        SqlSession sqlSession = sqlSessionFactory.openSession(ExecutorType.BATCH, false);
        try {
            i = function.apply(sqlSession);
            // 非事务环境下强制commit，事务情况下该commit相当于无效
            sqlSession.commit(!TransactionSynchronizationManager.isSynchronizationActive());
        } catch (Exception e) {
            sqlSession.rollback();
            throw new RuntimeException(e);
        } finally {
            sqlSession.close();
        }
        return i;
    }

}
