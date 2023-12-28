package com.yuyuan.generation.factory;

import org.thymeleaf.TemplateEngine;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;

/**
 * date 2022-11-01 16:37
 *
 * @author glacier
 * @version 1.0
 */
public class TemplateEngineFactory {
	
	private TemplateEngineFactory() {
	}
	
	public static TemplateEngine createTextTemplateEngine() {
		return createTemplateEngine("templates/", ".java", "TEXT");
	}
	
	/**
	 * 获取模板引擎
	 * @param prefix
	 * @param suffix
	 * @param mode
	 * @return
	 */
	public static TemplateEngine createTemplateEngine(String prefix, String suffix, String mode) {
		//模板引擎
		TemplateEngine engine = new TemplateEngine();
		//读取磁盘中的模板文件
		ClassLoaderTemplateResolver resolver = new ClassLoaderTemplateResolver();
		//路径
		resolver.setPrefix(prefix);
		//后缀
		resolver.setSuffix(suffix);
		//设置模板模式、默认是HTML
		resolver.setTemplateMode(mode);
		//设置引擎使用 resolve
		engine.setTemplateResolver(resolver);
		
		return engine;
	}
}
