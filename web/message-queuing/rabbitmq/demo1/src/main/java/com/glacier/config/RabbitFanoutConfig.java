package com.glacier.config;

import com.glacier.cons.Constant;
import org.springframework.amqp.core.*;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


/**
 * date 2024-01-21 21:43
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class RabbitFanoutConfig {

    /**
     * Fanout交换机
     *
     * @return
     */
    @Bean
    FanoutExchange fanoutExchange() {
        return ExchangeBuilder.fanoutExchange(Constant.FANOUT_EXCHANGE_NAME)
                // durable: 是否持久化,默认是false,持久化队列：会被存储在磁盘上，当消息代理重启时仍然存在，暂存队列：当前连接有效
                .durable(true)
                .build();
    }

    @Bean
    public Queue fanoutQueue1() {
        return QueueBuilder.durable(Constant.FANOUT_QUEUE_NAME_1)
                .build();
    }


    /**
     * 绑定队列和交换机,同 channel.queueBind(QUEUE, EXCHANGE, ROUTING_KEY);
     *
     * @return
     */
    @Bean
    public Binding fanoutBinding1() {
        return BindingBuilder.bind(fanoutQueue1())
                .to(fanoutExchange());
    }

    @Bean
    public Queue fanoutQueue2() {
        return QueueBuilder.durable(Constant.FANOUT_QUEUE_NAME_2)
                .build();
    }

    /**
     * 绑定队列和交换机,同 channel.queueBind(QUEUE, EXCHANGE, ROUTING_KEY);
     *
     * @return
     */
    @Bean
    public Binding fanoutBinding2() {
        return BindingBuilder.bind(fanoutQueue2())
                .to(fanoutExchange());
    }

}
