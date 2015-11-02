<%-- 
    Document   : 404
    Created on : 2015-11-1, 19:29:47
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8" />
        <title>404-更多壁纸，更多分享</title>
        <jsp:include page="/WEB-INF/views/portal/common/head_and_css.jsp"/>
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
        <section class="vbox">
            <!---header-->
            <jsp:include page="/WEB-INF/views/portal/common/header.jsp"></jsp:include>
                <!---header //END-->
                <section>
                    <section class="container scrollable padder-lg">
                        <div class="row m-n">
                            <div class="col-sm-4 col-sm-offset-4">
                                <div class="text-center m-b-lg">
                                    <h1 class="h text-white animated fadeInDownBig">404</h1>
                                </div>
                                <div class="list-group auto m-b-sm m-b-lg">
                                    <a href="${pageContext.request.contextPath}/" class="list-group-item">
                                    <i class="fa fa-chevron-right icon-muted"></i>
                                    <i class="fa fa-fw fa-home icon-muted"></i> 回到首页
                                </a>
                            </div>
                        </div>
                    </div>
                </section>    
            </section>
        </section>
        <script src="${appBean.systemConfig.assetsUrl}/assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${appBean.systemConfig.assetsUrl}/assets/js/bootstrap.js"></script>
        <script src="${appBean.systemConfig.assetsUrl}/assets/js/vegas/vegas.js"></script>
        <script src="${appBean.systemConfig.assetsUrl}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${pageContext.request.contextPath}/assets/images/background4.jpg'}
                    ]
                });
                $("img").error(function() {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });
            });
        </script>
    </body>
</html>

