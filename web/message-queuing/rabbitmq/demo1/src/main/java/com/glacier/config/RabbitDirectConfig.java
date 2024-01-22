package com.glacier.config;

import com.glacier.cons.Constant;
import org.springframework.amqp.core.*;
import org.springframework.amqp.support.converter.DefaultJackson2JavaTypeMapper;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


/**
 * date 2024-01-21 21:43
 *
 * @author glacier
 * @version 1.0
 */
@Configuration
public class RabbitDirectConfig {

    /**
     * RabbitTemplate消息转换器配置，自动将对象转换为json字符串
     *
     * @return
     */
    @Bean
    public MessageConverter jackson2JsonMessageConverter() {
        Jackson2JsonMessageConverter messageConverter = new Jackson2JsonMessageConverter();
        DefaultJackson2JavaTypeMapper classMapper = new DefaultJackson2JavaTypeMapper();
        classMapper.setTrustedPackages("*");
        messageConverter.setClassMapper(classMapper);
        // 配置自动创建消息id，用于识别不同消息，也可以在业务中基于ID判断是否是重复消息
        messageConverter.setCreateMessageIds(true);
        return messageConverter;
    }

    /**
     * 声明交换机，同channel.exchangeDeclare(EXCHANGE, BuiltinExchangeType.DIRECT);
     * Exchange是消息的入口，它接收消息并将其路由到Queue中。Exchange可以根据不同的路由键（Routing Key）将消息路由到不同的Queue中。
     * RabbitMQ支持多种类型的Exchange，如Direct Exchange、Topic Exchange、Fanout Exchange等
     *
     * @return
     */
    @Bean
    DirectExchange directExchange() {
        return ExchangeBuilder
                .directExchange(Constant.DIRECT_EXCHANGE_NAME)
                // durable: 是否持久化,默认是false,持久化队列：会被存储在磁盘上，当消息代理重启时仍然存在，暂存队列：当前连接有效
                .durable(true)
                .build();
    }

    /**
     * 声明队列，同channel.queueDeclare(QUEUE, true, false, false, null);
     * 绑定死信交换机及路由key
     * Queue是消息的队列，它用于存储消息。消息在Queue中等待被消费者消费。
     * Queue可以设置为持久化的，这意味着消息会被持久化到磁盘上，即使RabbitMQ服务崩溃也不会丢失消息。
     *
     * @return
     */
    @Bean
    public Queue directQueue() {
        return QueueBuilder.durable(Constant.DIRECT_QUEUE_NAME)
                .deadLetterExchange(Constant.DEAD_LETTER_EXCHANGE_NAME)
                .deadLetterRoutingKey(Constant.DEAD_LETTER_ROUTING_KEY)
                // 仲裁队列
                .quorum()
                .build();
    }

    /**
     * 绑定队列和交换机,同 channel.queueBind(QUEUE, EXCHANGE, ROUTING_KEY);
     * Binding是将Exchange和Queue绑定在一起的关系。Binding可以通过Routing Key将消息路由到Queue中。
     *
     * @return
     */
    @Bean
    public Binding directBinding(
            @Qualifier("directExchange") DirectExchange directExchange,
            @Qualifier("directQueue") Queue directQueue) {
        return BindingBuilder.bind(directQueue)
                .to(directExchange)
                .with(Constant.DIRECT_ROUTING_KEY);
    }

    @Bean
    public Queue direcTtlQueue() {
        return QueueBuilder.durable(Constant.DIRECT_TTL_QUEUE_NAME)
                .deadLetterExchange(Constant.DEAD_LETTER_EXCHANGE_NAME)
                .deadLetterRoutingKey(Constant.DEAD_LETTER_ROUTING_KEY)
                //声明队列属性有更改时需要删除队列
                // 给队列设置消息时长,与消息里面的ttl，取最小值
                .ttl(60 * 1000)
                //队列最大长度
                .maxLength(5L)
                .build();
    }

    @Bean
    Binding direcTtlRouteBinding(
            @Qualifier("directExchange") DirectExchange directExchange,
            @Qualifier("direcTtlQueue") Queue direcTtlQueue) {
        return BindingBuilder.bind(direcTtlQueue)
                .to(directExchange)
                .with(Constant.DIRECT_TTL_ROUTING_KEY);
    }

    @Bean
    public Queue directLazyQueue() {
        return QueueBuilder.durable(Constant.DIRECT_LAZY_QUEUE_NAME)
                .deadLetterExchange(Constant.DEAD_LETTER_EXCHANGE_NAME)
                .deadLetterRoutingKey(Constant.DEAD_LETTER_ROUTING_KEY)
                /*
                 * 惰性队列
                 * 接收到消息后直接存入磁盘而非内存
                 * 消费者要消费消息时才会从磁盘中读取并加载到内存
                 * 支持数百万条的消息存储
                 */
                .lazy()
                .build();
    }

    @Bean
    Binding direcLazyRouteBinding() {
        return BindingBuilder.bind(directLazyQueue())
                .to(directExchange())
                .with(Constant.DIRECT_LAZY_ROUTING_KEY);
    }


    /* 死信配置 **********************************************************************************************************/

    /**
     * 死信交换机
     */
    @Bean
    DirectExchange deadDirectExchange() {
        return ExchangeBuilder.directExchange(Constant.DEAD_LETTER_EXCHANGE_NAME)
                // 开启持久化
                .durable(true)
                .build();
    }

    /**
     * 死信队列
     */
    @Bean
    public Queue deadDirectQueue() {
        // 开启持久化
        return QueueBuilder.durable(Constant.DEAD_LETTER_QUEUE_NAME)
                .build();
    }

    /**
     * 绑定死信的队列和交换机
     *
     * @param deadDirectExchange
     * @param deadDirectQueue
     * @return
     */
    @Bean
    Binding deadRouteBinding(
            @Qualifier("deadDirectExchange") DirectExchange deadDirectExchange,
            @Qualifier("deadDirectQueue") Queue deadDirectQueue) {
        return BindingBuilder.bind(deadDirectQueue)
                .to(deadDirectExchange)
                .with(Constant.DEAD_LETTER_ROUTING_KEY);
    }
}
