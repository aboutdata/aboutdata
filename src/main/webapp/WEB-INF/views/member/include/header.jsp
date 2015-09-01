<%-- 
    Document   : header
    Created on : 2015-8-20, 21:14:35
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="navbar-header aside bg-primary nav-xs">
    <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
        <i class="icon-list"></i>
    </a>
    <a href="index.html" class="navbar-brand text-lt">
        <i class="icon-earphones"></i>
        <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="." class="hide">
        <span class="hidden-nav-xs m-l-sm">Musik</span>
    </a>
    <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".user">
        <i class="icon-settings"></i>
    </a>
</div>      <ul class="nav navbar-nav hidden-xs">
    <li>
        <a href="#nav,.navbar-header" data-toggle="class:nav-xs,nav-xs" class="text-muted">
            <i class="fa fa-indent text"></i>
            <i class="fa fa-dedent text-active"></i>
        </a>
    </li>
</ul>
<c:if test="${appBean.features.enableSearch}">
<form class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs" role="search">
    <div class="form-group">
        <div class="input-group">
            <span class="input-group-btn">
                <button type="submit" class="btn btn-sm bg-white btn-icon rounded"><i class="fa fa-search"></i></button>
            </span>
            <input type="text" class="form-control input-sm no-border rounded" placeholder="Search songs, albums...">
        </div>
    </div>
</form>
</c:if>
<c:choose>
    <c:when test="${appBean.getCurrentUser() != null}">
        <div class="navbar-right ">
            <ul class="nav navbar-nav m-n hidden-xs nav-user user">
                <li class="hidden-xs">
                    <a href="#" class="dropdown-toggle lt" data-toggle="dropdown">
                        <i class="icon-bell"></i>
                        <span class="badge badge-sm up bg-danger count">2</span>
                    </a>
                    <section class="dropdown-menu aside-xl animated fadeInUp">
                        <section class="panel bg-white">
                            <div class="panel-heading b-light bg-light">
                                <strong>You have <span class="count">2</span> notifications</strong>
                            </div>
                            <div class="list-group list-group-alt">
                                <a href="#" class="media list-group-item">
                                    <span class="pull-left thumb-sm">
                                        <img src="${pageContext.request.contextPath}/assets/images/a0.png" alt="..." class="img-circle">
                                    </span>
                                    <span class="media-body block m-b-none">
                                        Use awesome animate.css<br>
                                        <small class="text-muted">10 minutes ago</small>
                                    </span>
                                </a>
                                <a href="#" class="media list-group-item">
                                    <span class="media-body block m-b-none">
                                        1.0 initial released<br>
                                        <small class="text-muted">1 hour ago</small>
                                    </span>
                                </a>
                            </div>
                            <div class="panel-footer text-sm">
                                <a href="#" class="pull-right"><i class="fa fa-cog"></i></a>
                                <a href="#notes" data-toggle="class:show animated fadeInRight">See all the notifications</a>
                            </div>
                        </section>
                    </section>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle bg clear" data-toggle="dropdown">
                        <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                            <img src="${pageContext.request.contextPath}/assets/images/a0.png" alt="...">
                        </span>
                        ${appBean.getCurrentUser().username} <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight">            
                        <li>
                            <span class="arrow top"></span>
                            <a href="#">设置</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/member/profile">个人资料</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/member/photos/album">
                                我的相册
                            </a>
                        </li>
                        <li>
                            <a href="docs.html">收藏</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/logout">注销登录</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>  
    </c:when>
    <c:otherwise>
        <div class="navbar-right ">
            <ul class="nav navbar-nav m-n hidden-xs nav-user user">
                <li>
                    <a href="${pageContext.request.contextPath}/login" class="text-muted">
                        <i class="fa fa-user"></i>
                        登录
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/register" class="text-muted">
                        <i class="icon-user-follow"></i>
                        注册
                    </a>
                </li>
            </ul>
        </div>  
    </c:otherwise>
</c:choose>

