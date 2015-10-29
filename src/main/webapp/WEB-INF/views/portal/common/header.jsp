<%-- 
    Document   : header
    Created on : 2015-8-20, 21:14:35
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header id="header" class="navbar navbar-fixed-top">
    <div class="container">
        <div>
            <a id="logo" class="navbar-brand" href="${pageContext.request.contextPath}">
                <img src="${pageContext.request.contextPath}/assets/images/logo.png">
                <strong class="text-white">LockBur</strong>
            </a>
        </div>
        <nav id="topmenu">
            <ul>
                <li>
                    <a class="discover" href="${pageContext.request.contextPath}"  title="发现">
                        <i class="icon icon-disc"></i>
                        <span> Discover</span>
                    </a>
                </li>
                <li>
                    <a class="latest" href="${pageContext.request.contextPath}/latest">
                        <i class="fa fa-lg fa-clock-o"></i> 
                        <span> Latest</span>
                    </a>
                </li>
                <li>
                    <a class="random" href="${pageContext.request.contextPath}/random">
                        <i class="fa fa-lg fa-random"></i>
                        <span> Random</span>
                    </a>
                </li>
                <li>
                    <a class="upload" href="http://alpha.wallhaven.cc/upload">
                        <i class="fa fa-lg fa-upload"></i>
                        <span> Upload</span>
                    </a>
                </li>
                <c:if test="${appBean.features.enableSearch}">
                    <li>
                        <a href="http://alpha.wallhaven.cc/random" class="search">
                            <i class="fa fa-lg fa-search"></i>
                            <span> Search</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>
        <c:choose>
            <c:when test="${appBean.getCurrentUser() != null}">
                <div class="navbar-right ">
                    <ul class="nav navbar-nav m-n hidden-xs nav-user user">
                        <li class="hidden-xs bg-dark lter">
                            <a href="#" title="上传">
                                <i class="fa fa-upload"></i>
                            </a>
                        </li>
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
                                                <img src="${pageContext.request.contextPath}/assets/images/user.jpg" alt="..." class="img-circle">
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
                                    <img src="${pageContext.request.contextPath}/assets/images/user.jpg" alt="...">
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
                            <a href="${pageContext.request.contextPath}/login">
                                <i class="fa fa-user"></i>
                                登录
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/register" >
                                <i class="icon-user-follow"></i>
                                注册
                            </a>
                        </li>
                    </ul>
                </div>  
            </c:otherwise>
        </c:choose> 
    </div>
</header>
