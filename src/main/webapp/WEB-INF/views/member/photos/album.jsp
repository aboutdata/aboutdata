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
                        <!--content-->
                        <section id="content">
                            <section class="vbox" id="bjax-el">
                                <section class="scrollable padder-lg">
                                    <a href="#" class="pull-right text-muted m-t-lg" data-toggle="class:fa-spin">
                                       <i class="fa fa-plus i-lg inline text-info"></i> 新建相册
                                    </a>
                                    <h2 class="font-thin m-b">Acoustic</h2>
                                    <div class="row row-sm">
                                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                            <div class="item">
                                                <div class="pos-rlt">
                                                    <div class="item-overlay opacity r r-2x bg-black">
                                                        <div class="center text-center m-t-n">
                                                            <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                        </div>
                                                    </div>
                                                    <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m1.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Tempered Song</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Miaow</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m2.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Morbi id neque quam</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Phasellus</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/a10.png" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Aliquam sollicitudin venenatis ipsum</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Malesuada</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m4.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Citudin venenatis ipsum ac</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Volutpat</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m5.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Vestibulum ullamcorper sodales nisi</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Mauris Qiaos</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m6.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Mauris convallis mauris at</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Neque</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m0.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Sodales nisi nec condimentum</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Augue</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m8.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Nisi nec condimentum</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Miaow</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m9.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Phasellus at ultricies nequ</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Volutpat</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m10.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Quis malesuada augue</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Feugiat</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m11.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Ipsum ac feugiat</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Quam AC</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m12.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Ullamcorper sodales nisi nec condimentu</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Convallis</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m13.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Tudin venenatis ulum ullamcorper</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Pellent Esque</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m14.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Sodales nisi nec condimentum</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Utricies</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m15.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Sec condimentum augue</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Quis Fox</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/a9.png" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Dimentum at pellentesque volutpat</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Suada</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m16.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Natis ipsum ac feugiat</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Monvallis</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="fa fa-play-circle i-2x"></i></a>
                                                    </div>
                                                </div>
                                                <a href="track-detail.html"><img src="${pageContext.request.contextPath}/assets/images/m17.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="padder-v">
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">Dimentum tesque volut icies neque</a>
                                                <a href="track-detail.html" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">Londi Mentum</a>
                                            </div>
                                        </div>
                                    </div>
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
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/tiles.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/demo.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    </body>
</html>
