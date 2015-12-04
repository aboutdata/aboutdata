<%-- 
    Document   : forget
    Created on : 2015-11-15, 15:59:05
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="utf-8" />
        <title>用户登陆 - 更多壁纸，更多分享</title>
        <jsp:include page="/WEB-INF/views/portal/common/head_and_css.jsp"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <!---header-->
            <%--<jsp:include page="/WEB-INF/views/portal/common/header.jsp"/>--%>
            <!---header //END-->
            <section class="w-f-md m-t">
                <!--content-->
                <section class="padder">
                    <div class="m-lg"></div>
                    <br/>
                    <br/>
                    <br/>
                    <div class="row">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4">
                            <h3 class="m-t-none m-b text-muted">忘记密码</h3>
                            <div class="line line-dashed b-b line-lg pull-in"></div>
                            <c:if test="${not empty errorMessage}">
                                <div class="alert alert-danger">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <i class="fa fa-ban-circle"></i><strong>错误信息!</strong>${errorMessage}.
                                </div>
                            </c:if>
                            <form role="form" id="inputForm" action="${pageContext.request.contextPath}/password/recover" method="post">
                                <div class="form-group">
                                    <input type="text" name="email" class="form-control bg-dark {required:true}" placeholder="请输入你注册邮件地址">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-default btn-block">
                                        <strong><i class="fa fa-sign-in"></i> 找回密码</strong>
                                    </button>
                                </div>                
                            </form>
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                </section>
                <!--content//end-->
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
    <!--引入验证的js代码--->
    <script src="${appBean.assetsUrl}/assets/js/jquery-validation/jquery.validate.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/jquery-validation/jquery.validate.methods.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/jquery-validation/jquery.metadata.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/jquery-validation/jquery.validate.zh-CN.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script type="text/javascript">
        $(document).ready(function () {
            //表单验证
            $("#inputForm").validate({
                errorClass: 'text-danger-lter',
                validClass: "text-success"
            });
        });
    </script>
</html>



