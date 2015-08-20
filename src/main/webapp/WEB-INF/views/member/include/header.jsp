<%-- 
    Document   : header
    Created on : 2015-8-20, 21:14:35
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
