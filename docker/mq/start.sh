#!/bin/bash

echo '设置权限'
mkdir -p ./datas/rmqs/logs
mkdir -p ./datas/rmqs/store
mkdir -p ./datas/rmq/logs
mkdir -p ./datas/rmq/store

chmod -R 777 ./datas

echo '启动容器'
docker-compose up -d

echo '开放端口'
firewall-cmd --zone=public --add-port=9876/tcp --permanent
firewall-cmd --zone=public --add-port=10909/tcp --permanent
firewall-cmd --zone=public --add-port=10911/tcp --permanent
firewall-cmd --zone=public --add-port=8180/tcp --permanent

firewall-cmd --zone=public --add-port=5672/tcp --permanent
firewall-cmd --zone=public --add-port=15672/tcp --permanent
firewall-cmd --reload


echo '查看容器'
docker-compose ps
