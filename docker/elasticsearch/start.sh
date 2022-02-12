#!/bin/bash

# 创建文件
echo '创建文件'
mkdir -p datas/es/{data,plugins}
chmod -R 777 datas/es

# 开放端口
echo '开放端口'
firewall-cmd --zone=public --add-port=9200/tcp --permanent
firewall-cmd --zone=public --add-port=9300/tcp --permanent
firewall-cmd --reload

# 下载并启动容器，且为 后台 自动启动
echo '启动容器'
docker-compose up -d

# 安装分词器
echo '安装分词器'
docker cp ./init/es/plugins/elasticsearch-analysis-ik-7.16.3.zip elasticsearch:/root
docker exec -it elasticsearch elasticsearch-plugin install file:///root/elasticsearch-analysis-ik-7.16.3.zip

docker-compose restart

# 显示 容器
echo '查看容器'
docker ps
