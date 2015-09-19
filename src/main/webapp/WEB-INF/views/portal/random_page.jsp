<%-- 
    Document   : random_page
    Created on : 2015-9-16, 20:36:34
    Author     : youyou
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>

	<meta charset="utf-8">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>Infinite Scroll Testing</title>
	<meta name="description" content="">
	<meta name="author" content="">


	<link rel="stylesheet" href="style.css">

</head>

<body>

	<div id="masonry">
	
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
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p6.jpg" alt="" class="r r-2x img-full"></a>
                                    </div>
                                    <div class="padder-v">
                                        <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                        <a href="#" class="text-ellipsis text-xs text-muted">Ligula H</a>
                                    </div>
                                </div>
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
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/p7.jpg" alt="" class="r r-2x img-full"></a>
                                    </div>
                                    <div class="padder-v">
                                        <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                        <a href="#" class="text-ellipsis text-xs text-muted">Ligula H</a>
                                    </div>
                                </div>
	</div>

</body>
</html>
