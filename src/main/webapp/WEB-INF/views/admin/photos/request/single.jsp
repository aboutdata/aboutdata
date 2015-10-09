<%-- 
    Document   : single
    Created on : 2015-10-9, 14:04:02
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Dashboard - ${cloudSystemName}</title>
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
                            <div class="col-xs-9">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="widget-box transparent">
                                    <div class="widget-header">
                                        <h4> 图片审核</h4>
                                    </div>
                                </div>
                                <div>
                                    <ul class="ace-thumbnails clearfix">
                                        <li >
                                            <div>
                                                <img id="imageFullScreen" style="cursor:zoom-in" alt="150x150" src="${pageContext.request.contextPath}/resources/images/gallery/image-1.jpg">
                                            </div>
                                        </li>
                                    </ul>
                                </div><!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                            <div class="col-sm-3">
                                <div class="widget-box transparent">
                                    <div class="widget-header">
                                        <h4>Draggable events</h4>
                                    </div>

                                    <div class="widget-body">
                                        <div class="widget-main no-padding">
                                            <div id="external-events">
                                                <div style="position: relative;" class="external-event label-grey ui-draggable" data-class="label-grey">
                                                    <i class="ace-icon fa fa-arrows"></i>
                                                    My Event 1
                                                </div>

                                                <div style="position: relative;" class="external-event label-success ui-draggable" data-class="label-success">
                                                    <i class="ace-icon fa fa-arrows"></i>
                                                    My Event 2
                                                </div>

                                                <div style="position: relative;" class="external-event label-danger ui-draggable" data-class="label-danger">
                                                    <i class="ace-icon fa fa-arrows"></i>
                                                    My Event 3
                                                </div>

                                                <div style="position: relative;" class="external-event label-purple ui-draggable" data-class="label-purple">
                                                    <i class="ace-icon fa fa-arrows"></i>
                                                    My Event 4
                                                </div>

                                                <div style="position: relative;" class="external-event label-yellow ui-draggable" data-class="label-yellow">
                                                    <i class="ace-icon fa fa-arrows"></i>
                                                    My Event 5
                                                </div>

                                                <div style="position: relative;" class="external-event label-pink ui-draggable" data-class="label-pink">
                                                    <i class="ace-icon fa fa-arrows"></i>
                                                    My Event 6
                                                </div>

                                                <div style="position: relative;" class="external-event label-info ui-draggable" data-class="label-info">
                                                    <i class="ace-icon fa fa-arrows"></i>
                                                    My Event 7
                                                </div>

                                                <label>
                                                    <input class="ace ace-checkbox" id="drop-remove" type="checkbox">
                                                    <span class="lbl"> Remove after drop</span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
        <script src="${pageContext.request.contextPath}/resources/js/e-smart-zoom/e-smart-zoom-jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#imageFullScreen').smartZoom({'containerClass': 'zoomableContainer'});
                            });
        </script>
    </body>
</html>

