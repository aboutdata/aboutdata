<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur-更多壁纸，更多分享</title>
        <jsp:include page="/WEB-INF/views/portal/common/head_and_css.jsp"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <!---header-->
            <%--<jsp:include page="/WEB-INF/views/portal/common/header.jsp"/>--%>
            <!---header //END-->
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
                                        <form class="form-horizontal" data-validate="parsley" action="${pageContext.request.contextPath}/member/settings/account" method="post">
                                            <section class="panel panel-default">
                                                <header class="panel-heading">
                                                    <strong>账户</strong>
                                                </header>
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label">邮箱</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" data-type="email" name="email" class="form-control" placeholder="邮箱" value="${member.email}">
                                                        </div>
                                                    </div>
                                                    <div class="line line-dashed b-b line-lg pull-in"></div>
                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label">密码</label>
                                                        <div class="col-sm-6">
                                                            <input type="password" name="password" class="form-control" data-rangelength="[5,10]" id="pwd">
                                                        </div>
                                                    </div>
                                                    <div class="line line-dashed b-b line-lg pull-in"></div>
                                                    <div class="form-group">
                                                        <label class="col-sm-3 control-label">确认密码</label>
                                                        <div class="col-sm-6">
                                                            <input type="password"  name="confirmPassword" class="form-control"  data-equalto="#pwd" data-rangelength="[5,10]">
                                                        </div>
                                                    </div>
                                                    <div class="line line-dashed b-b line-lg pull-in"></div>
                                                </div>
                                                <footer class="panel-footer text-right bg-light lter">
                                                    <button type="submit" class="btn btn-success btn-s-xs">保存</button>
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
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <!--<script src="${appBean.assetsUrl}/assets/js/bootstrap/bootstrap.min.js"></script>-->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
</html>

