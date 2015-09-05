<%-- 
    Document   : siderbar
    Created on : 2015-8-30, 18:35:02
    Author     : youyou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="nav-primary hidden-xs">
    <ul class="nav bg clearfix">
        <li>
            <a href="${pageContext.request.contextPath}">
                <i class="icon-disc icon text-success"></i>
                <span class="font-bold">发现</span>
            </a>
        </li>
        <li>
            <a href="genres.html">
                <i class="icon-music-tone-alt icon text-info"></i>
                <span class="font-bold">Genres</span>
            </a>
        </li>
        <li>
            <a href="events.html">
                <i class="icon-drawer icon text-primary-lter"></i>
                <b class="badge bg-primary pull-right">6</b>
                <span class="font-bold">Events</span>
            </a>
        </li>
        <li>
            <a href="listen.html">
                <i class="icon-list icon  text-info-dker"></i>
                <span class="font-bold">Listen</span>
            </a>
        </li>
    </ul>
</nav>
