# Pear-Admin-Layui

## 说明

基于 [Pear Admin Layui](https://gitee.com/pear-admin/Pear-Admin-Layui) 3.12.0

### 目录放置

|    **目录**    |      **新目录**      |
|:------------:|:-----------------:|
|  admin/css   |    static/css     |
| admin/images |    static/img     |
|  admin/data  | static/admin/data |
|  component   |   static/plugin   |
|    config    |   static/config   |

### 修改路径

1. 修改html声明
```text
<html>
# 替换
<html lang="zh-CN"
      xmlns:th="http://www.thymeleaf.org"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
```

2. 修改pear
```text
(href|src)(=")(../)*(component)(/pear/)(css/pear.css|pear.js)(")
# 替换
th:$1$2@{/plugin$5$6}$7
```

3. 修改layui
```text
(href|src)(=")(../)*(component)(/layui/)(css/layui.css|layui.js)(")
# 替换
th:$1$2@{/plugin$5$6}$7
```

4. 修改admin/css
```text
(href=")(../)*(admin)(/css/)(other/)?([a-zA-Z0-9]+)(.css)(")
# 替换
th:$1@{$4$5$6$7}$8
```

5. 修改admin/images
```text
(src="|background=")(../)*(admin)(/images/)([a-zA-Z0-9]+)(.svg|.jpg|.png|.gif)(")
# 替换
th:$1@{/img/$5$6}$7


image.src = "../../admin/images/avatar.jpg";
# 替换
image.src = "[[@{/img/avatar.jpg}]]";
```
