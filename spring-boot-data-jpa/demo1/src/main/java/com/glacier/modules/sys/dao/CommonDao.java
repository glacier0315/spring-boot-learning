package com.glacier.modules.sys.dao;

import org.springframework.data.repository.NoRepositoryBean;


/**
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@NoRepositoryBean
public interface CommonDao {

    <T> void update(T t);

    <T> void batchUpdate(Iterable<T> s);
}
