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
        <div class="row-fluid" id="tabs">
            <ul>
                <li><a href="#tabs-1">Preloaded</a></li>
                <li><a href="${ctx.contextPath }/user">Tab 1</a></li>
                <#list gnzy as x>
                    <li>
                        <a href="#">${x}</a>
                    </li>
                </#list>
            </ul>
            <div id="tabs-1">
                <p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec
                    sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem.
                    Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula
                    eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam
                    molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum.
                    Phasellus ipsum. Nunc tristique tempus lectus.</p>
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
    <script type="text/javascript" src="${ctx.contextPath }/plug-in/jquery-ui/jquery-ui.min.js"></script>
    <script type="text/javascript">
        $("#tabs").tabs({});
    </script>
    <#macro  js>
        <#nested >
    </#macro>
    </html>
</#compress>
