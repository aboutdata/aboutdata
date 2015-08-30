<%-- 
    Document   : register
    Created on : 2015-8-30, 11:21:53
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" class="app">
    <head>  
        <meta charset="utf-8" />
        <title>Musik | Web Application</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css" type="text/css" />  
        <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/assets/js/ie/html5shiv.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/ie/respond.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/ie/excanvas.js"></script>
      <![endif]-->
    </head>
    <body class="">
        <section class="vbox">
            <header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
                <jsp:include page="/WEB-INF/views/member/include/header.jsp"></jsp:include>
                </header>
                <section>
                    <section class="hbox stretch">
                        <!-- .aside -->
                        <aside class="bg-black dk nav-xs aside hidden-print" id="nav">          
                            <section class="vbox">
                                <section class="w-f-md scrollable">
                                    <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-railOpacity="0.2">
                                        <!-- nav -->                 
                                        <nav class="nav-primary hidden-xs">
                                            <ul class="nav bg clearfix">
                                                <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                                                    Discover
                                                </li>
                                                <li>
                                                    <a href="index.html">
                                                        <i class="icon-disc icon text-success"></i>
                                                        <span class="font-bold">What's new</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="genres.html">
                                                        <i class="icon-music-tone-alt icon text-info"></i>
                                                        <span class="font-bold">Genres</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="events.html">
                                                        <i class="icon-drawer icon text-primary-lter"></i>
                                                        <b class="badge bg-primary pull-right">6</b>
                                                        <span class="font-bold">Events</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="listen.html">
                                                        <i class="icon-list icon  text-info-dker"></i>
                                                        <span class="font-bold">Listen</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                        <!-- / nav -->
                                    </div>
                                </section>
                        </aside>
                        <!-- /.aside -->
                        <!--content-->
                        <section id="content">
                            <section class="vbox">
                                <section class="scrollable padder">
                                    <div class="m-lg"></div>
                                    <div class="row">
                                        <div class="col-sm-3 b-r"></div>
                                        <div class="col-sm-3 b-r">
                                            <h3 class="m-t-none m-b">用户注册</h3>
                                        <c:if test="${not empty errorMessage}">
                                            <div class="alert alert-danger">
                                                <button type="button" class="close" data-dismiss="alert">×</button>
                                                <i class="fa fa-ban-circle"></i><strong>错误信息!</strong>${errorMessage}.
                                            </div>
                                        </c:if>
                                        <c:if test="${empty errorMessage}">
                                            <p>登录可以获得更好的服务</p>
                                        </c:if>

                                        <form role="form" data-validate="parsley" action="${pageContext.request.contextPath}/register/submit" method="post">
                                            <div class="form-group">
                                                <label>用户名</label>
                                                <input type="text" class="form-control" name="username" value="aboutdata" placeholder="Enter email" data-required="true">
                                            </div>
                                            <div class="form-group">
                                                <label>电子邮件</label>
                                                <input type=email class="form-control" name="email" value="845885222@qq.com" placeholder="Enter email" data-required="true">
                                            </div>
                                            <div class="form-group">
                                                <label>密码</label>
                                                <input type="password" class="form-control" id="password" name="password"  placeholder="Password" data-required="true">
                                            </div>
                                            <div class="form-group">
                                                <label>确认密码</label>
                                                <input type="password" class="form-control" name="confirmpassword" data-equalto="#password"  placeholder="Password" data-required="true">
                                            </div>
                                            <div class="checkbox m-t-lg">
                                                <button type="submit" class="btn btn-sm btn-success pull-right text-uc m-t-n-xs"><strong>注册</strong></button>
                                                <label>
                                                    <input type="checkbox" name="rememberme" checked data-required="true">同意注册协议
                                                </label>
                                            </div>                
                                        </form>
                                    </div>
                                    <div class="col-sm-3">
                                        <h4>如果已有账号?</h4>
                                        <p>You can create an account <a href="#" class="text-info">here</a></p>
                                        <p>OR</p>
                                        <a href="#" class="btn btn-primary btn-block m-b-sm"><i class="fa fa-facebook pull-left"></i>Sign in with Facebook</a>
                                        <a href="#" class="btn btn-info btn-block m-b-sm"><i class="fa fa-twitter pull-left"></i>Sign in with Twitter</a>
                                        <a href="#" class="btn btn-danger btn-block"><i class="fa fa-google-plus pull-left"></i>Sign in with Google+</a>
                                    </div>
                                    <div class="col-sm-3 b-r"></div>
                                </div>
                            </section>
                        </section>
                        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
                    </section>
                    <!--content//end-->
                </section>
            </section>    
        </section>

        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>

        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
        <!-- Bootstrap 验证框架-->
        <script src="${pageContext.request.contextPath}/assets/js/parsley/parsley.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/parsley/i18n/zh_cn.js"></script>

        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/tiles.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/demo.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        <script>
            $(document).ready(function () {
//                var $loginForm = $("#loginForm");
//                var $username = $("#username");
//                var $password = $("#password");
            });
        </script>
    </body>
</html>

