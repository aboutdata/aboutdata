<%-- 
    Document   : tags
    Created on : 2015-9-13, 16:15:56
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8"/>
        <title>标签  - 更多壁纸，更多分享</title>
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
    <body class="container">
        <section class="vbox">
                <jsp:include page="/WEB-INF/views/portal/common/header.jsp"/>
                <!--main page-->
                <section id="content">
                    <section class="vbox padder-lg">
                        <h2 class="font-thin m-b">标签列表 
                            <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
                                <span class="bar1 a1 bg-primary lter"></span>
                                <span class="bar2 a2 bg-info lt"></span>
                                <span class="bar3 a3 bg-success"></span>
                                <span class="bar4 a4 bg-warning dk"></span>
                                <span class="bar5 a5 bg-danger dker"></span>
                            </span>
                        </h2>
                        <div class="alltags">
                        <c:forEach items="${pages.content}" var="tag">
                              <a href="#">${tag.name}</a> 
                        </c:forEach>
                        </div>
                    </section>
                    <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
                </section>
                <!--main page //END-->
            </section>
            <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
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



