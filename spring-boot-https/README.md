# spring-boot-https

## 生成证书

我是自己生成的ssl证书，当然这个证书是不被客户端认可的

### 1.打开cmd，输入生成证书的命令

```azur
keytool -genkey -alias tomcat  -storetype PKCS12 -keyalg RSA -keysize 2048  -keystore keystore.p12 -validity 3650 -storepass 1234567
``` 

关于这几个参数的解释如下：

```azure
1.-storetype 指定密钥仓库类型
2.-keyalg 生证书的算法名称，RSA是一种非对称加密算法
3.-keysize 证书大小
4.-keystore 生成的证书文件的存储路径
5.-validity 证书的有效期
6.-storepass 密码
```    

## 项目配置

### 导入证书

    把生成的 tomcat_https.keystore 放在 resources 里：

### 在 application.properties 配置文件中增加配置：

```azure
server: #https默认端口：443，http默认端口：80
port: 443
    #开启https，配置跟证书一一对应
ssl:
enabled: true
            key-
store:
classpath:keystore.p12
            key-store-
type: PKCS12
            # 别名
            key-
alias: tomcat
            #密码
            key-store-
password: 123456
```
