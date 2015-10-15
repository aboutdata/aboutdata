<%-- 
    Document   : single
    Created on : 2015-9-6, 12:10:46
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="row row-sm">
	<h3 class="pull-right text-muted m-t-lg" >${page}/${pages.totalPages}</h3>
	    <h2 class="font-thin m-b">Discover 
	        <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
	            <span class="bar1 a1 bg-primary lter"></span>
	            <span class="bar2 a2 bg-info lt"></span>
	            <span class="bar3 a3 bg-success"></span>
	            <span class="bar4 a4 bg-warning dk"></span>
	            <span class="bar5 a5 bg-danger dker"></span>
	        </span>
	    </h2>
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
</div>

<c:forEach items="${pages.content}" var="photo" varStatus="idx">
    
</c:forEach>

