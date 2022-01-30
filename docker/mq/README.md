# rocketmq

## 注意
    映射本地目录权限一定要设置为 777 权限，否则启动不成功


## 设置权限
    mkdir -p ./datas/rmqs/logs
    mkdir -p ./datas/rmqs/store
    mkdir -p ./datas/rmq/logs
    mkdir -p ./datas/rmq/store
    
    chmod -R 777 ./datas

## 下载并启动容器，且为 后台 自动启动
    docker-compose up -d

## 开放端口
    firewall-cmd --zone=public --add-port=9876/tcp --permanent
    firewall-cmd --zone=public --add-port=10909/tcp --permanent
    firewall-cmd --zone=public --add-port=10911/tcp --permanent
    firewall-cmd --zone=public --add-port=8180/tcp --permanent
    firewall-cmd --reload

## 显示 rocketmq 容器
    docker ps |grep rocketmq

## 设置可执行权限
    chmod +x start.sh
