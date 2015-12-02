<%-- 
    Document   : login
    Created on : 2015-7-21, 8:55:05
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>登录页面-安好时代</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="row text-center ">
                <div class="col-md-12">
                    <h5>
                        <c:if test="${errorMessage != null}">
                            <b style="color: #FF0000">${errorMessage}</b>
                        </c:if>
                    </h5>
                    <br />
                </div>
            </div>
            <div class="row ">
                <div
                    class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-10 col-xs-offset-1">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <strong>健康网络管理中心</strong>
                        </div>
                        <div class="panel-body">
                            <form role="form" id="loginForm"
                                  action="${pageContext.request.contextPath}/admin/login"
                                  method="post">
                                <br />
                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <input type="text" class="form-control" id="username"
                                           name="username" placeholder="用户名" />
                                </div>
                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <input type="password" class="form-control" id="password"
                                           name="password" placeholder="密码" />
                                </div>
                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-globe"></i></span>
                                    <input type="text" class="form-control" id="captcha"
                                           name="captcha" /> <span class="input-group-btn"
                                           style="cursor: pointer"> <img id="captchaImage"
                                                                  class="captchaImage" height="34px"
                                                                  src="${pageContext.request.contextPath}/admin/common/captcha" />
                                    </span>
                                </div>
                                <input type="submit" name="submit" class="btn btn-primary"
                                       value="登录" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- BOOTSTRAP SCRIPTS -->
        <script
        src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
        <script type="text/javascript">
            $(document).ready(
                    function() {
                        var $captchaImage = $("#captchaImage");
                        // 更换验证码
                        $captchaImage.click(function() {
                            $captchaImage.attr("src",
                                    "${pageContext.request.contextPath}/admin/common/captcha?&timestamp="
                                    + (new Date()).valueOf());
                        });
                    });
        </script>

    </body>
</html>

