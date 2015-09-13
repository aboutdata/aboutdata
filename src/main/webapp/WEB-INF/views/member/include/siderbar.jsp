<%-- 
    Document   : siderbar
    Created on : 2015-8-30, 18:35:02
    Author     : youyou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="nav-primary hidden-xs">
    <ul class="nav bg clearfix">
        <li>
            <a href="${pageContext.request.contextPath}/random">
                <i class="icon-list icon text-success"></i>
                <span class="font-bold">发现</span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/latest">
                <i class="icon-clock icon text-info"></i>
                <span class="font-bold">最新</span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/search">
                <i class="icon-support icon text-danger"></i>
                <span class="font-bold">搜索</span>
            </a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/tags">
                <i class="icon-tag icon  text-info-dker"></i>
                <span class="font-bold">标签</span>
            </a>
        </li>
    </ul>
</nav>
