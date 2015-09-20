<%-- 
    Document   : random
    Created on : 2015-8-16, 13:41:17
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
            <header class="bg-white-only header navbar navbar-fixed-top">
                <jsp:include page="/WEB-INF/views/member/include/header.jsp"></jsp:include>     
                </header>
                
                <section class="vbox stretch bg-light">
                    <section class="b-a">
                        <div id="waterfall">
                        <c:forEach items="${list}" var="photo" varStatus="idx">
                            <div class="item">
                                <div class="pos-rlt">
                                    <div class="item-overlay opacity r r-2x bg-black">
                                        <div class="text-info padder m-t-sm text-sm">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o text-muted"></i>
                                        </div>
                                        <div class="center text-center m-t-n">
                                            <a href="#"><i class="icon-control-play i-2x"></i></a>
                                        </div>
                                        <div class="bottom padder m-b-sm">
                                            <a href="#" data-toggle="class" class="active">
                                                <i class="fa fa-heart-o text-muted text"></i>
                                                <i class="fa fa-heart text-danger text-active"></i> 
                                            </a>
                                        </div>
                                        <div class="top">
                                            <span class="pull-right m-t-sm m-r-sm badge bg-white">
                                                <i class="fa fa-star text-success"></i>
                                                12
                                            </span>
                                        </div>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/member/photos/wallpaper/${photo.id}"><img src="${photo.storageHost}/${photo.thumbnail}" alt="" class="r r-2x img-full"></a>
                                </div>
                            </div>
                            <c:if test="${idx.index mod 11 ==0}">
                                <div class="item">
                                    <div class="pos-rlt">
                                        <div class="item-overlay opacity r r-2x bg-black">
                                            <div class="text-info padder m-t-sm text-sm">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-o text-muted"></i>
                                            </div>
                                            <div class="center text-center m-t-n">
                                                <a href="#"><i class="icon-control-play i-2x"></i></a>
                                            </div>
                                            <div class="bottom padder m-b-sm">
                                                <a href="#" data-toggle="class" class="active">
                                                    <i class="fa fa-heart-o text-muted text"></i>
                                                    <i class="fa fa-heart text-danger text-active"></i> 
                                                </a>
                                            </div>
                                            <div class="top">
                                                <span class="pull-right m-t-sm m-r-sm badge bg-white">
                                                    <i class="fa fa-star text-success"></i>
                                                    12
                                                </span>
                                            </div>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/082.jpeg" alt="" class="r r-2x img-full"></a>
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>
                        <!-- waterfall -->
                    </div>

                    <div class="loading">
                        <img src="${pageContext.request.contextPath}/assets/images/loading.gif"> <span>正在加载...</span>
                    </div>
                    <div id="navigation">
                        <a href="${pageContext.request.contextPath}/random/list?page=1"></a>
                    </div>
                    <!--vbox end-->
                </section>
            </section>
        </section>

        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.masonry.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.infinitescroll.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/scrollpagination.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        <script>
            $(document).ready(function () {
                var $container = $('#waterfall');
                $container.imagesLoaded(function () {
                    $container.masonry({
                        itemSelector: '.item',
                        gutterWidth: 1,
                        columnWidth: 0,
                        // isFitWidth: true
                    });
                });

                $('#waterfall').infinitescroll({
                    navSelector: "#navigation", //导航的选择器，会被隐藏
                    nextSelector: "#navigation a", //包含下一页链接的选择器
                    itemSelector: ".item", //你将要取回的选项(内容块)
                    debug: false, //启用调试信息
                    animate: true, //当有新数据加载进来的时候，页面是否有动画效果，默认没有
                    extraScrollPx: 150, //滚动条距离底部多少像素的时候开始加载，默认150
                    bufferPx: 40, //载入信息的显示时间，时间越大，载入信息显示时间越短
                    errorCallback: function () {
                        alert('error');
                    }, //当出错的时候，比如404页面的时候执行的函数
                    localMode: true, //是否允许载入具有相同函数的页面，默认为false
                    dataType: 'html', //可以是json
                    //		                template: function(data) {
                    //		                    //data表示服务端返回的json格式数据，这里需要把data转换成瀑布流块的html格式，然后返回给回到函数
                    //		                    return '';
                    //		                },
                    loading: {
                        msgText: "加载中...",
                        finishedMsg: '没有新数据了...',
                        selector: '.loading' // 显示loading信息的div
                    }
                }, function (newElems) {
                    //程序执行完的回调函数
                    var $newElems = $(newElems);
                    $('#waterfall').masonry('appended', $newElems);

                });
                $("img").error(function () {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });
            });
        </script>
    </body>
</html>
