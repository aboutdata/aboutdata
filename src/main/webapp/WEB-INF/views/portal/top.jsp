<%-- 
    Document   : top
    Created on : 2015-8-16, 13:41:17
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8"/>
        <title>排行榜 - 更多壁纸，更多分享</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/vegas/vegas.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css" type="text/css" />  
        <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/assets/${pageContext.request.contextPath}/assets/js/ie/html5shiv.js"></script>
        <script src="${pageContext.request.contextPath}/assets/${pageContext.request.contextPath}/assets/js/ie/respond.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/${pageContext.request.contextPath}/assets/js/ie/excanvas.js"></script>
      <![endif]-->
       <!-- ////////////////////////////////// -->
	    <!-- //        Favicon Files         // -->
	    <!-- ////////////////////////////////// -->
	    <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <body class="container">
        <section class="vbox">
            <header class="bg-black dk header header-md navbar navbar-fixed-top">
              <jsp:include page="/WEB-INF/views/portal/common/header.jsp"></jsp:include>
            </header>
            <!--main page-->
            <section id="content">
                <section class="hbox stretch">
                    <section>
                        <section class="vbox">
                            <section id="waterfall" class="scrollable padder-md">
                                <h3 class="pull-right text-muted m-t-lg" >1/${pages.totalPages}</h3>
                                <h2 class="font-thin m-b">Discover 
                                    <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
                                        <span class="bar1 a1 bg-primary lter"></span>
                                        <span class="bar2 a2 bg-info lt"></span>
                                        <span class="bar3 a3 bg-success"></span>
                                        <span class="bar4 a4 bg-warning dk"></span>
                                        <span class="bar5 a5 bg-danger dker"></span>
                                    </span>
                                </h2>
                                <div class="row row-sm">
                                    <div class="col-xs-6 col-sm-4 col-md-3">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="top">
                                                    <span class="pull-right m-t-sm m-r-sm badge bg-info">6</span>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Vivamus</a></div>
                                                    <p class="hidden-xs">Morbi id neque quam. Aliquam sollicitudin venenatis ipsum</p>
                                                </div>
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="text-info padder m-t-sm text-sm">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o text-muted"></i>
                                                    </div>
                                                    <div class="center text-center m-t-n">
                                                        <a href="#"><i class="icon-screen-smartphone i-2x"></i></a>
                                                    </div>
                                                    <div class="bottom padder m-b-sm">
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>

                                                <a href="#"><img src="https://www.walldevil.com/wallpapers/a53/thumb/christmas-wallpaper-peanuts-events-holiday-albums.jpg" alt="" class="r r- img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black">
                                                    <div class="text-info padder m-t-sm text-sm">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o text-muted"></i>
                                                        <i class="fa fa-star-o text-muted"></i>
                                                    </div>
                                                    <div class="center text-center m-t-n">
                                                        <a href="#" data-toggle="class">
                                                            <i class="icon-control-play i-2x text"></i>
                                                            <i class="icon-control-pause i-2x text-active"></i>
                                                        </a>
                                                    </div>
                                                    <div class="bottom gd bg-info wrapper r r-2x">
                                                        <a href="#" class="text-ellipsis">TTTTVivamus vel tincidunt libero</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                    </div>
                                                </div>

                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p2.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Morbi id neque quam liquam sollicitudin</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Allen JH</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p3.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="top">
                                                    <span class="pull-right m-t-n-xs m-r-sm text-white">
                                                        <i class="fa fa-bookmark i-lg"></i>
                                                    </span>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Tincidunt libero</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Amanda Conlan</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p4.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Fermentum diam</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Nisa Colen</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p5.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="top">
                                                    <span class="pull-right m-t-sm m-r-sm badge bg-info">6</span>
                                                </div>
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>  
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Habitant</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Dan Doorack</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p6.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="top">
                                                    <span class="pull-right m-t-sm m-r-sm badge bg-white">12</span>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Ligula H</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p7.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Aliquam sollicitudin venenati</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">James East</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p8.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Lementum ligula vitae</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p9.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay r r-2x bg-light dker active">
                                                    <div class="text-info padder m-t-sm text-sm">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o text-muted"></i>
                                                    </div>
                                                    <div class="center text-center m-t-n">
                                                        <a href="#" data-toggle="class" class="active">
                                                            <i class="icon-control-play i-2x text"></i>
                                                            <i class="icon-control-pause i-2x text-active"></i>
                                                        </a>
                                                    </div>
                                                    <div class="bottom padder m-b-sm">
                                                        <a href="#" class="pull-right" data-toggle="class">
                                                            <i class="fa fa-heart-o text"></i>
                                                            <i class="fa fa-heart text-active text-danger"></i>
                                                        </a>
                                                        <a href="#" class="active" data-toggle="class">
                                                            <i class="fa fa-plus-circle text"></i>
                                                            <i class="fa fa-check-circle text-active text-info"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Egestas dui nec fermentum </a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Chris Fox</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p10.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Aliquam sollicitudin venenatis ipsum</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Jack Jason</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p11.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
                                        <div class="item ">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Vestibulum ullamcorper</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">MM &amp; DD</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p12.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                
                                <!--gallery end first// old-->
                                 <div class="col-xs-6 col-sm-4 col-md-3">
                                      <div class="item">
                                            <div class="pos-rlt">
                                                <div class="bottom">
                                                    <span class="badge bg-info m-l-sm m-b-sm">03:20</span>
                                                </div>
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Tempered Song</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                                                </div>
                                                <a href="#"><img src="https://www.walldevil.com/wallpapers/a53/thumb/christmas-wallpaper-peanuts-events-holiday-albums.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay opacity r r-2x bg-black active">
                                                    <div class="text-info padder m-t-sm text-sm">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o text-muted"></i>
                                                        <i class="fa fa-star-o text-muted"></i>
                                                    </div>
                                                    <div class="center text-center m-t-n">
                                                        <a href="#" data-toggle="class">
                                                            <i class="icon-control-play i-2x text"></i>
                                                            <i class="icon-control-pause i-2x text-active"></i>
                                                        </a>
                                                    </div>
                                                    <div class="bottom padder m-b-sm">
                                                        <a href="#" class="pull-right active" data-toggle="class">
                                                            <i class="fa fa-heart-o text"></i>
                                                            <i class="fa fa-heart text-active text-danger"></i>
                                                        </a>
                                                        <a href="#" data-toggle="class">
                                                            <i class="fa fa-plus-circle text"></i>
                                                            <i class="fa fa-check-circle text-active text-info"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p2.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Morbi id neque quam liquam sollicitudin</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Allen JH</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p3.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="top">
                                                    <span class="pull-right m-t-n-xs m-r-sm text-white">
                                                        <i class="fa fa-bookmark i-lg"></i>
                                                    </span>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Tincidunt libero</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Amanda Conlan</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p4.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Fermentum diam</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Nisa Colen</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p5.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="top">
                                                    <span class="pull-right m-t-sm m-r-sm badge bg-info">6</span>
                                                </div>
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>  
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Habitant</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Dan Doorack</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p6.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="top">
                                                    <span class="pull-right m-t-sm m-r-sm badge bg-white">12</span>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Ligula H</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p7.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Aliquam sollicitudin venenati</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">James East</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p8.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Lementum ligula vitae</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p9.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
                                        <div class="item">
                                            <div class="pos-rlt">
                                                <div class="item-overlay r r-2x bg-light dker active">
                                                    <div class="text-info padder m-t-sm text-sm">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o text-muted"></i>
                                                    </div>
                                                    <div class="center text-center m-t-n">
                                                        <a href="#" data-toggle="class" class="active">
                                                            <i class="icon-control-play i-2x text"></i>
                                                            <i class="icon-control-pause i-2x text-active"></i>
                                                        </a>
                                                    </div>
                                                    <div class="bottom padder m-b-sm">
                                                        <a href="#" class="pull-right" data-toggle="class">
                                                            <i class="fa fa-heart-o text"></i>
                                                            <i class="fa fa-heart text-active text-danger"></i>
                                                        </a>
                                                        <a href="#" class="active" data-toggle="class">
                                                            <i class="fa fa-plus-circle text"></i>
                                                            <i class="fa fa-check-circle text-active text-info"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Egestas dui nec fermentum </a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Chris Fox</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p10.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="clearfix visible-xs"></div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Aliquam sollicitudin venenatis ipsum</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">Jack Jason</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p11.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-sm-4 col-md-3">
                                        <div class="item ">
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
                                                        <a href="#" class="pull-right">
                                                            <i class="fa fa-heart-o"></i>
                                                        </a>
                                                        <a href="#">
                                                            <i class="fa fa-plus-circle"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="bottom gd bg-info wrapper r r-2x">
                                                    <a href="#" class="text-ellipsis">Vestibulum ullamcorper</a>
                                                    <a href="#" class="text-ellipsis text-xs text-muted">MM &amp; DD</a>
                                                </div>
                                                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p12.jpg" alt="" class="r r-2x img-full"></a>
                                            </div>
                                            <div class="wrapper-sm" ></div>
                                        </div>
                                    </div>
                              
                                <!--page info-->
								</div>
                            </section>
                             <div class="row row-sm">
                                <div class="loading text-center">
                                    
                                </div>
                                <div id="navigation">
                                    <a href="${pageContext.request.contextPath}/top/next?page=1"></a>
                                </div>
                            </div>
                        </section>
                    </section>
                </section>
                <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
            </section>
            <!--main page //END-->
        </section>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.infinitescroll.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#search").click(function () {
                    $("#searchbar").toggle("slow");
                });
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${pageContext.request.contextPath}/assets/images/background1.jpg'},
                        {src: '${pageContext.request.contextPath}/assets/images/background2.jpg'}
                    ]
                });
                $('body').infinitescroll({
                    navSelector: "#navigation", //导航的选择器，会被隐藏
                    nextSelector: "#navigation a", //包含下一页链接的选择器
                    itemSelector: ".row", //你将要取回的选项(内容块)
                    debug: true, //启用调试信息
                    animate: true, //当有新数据加载进来的时候，页面是否有动画效果，默认没有
                    extraScrollPx: 150, //滚动条距离底部多少像素的时候开始加载，默认150
                    bufferPx: 40, //载入信息的显示时间，时间越大，载入信息显示时间越短
                    maxPage: ${pages.totalPages},//公有多少页
                    errorCallback: function () {
                        alert('error');
                    }, //当出错的时候，比如404页面的时候执行的函数
                    localMode: true, //是否允许载入具有相同函数的页面，默认为false
                    dataType: 'html', //可以是json
                    loading: {
                        msgText: "",
                        finishedMsg: '没有新数据了...',
                        img :"${pageContext.request.contextPath}/assets/images/loading.gif",
                        selector: '.loading' // 显示loading信息的div
                    }
                }, function (newElems) {
                    //程序执行完的回调函数
                    var $newElems = $(newElems);
                    $('#waterfall').append($newElems);
                });
            });
        </script>

    </body>
</html>

