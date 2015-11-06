<%-- 
    Document   : wallpaper
    Created on : 2015-8-22, 11:02:53
    Author     : youyou
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
            <jsp:include page="/WEB-INF/views/portal/common/header.jsp"></jsp:include>
                <!--main page-->
                <section class="w-f-md">
                    <section class="hbox">
                        <aside class="aside-md b-r b-black">
                            <section class="scrollable wrapper">
                                <h4 class="font-thin m-b">颜色</h4>
                                <div>
                                <c:if test="${empty colors}">
                                    <a href="#" class="btn btn-block btn-primary"></a>
                                    <a href="#" class="btn btn-block btn-success"></a>
                                    <a href="#" class="btn btn-block btn-info"></a>
                                    <a href="#" class="btn btn-block btn-warning"></a>
                                    <a href="#" class="btn btn-block btn-danger"></a>
                                    <a href="#" class="btn btn-block btn-dark"></a>
                                </c:if>
                                <c:if test="${not empty colors}">
                                    <c:forEach items="${colors}" var="color">
                                        <a href="#" class="btn btn-block" style="background-color: ${color.color}"></a>
                                    </c:forEach>
                                </c:if>
                            </div>
                            <h4 class="font-thin m-b">属性</h4>
                            <div class="row">
                                <div class="col-xs-6 text-right">栏目</div>
                                <div class="col-xs-6 text-left">Variables</div>

                                <div class="col-xs-6 text-right">分辨率</div>
                                <div class="col-xs-6 text-left">${photos.width}x${photos.height}</div>

                                <div class="col-xs-6 text-right">大小</div>
                                <div class="col-xs-6 text-left">335.88 KB</div>

                                <div class="col-xs-6 text-right">类型</div>
                                <div class="col-xs-6 text-left">image/jpeg</div>

                                <div class="col-xs-6 text-right">上传者</div>
                                <div class="col-xs-6 text-left"><a>${photos.member.username}</a></div>

                                <div class="col-xs-6 text-right">上传时间</div>
                                <div class="col-xs-6 text-left">${photos.createDate}</div>

                                <div class="col-xs-6 text-right">查看次数</div>
                                <div class="col-xs-6 text-left">${photos.order}</div>

                                <div class="col-xs-6 text-right">评论数</div>
                                <div class="col-xs-6 text-left">1</div>

                                <div class="col-xs-6 text-right">下载次数</div>
                                <div class="col-xs-6 text-left">1</div>
                            </div>
                            <!-- Properties end// -->
                            <h4 class="font-thin m-b">标签</h4>
                            <div class="m-b-lg l-h-2x">
                                <c:forEach items="${photos.tags}" var="tag">
                                    <lable class="label bg-primary">${tag.name}</lable> 
                                    </c:forEach>
                            </div>	
                        </section>
                    </aside>
                    <!--主题类容-->
                    <section class="wrapper">    
                        <h4 class="font-thin m-b">壁纸原图</h4>
                        <div class="row wrapper r r-2x ">
                            <a href="${photos.storageHost}/${photos.large}" target="_blank" >
                                <img src="${photos.storageHost}/${photos.large}" class="r r-2x img-full" style="cursor: zoom-in">
                            </a>
                        </div>
                        <div>
                            <h4 class="font-thin m-b">描述信息</h4>
                            <p> ${photos.description}</p>
                        </div>
                    </section>  <!--main end-->

                </section>    
            </section>
            <!--main page //END-->
            <footer class="footer bg-black dker">
                <div class="container">
                    <small>所有图片同步于<a href="http://alpha.wallhaven.cc/" target="_blank">alpha.wallhaven.cc</a>©lockbur.com2015  京ICP备15054053号</small>
                </div>
            </footer>
        </section>
    </body>
    <c:choose>
        <c:when test="${appBean.developMode}">
            <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
            <!-- Bootstrap -->
            <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
            <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
            <!-- App -->
            <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
            <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        </c:when>
        <c:otherwise>
            <!--生产模式 使用css和常用js直接走nginx-->
            <script src="${appBean.assetsUrl}/assets/js/jquery.min.js"></script>
            <!-- Bootstrap -->
            <script src="${appBean.assetsUrl}/assets/js/bootstrap.js"></script>
            <script src="${appBean.assetsUrl}/assets/js/vegas/vegas.js"></script>
            <script src="${appBean.assetsUrl}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
            <!-- App -->
            <script src="${pageContext.request.contextPath}/build-${GruntVersion}/js/app.js"></script>  
            <script src="${pageContext.request.contextPath}/build-${GruntVersion}/js/app.plugin.js"></script>
        </c:otherwise>
    </c:choose>
    <script type="text/javascript">
            $(document).ready(function () {
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${pageContext.request.contextPath}/assets/images/background4.jpg'}
                    ]
                });
            });
    </script>
</html>

