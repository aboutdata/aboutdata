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
                <section class="container scrollable padder-lg">
                    <h4 class="font-thin m-b m-t text-white">欢迎进入高清壁纸基地!</h4>
                    <div class="row row-sm">
                        <c:forEach items="${content}" var="photos" varStatus="idx">
                            <div class="col-xs-6 col-sm-4 col-md-3">
                                <div class="item">
                                    <div class="pos-rlt">
                                        <div class="item-overlay opacity r r-2x bg-black">
                                            <c:if test="${appBean.getCurrentUser() != null}">
                                                <div class="text-info padder m-t-sm text-sm">
                                                    <button data-photos-id="${photos.id}" class="pull-right addFavorite" >
                                                        <i class="fa fa-heart-o text-danger"></i>
                                                    </button>
                                                </div>
                                            </c:if>
                                            <div class="center text-center m-t-n">
                                                <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><i class="icon-control-play i-2x"></i></a>
                                            </div>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><img src="${photos.storageHost}/${photos.thumbnail}" alt="" class="lazy r r- img-full"></a>
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
    <script src="${appBean.systemConfig.assetsUrl}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${appBean.systemConfig.assetsUrl}/assets/js/bootstrap.js"></script>
    <script src="${appBean.systemConfig.assetsUrl}/assets/js/vegas/vegas.js"></script>
    <script src="${appBean.systemConfig.assetsUrl}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/lazyload/jquery.lazyload.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script type="text/javascript">
            $(document).ready(function () {
                //添加到收藏夹
                $(document).on("click", ".addFavorite", function () {
                    var _photo_id = $(this).data("photos-id");
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/member/favorite/add",
                        data: {photosId: _photo_id},
                        dataType: "json",
                        success: function (data) {
                            alert("添加成功");
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert(errorThrown);
                        }
                    });
                });
                //背景图片
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${pageContext.request.contextPath}/assets/images/background4.jpg'}
                    ]
                });
                $("img").error(function () {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });
            });
    </script>
</html>
