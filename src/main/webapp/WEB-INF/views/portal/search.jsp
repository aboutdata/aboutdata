<%-- 
    Document   : search
    Created on : 2015-9-13, 9:52:12
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/jPlayer/jplayer.flat.css" type="text/css" />
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
                                <section class="w-f-md">
                                    <section class="hbox stretch">
                                        <!-- side content -->

                                        <!-- / side content -->
                                    </section>
                                </section>
                                <footer class="footer bg-black lter text-center">
                                    <form class="form-inline" role="search">
                                        <div class="form-group m-b-none">
                                            <div class="input-group m-t m-b">
                                                <input type="text" class="form-control">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default" type="button">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="form-group m-b-none">
                                            <div class="input-group m-t m-b">
                                                <a class="btn btn-default" id="btn-1" href="#btn-1" data-toggle="class:btn-success">
                                                    <i class="fa fa-cloud-upload text"></i>
                                                    <span class="text">Upload</span>
                                                    <i class="fa fa-check text-active"></i>
                                                    <span class="text-active">Success</span>
                                                </a>
                                                <a class="btn btn-default" data-toggle="button">
                                                    <i class="fa fa-heart-o text"></i>
                                                    <i class="fa fa-heart text-active text-danger"></i>
                                                </a>
                                                <a class="btn btn-default" data-toggle="button">
                                                    <span class="text">
                                                        <i class="fa fa-thumbs-up text-success"></i> 25
                                                    </span>
                                                    <span class="text-active">
                                                        <i class="fa fa-thumbs-down text-danger"></i> 10
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="form-group m-b-none">
                                            <div class="input-group m-t m-b dropup">
                                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">分辨率<span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Action</a></li>
                                                    <li><a href="#">Another action</a></li>
                                                    <li><a href="#">Something else here</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">Separated link</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="form-group m-b-none">
                                            <div class="input-group m-t m-b dropup">
                                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">图片比例<span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Action</a></li>
                                                    <li><a href="#">Another action</a></li>
                                                    <li><a href="#">Something else here</a></li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">Separated link</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="form-group m-b-none">
                                            <div class="input-group m-t m-b dropup">
                                                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">随机选择<span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">最新添加</a></li>
                                                    <li><a href="#">查看</a></li>
                                                    <li><a href="#">收藏</a></li>
                                                </ul>
                                                <a class="btn btn-default" data-toggle="button">
                                                    <span class="text">
                                                        <i class="fa fa-arrow-up text-success"></i>
                                                    </span>
                                                    <span class="text-active">
                                                        <i class="fa fa-arrow-down text-danger"></i>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="form-group m-b-none">
                                            <div class="input-group m-t m-b">
                                                <a class="btn btn-default">
                                                    <span class="text">
                                                       <i class="icon-refresh icon text-success" id="refresh"></i>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                    </form>
                                </footer>
                            </section>
                            <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
                        </section>
                    </section>
                </section>    
            </section>

            <div id="navigation"><a href="${pageContext.request.contextPath}/random?page=1"></a></div>                          

        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <!--<script src="${pageContext.request.contextPath}/assets/js/masonry/masonry.pkgd.js"></script>-->
       <!--<script src="${pageContext.request.contextPath}/assets/js/masonry/tiles.min.js"></script>-->
       <!--<script src="${pageContext.request.contextPath}/assets/js/masonry/demo.js"></script>-->
        <script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.masonry.min.js" type="text/javascript"></script>
        <!--<script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.infinitescroll.min.js" type="text/javascript"></script>-->
        <script src="${pageContext.request.contextPath}/assets/js/scrollpagination.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        <script>
            $(document).ready(function () {
                var $container = $('#masonry');
                $container.imagesLoaded(function () {
                    $container.masonry({
                        itemSelector: '.item',
                        gutterWidth: 1,
                        isAnimated: true
                    });
                });

                //滚动条加载数据
//                $('#masonry').infinitescroll({
//                    navSelector: "#navigation", //导航的选择器，会被隐藏
//                    nextSelector: "#navigation a", //包含下一页链接的选择器
//                    itemSelector: ".item", //你将要取回的选项(内容块)
//                    debug: true, //启用调试信息
//                    animate: true, //当有新数据加载进来的时候，页面是否有动画效果，默认没有
//                    extraScrollPx: 150, //滚动条距离底部多少像素的时候开始加载，默认150
//                    bufferPx: 40, //载入信息的显示时间，时间越大，载入信息显示时间越短
//                    errorCallback: function () {
//                        alert('error');
//                    }, //当出错的时候，比如404页面的时候执行的函数
//                    localMode: true, //是否允许载入具有相同函数的页面，默认为false
//                    dataType: 'html', //可以是json
////                template: function(data) {
////                    //data表示服务端返回的json格式数据，这里需要把data转换成瀑布流块的html格式，然后返回给回到函数
////                    return '';
////                },
//                    loading: {
//                        msgText: "加载中...",
//                        finishedMsg: '没有新数据了...'
//                                // selector: '.loading' // 显示loading信息的div
//                    }
//                }, function (newElems) {
//                    //程序执行完的回调函数
//                    var $newElems = $(newElems);
//                    $('#masonry').masonry('appended', $newElems);
//                });
                var page = 1;
//                $("#waterfall").scroll(function () {
//                    alert("ddd");
//                    // top 0 -1294  height 797
//                    if ($("#waterfall").scrollTop() > ($("#waterfall").height() * page) {
//                        page = page + 1;
//                    }
////                    alert($("#waterfall").scrollTop());
////                    if ($("#waterfall").scrollTop() === $("#waterfall").height()) {
////                        alert("dd");
////                    }
//                });



                $("img").error(function () {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });
            });
        </script>
    </body>
</html>

