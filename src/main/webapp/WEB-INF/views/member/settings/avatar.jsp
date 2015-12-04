<%-- 
    Document   : avartar
    Created on : 2015-11-2, 13:08:14
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur-更多壁纸，更多分享</title>
        <jsp:include page="/WEB-INF/views/portal/common/head_and_css.jsp"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/bootstrap-fileupload/bootstrap-fileupload.min.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <section>
                <section class="container scrollable m-b m-t">
                    <section class="hbox stretch">
                        <aside class="aside-lg bg-light lter b-r">
                            <section class="vbox">
                                <section class="scrollable">
                                    <div class="wrapper">
                                        <div class="text-center m-b m-t">
                                            <a href="#" class="thumb-lg">
                                                <img src="${pageContext.request.contextPath}/avatars/${appBean.getCurrentUser().id}?t=${appBean.getCurrentUser().avatarType}&v=2" class="img-circle" alt="${appBean.getCurrentUser().username}头像">
                                            </a>
                                            <div>
                                                <div class="h3 m-t-xs m-b-xs">${member.username}</div>
                                                <small class="text-muted"><i class="fa fa-map-marker"></i> 中国,北京</small>
                                            </div>                
                                        </div>
                                        <div class="panel wrapper">
                                            <div class="row text-center">
                                                <div class="col-xs-6">
                                                    <a href="#">
                                                        <span class="m-b-xs h4 block"><i class="fa fa-camera"></i></span>
                                                        <small class="text-muted">头像</small>
                                                    </a>
                                                </div>
                                                <div class="col-xs-6">
                                                    <a href="#">
                                                        <span class="m-b-xs h4 block"><i class="fa fa-user"></i></span>
                                                        <small class="text-muted">账户</small>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-group btn-group-justified">
                                            <a href="${pageContext.request.contextPath}/member/settings/account" class="btn btn-primary">
                                                <i class="fa fa-edit"></i> 修改资料
                                            </a>
                                            <a href="${pageContext.request.contextPath}/member/favorite" class="btn btn-success"><i class="fa fa-star"></i> 收藏列表</a>
                                        </div>
                                        <div>
                                            <h4 class="text-uc text-xs text-muted">用户描述信息</h4>
                                            <p>${memberInfomation.description}</p>
                                        </div>
                                    </div>
                                </section>
                            </section>
                        </aside>
                        <aside class="bg-white">
                            <section class="panel panel-default">
                                <header class="panel-heading bg-light">
                                    <ul class="nav nav-justified">
                                        <li class="active">
                                            <a href="${pageContext.request.contextPath}/member/settings/profile">
                                                <span class="m-b-xs h4 block"> 
                                                    <i class="fa fa-user text-muted"></i>
                                                </span>
                                                <span class="text-muted">个人资料</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/member/settings/avatar" class="bg-light">
                                                <span class="m-b-xs h4 block"> 
                                                    <i class="icon-eyeglasses"></i>
                                                </span>
                                                <span class="text-muted">头像修改</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/member/settings/browsing">
                                                <span class="m-b-xs h4 block"> 
                                                    <i class="fa fa-cog text-muted"></i>
                                                </span>
                                                <span class="text-muted">个人设置</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/member/settings/account" class="bg-light">
                                                <span class="m-b-xs h4 block"> 
                                                    <i class="fa fa-css3"></i>
                                                </span>
                                                <span class="text-muted">账户</span>
                                            </a>
                                        </li>
                                    </ul>
                                </header>
                                <div class="panel-body">
                                    <div class="tab-pane" id="home">
                                        <form class="form-horizontal" action="${pageContext.request.contextPath}/member/settings/avatar" method="post" enctype="multipart/form-data">
                                            <section class="panel panel-default">
                                                <header class="panel-heading">
                                                    <strong>头像修改</strong>
                                                </header>
                                                <div class="panel-body"> 
                                                    <div class="line line-dashed b-b line-lg pull-in"></div>
                                                    <div class="form-group">
                                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                                            <div class="col-sm-3">
                                                                <div class="fileupload-new thumbnail b-a b-dashed b-danger">
                                                                    <img src="${pageContext.request.contextPath}/avatars/${appBean.getCurrentUser().id}?t=${appBean.getCurrentUser().avatarType}&v=2" alt="您还未上传过头像信息" class="img-full">
                                                                </div>
                                                                <div class="fileupload-preview fileupload-exists thumbnail  b-a b-dashed b-danger">

                                                                </div>
                                                            </div>
                                                            <div class="col-sm-9">
                                                                <div class="clearfix m-b-lg">
                                                                    <div class="clear">
                                                                        <small class="block text-muted">你头像上传为. 200x200 px.如果不符合尺寸,系统将自动裁剪.</small>
                                                                        <small class="text-danger">头像大小限制: 200KB</small>
                                                                        <small class="block text-muted">上传类型限制: *.png *.jpg *.gif</small>
                                                                    </div>
                                                                    <div>
                                                                        <span class="btn btn-file">
                                                                            <span class="fileupload-new btn btn-success btn-s-xs">
                                                                                <i class="fa fa-picture"></i>选择图片
                                                                            </span>
                                                                            <span class="fileupload-exists btn btn-success btn-s-xs">
                                                                                <i class="fa fa-picture"></i> 修改
                                                                            </span>
                                                                            <input type="file" name="multipartFile">
                                                                        </span>
                                                                        <a href="#" class="btn btn-danger btn-s-xs fileupload-exists" data-dismiss="fileupload">
                                                                            <i class="fa fa-times"></i> 删除
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <footer class="panel-footer text-center bg-light lter">
                                                    <button type="submit" class="btn btn-success btn-s-xs">确认修改</button>
                                                </footer>
                                            </section>
                                        </form>
                                    </div>
                                </div>
                            </section>
                        </aside>
                    </section>
                </section>
            </section>
            <footer class="footer bg-black dker">
                <jsp:include page="/WEB-INF/views/portal/common/footer.jsp"/>
            </footer>
        </section>
    </body>
    <script src="${appBean.assetsUrl}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <!--<script src="${appBean.assetsUrl}/assets/js/bootstrap/bootstrap.min.js"></script>-->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/vegas/vegas.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  

    <script src="${pageContext.request.contextPath}/assets/js/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
</html>


