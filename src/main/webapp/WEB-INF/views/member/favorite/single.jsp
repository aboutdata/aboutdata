<%-- 
    Document   : single
    Created on : 2015-9-4, 11:51:23
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
                            <section class="hbox stretch">
                                <section>
                                    <section class="vbox">
                                        <section class="scrollable padder-lg" id="bjax-target">
                                            <a href="#" class="pull-right text-muted m-t-lg" data-toggle="class:fa-spin" ><i class="icon-refresh i-lg  inline" id="refresh"></i></a>
                                            <h2 class="font-thin m-b">Discover <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
                                                    <span class="bar1 a1 bg-primary lter"></span>
                                                    <span class="bar2 a2 bg-info lt"></span>
                                                    <span class="bar3 a3 bg-success"></span>
                                                    <span class="bar4 a4 bg-warning dk"></span>
                                                    <span class="bar5 a5 bg-danger dker"></span>
                                                </span></h2>
                                            <div class="row row-sm">
                                                <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p1.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Tempered Song</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p2.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix visible-xs"></div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p3.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Morbi id neque quam liquam sollicitudin</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Allen JH</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p4.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Tincidunt libero</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Amanda Conlan</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix visible-xs"></div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p5.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Fermentum diam</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Nisa Colen</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p6.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Habitant</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Dan Doorack</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix visible-xs"></div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p7.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Ligula H</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p8.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Aliquam sollicitudin venenati</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">James East</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix visible-xs"></div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p9.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Lementum ligula vitae</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p10.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Egestas dui nec fermentum </a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Chris Fox</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix visible-xs"></div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p11.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Aliquam sollicitudin venenatis ipsum</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">Jack Jason</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
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
                                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p12.jpg" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="padder-v">
                                                        <a href="#" class="text-ellipsis">Vestibulum ullamcorper</a>
                                                        <a href="#" class="text-ellipsis text-xs text-muted">MM &amp; DD</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </section>
                                    <!--footer-->
                                </section>
                            </section>
                            <!-- side content -->
                            <aside class="aside-md bg-light dk" id="sidebar">
                                <section class="vbox animated fadeInRight">
                                    <section class="w-f-md scrollable hover">
                                        <header class="header bg-light lter hidden-print">
                                            <!--<a href="#" class="btn btn-sm btn-info pull-right" onclick="window.print();">Print</a>-->
                                            <p>收藏集合</p>
                                        </header>
                                        <ul class="list-group auto m-t-n-xxs">
                                            <li class="list-group-item">
                                                <span class="pull-right" >
                                                    <a href="#"><i class="fa fa-pencil icon-muted fa-fw m-r-xs"></i></a>
                                                    <a href="#"><i class="fa fa-times icon-muted fa-fw"></i></a>                  
                                                </span>
                                                <span class="pull-left media-xs">
                                                    <i class="fa fa-align-justify text-muted m-r-sm"></i>
                                                    20</span>
                                                <div class="clear">
                                                    默认
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <span class="pull-right" >
                                                    <a href="#"><i class="fa fa-pencil icon-muted fa-fw m-r-xs"></i></a>
                                                    <a href="#"><i class="fa fa-times icon-muted fa-fw"></i></a>                  
                                                </span>
                                                <span class="pull-left media-xs">
                                                    <i class="fa fa-list-alt text-muted m-r-sm"></i>
                                                    12</span>
                                                <div class="clear">
                                                    云南美景
                                                </div>
                                            </li>
                                        </ul>
                                         <header class="header bg-light lter hidden-print">
                                            <!--<a href="#" class="btn btn-sm btn-info pull-right" onclick="window.print();">Print</a>-->
                                            <p>新创建</p>
                                        </header>
                                        <form class="" role="search">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <input type="checkbox">
                                                </span>
                                                <input type="text" class="form-control">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default " type="button">
                                                        <i class="fa fa-plus text-success"></i>
                                                    </button>
                                                </span>
                                            </div>
                                        </form>
                                    </section>
                                    <!--<footer> </footer>-->
                                </section>              
                            </aside>
                            <!-- / side content -->
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

