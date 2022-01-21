package com.glacier.quartz.listener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.Arrays;

/**
 * date 2022-01-21 15:29
 *
 * @author glacier
 * @version 1.0
 */
@Component
public class ScheduleJobInitListener implements CommandLineRunner {
	private static final Logger LOGGER = LoggerFactory.getLogger(ScheduleJobInitListener.class);
	
	@Override
	public void run(String... args) throws Exception {
		LOGGER.info("启动 {}", Arrays.toString(args));
	}
}
