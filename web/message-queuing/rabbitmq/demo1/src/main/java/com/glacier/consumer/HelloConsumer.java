package com.glacier.consumer;

import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.Exchange;
import org.springframework.amqp.rabbit.annotation.Queue;
import org.springframework.amqp.rabbit.annotation.QueueBinding;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

/**
 * date 2022-01-29 18:15
 *
 * @author glacier
 * @version 1.0
 */
@Slf4j
@Component
public class HelloConsumer {

    @RabbitListener(queuesToDeclare = @Queue("helloQ"))
    public void handle1(String message) {
        log.info("handle1:   {}", message);
    }

    @RabbitListener(queuesToDeclare = @Queue("helloQ"))
    public void handle2(String message) {
        log.info("handle2:   {}", message);
    }


    @RabbitListener(bindings = {
            @QueueBinding(
                    value = @Queue,//声明临时队列
                    exchange = @Exchange(value = "fanoutsr", type = "fanout")
            )
    })
    public void handle3(String message) {
        log.info("handle3:   {}", message);
    }

    @RabbitListener(bindings = {
            @QueueBinding(
                    value = @Queue(value = "fanoutsr_q1"),
                    exchange = @Exchange(value = "fanoutsr", type = "fanout")
            )
    })
    public void handle4(String message) {
        log.info("handle4:   {}", message);
    }


    @RabbitListener(bindings = {
            @QueueBinding(
                    value = @Queue(value = "routesr_q1"),
                    exchange = @Exchange(value = "routesr", type = "direct"),
                    key = {"error"}
            )
    })
    public void handle5(String message) {
        log.info("handle5:   {}", message);
    }

    @RabbitListener(bindings = {
            @QueueBinding(
                    value = @Queue(value = "routesr_q2"),
                    exchange = @Exchange(value = "routesr", type = "direct"),
                    key = {"error", "info"}
            )
    })
    public void handle6(String message) {
        log.info("handle6:   {}", message);
    }

    @RabbitListener(bindings = {
            @QueueBinding(
                    value = @Queue(value = "topicsr_q1"),
                    exchange = @Exchange(value = "topicsr", type = "topic"),
                    key = {"order.*"}
            )
    })
    public void handle7(String message) {
        log.info("handle7:   {}", message);
    }

    @RabbitListener(bindings = {
            @QueueBinding(
                    value =  @Queue(value = "topicsr_q2"),
                    exchange = @Exchange(value = "topicsr", type = "topic"),
                    key = {"order.#"}
            )
    })
    public void handle8(String message) {
        log.info("handle8:   {}", message);
    }
}
