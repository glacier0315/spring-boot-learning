package com.glacier.config;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.Module;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.jsontype.impl.LaissezFaireSubTypeValidator;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateDeserializer;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateSerializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import com.glacier.json.CustomizeNullJsonSerializer;
import com.glacier.json.MyBeanSerializerModifier;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.TimeZone;

/**
 * date 2021-09-27 17:59
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class JsonConfiguration {

	/**
	 * 自定义 LocalDate、LocalDateTime序列化器
	 *
	 * @return
	 */
	private Module javaTimeModule() {
		String datePattern = "yyyy-MM-dd";
		String dateTimePattern = "yyyy-MM-dd HH:mm:ss";
		JavaTimeModule timeModule = new JavaTimeModule();
		timeModule.addDeserializer(LocalDate.class,
				new LocalDateDeserializer(DateTimeFormatter.ofPattern(datePattern)));
		timeModule.addDeserializer(LocalDateTime.class,
				new LocalDateTimeDeserializer(DateTimeFormatter.ofPattern(dateTimePattern)));
		timeModule.addSerializer(LocalDate.class,
				new LocalDateSerializer(DateTimeFormatter.ofPattern(datePattern)));
		timeModule.addSerializer(LocalDateTime.class,
				new LocalDateTimeSerializer(DateTimeFormatter.ofPattern(dateTimePattern)));
		return timeModule;
	}

	/**
	 * 配置 ObjectMapper
	 *
	 * @param builder
	 * @return
	 */
	@Bean
	@Primary
	@ConditionalOnMissingBean(ObjectMapper.class)
	public ObjectMapper jacksonObjectMapper(Jackson2ObjectMapperBuilder builder) {
		ObjectMapper objectMapper = builder.createXmlMapper(false)
				.build();

		// 忽略无法转换的对象
		objectMapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
		// PrettyPrinter 格式化输出
		objectMapper.configure(SerializationFeature.INDENT_OUTPUT, true);
		// 取消时间的转化格式，默认是时间戳,同时需要设置要表现的时间格式
		objectMapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
		objectMapper.configure(SerializationFeature.WRITE_DURATIONS_AS_TIMESTAMPS, false);
		// 忽略json字符串中不识别的属性
		objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		// NULL不参与序列化
		objectMapper.setSerializationInclusion(JsonInclude.Include.NON_EMPTY);
		// 允许出现单引号
		objectMapper.configure(JsonParser.Feature.ALLOW_SINGLE_QUOTES, true);

		// 指定时区
		objectMapper.setTimeZone(TimeZone.getTimeZone("GMT+8:00"));
		// 日期类型字符串处理
		objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));

		objectMapper.registerModule(javaTimeModule());
		// 为objectMapper注册一个带有SerializerModifier的Factory
		objectMapper.setSerializerFactory(
				objectMapper.getSerializerFactory()
						.withSerializerModifier(new MyBeanSerializerModifier()));

		SerializerProvider serializerProvider = objectMapper.getSerializerProvider();
		serializerProvider.setNullValueSerializer(
				new CustomizeNullJsonSerializer
						.NullObjectJsonSerializer());
		return objectMapper;
	}
}
