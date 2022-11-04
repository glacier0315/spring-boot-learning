package com.glacier.modules.sys.dao;

import com.glacier.modules.sys.domain.Province;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.List;


@SpringBootTest
class ProvinceRepositoryTest {
	
	@Resource
	private ProvinceRepository provinceDao;
	
	@Test
	void testFindProvinceByType() {
		List<Province> citys = this.provinceDao.findProvinceByType(1);
		System.out.println(citys);
	}

}
