<%-- 
    Document   : list
    Created on : 2015-8-15, 10:35:40
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <a href="#">控制面板</a>
        </li>

        <li>
            <a href="#">用户管理</a>
        </li>
        <li class="active">个人用户</li>
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
            用户管理
            <small>
                <i class="ace-icon fa fa-angle-double-right"></i>
                企业用户列表测试datatables
            </small>
        </h1>
    </div><!-- /.page-header -->

    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->
            <table id="myDatatbles" class="table table-striped table-bordered table-hover dataTables-example dataTable" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>用户名</th>
                        <th>部门</th>
                        <th>姓名</th>
                        <th>电子邮件</th>
                        <th>是否可用</th>
                        <th>日期</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
            <!-- PAGE CONTENT ENDS -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</div><!-- /.page-content -->
