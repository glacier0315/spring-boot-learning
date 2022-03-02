#!/bin/bash

# 主机ip
ip=192.168.20.100

echo '集群配置'
docker exec -it redis1 \
    redis-cli -p 6371 \
    --cluster create \
    $ip:6371 \
    $ip:6372 \
    $ip:6373 \
    $ip:6374 \
    $ip:6375 \
    $ip:6376 \
    --cluster-replicas 1 --cluster-yes

echo '查看集群节点'
docker exec -it redis1 redis-cli -p 6371 -c cluster nodes
echo '查看slots分片'
docker exec -it redis1 redis-cli -p 6371 -c cluster slots
echo '查看集群信息'
docker exec -it redis1 redis-cli -p 6371 -c cluster info
