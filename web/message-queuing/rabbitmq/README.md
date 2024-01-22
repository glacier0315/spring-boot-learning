# RabbitMQ

## 基本概念

RabbitMQ的基本概念包括Exchange、Queue、Binding和Message等。下面我们详细讲解这些概念：

* **Exchange**：Exchange是消息的入口，它接收消息并将其路由到Queue中。Exchange可以根据不同的路由键（Routing
  Key）将消息路由到不同的Queue中。RabbitMQ支持多种类型的Exchange，如Direct Exchange、Topic Exchange、Fanout Exchange等。

* **Queue**：Queue是消息的队列，它用于存储消息。消息在Queue中等待被消费者消费。Queue可以设置为持久化的，这意味着消息会被持久化到磁盘上，即使RabbitMQ服务崩溃也不会丢失消息。

* **Binding**：Binding是将Exchange和Queue绑定在一起的关系。Binding可以通过Routing Key将消息路由到Queue中。

* **Message**：Message是需要传输的数据，它可以是文本、二进制数据等。Message可以设置为持久化的，这意味着消息会被持久化到磁盘上，即使RabbitMQ服务崩溃也不会丢失消息。


## 死信队列

[参考](https://developer.aliyun.com/article/1309890)
