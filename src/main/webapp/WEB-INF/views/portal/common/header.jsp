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
            </a>
        </div>
        <nav id="topmenu">
            <ul>
                <li>
                    <a class="discover" href="${pageContext.request.contextPath}/top"  title="发现">
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
    </div>
</header>
