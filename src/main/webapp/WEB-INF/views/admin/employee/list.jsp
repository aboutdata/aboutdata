<%-- 
    Document   : list
    Created on : 2015-8-15, 10:35:40
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Dashboard - ${cloudSystemName}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <%@include file="/WEB-INF/views/admin/common/css-ace.jsp" %>
           <![endif]-->
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
                            <div class="col-xs-12">
                                <!-- PAGE CONTENT BEGINS -->
                                <div class="row">
                                    <div class="col-xs-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                申请日期  <i class="fa fa-calendar bigger-110"></i>
                                            </span>
                                            <input class="form-control" name="date-range-picker" id="id-date-range-picker" type="text">
                                        </div>
                                    </div>
                                    <div class="col-xs-2">
                                        <div class="input-group">
                                            <span class="input-group-btn">
                                                <button type="button" id="searchByDateRange" class="btn btn-info btn-sm">
                                                    查询
                                                </button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!--</form>-->
                                <table id="myDatatbles" class="table table-striped table-bordered table-hover dataTables-example dataTable" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>编号</th>
                                            <th>病人姓名</th>
                                            <th>申请医生</th>
                                            <th>会诊医院</th>
                                            <th>会诊科室</th>
                                            <th>会诊医生</th>
                                            <th>安排医生</th>
                                            <th>申请时间</th>
                                            <th>安排时间</th>
                                            <th>状态</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>编号</td>
                                            <td>病人姓名</td>
                                            <td>申请医生</td>
                                            <td>会诊医院</td>
                                            <td>会诊科室</td>
                                            <td>会诊医生</td>
                                            <td>安排医生</td>
                                            <td>申请时间</td>
                                            <td>安排时间</td>
                                            <td>状态</td>
                                            <td>操作</td>
                                        </tr>
                                    <tr>
                                            <td>编号</td>
                                            <td>病人姓名</td>
                                            <td>申请医生</td>
                                            <td>会诊医院</td>
                                            <td>会诊科室</td>
                                            <td>会诊医生</td>
                                            <td>安排医生</td>
                                            <td>申请时间</td>
                                            <td>安排时间</td>
                                            <td>状态</td>
                                            <td>操作</td>
                                        </tr>
                                        <tr>
                                            <td>编号</td>
                                            <td>病人姓名</td>
                                            <td>申请医生</td>
                                            <td>会诊医院</td>
                                            <td>会诊科室</td>
                                            <td>会诊医生</td>
                                            <td>安排医生</td>
                                            <td>申请时间</td>
                                            <td>安排时间</td>
                                            <td>状态</td>
                                            <td>操作</td>
                                        </tr>
                                        <tr>
                                            <td>编号</td>
                                            <td>病人姓名</td>
                                            <td>申请医生</td>
                                            <td>会诊医院</td>
                                            <td>会诊科室</td>
                                            <td>会诊医生</td>
                                            <td>安排医生</td>
                                            <td>申请时间</td>
                                            <td>安排时间</td>
                                            <td>状态</td>
                                            <td>操作</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
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
        <script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/resources/js/dateFormat.js"></script>
        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            $(document).ready(function () {
                //=============================设置datatables数据=======================================================================
                var myDataTable = $('#myDatatbles').dataTable();
            });
        </script>
    </body>
</html>
