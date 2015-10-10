<%-- 
    Document   : add
    Created on : 2015-10-8, 15:18:20
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>管理员详细 - lockbur.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <%@include file="/WEB-INF/views/admin/common/css-ace.jsp"%>
        <link href="${pageContext.request.contextPath}/resources/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/css/datatables/datatables.css" rel="stylesheet" type="text/css" />
    </head>

    <body class="no-skin">
        <!--头部-->
        <%@include file="/WEB-INF/views/admin/common/header.jsp" %>
        <!--头部END-->
        <div class="main-container" id="main-container">
            <script type="text/javascript">
                try {
                    ace.settings.check('main-container', 'fixed')
                } catch (e) {
                }
            </script>
            <div class="main-container-inner">
                <a class="menu-toggler" id="menu-toggler" href="#">
                    <span class="menu-text"></span>
                </a>

                <div class="sidebar" id="sidebar">
                    <script type="text/javascript">
                        try {
                            ace.settings.check('sidebar', 'fixed')
                        } catch (e) {
                        }
                    </script>
                    <!-- nav-list -->
                    <jsp:include page="/WEB-INF/views/admin/common/left.jsp"/>
                    <!-- /.nav-list -->
                </div>
                <div class="main-content">
                    <!-- #section:basics/content.breadcrumbs -->
                    <div class="breadcrumbs" id="breadcrumbs">
                        <script type="text/javascript">
                            try {
                                ace.settings.check('breadcrumbs', 'fixed')
                            } catch (e) {
                            }
                        </script>

                        <ul class="breadcrumb">
                            <li>
                                <i class="ace-icon fa fa-home home-icon"></i>
                                <a href="#">Home</a>
                            </li>
                            <li class="active">Dashboard</li>
                        </ul><!-- /.breadcrumb -->

                        <!-- #section:basics/content.searchbox -->
                        <div class="nav-search" id="nav-search">
                            <form class="form-search">
                                <span class="input-icon">
                                    <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                                    <i class="ace-icon fa fa-search nav-search-icon"></i>
                                </span>
                            </form>
                        </div><!-- /.nav-search -->

                        <!-- /section:basics/content.searchbox -->
                    </div>

                    <!-- /section:basics/content.breadcrumbs -->
                    <div class="page-content">
                        <!-- #section:settings.box -->

                        <!-- /section:settings.box -->
                        <div class="page-header">
                            <h1>
                                会诊管理
                                <small>
                                    <i class="ace-icon fa fa-angle-double-right"></i>
                                    会诊申请列表
                                </small>
                            </h1>
                        </div><!-- /.page-header -->

                        <div class="row">
                            <div class="col-sm-12">
                                <!-- #section:elements.tab.option -->
                                <div class="tabbable">
                                    <ul class="nav nav-tabs padding-12 tab-color-blue background-blue" id="myTab4">
                                        <li class="active">
                                            <a data-toggle="tab" href="#profile">基本信息</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div id="profile" class="tab-pane active in">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-3 center">
                                                    <span class="profile-picture">
                                                        <img class="editable img-responsive" alt="Alex's Avatar" id="avatar2" src="${pageContext.request.contextPath}/resources/avatars/profile-pic.jpg" />
                                                    </span>

                                                    <div class="space space-4"></div>

                                                    <a href="${pageContext.request.contextPath}/admin/employee/edit/${admin.id}" class="btn btn-sm btn-success">
                                                        <i class="ace-icon fa fa-pencil-square-o"></i>
                                                        <span class="bigger-110">编辑信息</span>
                                                    </a>

                                                    <a href="#" class="btn btn-sm btn-primary">
                                                        <i class="ace-icon fa fa-cog"></i>
                                                        <span class="bigger-110">重置密码</span>
                                                    </a>
                                                </div><!-- /.col -->

                                                <div class="col-xs-12 col-sm-9">
                                                    <h4 class="blue">
                                                        <span class="middle">${admin.name}</span>
                                                    </h4>

                                                    <div class="profile-user-info">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 用户名 </div>

                                                            <div class="profile-info-value">
                                                                <span>${admin.username}</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Location </div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <span>Netherlands</span>
                                                                <span>Amsterdam</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> Age </div>

                                                            <div class="profile-info-value">
                                                                <span>38</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 创建时间 </div>

                                                            <div class="profile-info-value">
                                                                <span> ${admin.createDate} </span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 最后登录 </div>

                                                            <div class="profile-info-value">
                                                                <span>3 小时以前</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="hr hr-8 dotted"></div>

                                                    <div class="profile-user-info">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 电子邮件 </div>
                                                            <div class="profile-info-value">
                                                                ${admin.email}
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="profile-user-info">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 角色 </div>
                                                            <div class="profile-info-value">
                                                                <ul class="list-unstyled spaced">
                                                                    <c:forEach items="${admin.roles}" var="role" varStatus="idx">
                                                                        <li>
                                                                            <i class="ace-icon fa fa-check bigger-110 green"></i>
                                                                            ${role.name}
                                                                        </li>
                                                                    </c:forEach><!--循环 结束-->
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div><!-- /.col -->
                                            </div><!-- /.row -->
                                            <div class="hr dotted"></div>
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="widget-box transparent">
                                                        <div class="widget-header widget-header-small">
                                                            <h4 class="widget-title smaller">
                                                                <i class="ace-icon fa fa-info bigger-110"></i>
                                                                ${admin.name}登录历史
                                                            </h4>
                                                        </div>

                                                        <div class="widget-body">
                                                            <div class="widget-main">
                                                                <table class="table table-striped table-bordered">
                                                                    <thead>
                                                                        <tr>
                                                                            <th class="center">#</th>
                                                                            <th>登录地点</th>
                                                                            <th class="hidden-480">登录结果</th>
                                                                            <th class="hidden-xs">登录时间</th>
                                                                            <th>备注</th>
                                                                        </tr>
                                                                    </thead>

                                                                    <tbody>
                                                                        <tr>
                                                                            <td class="center">1</td>

                                                                            <td>
                                                                                <a href="#">google.com</a>
                                                                            </td>
                                                                            <td class="hidden-xs">
                                                                                1 year domain registration
                                                                            </td>
                                                                            <td class="hidden-480"> --- </td>
                                                                            <td>$10</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td class="center">2</td>

                                                                            <td>
                                                                                <a href="#">yahoo.com</a>
                                                                            </td>
                                                                            <td class="hidden-xs">
                                                                                5 year domain registration
                                                                            </td>
                                                                            <td class="hidden-480"> 5% </td>
                                                                            <td>$45</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td class="center">3</td>
                                                                            <td>Hosting</td>
                                                                            <td class="hidden-xs"> 1 year basic hosting </td>
                                                                            <td class="hidden-480"> 10% </td>
                                                                            <td>$90</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td class="center">4</td>
                                                                            <td>Design</td>
                                                                            <td class="hidden-xs"> Theme customization </td>
                                                                            <td class="hidden-480"> 50% </td>
                                                                            <td>$250</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td class="center">1</td>

                                                                            <td>
                                                                                <a href="#">google.com</a>
                                                                            </td>
                                                                            <td class="hidden-xs">
                                                                                1 year domain registration
                                                                            </td>
                                                                            <td class="hidden-480"> --- </td>
                                                                            <td>$10</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td class="center">2</td>

                                                                            <td>
                                                                                <a href="#">yahoo.com</a>
                                                                            </td>
                                                                            <td class="hidden-xs">
                                                                                5 year domain registration
                                                                            </td>
                                                                            <td class="hidden-480"> 5% </td>
                                                                            <td>$45</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td class="center">3</td>
                                                                            <td>Hosting</td>
                                                                            <td class="hidden-xs"> 1 year basic hosting </td>
                                                                            <td class="hidden-480"> 10% </td>
                                                                            <td>$90</td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td class="center">4</td>
                                                                            <td>Design</td>
                                                                            <td class="hidden-xs"> Theme customization </td>
                                                                            <td class="hidden-480"> 50% </td>
                                                                            <td>$250</td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-6">
                                                    <div class="widget-box transparent">
                                                        <div class="widget-header widget-header-small header-color-blue2">
                                                            <h4 class="widget-title smaller">
                                                                <i class="ace-icon fa fa-lightbulb-o bigger-120"></i>
                                                                操作历史记录
                                                            </h4>
                                                        </div>
                                                        <div class="widget-body">
                                                            <div class="widget-main padding-16">
                                                                <div class="profile-activity clearfix">
                                                                    <div>
                                                                        <i class="pull-left thumbicon fa fa-key btn-info no-hover"></i>
                                                                        <a class="user" href="#"> Alex Doe </a>
                                                                        changed his profile photo.
                                                                        <a href="#">Take a look</a>

                                                                        <div class="time">
                                                                            <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                            an hour ago
                                                                        </div>
                                                                    </div>

                                                                    <div class="tools action-buttons">
                                                                        <a href="#" class="blue">
                                                                            <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                                        </a>

                                                                        <a href="#" class="red">
                                                                            <i class="ace-icon fa fa-times bigger-125"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>

                                                                <div class="profile-activity clearfix">
                                                                    <div>
                                                                        <i class="pull-left thumbicon fa fa-key btn-info no-hover"></i>
                                                                        <a class="user" href="#"> Susan Smith </a>

                                                                        is now friends with Alex Doe.
                                                                        <div class="time">
                                                                            <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                            2 hours ago
                                                                        </div>
                                                                    </div>

                                                                    <div class="tools action-buttons">
                                                                        <a href="#" class="blue">
                                                                            <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                                        </a>

                                                                        <a href="#" class="red">
                                                                            <i class="ace-icon fa fa-times bigger-125"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>

                                                                <div class="profile-activity clearfix">
                                                                    <div>
                                                                        <i class="pull-left thumbicon fa fa-check btn-success no-hover"></i>
                                                                        <a class="user" href="#"> Alex Doe </a>
                                                                        joined
                                                                        <a href="#">Country Music</a>

                                                                        group.
                                                                        <div class="time">
                                                                            <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                            5 hours ago
                                                                        </div>
                                                                    </div>

                                                                    <div class="tools action-buttons">
                                                                        <a href="#" class="blue">
                                                                            <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                                        </a>

                                                                        <a href="#" class="red">
                                                                            <i class="ace-icon fa fa-times bigger-125"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>

                                                                <div class="profile-activity clearfix">
                                                                    <div>
                                                                        <i class="pull-left thumbicon fa fa-picture-o btn-info no-hover"></i>
                                                                        <a class="user" href="#"> Alex Doe </a>
                                                                        uploaded a new photo.
                                                                        <a href="#">Take a look</a>

                                                                        <div class="time">
                                                                            <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                            5 hours ago
                                                                        </div>
                                                                    </div>

                                                                    <div class="tools action-buttons">
                                                                        <a href="#" class="blue">
                                                                            <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                                        </a>

                                                                        <a href="#" class="red">
                                                                            <i class="ace-icon fa fa-times bigger-125"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>

                                                                <div class="profile-activity clearfix">
                                                                    <div>
                                                                        <i class="pull-left thumbicon fa fa-pencil-square-o btn-pink no-hover"></i>
                                                                        <a class="user" href="#"> David Palms </a>

                                                                        left a comment on Alex's wall.
                                                                        <div class="time">
                                                                            <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                            8 hours ago
                                                                        </div>
                                                                    </div>

                                                                    <div class="tools action-buttons">
                                                                        <a href="#" class="blue">
                                                                            <i class="ace-icon fa fa-pencil bigger-125"></i>
                                                                        </a>

                                                                        <a href="#" class="red">
                                                                            <i class="ace-icon fa fa-times bigger-125"></i>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- /#home -->
                                    </div>
                                </div>
                            </div>
                            <!-- /section:elements.tab.option -->
                        </div>
                    </div><!-- /.row -->
                </div><!-- /.page-content -->
            </div><!-- /.main-content -->

            <div class="footer">
                <div class="footer-inner">
                    <!-- #section:basics/footer -->
                    <div class="footer-content">
                        <span class="bigger-120">
                            <span class="blue bolder">Ace</span>
                            Application &copy; 2013-2014
                        </span>

                        &nbsp; &nbsp;
                        <span class="action-buttons">
                            <a href="#">
                                <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-rss-square orange bigger-150"></i>
                            </a>
                        </span>
                    </div>

                    <!-- /section:basics/footer -->
                </div>
            </div>
            <%@include file="/WEB-INF/views/admin/common/setting_box.jsp" %>
        </div><!-- /.main-container-inner -->
        <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
            <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
        </a>
    </div><!-- /.main-container -->

    <!-- basic scripts -->
    <%@include file="/WEB-INF/views/admin/common/footer.jsp" %>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datatables/jquery.dataTables.bootstrap.js"></script>
    <!-- inline scripts related to this page -->
    <script>
                            $(document).ready(function () {

                            });
    </script>
</body>
</html>
