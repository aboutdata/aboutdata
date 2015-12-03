<%-- 
    Document   : navbar
    Created on : 2015-11-6, 23:47:01
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav id="header" class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">导航隐藏</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/"> 
                <img src="${pageContext.request.contextPath}/assets/images/logo.png">
                <strong class="text-white">LockBur</strong>
            </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <div>
                <ul class="nav navbar-nav">
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
                                        <li>
                                            <a href="${pageContext.request.contextPath}/member/favorite">收藏</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/member/message">消息</a>
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
                        <div class="navbar-right">
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
        </div><!--/.navbar-collapse -->
    </div>
</nav>
