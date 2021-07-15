package com.glacier;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * @author glacier
 * @version 1.0.0
 * @since <pre>2017-03-29</pre>
 */
@SpringBootApplication
@EnableJpaRepositories
public class SpringDataJpaDemo1Application {

    public static void main(String[] args) {
        SpringApplication.run(SpringDataJpaDemo1Application.class, args);
    }
}
