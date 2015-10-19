<%-- 
    Document   : rules
    Created on : 2015-10-19, 11:19:17
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>使用规则 - 更多壁纸，更多分享</title>
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="shortcut icon" href="favicon.ico" />
        <style>
            body {
                background: #E4E6E9;
            }
            .main-container {
                padding-top: 72px;
            }
            .navbar-inverse {
                background-color: #438EB9;
                border-bottom-color: rgba(0,0,0,0.33);
            }
            .navbar-inverse .navbar-brand {
                color: #EEE;
            }

            hr {
                border-width: 0;
                margin-top: 6px;
                margin-bottom: 6px;
            }
        </style>
    </head>

    <body>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header pull-left">
                    <a class="navbar-brand" href="#">
                        &nbsp;<img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=".">&nbsp;
                        更多壁纸，更多分享</span>
                    </a>
                </div>

            </div>
        </div>

        <div class="container main-container">
            <h2 class="page-header text-primary">帮助文档</small></h2>
            <h4 class="text-success">该文档旨在能更好让您了解和反馈Lockbur.com的网站信息</h4>
            <div class="row">
                <div class="col-xs-12">
                   <h3 id="overview" class="page-header">概览</h3>
                   <p><strong>variables.less</strong> 文件中定义的两个 Less 变量决定了排版尺寸：<code>@font-size-base</code> 和 <code>@line-height-base</code>。第一个变量定义了全局 font-size 基准，第二个变量是 line-height 基准。我们使用这些变量和一些简单的公式计算出其它所有页面元素的 margin、 padding 和 line-height。自定义这些变量即可改变 Bootstrap 的默认样式。</p>
                </div>
            </div>
        </div>

    </body>
</html>