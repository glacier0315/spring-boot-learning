package com.glacier.easyexcel.converters;

import com.alibaba.excel.converters.Converter;
import com.alibaba.excel.converters.ConverterKeyBuild;
import com.alibaba.excel.converters.DefaultConverterLoader;
import com.glacier.easyexcel.converters.localdate.CustomLocalDateDateConverter;
import com.glacier.easyexcel.converters.localdate.CustomLocalDateNumberConverter;
import com.glacier.easyexcel.converters.localdate.CustomLocalDateStringConverter;

/**
 * date 2022-06-30 17:09
 *
 * @author glacier
 * @version 1.0
 */
public class CustmonConverterLoader {
	
	static {
		initDefaultWriteConverter();
		initAllConverter();
	}
	
	private static void initAllConverter() {
		putAllConverter(new CustomLocalDateStringConverter());
		putAllConverter(new CustomLocalDateDateConverter());
		putAllConverter(new CustomLocalDateNumberConverter());
	}
	
	private static void initDefaultWriteConverter() {
		putWriteConverter(new CustomLocalDateDateConverter());
		putWriteConverter(new CustomLocalDateNumberConverter());
		
		// In some cases, it must be converted to string
		putWriteStringConverter(new CustomLocalDateStringConverter());
	}
	
	private static void putWriteConverter(Converter<?> converter) {
		DefaultConverterLoader.loadDefaultWriteConverter()
				.put(ConverterKeyBuild.buildKey(converter.supportJavaTypeKey()), converter);
	}
	
	private static void putWriteStringConverter(Converter<?> converter) {
		DefaultConverterLoader.loadDefaultWriteConverter()
				.put(ConverterKeyBuild.buildKey(converter.supportJavaTypeKey(), converter.supportExcelTypeKey()),
						converter);
	}
	
	private static void putAllConverter(Converter<?> converter) {
		DefaultConverterLoader.loadAllConverter()
				.put(ConverterKeyBuild.buildKey(converter.supportJavaTypeKey(), converter.supportExcelTypeKey()),
				converter);
	}
}
