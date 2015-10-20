<%-- 
    Document   : tags
    Created on : 2015-9-13, 16:15:56
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" class="app">
    <head>  
        <meta charset="utf-8" />
        <title>标签 - 更多壁纸，更多分享</title>
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
        <link rel="shortcut icon" href="favicon.ico" />
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
                            <section class="vbox padder-lg">
                                <h2 class="font-thin m-b">标签列表 
                                    <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
                                        <span class="bar1 a1 bg-primary lter"></span>
                                        <span class="bar2 a2 bg-info lt"></span>
                                        <span class="bar3 a3 bg-success"></span>
                                        <span class="bar4 a4 bg-warning dk"></span>
                                        <span class="bar5 a5 bg-danger dker"></span>
                                    </span>
                                </h2>
                            <c:forEach items="page.content" var="tag">
                                <div class="col-sm-2">
                                    <section class="panel panel-info">
                                        <div class="panel-body">
                                            <a href="#" class="thumb pull-right m-l m-t-xs avatar">
                                                <img src="${pageContext.request.contextPath}/assets/images/m19.jpg" alt="...">
                                                <i class="on md b-white bottom"></i>
                                            </a>
                                            <div class="clear">
                                                <a href="#" class="text-info">@我是第一个标签<i class="icon-twitter"></i></a>
                                                <small class="block m-t-sm">创建于三分钟前于三分钟前</small>
                                                <a href="#" class="btn btn-xs m-t-xs"><i class="fa fa-camera-retro"></i> 25</a>
                                                <a href="#" class="btn btn-xs m-t-xs"><i class="fa fa-eye"></i> 8</a>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                            </c:forEach>
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

