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
        <title>用户信息详细 - lockbur.com</title>
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
                                                    <div>
                                                        <!-- #section:pages/profile.picture -->
                                                        <span class="profile-picture">
                                                            <img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="${pageContext.request.contextPath}/resources/avatars/profile-pic.jpg" />
                                                        </span>

                                                        <!-- /section:pages/profile.picture -->
                                                        <div class="space-4"></div>

                                                        <div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
                                                            <div class="inline position-relative">
                                                                <c:if test="${member.isEnabled}"> <i class="ace-icon fa fa-circle light-green"></i> &nbsp;</c:if>
                                                                <c:if test="${not member.isEnabled}"> <i class="ace-icon fa fa-circle red"></i> &nbsp;</c:if>
                                                                <span class="white">${member.username}</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="space-6"></div>
                                                    <!-- /section:pages/profile.contact -->
                                                    <div class="hr hr12 dotted"></div>

                                                    <!-- #section:custom/extra.grid -->
                                                    <div class="clearfix">
                                                        <div class="grid2">
                                                            <span class="bigger-175 blue">25</span>

                                                            <br />
                                                            Followers
                                                        </div>

                                                        <div class="grid2">
                                                            <span class="bigger-175 blue">12</span>

                                                            <br />
                                                            Following
                                                        </div>
                                                    </div>

                                                    <!-- /section:custom/extra.grid -->
                                                    <div class="hr hr16 dotted"></div>
                                                    <!-- #section:pages/profile.contact -->
                                                    <div class="profile-contact-info">
                                                        <div class="profile-contact-links align-left">
                                                            <a href="#" class="btn btn-sm btn-block btn-primary">
                                                                <i class="ace-icon fa fa-pencil-square-o"></i>
                                                                <span class="bigger-110">编辑信息</span>
                                                            </a>
                                                            <a href="#" class="btn btn-sm btn-block btn-warning">
                                                                <i class="ace-icon fa fa-envelope bigger-120"></i>
                                                                <span class="bigger-110">发送邮件</span>
                                                            </a>
                                                            <a href="#" class="btn btn-sm btn-block btn-primary">
                                                                <i class="ace-icon fa fa-comments bigger-120"></i>
                                                                <span class="bigger-110">发送短信</span>
                                                            </a>
                                                        </div>
                                                        <div class="space-6"></div>
                                                    </div>
                                                </div>

                                                <div class="col-xs-12 col-sm-9">
                                                    <div class="center">
                                                        <span class="btn btn-app btn-sm btn-yellow no-hover">
                                                            <span class="line-height-1 bigger-170"> 32 </span>
                                                            <br>
                                                            <span class="line-height-1 smaller-90"> 上传 </span>
                                                        </span>
                                                        <span class="btn btn-app btn-sm btn-light no-hover">
                                                            <span class="line-height-1 bigger-170 blue"> 1,411 </span>
                                                            <br />
                                                            <span class="line-height-1 smaller-90"> 查看 </span>
                                                        </span>
                                                        <span class="btn btn-app btn-sm btn-pink no-hover">
                                                            <span class="line-height-1 bigger-170"> 4 </span>
                                                            <br />
                                                            <span class="line-height-1 smaller-90"> 收藏 </span>
                                                        </span>
                                                        <span class="btn btn-app btn-sm btn-grey no-hover">
                                                            <span class="line-height-1 bigger-170"> 23 </span>
                                                            <br />
                                                            <span class="line-height-1 smaller-90"> 收藏 </span>
                                                        </span>

                                                        <span class="btn btn-app btn-sm btn-success no-hover">
                                                            <span class="line-height-1 bigger-170"> 7 </span>

                                                            <br />
                                                            <span class="line-height-1 smaller-90"> 相册 </span>
                                                        </span>

                                                        <span class="btn btn-app btn-sm btn-primary no-hover">
                                                            <span class="line-height-1 bigger-170"> 55 </span>

                                                            <br />
                                                            <span class="line-height-1 smaller-90"> 评论 </span>
                                                        </span>
                                                    </div>

                                                    <div class="space-12"></div>

                                                    <!-- #section:pages/profile.info -->
                                                    <div class="profile-user-info profile-user-info-striped">
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 姓名 </div>

                                                            <div class="profile-info-value">
                                                                <span id="username">${member.name}</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 性别 </div>

                                                            <div class="profile-info-value">
                                                                <span id="username">${member.gender.key}</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 手机号码 </div>

                                                            <div class="profile-info-value">
                                                                <span id="username">${member.mobile}</span>
                                                            </div>
                                                        </div> 

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 位置 </div>

                                                            <div class="profile-info-value">
                                                                <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                                <span id="country">中国 北京</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 出生日期 </div>

                                                            <div class="profile-info-value">
                                                                <span id="age">${member.birth}</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 邮箱 </div>

                                                            <div class="profile-info-value">
                                                                <span id="age">${member.email}</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 登录错误次数 </div>

                                                            <div class="profile-info-value">
                                                                <span id="age">${member.loginFailureCount} 次</span>
                                                            </div>
                                                        </div>
                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 是否锁定 </div>

                                                            <div class="profile-info-value">
                                                                <c:if test="${member.isLocked}">
                                                                    <span class="label label-sm label-warning">是</span>
                                                                    <a href="#" class="btn btn-sm btn-danger">
                                                                        <i class="ace-icon fa fa-lock bigger-160"></i>
                                                                        <span class="bigger-110"> 解除锁定</span>
                                                                    </a>
                                                                </c:if>
                                                                <c:if test="${not member.isLocked}">
                                                                    <span class="label label-sm label-sucess">否</span>
                                                                </c:if>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 创建时间 </div>

                                                            <div class="profile-info-value">
                                                                <span id="signup">${member.createDate}</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 最后登录 </div>

                                                            <div class="profile-info-value">
                                                                <span id="login">${member.loginDate}</span>
                                                            </div>
                                                        </div>

                                                        <div class="profile-info-row">
                                                            <div class="profile-info-name"> 注册IP </div>

                                                            <div class="profile-info-value">
                                                                <span id="about">${member.registerIp}</span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- /section:pages/profile.info -->
                                                    <div class="space-20"></div>

                                                    <div class="widget-box transparent">
                                                        <div class="widget-header widget-header-small">
                                                            <h4 class="widget-title blue smaller">
                                                                <i class="ace-icon fa fa-rss orange"></i>
                                                                最近活动
                                                            </h4>
                                                        </div>

                                                        <div class="widget-body">
                                                            <div class="widget-main padding-8">
                                                                <!-- #section:pages/profile.feed -->
                                                                <div id="profile-feed-1" class="profile-feed">
                                                                    <div class="profile-activity clearfix">
                                                                        <div>
                                                                            <img class="pull-left" alt="Alex Doe's avatar" src="${pageContext.request.contextPath}/resources/avatars/avatar5.png" />
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
                                                                            <img class="pull-left" alt="Susan Smith's avatar" src="${pageContext.request.contextPath}/resources/avatars/avatar1.png" />
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
                                                                            <img class="pull-left" alt="David Palms's avatar" src="${pageContext.request.contextPath}/resources/avatars/avatar4.png" />
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

                                                                    <div class="profile-activity clearfix">
                                                                        <div>
                                                                            <i class="pull-left thumbicon fa fa-pencil-square-o btn-pink no-hover"></i>
                                                                            <a class="user" href="#"> Alex Doe </a>
                                                                            published a new blog post.
                                                                            <a href="#">Read now</a>

                                                                            <div class="time">
                                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                                11 hours ago
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
                                                                            <img class="pull-left" alt="Alex Doe's avatar" src="${pageContext.request.contextPath}/resources/avatars/avatar5.png" />
                                                                            <a class="user" href="#"> Alex Doe </a>

                                                                            upgraded his skills.
                                                                            <div class="time">
                                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                                12 hours ago
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
                                                                            <a class="user" href="#"> Alex Doe </a>

                                                                            logged in.
                                                                            <div class="time">
                                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                                12 hours ago
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
                                                                            <i class="pull-left thumbicon fa fa-power-off btn-inverse no-hover"></i>
                                                                            <a class="user" href="#"> Alex Doe </a>

                                                                            logged out.
                                                                            <div class="time">
                                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                                16 hours ago
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
                                                                            <a class="user" href="#"> Alex Doe </a>

                                                                            logged in.
                                                                            <div class="time">
                                                                                <i class="ace-icon fa fa-clock-o bigger-110"></i>
                                                                                16 hours ago
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

                                                                <!-- /section:pages/profile.feed -->
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="hr hr2 hr-double"></div>

                                                    <div class="space-6"></div>

                                                    <div class="center">
                                                        <button type="button" class="btn btn-sm btn-primary btn-white btn-round">
                                                            <i class="ace-icon fa fa-rss bigger-150 middle orange2"></i>
                                                            <span class="bigger-110">View more activities</span>

                                                            <i class="icon-on-right ace-icon fa fa-arrow-right"></i>
                                                        </button>
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
