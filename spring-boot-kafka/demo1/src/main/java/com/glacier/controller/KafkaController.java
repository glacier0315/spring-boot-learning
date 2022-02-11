package com.glacier.controller;

import com.glacier.constant.Constant;
import com.glacier.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

/**
 * date 2022-02-11 15:21
 *
 * @author glacier
 * @version 1.0
 */
@RestController
public class KafkaController {
	
	private final KafkaTemplate<Object, Object> kafkaTemplate;
	
	@Autowired
	public KafkaController(KafkaTemplate<Object, Object> kafkaTemplate) {
		this.kafkaTemplate = kafkaTemplate;
	}
	
	@RequestMapping("/send")
	public String send(@RequestParam("nickname") String nickname) {
		kafkaTemplate.send(Constant.TOPIC,
				User.UserBuilder.anUser()
						.id(UUID.randomUUID()
								.toString()
								.replace("-",""))
						.nickname(nickname)
						.username(Constant.TOPIC)
						.build());
		return String.format("消息 %s 发送成功！", nickname);
	}
}
