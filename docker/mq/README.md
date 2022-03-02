# rocketmq

## 注意
    映射本地目录权限一定要设置为 777 权限，否则启动不成功


## 设置权限
    mkdir -p ./data/rmqs/logs
    mkdir -p ./data/rmqs/store
    mkdir -p ./data/rmq/logs
    mkdir -p ./data/rmq/store
    
    chmod -R 777 ./data

## 下载并启动容器，且为 后台 自动启动
    docker-compose up -d

## 开放端口
    firewall-cmd --zone=public --add-port=9876/tcp --permanent
    firewall-cmd --zone=public --add-port=10909/tcp --permanent
    firewall-cmd --zone=public --add-port=10911/tcp --permanent
    firewall-cmd --zone=public --add-port=8180/tcp --permanent
    firewall-cmd --reload

## 显示容器
    docker-compose ps

## 设置可执行权限
    chmod +x start.sh
