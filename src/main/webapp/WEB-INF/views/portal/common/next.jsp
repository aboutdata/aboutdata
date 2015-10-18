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
    <c:forEach items="${pages.content}" var="photos" varStatus="idx">
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
                            <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><i class="icon-screen-smartphone i-2x"></i></a>
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

                    <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><img src="${photos.storageHost}/${photos.thumbnail}" alt="" class="r r- img-full"></a>
                </div>
                <div class="wrapper-sm" ></div>
            </div>
        </div>
    </c:forEach>
</div>


