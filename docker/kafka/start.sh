#!/bin/bash

# 开放端口
echo '开放端口'
firewall-cmd --zone=public --add-port=2181/tcp --permanent
firewall-cmd --zone=public --add-port=8080/tcp --permanent
firewall-cmd --zone=public --add-port=9092/tcp --permanent
firewall-cmd --zone=public --add-port=9999/tcp --permanent
firewall-cmd --zone=public --add-port=9000/tcp --permanent
firewall-cmd --reload

# 创建文件夹
echo '创建文件夹'
mkdir -p datas/{zookeeper,kafka}
chmod -R 777 datas

# 下载并启动容器，且为 后台 自动启动
echo '启动容器'
docker-compose up -d

# 显示 容器
echo '查看容器'
docker ps
