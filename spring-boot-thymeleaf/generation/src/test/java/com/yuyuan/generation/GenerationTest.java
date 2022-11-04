package com.yuyuan.generation;

import com.yuyuan.generation.domain.Property;
import com.yuyuan.generation.domain.PropertyBuilder;
import com.yuyuan.generation.factory.TemplateEngineFactory;
import org.junit.jupiter.api.Test;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 * date 2022-11-01 10:30
 *
 * @author glacier
 * @version 1.0
 */
class GenerationTest {
	
	
	@Test
	void test() {
		//模板引擎
		TemplateEngine engine = TemplateEngineFactory.createTextTemplateEngine();
		
		//准备数据 使用context
		Context context = new Context();
		//添加基本类型
		context.setVariable("subPackage", "domain.entity");
		context.setVariable("name", "Dept");
		context.setVariable("attrs", generateAttributes());
		String out = engine.process("Entity", context);
		System.out.printf(out);
	}
	
	private List<Property> generateAttributes() {
		ArrayList<Property> list = new ArrayList<>();
		list.add(PropertyBuilder.aProperty()
				.javaType(String.class)
				.name("name")
				.build());
		
		list.add(PropertyBuilder.aProperty()
				.javaType(Integer.class)
				.name("age")
				.build());
		
		
		list.add(PropertyBuilder.aProperty()
				.javaType(LocalDate.class)
				.name("birthday")
				.build());
		return list;
	}
}
