#!/bin/bash

## 设置权限
echo '设置权限'
mkdir -p ./datas/rmqs/logs
mkdir -p ./datas/rmqs/store
mkdir -p ./datas/rmq/logs
mkdir -p ./datas/rmq/store

chmod -R 777 ./datas

# 下载并启动容器，且为 后台 自动启动
echo '启动容器'
docker-compose up -d

# 开放端口
echo '开放端口'
firewall-cmd --zone=public --add-port=9876/tcp --permanent
firewall-cmd --zone=public --add-port=10909/tcp --permanent
firewall-cmd --zone=public --add-port=10911/tcp --permanent
firewall-cmd --zone=public --add-port=8180/tcp --permanent

firewall-cmd --zone=public --add-port=5672/tcp --permanent
firewall-cmd --zone=public --add-port=15672/tcp --permanent
firewall-cmd --reload


# 显示 容器
echo '查看容器'
docker ps
