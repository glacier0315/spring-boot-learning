# 集成AdminLTE_CN-3.2

基于[AdminLTE_CN](https://gitee.com/3Vshej/AdminLTE_CN) 3.2

### 目录放置
1. dist、plugins  ->  static
2. pages、*.html  ->  templates

### 补充
1. 添加ionicons
2. 修改google css

### 修改路径
1. 修改html声明
```text
<html lang="en">
# 替换
<html lang="zh-CN" xmlns:th="http://www.thymeleaf.org">
```
2. 修改Google css路径
```text
([0-9a-zA-Z-]*=)"([0-9a-zA-Z-./]*)(/)?(google.css)([0-9a-zA-Z-./?:,=+&]*)"
# 替换
th:$1"@{/css/googleapis/$4$5}"
```
3. 修改ionicons css路径
```text
([0-9a-zA-Z-]*=)"([0-9a-zA-Z-./:]*)(/)?(ionicons.min.css)([0-9a-zA-Z-./?:,=+&]*)"
# 替换
th:$1"@{/css/ionicons/$4$5}"
```
4. 修改 plugins 路径
```text
([0-9a-zA-Z-]*=)"([./]*)(plugins/[0-9a-zA-Z-_/.]*)(.js|.css)([0-9a-zA-Z-./?:,=+&]*)"
# 替换
th:$1"@{/$3$4$5}"
```
5. 修改 dist 路径
```text
([0-9a-zA-Z-]*=)"([./]*)(dist/)([0-9a-zA-Z-_/.]*)(.js|.css|.jpg|.png)([0-9a-zA-Z-./?:,=+&]*)"
# 替换
th:$1"@{/$4$5$6}"
```
6. 修改 index 路径
```text
([0-9a-zA-Z-]*=)"([./]*)(index|index2|index3|iframe|iframe-dark|starter]*).html"
# 替换
th:$1"@{/$3}"
```
7. 修改 pages 路径
```text
([0-9a-zA-Z-]*=)"([./]*)(pages/)?(calendar|gallery|kanban|widgets).html"
# 替换
th:$1"@{/pages/$4}"
```
```text
([0-9a-zA-Z-]*=)"([./]*)(pages/)?(charts/)?(chartjs|flot|inline|uplot).html"
# 替换
th:$1"@{/pages/charts/$5}"
```
```text
([0-9a-zA-Z-]*=)"([./]*)(pages/)?(examples/)?(404|500|blank|contacts|contact-us|e-commerce|faq|forgot-password|forgot-password-v2|invoice|invoice-print|language-menu|legacy-user-menu|lockscreen|login|login-v2|pace|profile|project-add|project-detail|project-edit|projects|recover-password|recover-password-v2|register|register-v2).html"
# 替换
th:$1"@{/pages/examples/$5}"
```
```text
([0-9a-zA-Z-]*=)"([./]*)(pages/)?(forms/)?(advanced|editors|general|validation).html"
# 替换
th:$1"@{/pages/forms/$5}"
```
```text
([0-9a-zA-Z-]*=)"([./]*)(pages/)?(layout/)?(fixed-sidebar|fixed-sidebar-custom|fixed-topnav|top-nav|top-nav-sidebar|boxed|collapsed-sidebar|fixed-footer).html"
# 替换
th:$1"@{/pages/layout/$5}"
```
```text
([0-9a-zA-Z-]*=)"([./]*)(pages/)?(mailbox/)?(compose|mailbox|read-mail).html"
# 替换
th:$1"@{/pages/mailbox/$5}"
```
```text
([0-9a-zA-Z-]*=)"([./]*)(pages/)?(search/)?(enhanced|enhanced-results|simple|simple-results).html"
# 替换
th:$1"@{/pages/search/$5}"
```
```text
([0-9a-zA-Z-]*=)"([./]*)(pages/)?(tables/)?(data|jsgrid|simple).html"
# 替换
th:$1"@{/pages/tables/$5}"
```
```text
([0-9a-zA-Z-]*=)"([./]*)(pages/)?(UI/)?(general|icons|modals|navbar|ribbons|sliders|timeline|buttons).html"
# 替换
th:$1"@{/pages/UI/$5}"
```
8. 修改script
```text
([./]*)(/plugins/datatables/Chinese.json)
# 替换
[[@{$2}]]
```
9. 修改修改flot.html 页面错误
```text
提取js
```
