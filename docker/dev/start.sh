#!/bin/bash

# 下载并启动容器，且为 后台 自动启动
echo '启动容器'
docker-compose up -d

# 开放端口
echo '开放端口'
firewall-cmd --zone=public --add-port=3306/tcp --permanent
firewall-cmd --zone=public --add-port=6379/tcp --permanent
firewall-cmd --zone=public --add-port=9200/tcp --permanent
firewall-cmd --zone=public --add-port=9300/tcp --permanent

firewall-cmd --reload


# 显示 容器
echo '查看容器'
docker ps
