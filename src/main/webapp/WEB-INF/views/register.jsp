<%-- 
    Document   : register
    Created on : 2015-8-30, 11:21:53
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="utf-8" />
        <title>新用户注册 - 更多壁纸，更多分享</title>
        <jsp:include page="/WEB-INF/views/portal/common/head_and_css.jsp"/>
    </head>
    <body>
        <section class="vbox">
            <jsp:include page="/WEB-INF/views/portal/common/header.jsp"/>
            <section class="w-f-md m-t">
                <!--content-->
                <section class="padder">
                    <div class="m-lg"></div>
                    <div class="row">
                        <div class="col-sm-3 b-r"></div>
                        <div class="col-sm-3 b-r">
                            <h3 class="m-t-none m-b">用户注册</h3>
                            <c:if test="${not empty errorMessage}">
                                <div class="alert alert-danger">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <i class="fa fa-ban-circle"></i><strong>错误信息!</strong>${errorMessage}.
                                </div>
                            </c:if>
                            <c:if test="${empty errorMessage}">
                                <p>登录可以获得更好的服务</p>
                            </c:if>

                            <form role="form" data-validate="parsley" action="${pageContext.request.contextPath}/register/submit" method="post">
                                <div class="form-group">
                                    <label>用户名</label>
                                    <input type="text" class="form-control" name="username" value="aboutdata" placeholder="Enter email" data-required="true">
                                </div>
                                <div class="form-group">
                                    <label>电子邮件</label>
                                    <input type=email class="form-control" name="email" value="845885222@qq.com" placeholder="Enter email" data-required="true">
                                </div>
                                <div class="form-group">
                                    <label>密码</label>
                                    <input type="password" class="form-control" id="password" name="password"  placeholder="Password" data-required="true">
                                </div>
                                <div class="form-group">
                                    <label>确认密码</label>
                                    <input type="password" class="form-control" name="confirmpassword" data-equalto="#password"  placeholder="Password" data-required="true">
                                </div>
                                <div class="checkbox m-t-lg">
                                    <button type="submit" class="btn btn-sm btn-success pull-right text-uc m-t-n-xs"><strong>注册</strong></button>
                                    <label>
                                        <input type="checkbox" name="rememberme" checked data-required="true">同意注册协议
                                    </label>
                                </div>                
                            </form>
                        </div>
                        <div class="col-sm-3">
                            <h4>如果已有账号?</h4>
                            <p>You can create an account <a href="#" class="text-info">here</a></p>
                            <p>OR</p>
                            <a href="#" class="btn btn-primary btn-block m-b-sm"><i class="fa fa-facebook pull-left"></i>Sign in with Facebook</a>
                            <a href="#" class="btn btn-info btn-block m-b-sm"><i class="fa fa-twitter pull-left"></i>Sign in with Twitter</a>
                            <a href="#" class="btn btn-danger btn-block"><i class="fa fa-google-plus pull-left"></i>Sign in with Google+</a>
                        </div>
                        <div class="col-sm-3 b-r"></div>
                    </div>
                </section>
                <!--content//end-->
            </section>   
            <footer class="footer bg-black dker navbar-fixed-bottom">
                <div class="container">
                    <small>所有图片同步于<a href="http://alpha.wallhaven.cc/" target="_blank">alpha.wallhaven.cc</a>©lockbur.com2015  京ICP备15054053号</small>
                </div>
            </footer>
        </section>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/tiles.min.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#search").click(function () {
                    $("#searchbar").toggle("slow");
                });
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${pageContext.request.contextPath}/assets/images/background1.jpg'}
                    ]
                });
                $("img").error(function () {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });
            });
        </script>
    </body>
</html>
