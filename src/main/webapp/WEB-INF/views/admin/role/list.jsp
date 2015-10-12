<%-- 
    Document   : list
    Created on : 2015-10-15, 10:16:40
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                                <label class="pull-right inline">
                                    <a href="${pageContext.request.contextPath}/admin/role/add" class="btn btn-success" id="gritter-error"><i class="glyphicon glyphicon-plus"></i>  添加角色</a>
                                </label>
                            </h1>

                        </div><!-- /.page-header -->

                        <div class="row">
                            <div class="col-xs-12">
                                <!--</form>-->
                                <table id="myDatatbles" class="table table-striped table-bordered table-hover dataTables-example dataTable" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>编号</th>
                                            <th>名称</th>
                                            <th>是否内置</th>
                                            <th>描述</th>
                                            <th>创建时间</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${roles}" var="role" varStatus="idx">
                                            <tr>
                                                <td>${idx.index+1}</td>
                                                <td><a href="${pageContext.request.contextPath}/admin/role/edit/${role.id}">${role.name}</a></td>
                                                <td>
                                                    <c:if test="${role.isSystem}">
                                                        <span class="label label-sm label-warning">是</span>
                                                    </c:if>
                                                    <c:if test="${!role.isSystem}">
                                                        <span class="label label-sm label-sucess">否</span>
                                                    </c:if>
                                                </td>
                                                <td>${role.description}</th>
                                                <td><fmt:formatDate value="${role.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                            </tr> 
                                        </c:forEach>
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
        <!-- inline scripts related to this page -->
        <script type="text/javascript">
                            $(document).ready(function () {
                                //=============================设置datatables数据=======================================================================
                                var myDataTable = $('#myDatatbles').dataTable({
                                    "bPaginate": true, //翻页功能
                                    "searching": false,
                                    "dom": 'rtlip',
                                    "language": {
                                        "processing": "正在努力加载中...",
                                        "lengthMenu": "显示 _MENU_ 项结果 ",
                                        "zeroRecords": "没有匹配结果",
                                        "info": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                                        "infoEmpty": "显示第 0 至 0 项结果，共 0 项",
                                        "infoFiltered": "(由 _MAX_ 项结果过滤)",
                                        "infoPostFix": "",
                                        "url": "",
                                        "paginate": {
                                            "first": "首页",
                                            "previous": "上一页",
                                            "next": "下一页",
                                            "last": "末页"
                                        }
                                    }
                                });
                            });
        </script>
    </body>
</html>
