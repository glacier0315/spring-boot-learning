package com.glacier.modules.sys.dao;

import com.glacier.modules.sys.domain.Province;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@Repository("provinceRepository")
public interface ProvinceRepository
        extends JpaRepository<Province, String>, JpaSpecificationExecutor<Province>, CommonDao {

    List<Province> findProvinceByType(int type);
}
