<%-- 
    Document   : search
    Created on : 2015-9-13, 9:52:12
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8"/>
        <title>搜索壁纸 - 更多壁纸，更多分享</title>
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
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <!---header-->
            <%--<jsp:include page="/WEB-INF/views/portal/common/header.jsp"/>--%>
            <!---header //END-->
            <section>
                <div class="m-t-xxs">
                    <div class="modal-center animated fadeInUp text-center" style="width:200px;margin:-80px 0 0 -100px;">
                        <div class="thumb-lg"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" class="img-circle b-a b-light b-2x"></div>
                        <p class="text-white h4 m-t m-b">I Am Dangerous</p>
                        <div class="input-group">
                            <input type="text" id="keywords" class="form-control text-sm btn-rounded" value="china">
                            <span class="input-group-btn">
                                <button id="search" class="btn btn-success btn-rounded" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <!--main page //END-->
    </section>
    <script src="${appBean.assetsUrl}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/vegas/vegas.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script type="text/javascript">
            $(document).ready(function () {
                $("#search").click(function () {
                    var keywords = $("#keywords").val();
                    location.href = "${pageContext.request.contextPath}/search?keywords=" + keywords;
                });
                //回车搜索事件
                $("#keywords").keydown(function (event) {
                    if (event.keyCode == "13"){
                       var keywords = $(this).val();
                       location.href = "${pageContext.request.contextPath}/search?keywords=" + keywords;
                    };
                });
            });
    </script>

</body>
</html>

