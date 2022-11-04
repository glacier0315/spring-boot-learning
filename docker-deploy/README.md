# AnolisOS 8.4

## 永久开放端口
### 永久开放 8080 端口：
    firewall-cmd --zone=public --add-port=8080/tcp --permanent
### 更新防火墙规则：
    firewall-cmd --reload

## 查看指定端口是否开放
### 查看 8080 端口是否开放：
    firewall-cmd --zone=public --query-port=8080/tcp

## 删除已开放端口
### 删除已开放的 8080 端口：
    firewall-cmd --zone=public --query-port=8080/tcp
### 更新防火墙规则：
    firewall-cmd --reload

## 查看所有已开放端口
    firewall-cmd --zone=public --list-ports
