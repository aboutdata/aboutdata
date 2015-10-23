<%-- 
    Document   : collection
    Created on : 2015-10-23, 15:51:23
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8"/>
        <title>个人收藏  - 更多壁纸，更多分享</title>
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
                        <!-- side content -->
                        <aside class="aside-md bg-black dk" id="sidebar">
                            <section class="vbox animated fadeInRight">
                                <section class="w-f-md scrollable hover">
                                    <header class="header bg-light lter hidden-print">
                                        <!--<a href="#" class="btn btn-sm btn-info pull-right" onclick="window.print();">Print</a>-->
                                        <p>收藏集合</p>
                                    </header>
                                    <ul class="list-group auto m-t-n-xxs">
                                    <c:forEach items="${collections}" var="collection">
                                        <li class="list-group-item">
                                            <span class="pull-right" >
                                                <a href="#"><i class="fa fa-pencil icon-muted fa-fw m-r-xs"></i></a>
                                                <a href="#"><i class="fa fa-times icon-muted fa-fw"></i></a>                  
                                            </span>
                                            <span class="pull-left media-xs">
                                                <c:if test="${collection.isDefault}">
                                                    <i class="fa fa-lock text-muted m-r-sm"></i>
                                                </c:if>
                                                <c:if test="${not collection.isDefault}">
                                                    <i class="fa fa-align-justify text-muted m-r-sm"></i>
                                                </c:if>
                                                20
                                            </span>
                                            <div class="clear">
                                                <a href="${collection.id}">${collection.name}</a>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                                <header class="header bg-light lter hidden-print">
                                    <!--<a href="#" class="btn btn-sm btn-info pull-right" onclick="window.print();">Print</a>-->
                                    <p>新创建</p>
                                </header>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox" name="isPrivate" id="collection-private">
                                    </span>
                                    <input type="text" class="form-control" name="name" id="collection-name">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button" id="collection-btn-save">
                                            <i class="fa fa-plus text-success"></i>
                                        </button>
                                    </span>
                                </div>
                            </section>
                            <!--<footer> </footer>-->
                        </section>              
                    </aside>
                    <!-- / side content -->
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
        <script type="text/javascript">
            $(document).ready(function () {
                $("#search").click(function () {
                    $("#searchbar").toggle("slow");
                });
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${pageContext.request.contextPath}/assets/images/background1.jpg'}
                    ]
                });

                $("img").error(function () {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });

                $("#collection-btn-save").click(function () {
                    var _private = $("#collection-private").is(':checked');
                    var _name = $("#collection-name").val();

                    $.ajax({
                        //提交数据的类型 POST GET
                        type: "POST",
                        //提交的网址
                        url: "${pageContext.request.contextPath}/member/favorite/collections/new",
                        //提交的数据
                        data: {name: _name, private: _private},
                        //返回数据的格式
                        datatype: "json", //"xml", "html", "script", "json", "jsonp", "text".
                        //在请求之前调用的函数
                        beforeSend: function () {
                            // $("#msg").html("logining");
                        },
                        //成功返回之后调用的函数            
                        success: function (data) {
                            alert(data);
                        },
                        //调用执行后调用的函数
                        complete: function (XMLHttpRequest, textStatus) {

                        },
                        //调用出错执行的函数
                        error: function () {
                            //请求出错处理
                        }
                    });

                });

            });
        </script>

    </body>
</html>



