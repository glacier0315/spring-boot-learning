<#compress>
    <!DOCTYPE html>
    <html lang="zh-cn">
    <head>
        <meta content="text/html;charset=utf-8"/>
        <meta http-equiv="x-ua-compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" type="text/css" href="${ctx.contextPath }/plug-in/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="${ctx.contextPath }/plug-in/bootstrap/css/bootstrap-theme.min.css">
        <link rel="stylesheet" type="text/css" href="${ctx.contextPath }/plug-in/jquery-ui/jquery-ui.min.css">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
    <script src="${ctx.contextPath }/plug-in/html5shiv-3.7.3/html5shiv.min.js"></script>
    <script src="${ctx.contextPath }/plug-in/respond-1.4.2/respond.min.js"></script>
    <![endif]-->
        <#macro  css>
            <#nested >
        </#macro>
    </head>

    <body>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <ul class="nav nav-tabs">
                    <li>
                        <a href="javascript:void(0)" data-href="${ctx.contextPath }/">首页</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" data-href="${ctx.contextPath }/user">资料</a>
                    </li>
                    <li class="disabled">
                        <a href="#">信息</a>
                    </li>
                    <li class="dropdown pull-right">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">下拉<strong class="caret"></strong></a>
                        <ul class="dropdown-menu">
                            <#list gnzy as x>
                                <li>
                                    <a href="#">${x}</a>
                                </li>
                            </#list>
                            <li>
                                <a href="#">操作</a>
                            </li>
                            <li>
                                <a href="#">设置栏目</a>
                            </li>
                            <li>
                                <a href="#">更多设置</a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="#">分割线</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container span12">

        <#macro  wordspace>
            <#nested >
        </#macro>

    </div>
    </body>
    <script type="text/javascript" src="${ctx.contextPath }/plug-in/jquery/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="${ctx.contextPath }/plug-in/bootstrap/js/bootstrap.min.js"></script>
    <#macro  js>
        <#nested >
    </#macro>
    </html>
</#compress>
