package com.glacier.modules.sys.dao.impl;

import com.glacier.modules.sys.dao.CommonDao;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Iterator;


/**
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Repository
public class CommonDaoImpl implements CommonDao {

    private static final int BATCH_COMMIT_NUM = 50;

    @PersistenceContext
    private EntityManager entityManager;
    @Resource
    private JdbcTemplate jdbcTemplate;

    @Override
    public <T> void update(T t) {
        this.getEntityManager().merge(t);
    }

    @Override
    public <T> void batchUpdate(Iterable<T> s) {
        if (s != null) {
            T t = null;
            int i = 0;
            Iterator<T> it = s.iterator();
            while (it.hasNext()) {
                t = it.next();
                this.getEntityManager().merge(t);
                if (i % BATCH_COMMIT_NUM == 0) {
                    this.getEntityManager().flush();
                }
                i++;
            }
        }

    }

    protected EntityManager getEntityManager() {
        return entityManager;
    }

    protected JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

}
