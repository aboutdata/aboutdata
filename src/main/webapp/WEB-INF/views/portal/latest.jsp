<%-- 
    Document   : latest
    Created on : 2015-8-16, 13:41:17
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8"/>
        <title>最新壁纸 - 更多壁纸，更多分享</title>
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
                <section id="waterfall" class="container scrollable padder-lg">
                    <h5 class="font-thin m-b m-t text-white">最新上传</h5>
                    <div class="row row-sm">
                        <c:forEach items="${pages.content}" var="photos" varStatus="idx">
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
                            <!--gallery end first// old-->
                        </c:forEach>
                    </div>
                </section>
                <div class="row row-sm">
                    <div class="loading text-center">

                    </div>
                    <div id="navigation">
                        <a href="${pageContext.request.contextPath}/latest/next?page=1"></a>
                    </div>
                </div>
            </section>
            <!--main page //END-->
        </section>
    </body>
    <script src="${appBean.assetsUrl}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <!--<script src="${appBean.assetsUrl}/assets/js/bootstrap/bootstrap.min.js"></script>-->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/vegas/vegas.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/lazyload/jquery.lazyload.min.js"></script>
    <!--无限加载-->
    <script src="${appBean.assetsUrl}/assets/js/masonry/jquery.infinitescroll.min.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script type="text/javascript">
            $(document).ready(function () {
                $('body').infinitescroll({
                    navSelector: "#navigation", //导航的选择器，会被隐藏
                    nextSelector: "#navigation a", //包含下一页链接的选择器
                    itemSelector: ".row", //你将要取回的选项(内容块)
                    animate: true, //当有新数据加载进来的时候，页面是否有动画效果，默认没有
                    extraScrollPx: 150, //滚动条距离底部多少像素的时候开始加载，默认150
                    bufferPx: 40, //载入信息的显示时间，时间越大，载入信息显示时间越短
                    maxPage: ${pages.totalPages}, //公有多少页
                    errorCallback: function () {
                        alert('error');
                    }, //当出错的时候，比如404页面的时候执行的函数
                    localMode: true, //是否允许载入具有相同函数的页面，默认为false
                    dataType: 'html', //可以是json
                    loading: {
                        msgText: "",
                        finishedMsg: '没有新数据了...',
                        img: "${appBean.assetsUrl}/assets/images/loading.gif",
                        selector: '.loading' // 显示loading信息的div
                    }
                }, function (newElems) {
                    //程序执行完的回调函数
                    var $newElems = $(newElems);
                    $('#waterfall').append($newElems);
                    $("img[data-provider=lazyload]").lazyload({
                        placeholder: "${pageContext.request.contextPath}/assets/images/images300x200.jpg",
                        container: $("#waterfall")
                    });
                });
                //图片延时加载  //当图片没加载完显示加载图标和默认图片
                $("img[data-provider=lazyload]").lazyload({
                    placeholder: "${pageContext.request.contextPath}/assets/images/images300x200.jpg",
                    container: $("#waterfall")
                });
            });
    </script>
</script>
</html>

