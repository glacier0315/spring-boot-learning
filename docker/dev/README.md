# docker

## 开放端口

    firewall-cmd --zone=public --add-port=3306/tcp --permanent
    firewall-cmd --zone=public --add-port=6379/tcp --permanent
    firewall-cmd --zone=public --add-port=9200/tcp --permanent
    firewall-cmd --zone=public --add-port=9300/tcp --permanent
    firewall-cmd --zone=public --add-port=5672/tcp --permanent
    firewall-cmd --zone=public --add-port=15672/tcp --permanent
    firewall-cmd --reload

## 启动容器

    docker-compose up -d

## 显示 容器

    docker-compose ps
