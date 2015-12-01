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
    <body>
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <section>
                <section class="padder-lg container">
                    <a href="#" class="pull-right btn btn-default m-t-lg">
                        <i class="fa fa-tags fa-lg"></i> 创建标签
                    </a>
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
                            <a href="${pageContext.request.contextPath}/tags/s/${tag.name}">${tag.name}</a> 
                        </c:forEach>
                    </div>
                    <div class="text-center">
                        <ul class="pagination pagination">
                            <li><a href="#"><i class="fa fa-chevron-left"></i></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li>
                            <li><a href="#">11</a></li>
                            <li><a href="#"><i class="fa fa-chevron-right"></i></a></li>
                        </ul>
                    </div>
                </section>
                <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
            </section>
            <!--main page //END-->
        </section>
    </body>
    <script src="${appBean.assetsUrl}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${appBean.assetsUrl}/assets/js/bootstrap.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/vegas/vegas.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
</html>



