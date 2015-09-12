<%-- 
    Document   : single
    Created on : 2015-9-6, 12:10:46
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m31.jpg" class="img-full"></a>
</div>
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
            <a href="${pageContext.request.contextPath}/member/photos/wallpaper/${photo.id}"><img src="${photo.thumbnail}" alt="" class="r r-2x img-full"></a>
        </div>
    </div>
    <c:if test="${idx.index mod 5 ==0}">
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
        <div class="item">
            <div class="bottom gd bg-info wrapper">
                <div class="m-t m-b"><a href="${pageContext.request.contextPath}/member/photos/wallpaper/${photo.id}" class="b-b b-warning h4 text-u-c text-lt font-bold">Duis</a></div>
                <p class="hidden-xs">Tincidunt libero vitae elementum</p>
            </div>
            <a href="${pageContext.request.contextPath}/member/photos/wallpaper/${photo.id}"><img src="${pageContext.request.contextPath}/assets/images/p9.jpg" class="img-full"></a>
        </div> 
    </c:if>
</c:forEach>
