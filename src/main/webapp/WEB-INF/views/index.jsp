<%-- 
    Document   : index
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
                                    <div id="masonry" class="pos-rlt animated fadeInUpBig">
                                    <c:forEach items="${list.content}" var="photo" varStatus="idx">
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
                                                <a href="${pageContext.request.contextPath}/member/photos/wallpaper/${photo.id}">
                                                    <img src="${photo.storageHost}/${photo.thumbnail}" alt="" class="r r-2x img-full">
                                                </a>
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
                                </div>
                                <div class="text-center">
                                    <ul class="pagination pagination-lg">
                                        <li><a id="next">查看更多...</a></li>
                                    </ul>
                                </div>
                            </section>

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

        <script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.masonry.min.js"></script>
        <!--<script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.infinitescroll.min.js" type="text/javascript"></script>-->
        <script>
            $(document).ready(function () {
                var $container = $('#masonry');
                var gutter = 1;
                var min_width = 200;
                $container.imagesLoaded(function () {
                    $container.masonry({
                        itemSelector: '.item',
                        gutterWidth: gutter,
                        isAnimated: true,
                        isFitWidth : true,
                        columnWidth: function (containerWidth) {
                            //计算 box和图片应该显示的比例 root@aboutdata.me
                            var num_of_boxes = (containerWidth / min_width | 0);
                            var box_width = (((containerWidth - (num_of_boxes - 1) * gutter) / num_of_boxes) | 0);
                            if (containerWidth < min_width) {
                                box_width = containerWidth;
                            }
                            $('#masonry .item').width(box_width);
                            return box_width;
                        }
                    });
                });

                $("#next").click(function () {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/index/next",
                        // data: {page : 1},
                        type: "get",
                        dataType: "html",
                        success: function (data) {
                            var $boxes = $(data);
                           
                            //$container.append($boxes);
                           
                            $container.masonry("appended", $boxes);
                           
                        },
                        error: function () {
                            //请求出错处理
                            alert("请求出错处理");
                        }
                    });
                });
//                   
                $("img").error(function () {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });
            });
        </script>
    </body>
</html>
