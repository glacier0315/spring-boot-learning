package com.glacier.modules.sys.dao.impl;

import com.glacier.modules.sys.dao.UserDao;


/**
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
public class UserRepositoryImpl extends CommonDaoImpl implements UserDao {


    @Override
    public void test() {
        System.out.println(getJdbcTemplate());
        System.out.println(getEntityManager());
        System.out.println("测试");
    }

}
