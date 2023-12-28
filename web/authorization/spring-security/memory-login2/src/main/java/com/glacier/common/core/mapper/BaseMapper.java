package com.glacier.common.core.mapper;

import java.io.Serializable;
import java.util.List;

/**
 * 通用mapper
 *
 * @author glacier
 * @version 1.0
 * date 2020-08-07 16:25
 * @param <T> 实体类型
 * @param <ID> 主键类型
 */
public interface BaseMapper<T, ID extends Serializable> {

    /**
     * 根据主键 查询
     *
     * @param id 主键
     * @return 删除记录数
     */
    int deleteByPrimaryKey(ID id);

    /**
     * 插入 新记录
     *
     * @param record 记录实体
     * @return 插入记录数
     */
    int insert(T record);

    /**
     * 根据主键查询
     *
     * @param id 主键
     * @return 实例
     */
    T selectByPrimaryKey(ID id);

    /**
     * 查询所有
     *
     * @return 所有实例
     */
    List<T> selectAll();

    /**
     * 更新记录
     *
     * @param record 记录
     * @return 更新记录数
     */
    int updateByPrimaryKey(T record);
}
