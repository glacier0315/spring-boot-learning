# mybatis


##  连接加密
1 引入依赖
```
implementation("com.github.ulisesbocchio:jasypt-spring-boot-starter:${jasyptStarterVersion}")
```

2 在application-dev.yml中添加如下配置

```
# datasource
spring:
  datasource:
    driver-class-name: com.mysql.cj.jdbc.Driver
    url: jdbc:mysql://192.168.20.100:3306/sb_learn?serverTimezone=Asia/Shanghai&useUnicode=true&characterEncoding=UTF-8&useSSL=false&autoReconnect=true&failOverReadOnly=false&allowPublicKeyRetrieval=true
#    username: root
#    password: root
    # 加密
    username: ENC(iA6XhdDJsSnn3FU+WZU1+3yjFWEsu+kJjB6gzfgaMk1a9vDWN6CUK8ukniShsvyv)
    password: ENC(sCVBbsG3UEaK56IZY+HjfGwKAB4rz1vvLtXmYyOjlTBVxsxdnH0SORkCYXIhgpuC)
    
# 添加jvm启动参数 java -jar -Djasypt.encryptor.password=abc123456 xxx.jar
jasypt:
  encryptor:
    password: abc123456    
```
