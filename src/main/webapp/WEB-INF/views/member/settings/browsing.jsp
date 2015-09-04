<%-- 
    Document   : browsing
    Created on : 2015-9-4, 11:20:28
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
                                            <header class="panel-heading bg-light">
                                                <ul class="nav nav-justified">
                                                    <li class="active">
                                                        <a href="${pageContext.request.contextPath}/member/settings/profile">
                                                            <span class="m-b-xs h4 block"> 
                                                                <i class="fa fa-user text-muted"></i>
                                                            </span>
                                                            <span class="text-muted">个人资料</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="bg-light">
                                                            <span class="m-b-xs h4 block"> 
                                                                <i class="icon-eyeglasses"></i>
                                                            </span>
                                                            <span class="text-muted">头像修改</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/member/settings/browsing">
                                                            <span class="m-b-xs h4 block"> 
                                                                <i class="fa fa-cog text-muted"></i>
                                                            </span>
                                                            <span class="text-muted">个人设置</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="${pageContext.request.contextPath}/member/settings/account" class="bg-light">
                                                            <span class="m-b-xs h4 block"> 
                                                                <i class="fa fa-css3"></i>
                                                            </span>
                                                            <span class="text-muted">账户</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </header>
                                            <div class="panel-body">
                                                <div class="tab-pane" id="home">
                                                    <form class="form-horizontal" data-validate="parsley" action="${pageContext.request.contextPath}/member/settings/#" method="post">
                                                        <section class="panel panel-default">
                                                            <header class="panel-heading">
                                                                <strong>账户</strong>
                                                            </header>
                                                            <div class="panel-body">
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">图片大小</label>
                                                                    <div class="col-sm-6">
                                                                        <select data-required="true" id="thumbSize" name="thumbSize" class="form-control">
                                                                            <option value="small">预览</option>
                                                                            <option value="original">原图</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="line line-dashed b-b line-lg pull-in"></div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">每页显示数量</label>
                                                                    <div class="col-sm-6">
                                                                        <select data-required="true" id="thumbsPer" name="items_per_page" class="form-control">
                                                                            <option value="24">24</option>
                                                                            <option value="32">32</option>
                                                                            <option value="64">64</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="line line-dashed b-b line-lg pull-in"></div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">滚条设置</label>
                                                                    <div class="col-sm-6">
                                                                        <select data-required="true" id=scrollStyle" name="scrollStyle" class="form-control">
                                                                            <option value="traditional">传统样式</option>
                                                                            <option value="infinite">瀑布样式</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="line line-dashed b-b line-lg pull-in"></div>
                                                                <div class="form-group">
                                                                    <label class="col-sm-3 control-label">查看图片</label>
                                                                    <div class="col-sm-6">
                                                                        <select data-required="true"  id="thumb_window" name="thumb_window" class="form-control">
                                                                            <option value="new">新窗口</option>
                                                                            <option value="same">当前窗口</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="line line-dashed b-b line-lg pull-in"></div>
                                                            </div>
                                                            <footer class="panel-footer text-right bg-light lter">
                                                                <button type="submit" class="btn btn-success btn-s-xs">保存</button>
                                                            </footer>
                                                        </section>
                                                    </form>

                                                </div>
                                            </div>
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
