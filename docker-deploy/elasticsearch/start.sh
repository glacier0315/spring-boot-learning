#!/bin/bash

echo '创建文件'
mkdir -p data/es/{data,plugins}
chmod -R 777 data/es

echo '开放端口'
firewall-cmd --zone=public --add-port=9200/tcp --permanent
firewall-cmd --zone=public --add-port=9300/tcp --permanent
firewall-cmd --reload

echo '启动容器'
docker-compose up -d

echo '安装分词器'
docker cp ./init/es/plugins/elasticsearch-analysis-ik-7.16.3.zip elasticsearch:/root
docker exec -it elasticsearch elasticsearch-plugin install file:///root/elasticsearch-analysis-ik-7.16.3.zip

echo '重启容器'
docker-compose restart elasticsearch

echo '查看容器'
docker-compose ps
