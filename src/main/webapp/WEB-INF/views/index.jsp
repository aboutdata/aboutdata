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
                        <section id="content">
                            <section class="vbox">
                                <section class="scrollable">
                                    <div id="masonry" class="pos-rlt animated fadeInUpBig">
                                        <div class="item">
                                            <div class="item-overlay gd animated fadeInUp wrapper bg-info">
                                                <p class="text-white">稍后查看</p>
                                                <div class="center text-center m-t-n">
                                                    <a href="#"><i class="icon-control-play i-2x"></i></a>
                                                </div>
                                            </div>
                                            <div class="bottom gd bg-info wrapper">
                                                <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Tincidunt</a></div>
                                                <p class="hidden-xs">Vivamus vel tincidunt libero, lementum ligula vitae</p>
                                            </div>
                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m31.jpg" class="img-full" ></a>
                                    </div>

                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-warning h4 text-u-c text-lt font-bold">Duis</a></div>
                                            <p class="hidden-xs">Tincidunt libero vitae elementum</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m10.jpg" class="img-full" ></a>
                                    </div>

                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Diam</a></div>
                                            <p class="hidden-xs">Con malesuada est, quis congue nibhs</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m4.jpg" class="img-full" ></a>
                                    </div>



                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Vivamus</a></div>
                                            <p class="hidden-xs">Morbi id neque quam. Aliquam sollicitudin venenatis ipsum</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m13.jpg" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-warning h4 text-u-c text-lt font-bold">Libero</a></div>
                                            <p class="hidden-xs">Aliquam sollicitudin venenatis ipsum</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m30.jpg" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">habitant</a></div>
                                            <p class="hidden-xs">Vel tincidunt libero, vitae ligula tristique</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m19.jpg" class="img-full" ></a>
                                    </div>

                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Malesuada</a></div>
                                            <p class="hidden-xs">Pellentesque habitant morbi tristique sodales</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m31.jpg" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Donec</a></div>
                                            <p class="hidden-xs">Vestibulum ullamcorper</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m18.jpg" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-primary h4 text-u-c text-lt font-bold">Eleifend</a></div>
                                            <p class="hidden-xs">Malesuada augue. Donec eleifend condimentum</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m32.jpg" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Sollicitudin </a></div>
                                            <p class="hidden-xs">Mauris convallis mauris at pellentesque volutpat</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m21.jpg" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Phasellus</a></div>
                                            <p class="hidden-xs">Senectus et netus et malesuada fames</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m5.jpg" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Neque</a></div>
                                            <p class="hidden-xs">Consectetur adipiscing elit. Morbi id neque quam</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/a10.png" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Nisi ne</a></div>
                                            <p class="hidden-xs">Orbi tristique senectus et netus et malesuada</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m4.jpg" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Congue</a></div>
                                            <p class="hidden-xs">Malesuada est, quis congue nibh</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m6.jpg" class="img-full" ></a>
                                    </div>

                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Consectetur</a></div>
                                            <p class="hidden-xs">Adipiscing elit senectus et netus mal.</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m7.jpg" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Soesle</a></div>
                                            <p class="hidden-xs">Adipiscing elituis congue</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/a7.png" class="img-full" ></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Congue</a></div>
                                            <p class="hidden-xs">Malesuada est, congue nibh quis elituis</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m12.jpg" class="img-full" ></a>
                                    </div>
                                </div>
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
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <!--<script src="${pageContext.request.contextPath}/assets/js/masonry/masonry.pkgd.js"></script>-->
       <!--<script src="${pageContext.request.contextPath}/assets/js/masonry/tiles.min.js"></script>-->
       <!--<script src="${pageContext.request.contextPath}/assets/js/masonry/demo.js"></script>-->
        <script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.masonry.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.infinitescroll.min.js" type="text/javascript"></script>
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

//                $('#waterfall').infinitescroll({
//                    navSelector: "#navigation", //导航的选择器，会被隐藏
//                    nextSelector: "#navigation a", //包含下一页链接的选择器
//                    itemSelector: ".wfc", //你将要取回的选项(内容块)
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
//                        finishedMsg: '没有新数据了...',
//                        selector: '.loading' // 显示loading信息的div
//                    }
//                }, function (newElems) {
//                    //程序执行完的回调函数
//                    var $newElems = $(newElems);
//                    $('.wrapper:eq(1)').masonry('appended', $newElems);
//                });

            });
        </script>
    </body>
</html>
