package com.glacier.mybatis.utils;

import org.apache.ibatis.executor.BatchResult;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import java.util.List;
import java.util.function.BiFunction;

/**
 * date 2023-01-26 17:19
 *
 * @author glacier
 * @version 1.0.0
 */
@Component
public class MybatisBatchUtils {

    private static final Logger LOGGER = LoggerFactory.getLogger(MybatisBatchUtils.class);

    /**
     * 每次处理1000条
     */
    private static final int BATCH_SIZE = 1000;

    private final SqlSessionFactory sqlSessionFactory;

    @Autowired
    public MybatisBatchUtils(SqlSessionFactory sqlSessionFactory) {
        this.sqlSessionFactory = sqlSessionFactory;
    }


    /**
     * 批量处理修改或者插入
     *
     * @param data        需要被处理的数据
     * @param mapperClass Mybatis的Mapper类
     * @param function    自定义处理逻辑
     * @return int 影响的总行数
     */
    public <T, U, R> int batchUpdateOrInsert(
            List<T> data, Class<U> mapperClass, BiFunction<T, U, R> function) {
        int i = 1;
        SqlSession batchSqlSession = sqlSessionFactory.openSession();
        batchSqlSession.getConfiguration().setDefaultExecutorType(ExecutorType.BATCH);
        try {
            U mapper = batchSqlSession.getMapper(mapperClass);
            int size = data.size();
            for (T element : data) {
                function.apply(element, mapper);
                if ((i % BATCH_SIZE == 0) || i == size) {
                    List<BatchResult> batchResults = batchSqlSession.flushStatements();
                    LOGGER.info("batch update or insert {}", batchResults);
                }
                i++;
            }
            // 非事务环境下强制commit，事务情况下该commit相当于无效
            batchSqlSession.commit(!TransactionSynchronizationManager.isSynchronizationActive());
        } catch (Exception e) {
            batchSqlSession.rollback();
            throw new RuntimeException(e);
        } finally {
            batchSqlSession.close();
        }
        return i - 1;
    }
}
