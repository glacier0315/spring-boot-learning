#!/bin/bash

echo '开放端口'
firewall-cmd --zone=public --add-port=2181/tcp --permanent
firewall-cmd --zone=public --add-port=8080/tcp --permanent
firewall-cmd --zone=public --add-port=9092/tcp --permanent
firewall-cmd --zone=public --add-port=9999/tcp --permanent
firewall-cmd --zone=public --add-port=9000/tcp --permanent
firewall-cmd --reload

echo '创建文件夹'
mkdir -p data/{zookeeper,kafka}
chmod -R 777 data

echo '启动容器'
docker-compose up -d

echo '查看容器'
docker-compose ps
