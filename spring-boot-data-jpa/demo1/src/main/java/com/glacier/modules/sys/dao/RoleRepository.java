package com.glacier.modules.sys.dao;

import com.glacier.modules.sys.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

/**
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Repository("roleRepository")
public interface RoleRepository extends JpaRepository<Role, String>, JpaSpecificationExecutor<Role>, CommonDao {

}
