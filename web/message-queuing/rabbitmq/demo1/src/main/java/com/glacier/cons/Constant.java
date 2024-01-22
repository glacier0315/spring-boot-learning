package com.glacier.cons;

/**
 * date 2024-01-21 21:44
 *
 * @author glacier
 * @version 1.0
 */
public interface Constant {
    String DIRECT_EXCHANGE_NAME = "direct.Exchange.1";

    String DIRECT_QUEUE_NAME = "direct.queue.1";

    String DIRECT_ROUTING_KEY = "direct.routing.key.1";

    String DIRECT_TTL_QUEUE_NAME = "direct.ttl.queue.1";

    String DIRECT_TTL_ROUTING_KEY = "direct.ttl.routing.key.1";

    String DIRECT_LAZY_QUEUE_NAME = "direct.lazy.queue.1";

    String DIRECT_LAZY_ROUTING_KEY = "direct.lazy.routing.key.1";

    String DEAD_LETTER_EXCHANGE_NAME = "dead.letter.exchange.1";

    String DEAD_LETTER_QUEUE_NAME = "dead.letter.queue.1";

    String DEAD_LETTER_ROUTING_KEY = "dead.letter.routing-key.1";

    String FANOUT_EXCHANGE_NAME = "fanout.Exchange.1";

    String FANOUT_QUEUE_NAME_1 = "fanout.queue.1";

    String FANOUT_QUEUE_NAME_2 = "fanout.queue.2";


    String TOPIC_EXCHANGE_NAME = "topic.Exchange.1";

    String TOPIC_QUEUE_NAME_1 = "topic.queue.1";

    String TOPIC_QUEUE_NAME_2 = "topic.queue.2";

    /**
     * • 绑定的是china.# ，凡是以 china.开头的routing key 都会被匹配到，包括：
     * • china.news
     * • china.weather
     */
    String TOPIC_ROUTING_KEY_1 = "china.#";

    /**
     * • 绑定的是#.news ，凡是以 .news结尾的 routing key 都会被匹配。包括:
     * • china.news
     * • japan.news
     */
    String TOPIC_ROUTING_KEY_2 = "#.news";
}
