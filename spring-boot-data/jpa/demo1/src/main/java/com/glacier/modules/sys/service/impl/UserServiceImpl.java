package com.glacier.modules.sys.service.impl;

import com.glacier.modules.sys.dao.UserRepository;
import com.glacier.modules.sys.domain.User;
import com.glacier.modules.sys.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


/**
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService {

    @Resource
    public UserRepository userRepository;

    @Override
    public void delete(User user) {
        this.userRepository.delete(user);
    }

    @Override
    public void deleteById(String id) {
        this.userRepository.deleteById(id);
    }

    @Override
    public List<User> findAll() {
        return this.userRepository.findAll();
    }

    @Override
    public User findOne(String id) {
        return this.userRepository.getOne(id);
    }

    @Override
    public User save(User user) {
        return this.userRepository.save(user);
    }

    @Override
    public void saveOrUpdate(User user) {
        if (user.getId() != null && user.getId().trim().length() > 0) {
            this.update(user);
        } else {

            this.save(user);
        }
    }

    @Override
    public void update(User user) {
        this.userRepository.update(user);
    }

    @Override
    public void updateUserPassWord(String passWord, String id) {
        this.userRepository.updateUserPassWord(passWord, id);
    }


}
