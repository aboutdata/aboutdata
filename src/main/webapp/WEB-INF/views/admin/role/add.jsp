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
        <title>Dashboard - ${cloudSystemName}</title>
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

                                            <!-- PAGE CONTENT BEGINS -->
                                            <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/admin/role/save" method="post">
                                                <!-- #section:elements.form -->
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1">名称</label>
                                                    <div class="col-sm-9">
                                                        <input id="form-field-1" placeholder="用户名" name="name" class="col-xs-10 col-sm-5" type="text">
                                                    </div>
                                                </div>
                                                <div class="hr"></div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right" for="description">描述</label>
                                                    <div class="col-sm-9">
                                                        <input id="description" name="description" placeholder="描述" class="col-xs-10 col-sm-5" type="text">
                                                    </div>
                                                </div>
                                                <div class="hr"></div>
                                                <!-- #section:角色列表循序 -->
                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3">权限</label>
                                                    <div class="controls col-xs-12 col-sm-9">
                                                        <!-- #section:custom/checkbox.switch -->
                                                        <div class="row">
                                                            <div class="col-xs-3">
                                                                <label>
                                                                    <input name="authorities" class="ace ace-checkbox-2" value="admin:admin" type="checkbox">
                                                                    <span class="lbl"> 超级管理员</span>
                                                                </label>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <label>
                                                                    <input name="authorities" class="ace ace-checkbox-2" value="admin:goods" type="checkbox">
                                                                     <span class="lbl"> 商品管理</span>
                                                                </label>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <label>
                                                                    <input name="authorities" class="ace ace-checkbox-2" value="admin:stock" type="checkbox">
                                                                     <span class="lbl"> 库存管理</span>
                                                                </label>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <label>
                                                                    <input name="authorities" class="ace ace-checkbox-2" value="admin:parameter" type="checkbox">
                                                                    <span class="lbl"> 商品参数管理</span>
                                                                </label>
                                                            </div>
                                                            <div class="col-xs-3">
                                                                <label>
                                                                    <input name="authorities" class="ace ace-checkbox-2" value="admin:productCategory" type="checkbox"> 
                                                                    <span class="lbl"> 商品分类管理</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <!-- /section:custom/checkbox.switch -->
                                                    </div>
                                                    <!-- #section:角色列表循序 -->
                                                </div>
                                                <div class="hr"></div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label no-padding-right">是否启用</label>
                                                    <div class="col-sm-9">
                                                        <label class="inline">
                                                            <input name="form-field-radio" class="ace" type="radio">
                                                            <span class="lbl middle"> 是</span>
                                                        </label>

                                                        &nbsp; &nbsp; &nbsp;
                                                        <label class="inline">
                                                            <input name="form-field-radio" class="ace" type="radio">
                                                            <span class="lbl middle"> 否</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="hr"></div>
                                                <!-- /section:elements.form -->

                                                <div class="clearfix form-actions">
                                                    <div class="col-md-offset-3 col-md-9">
                                                        <button class="btn btn-info" type="submit">
                                                            <i class="ace-icon fa fa-check bigger-110"></i>
                                                            保存
                                                        </button>
                                                        &nbsp; &nbsp; &nbsp;
                                                        <button class="btn" type="reset">
                                                            <i class="ace-icon fa fa-undo bigger-110"></i>
                                                            重置
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
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
