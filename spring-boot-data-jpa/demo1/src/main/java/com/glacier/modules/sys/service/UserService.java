package com.glacier.modules.sys.service;

import com.glacier.modules.sys.domain.User;

import java.util.List;


/**
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
public interface UserService {

    void delete(User user);

    void deleteById(String id);

    List<User> findAll();

    User findById(String id);

    User save(User user);

    void saveOrUpdate(User user);

    void update(User user);

    void updateUserPassWord(String password, String id);

}
