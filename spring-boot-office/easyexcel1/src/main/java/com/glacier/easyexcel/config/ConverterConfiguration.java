package com.glacier.easyexcel.config;

import com.alibaba.excel.converters.ConverterKeyBuild;
import com.alibaba.excel.converters.DefaultConverterLoader;
import com.glacier.easyexcel.converter.LocalDateDateConverter;
import com.glacier.easyexcel.converter.LocalDateNumberConverter;
import com.glacier.easyexcel.converter.LocalDateStringConverter;

/**
 * date 2022-06-30 17:09
 *
 * @author glacier
 * @version 1.0
 */
public class ConverterConfiguration {

	static {
		// 添加转换器
		LocalDateStringConverter localDateStringConverter = new LocalDateStringConverter();
		DefaultConverterLoader.loadAllConverter()
				.put(ConverterKeyBuild.buildKey(localDateStringConverter.supportJavaTypeKey(),
								localDateStringConverter.supportExcelTypeKey()),
						localDateStringConverter);
		
		LocalDateDateConverter localDateDateConverter = new LocalDateDateConverter();
		DefaultConverterLoader.loadAllConverter()
				.put(ConverterKeyBuild.buildKey(localDateDateConverter.supportJavaTypeKey(),
								localDateDateConverter.supportExcelTypeKey()),
						localDateDateConverter);
		
		
		LocalDateNumberConverter localDateNumberConverter = new LocalDateNumberConverter();
		DefaultConverterLoader.loadAllConverter()
				.put(ConverterKeyBuild.buildKey(localDateNumberConverter.supportJavaTypeKey(),
								localDateNumberConverter.supportExcelTypeKey()),
						localDateNumberConverter);
	}
}
