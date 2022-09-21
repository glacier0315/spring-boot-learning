package com.glacier.modules.sys.dao;

import com.glacier.modules.sys.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, String>, JpaSpecificationExecutor<User>, UserDao {

    @Modifying
    @Transactional
	@Query(value = "UPDATE User a set a.password=?1 where a.id=?2 ")
    void updateUserPassWord(String password, String id);
}
