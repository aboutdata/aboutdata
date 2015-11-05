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
            <a id="logo" class="navbar-brand" href="${pageContext.request.contextPath}/">
                <img src="${pageContext.request.contextPath}/assets/images/logo.png">
                <strong class="text-white">LockBur</strong>
            </a>
        </div>
        <c:if test="${appBean.features.enableLogin}">
            <c:choose>
                <c:when test="${appBean.getCurrentUser() != null}">
                    <div class="navbar-right ">
                        <ul class="nav navbar-nav nav-user user">
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
                                        <a href="${pageContext.request.contextPath}/member/settings/account">设置</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/member/profile">个人资料</a>
                                    </li>
                                    <!--                                <li>
                                                                        <a href="${pageContext.request.contextPath}/member/photos/album">
                                                                            我的相册
                                                                        </a>
                                                                    </li>-->
                                    <li>
                                        <a href="${pageContext.request.contextPath}/member/favorite">收藏</a>
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
                        <ul class="nav navbar-nav">
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
        </c:if>
        <nav id="topmenu">
            <ul>
                <li>
                    <a class="discover" href="${pageContext.request.contextPath}/top"  title="发现">
                        <i class="icon icon-disc"></i>
                        <span> 发现</span>
                    </a>
                </li>
                <li>
                    <a class="latest" href="${pageContext.request.contextPath}/latest">
                        <i class="fa fa-lg fa-clock-o"></i> 
                        <span> 最新</span>
                    </a>
                </li>
                <li>
                    <a class="random" href="${pageContext.request.contextPath}/random">
                        <i class="fa fa-lg fa-random"></i>
                        <span> 随机</span>
                    </a>
                </li>
                <li>
                    <a class="upload" href="http://alpha.wallhaven.cc/upload">
                        <i class="fa fa-lg fa-upload"></i>
                        <span> 上传</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/search" class="search">
                        <i class="fa fa-lg fa-search"></i>
                        <span> 搜索</span>
                    </a>
                </li>
            </ul>
        </nav>

    </div>
</header>
