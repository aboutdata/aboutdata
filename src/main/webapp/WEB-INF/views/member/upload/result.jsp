<%-- 
    Document   : single
    Created on : 2015-11-30, 15:47:29
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta charset="utf-8"/>
        <title>查看壁纸原图 - 更多壁纸，更多分享</title>
        <jsp:include page="/WEB-INF/views/portal/common/head_and_css.jsp"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/file-input/css/fileinput.css" type="text/css" />
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <section>
                <section class="container scrollable padder-lg">
                    <h4 class="font-thin m-b m-t text-white"></h4>
                    <div class="alert alert-warning alert-block">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                        <h4><i class="fa fa-bell-alt"></i>上传提示!</h4>
                        <p>系统会对您上传的图片进行审核,这可能需要花费一定时间,审核成功后会以邮件方式通知您,再次期间,您可以继续阅读上传使用规则</p>
                    </div>
                </section>
            </section>
            <!--main page //END-->
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
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script type="text/javascript">
            $(document).ready(function () {
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${appBean.assetsUrl}/assets/images/background4.jpg'}
                    ]
                });
            });
    </script>
</html>


