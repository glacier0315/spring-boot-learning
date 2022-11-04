package com.glacier.jersey.config;

import org.glassfish.jersey.jackson.internal.jackson.jaxrs.json.JacksonJsonProvider;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.spring.scope.RequestContextFilter;
import org.springframework.context.annotation.Configuration;

/**
 * @author glacier
 * @version v1.0.0
 * @since <pre>2017/4/13 0013</pre>
 */
@Configuration
public class RestConfig extends ResourceConfig {

    public RestConfig() {
        this.packages("com.glacier.jersey");

        this.register(RequestContextFilter.class);
        this.register(JacksonJsonProvider.class);

    }

}
