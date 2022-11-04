#!/bin/bash

echo '开放端口'
firewall-cmd --zone=public --add-port=3306/tcp --permanent
firewall-cmd --zone=public --add-port=6379/tcp --permanent
firewall-cmd --reload

echo '启动容器'
docker-compose up -d

echo '查看容器'
docker-compose ps
