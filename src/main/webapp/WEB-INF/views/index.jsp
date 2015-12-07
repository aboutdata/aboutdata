<%-- 
    Document   : index
    Created on : 2015-8-16, 13:41:17
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur - 更多壁纸，更多分享</title>
        <meta property="qc:admins" content="001022565332526375" />
        <meta property="wb:webmaster" content="b4ce7bb18f09c6bc"/>
        <meta name="baidu-site-verification" content="bB5uKKGWVi" />
        <meta name="msvalidate.01" content="1E5396A70FFDF1DD629CEAAD96CCEE15" />
        <meta name="alexaVerifyID" content="wdV1JUI4A1-05aTdniAVHICFPMI"/>
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
            <section class="w-f-md">
                <section id="waterfall" class="container scrollable padder-lg">
                    <h4 class="font-thin m-b m-t text-white">欢迎进入高清壁纸基地!</h4>
                    <div class="row row-sm">
                        <c:forEach items="${content}" var="photos" varStatus="idx">
                            <div class="col-xs-6 col-sm-4 col-md-3">
                                <div class="item">
                                    <div class="pos-rlt">
                                        <div class="item-overlay opacity r r-2x">
                                            <c:if test="${appBean.getCurrentUser() != null}">
                                                <div class="top">
                                                    <a href="#" data-photos-id="${photos.id}" class="pull-right m-t-n-xs m-r-n-xs badge bg-danger count addFavorite">
                                                        <i class="fa fa-star"></i>
                                                    </a>
                                                    <span class="pull-right m-t-n-xs m-r-n-xs badge bg-white count hide">
                                                        <i class="fa fa-spinner fa fa-spin fa fa-large"></i>
                                                    </span>
                                                    <!-- 已收藏过 -->
                                                    <a href="#" class="pull-right m-t-n-xs m-r-n-xs badge bg-white-only count hide">
                                                        <i class="fa fa-star text-danger"></i>
                                                    </a>
                                                </div>
                                            </c:if>
                                            <div class="center text-center m-t-n">
                                                <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><i class="icon-control-play i-2x"></i></a>
                                            </div>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}">
                                            <img src="${pageContext.request.contextPath}/assets/images/images300x200.jpg" data-original="${photos.storageHost}/${photos.thumbnail}" data-provider="lazyload" class="r r- img-full">
                                        </a>
                                    </div>
                                    <div class="wrapper-sm" ></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>          
                </section>    
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
    <script src="${pageContext.request.contextPath}/assets/js/lazyload/jquery.lazyload.min.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
    <script type="text/javascript">
            $(document).ready(function () {
                //图片延时加载  //当图片没加载完显示加载图标和默认图片
                $("img[data-provider=lazyload]").lazyload({
                    placeholder: "${pageContext.request.contextPath}/assets/images/images300x200.jpg",
                    container: $("#waterfall")
                });

            });
    </script>

</html>
