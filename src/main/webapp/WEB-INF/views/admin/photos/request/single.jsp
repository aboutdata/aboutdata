<%-- 
    Document   : single
    Created on : 2015-10-9, 14:04:02
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>图片审核 - lockbur.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <%@include file="/WEB-INF/views/admin/common/css-ace.jsp"%>
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
                            <div class="col-xs-6">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="widget-box transparent">
                                    <div class="widget-header">
                                        <h4> 图片预览<small> (双击可以缩放图片)</small></h4>
                                    </div>
                                </div>
                                <img style="cursor:zoom-in" class="col-xs-6" alt="300x200" src="${pageContext.request.contextPath}/admin/photosRequest/thumb/${photos.id}">
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <div class="tabbable">
                                    <ul class="nav nav-tabs padding-12 tab-color-blue background-blue">
                                        <li class="active">
                                            <a data-toggle="tab" href="#home4">基本信息</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div id="home4" class="tab-pane active">
                                            <div class="profile-user-info">
                                                <div class="profile-info-row">
                                                    <div class="profile-info-name"> 唯一号 </div>
                                                    <div class="profile-info-value">
                                                        <span>${photos.id}</span>
                                                    </div>
                                                </div>
                                                <div class="profile-info-row">
                                                    <div class="profile-info-name"> 标题 </div>

                                                    <div class="profile-info-value">
                                                        <i class="fa fa-map-marker light-orange bigger-110"></i>
                                                        <span>${photos.title}</span>
                                                    </div>
                                                </div>

                                                <div class="profile-info-row">
                                                    <div class="profile-info-name"> 状态 </div>

                                                    <div class="profile-info-value">
                                                        <c:choose> 
                                                            <c:when test="${photos.status == 'UNASSIGNED'}">   
                                                                <span class="badge badge-grey">未处理</span>
                                                            </c:when> 
                                                            <c:when test="${photos.status == 'ASSIGNED'}">   
                                                                <span class="badge badge-warning">处理中</span>
                                                            </c:when>
                                                            <c:when test="${photos.status == 'CANCELED'}">   
                                                                <span class="badge badge-grey">已取消</span>
                                                            </c:when> 
                                                            <c:when test="${photos.status == 'PENDING_APPORVE'}">   
                                                                <span class="badge badge-pink">待批准</span>
                                                            </c:when>
                                                            <c:when test="${photos.status == 'APPROVED'}">   
                                                                <span class="badge badge-success">已批准</span>
                                                            </c:when>
                                                            <c:when test="${photos.status == 'REJECTED'}">   
                                                                <span class="badge badge-inverse">已驳回</span>
                                                            </c:when>
                                                            <c:when test="${photos.status == 'ARCHIVED'}">   
                                                                <span class="badge badge-purple">已存档</span>
                                                            </c:when>
                                                            <c:when test="${photos.status == 'DELETED'}">   
                                                                <span class="badge badge-important">已删除</span>
                                                            </c:when>  
                                                            <c:otherwise>   
                                                                <span class="badge badge-grey">未处理</span>
                                                            </c:otherwise> 
                                                        </c:choose> 
                                                    </div>
                                                </div>
                                                <div class="profile-info-row">
                                                    <div class="profile-info-name"> up主 </div>

                                                    <div class="profile-info-value">
                                                        <span>${photos.member.username}</span>
                                                    </div>
                                                </div>
                                                <div class="profile-info-row">
                                                    <div class="profile-info-name"> 创建时间 </div>

                                                    <div class="profile-info-value">
                                                        <span>${photos.createDate}</span>
                                                    </div>
                                                </div>
                                                <div class="profile-info-row">
                                                    <div class="profile-info-name"> 修改时间 </div>

                                                    <div class="profile-info-value">
                                                        <span>${photos.modifyDate}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!---tabbable //-->
                            </div>
                        </div><!-- /.row -->
                        <div class="row">

                            <div class="col-xs-12">
                                <div class="widget-box transparent">
                                    <div class="widget-header">
                                        <h4>
                                            <i class="ace-icon fa fa-arrows"></i>
                                            图片审核
                                        </h4>
                                    </div> 


                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <c:choose>
                                                <c:when test="${photos.status == 'APPROVED'}">
                                                    <div class="space-10"></div>
                                                    <div class="alert alert-block alert-success successMessage">
                                                        <i class="icon-ok bigger-130 green"></i> 
                                                        本申请已经被批准！
                                                    </div>
                                                </c:when>
                                                <c:when test="${photos.status == 'REJECTED'}">
                                                    <div class="space-10"></div>
                                                    <div class="alert alert-block alert-error">
                                                        <i class="icon-remove bigger-130 red"></i> 
                                                        本申请已经被驳回！
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <form action="${pageContext.request.contextPath}/admin/photosRequest/approve/${photos.id}" method="post">
                                                        <div>
                                                            <textarea class="form-control" name="description" placeholder="请输入您的评论..." id="description"></textarea>
                                                        </div>
                                                        <div class="clearfix form-actions">
                                                            <div class="col-md-offset-3 col-md-9">
                                                                <button class="btn btn-info" type="submit">
                                                                    <i class="ace-icon fa fa-check bigger-110"></i>
                                                                    审核通过
                                                                </button>
                                                                &nbsp; &nbsp; &nbsp;
                                                                <button class="btn btn-danger">
                                                                    <i class="ace-icon fa fa-undo bigger-110"></i>
                                                                    拒绝申请
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div><!--//ROW -->
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
        <script type="text/javascript">

        </script>
    </body>
</html>

