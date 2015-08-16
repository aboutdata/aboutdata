<%-- 
    Document   : menu
    Created on : 2015-4-4, 13:55:32
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul class="nav nav-list" id="menu">
    <li class="active" id="dashboard">
        <a href="${pageContext.request.contextPath}/dashboard">
            <i class="menu-icon fa fa-tachometer"></i>
            <span class="menu-text"> 控制面板 </span>
        </a>

        <b class="arrow"></b>
    </li>

    <li id="admin">
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon glyphicon glyphicon-user"></i>
            <span class="menu-text"> 管理员</span>

            <b class="arrow fa fa-angle-down"></b>
        </a>

        <b class="arrow"></b>

        <ul class="submenu">
            <li>
                <a href="${pageContext.request.contextPath}/admin/list">
                    <i class="menu-icon fa fa-caret-right"></i>
                    管理员列表
                </a>
                <b class="arrow"></b>
            </li>
        </ul>
    </li>
    <li id="role">
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon glyphicon glyphicon-user"></i>
            <span class="menu-text"> 系统角色</span>
            <b class="arrow fa fa-angle-down"></b>
        </a>
        <b class="arrow"></b>
        <ul class="submenu">
            <li>
                <a href="${pageContext.request.contextPath}/role/add">
                    <i class="menu-icon fa fa-caret-right"></i>
                    添加角色
                </a>
                <b class="arrow"></b>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/role/list">
                    <i class="menu-icon fa fa-caret-right"></i>
                    角色列表
                </a>
                <b class="arrow"></b>
            </li>
        </ul>
    </li>
    <li id="user">
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-users"></i>
            <span class="menu-text"> 用户管理</span>
            <b class="arrow fa fa-angle-down"></b>
        </a>

        <b class="arrow"></b>

        <ul class="submenu">
            <li>
                <a href="${pageContext.request.contextPath}/user/list">
                    <i class="menu-icon fa fa-caret-right"></i>
                    用户列表
                </a>
                <b class="arrow"></b>
            </li>
        </ul>
    </li>
    <li id="cms">
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-book"></i>
            <span class="menu-text"> 内容管理</span>
            <b class="arrow fa fa-angle-down"></b>
        </a>
        <b class="arrow"></b>
        <ul class="submenu">
            <li>
                <a href="${pageContext.request.contextPath}/article/list">
                    <i class="menu-icon fa fa-caret-right"></i>
                    文章列表
                </a>
                <b class="arrow"></b>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/category/list">
                    <i class="menu-icon fa fa-caret-right"></i>
                    栏目列表
                </a>
                <b class="arrow"></b>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/tag/list">
                    <i class="menu-icon fa fa-caret-right"></i>
                    标签列表
                </a>
                <b class="arrow"></b>
            </li>
        </ul>
    </li>
    <li id="other">
        <a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-file-o"></i>
            <span class="menu-text">
                Other Pages
                <!-- #section:basics/sidebar.layout.badge -->
                <span class="badge badge-primary">5</span>
                <!-- /section:basics/sidebar.layout.badge -->
            </span>
            <b class="arrow fa fa-angle-down"></b>
        </a>
        <b class="arrow"></b>
        <ul class="submenu">
            <li class="">
                <a href="faq.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    FAQ
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="error-404.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Error 404
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="error-500.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Error 500
                </a>

                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="grid.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Grid
                </a>
                <b class="arrow"></b>
            </li>
            <li class="">
                <a href="blank.html">
                    <i class="menu-icon fa fa-caret-right"></i>
                    Blank Page
                </a>
                <b class="arrow"></b>
            </li>
        </ul>
    </li>
</ul><!-- /.nav-list -->
<!--id="button-menu"-->
<div class="sidebar-collapse" id="sidebar-collapse">
    <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
</div>
<!-- /section:basics/sidebar.layout.minimize -->
<script type="text/javascript">
    try {
        ace.settings.check('sidebar', 'collapsed')
    } catch (e) {
    }
</script>
<!-- /section:basics/sidebar -->