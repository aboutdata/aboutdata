<%-- 
    Document   : profile
    Created on : 2015-8-30, 18:32:26
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
                                    <jsp:include page="/WEB-INF/views/member/include/siderbar.jsp"></jsp:include>
                                        <!-- / nav -->
                                    </div>
                                </section>
                        </aside>
                        <!-- /.aside -->
                        <section id="content">
                            <section class="vbox">
                                <section class="scrollable">
                                    <section class="hbox stretch">
                                        <aside class="aside-lg bg-light lter b-r">
                                            <section class="vbox">
                                                <section class="scrollable">
                                                    <div class="wrapper">
                                                        <div class="text-center m-b m-t">
                                                            <a href="#" class="thumb-lg">
                                                                <img src="${pageContext.request.contextPath}/assets/images/m19.jpg" class="img-circle">
                                                        </a>
                                                        <div>
                                                            <div class="h3 m-t-xs m-b-xs">${member.username}</div>
                                                            <small class="text-muted"><i class="fa fa-map-marker"></i>中国,北京</small>
                                                        </div>                
                                                    </div>
                                                    
                                                    <div class="btn-group btn-group-justified m-b">
                                                        <a class="btn btn-success btn-rounded">
                                                            <span class="text">
                                                                <i class="fa fa-eye"></i> Follow
                                                            </span>
                                                        </a>
                                                        <a class="btn btn-dark btn-rounded">
                                                            <i class="fa fa-comment-o"></i>修改资料
                                                        </a>
                                                    </div>
                                                    <div>
                                                        <small class="text-uc text-xs text-muted">about me</small>
                                                        <p>Artist</p>
                                                        <small class="text-uc text-xs text-muted">info</small>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id neque quam. Aliquam sollicitudin venenatis ipsum ac feugiat.</p>
                                                        <div class="line"></div>
                                                        <small class="text-uc text-xs text-muted">connection</small>
                                                        <p class="m-t-sm">
                                                            <a href="#" class="btn btn-rounded btn-twitter btn-icon"><i class="fa fa-twitter"></i></a>
                                                            <a href="#" class="btn btn-rounded btn-facebook btn-icon"><i class="fa fa-facebook"></i></a>
                                                            <a href="#" class="btn btn-rounded btn-gplus btn-icon"><i class="fa fa-google-plus"></i></a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </section>
                                        </section>
                                    </aside>
                                    <aside class="bg-white">
                                        <section class="panel panel-default">
                                            <header class="panel-heading">
                                                最新消息
                                            </header>
                                            <section class="scrollable">
                                                <div class="tab-pane active" id="activity">
                                                    <ul class="list-group no-radius m-b-none m-t-n-xxs list-group-lg no-border">
                                                        <li class="list-group-item">
                                                            <a href="#" class="thumb-sm pull-left m-r-sm">
                                                                <img src="${pageContext.request.contextPath}/assets/images/a0.png" class="img-circle">
                                                            </a>
                                                            <a href="#" class="clear">
                                                                <small class="pull-right">3 minuts ago</small>
                                                                <strong class="block">Drew Wllon</strong>
                                                                <small>Wellcome and play this web application template ... </small>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </section>
                                        </section>
                                    </aside>
                                    <aside class="col-lg-3 b-l">
                                        <section class="panel panel-default">
                                            <header class="panel-heading">
                                                用户统计信息
                                            </header>
                                            <div class="list-group no-radius alt">
                                                <a class="list-group-item" href="#">
                                                    <span class="badge bg-success">25</span>
                                                    <i class="fa fa-comment icon-muted"></i> 
                                                    访问
                                                </a>
                                                <a class="list-group-item" href="#">
                                                    <span class="badge bg-info">16</span>
                                                    <i class="fa fa-envelope icon-muted"></i> 
                                                    评论
                                                </a>
                                                <a class="list-group-item" href="#">
                                                    <span class="badge bg-light">5</span>
                                                    <i class="fa fa-eye icon-muted"></i> 
                                                    标签
                                                </a>
                                                <a class="list-group-item" href="#">
                                                    <span class="badge bg-light">5</span>
                                                    <i class="fa fa-eye icon-muted"></i> 
                                                    上传
                                                </a>
                                                 <a class="list-group-item" href="#">
                                                    <span class="badge bg-light">5</span>
                                                    <i class="fa fa-eye icon-muted"></i> 
                                                    收藏
                                                </a>
                                            </div>
                                        </section>
                                    </aside>
                                </section>
                            </section>
                        </section>
                        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
                    </section>
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
