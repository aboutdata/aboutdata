<%-- 
    Document   : index
    Created on : 2015-8-16, 13:41:17
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur-更多壁纸，更多分享</title>
        <meta name="description" content="高清壁纸,桌面壁纸" />
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
        <script>
            var _hmt = _hmt || [];
            (function () {
                var hm = document.createElement("script");
                hm.src = "//hm.baidu.com/hm.js?15dcd777f63423d27dbca739598638ed";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();
        </script>
    </head>
    <body>
        <section class="vbox">
            <!---header-->
            <jsp:include page="/WEB-INF/views/portal/common/header.jsp"></jsp:include>
                <!---header //END-->
                <section class="w-f-md">
                    <section class="container scrollable padder-lg">
                        <h2 class="font-thin m-b">Acoustic</h2>
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
            </section>
            <footer class="footer bg-dark dker">
                <div class="container">
                    <small>所有图片同步于<a href="http://alpha.wallhaven.cc/" target="_blank">alpha.wallhaven.cc</a>©lockbur.com2015  京ICP备15054053号</small>
                </div>
            </footer>
        </section>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/tiles.min.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#search").click(function () {
                    $("#searchbar").toggle("slow");
                });
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${pageContext.request.contextPath}/assets/images/background4.jpg'}
                    ]
                });
                $("img").error(function () {
                    $(this).attr("src", "${pageContext.request.contextPath}/assetsimages/image20.jpg");
                });
            });
        </script>
    </body>
</html>
