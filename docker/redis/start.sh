#!/bin/bash

echo '开放端口'
firewall-cmd --zone=public --add-port=6371-6376/tcp --permanent
firewall-cmd --zone=public --add-port=16371-16376/tcp --permanent
firewall-cmd --reload

echo '启动容器'
docker-compose up -d

echo '查看容器'
docker-compose ps
