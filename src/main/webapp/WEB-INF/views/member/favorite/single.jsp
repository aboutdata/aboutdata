<%-- 
    Document   : collection
    Created on : 2015-10-23, 15:51:23
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur-更多壁纸，更多分享</title>
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
            <jsp:include page="/WEB-INF/views/portal/common/header.jsp"/>
            <section>
                <section class="container m-b m-t">
                    <section class="hbox stretch">
                        <aside class="aside bg-light dk" id="sidebar">
                            <section class="vbox animated fadeInUp">
                                <header>
                                    <h3 class="font-thin m-l">收藏夹</h3>
                                </header>
                                <section class="hover">
                                    <div class="list-group no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                                        <a href="#" class="list-group-item active">
                                            <i class="icon icon-lock"></i> 默认收藏夹
                                        </a>
                                    </div>
                                </section>
                            </section>
                        </aside>
                        <aside class="bg-white">
                            <section class="vbox">
                                <section class="padder-lg">
                                    <h5 class="font-thin m-b">默认收藏夹</h5>
                                    <div class="row row-sm">
                                        <c:forEach items="${collections.photos}" var="photos">
                                            <div class="col-xs-6 col-sm-4 col-md-3">
                                                <div class="item">
                                                    <div class="pos-rlt">
                                                        <div class="item-overlay opacity r r-2x bg-black">
                                                            <div class="text-info padder m-t-sm text-sm">
                                                                <a class="pull-right active" >
                                                                    <i class="fa fa-heart text-active text-danger"></i>
                                                                </a>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o text-muted"></i>
                                                            </div>
                                                            <div class="center text-center m-t-n">
                                                                <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><i class="icon-control-play i-2x"></i></a>
                                                            </div>
                                                        </div>
                                                        <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><img src="${photos.storageHost}/${photos.thumbnail}" alt="" class="r r-2x img-full"></a>
                                                    </div>
                                                    <div class="wrapper-sm" ></div>
                                                </div>
                                            </div>

                                        </c:forEach>
                                    </div>
                                </section>
                            </section>
                        </aside>
                    </section>
                </section>
            </section>
            <footer class="footer bg-black dker">
                <div class="container">
                    <small>所有图片同步于<a href="http://alpha.wallhaven.cc/" target="_blank">alpha.wallhaven.cc</a>©lockbur.com2015  京ICP备15054053号</small>
                </div>
            </footer>
        </section>
    </body>
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
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
</html>





