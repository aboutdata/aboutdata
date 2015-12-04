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
        <!--百度统计-->
        <script>
            var _hmt = _hmt || [];
            (function () {
                var hm = document.createElement("script");
                hm.src = "//hm.baidu.com/hm.js?15dcd777f63423d27dbca739598638ed";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();
        </script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <section>
                <section class="container scrollable padder-lg">
                    <h4 class="font-thin m-b m-t text-white">请选择要上传的壁纸</h4>
                    <form action="${pageContext.request.contextPath}/member/upload" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <!--<input id="photos-upload-input" type="file" name="multipartFile" class="form-control file" multiple="multiple">-->
                            <input id="photos-upload-input" type="file" name="multipartFile" class="form-control file">
                        </div>
                    </form>
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
    <!--file-input-->
    <script src="${pageContext.request.contextPath}/assets/js/file-input/js/fileinput.js" type="text/javascript"></script>
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


