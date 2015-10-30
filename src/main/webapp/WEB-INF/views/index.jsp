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
        <title>Lockbur-更多壁纸，更多分享</title>
        <meta name="description" content="高清壁纸,桌面壁纸" />
        <meta name="baidu-site-verification" content="EnQQvcajMO" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <c:choose>
            <c:when test="${appBean.systemConfig.developMode}">
                <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
                <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/vegas/vegas.css" type="text/css" />
                <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" type="text/css" />
                <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" type="text/css" />
                <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" type="text/css" />
                <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" type="text/css" />
                <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css" type="text/css" />  
            </c:when>
            <c:otherwise>
                <!--生产模式 使用css和常用js直接走nginx-->
                <link rel="stylesheet" href="${appBean.systemConfig.assetsUrl}/assets/css/bootstrap.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.systemConfig.assetsUrl}/assets/js/vegas/vegas.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.systemConfig.assetsUrl}/assets/css/animate.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.systemConfig.assetsUrl}/assets/css/font-awesome.min.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.systemConfig.assetsUrl}/assets/css/simple-line-icons.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.systemConfig.assetsUrl}/assets/css/font.css" type="text/css" />

                <link rel="stylesheet" href="${pageContext.request.contextPath}/build-${GruntVersion}/css/app.css" type="text/css" />
            </c:otherwise>
        </c:choose>
        <!--[if lt IE 9]>
        <script src="${appBean.systemConfig.assetsUrl}/assets/js/ie/html5shiv.js"></script>
        <script src="${appBean.systemConfig.assetsUrl}/assets/js/ie/respond.min.js"></script>
        <script src="${appBean.systemConfig.assetsUrl}/assets/js/ie/excanvas.js"></script>
      <![endif]-->
        <link rel="shortcut icon" href="favicon.ico" />
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
                <section class="w-f-md">
                    <section class="container scrollable padder-lg">
                        <h2 class="font-thin m-b">Home</h2>
                        <div class="row row-sm">
                        <c:forEach items="${content}" var="photos" varStatus="idx">
                            <div class="col-xs-6 col-sm-4 col-md-3">
                                <div class="item">
                                    <div class="pos-rlt">
                                        <div class="item-overlay opacity r r-2x bg-black">
                                            <div class="text-info padder m-t-sm text-sm">
                                                <a href="#" data-photos-id="${photos.id}" class="pull-right addFavorite" data-toggle="class">
                                                    <i class="fa fa-heart text-active text-danger"></i>
                                                    <i class="fa fa-heart-o text"></i>
                                                </a>
                                            </div>
                                            <div class="center text-center m-t-n">
                                                <a href="#"><i class="icon-control-play i-2x"></i></a>
                                            </div>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><img src="${photos.storageHost}/${photos.thumbnail}" alt="" class="r r- img-full"></a>
                                    </div>
                                    <div class="wrapper-sm" ></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>          
                </section>    
            </section>
            <footer class="footer bg-black dker">
                <div class="container">
                    <small>所有图片同步于<a href="http://alpha.wallhaven.cc/" target="_blank">alpha.wallhaven.cc</a>©lockbur.com2015  京ICP备15054053号</small>
                </div>
            </footer>
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
            $(document).ready(function () {
                $(".addFavorite").click(function () {
                    var _photo_id = $(this).data("photos-id");
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/member/favorite/add",
                        data: {photosId : _photo_id},
                        dataType: "json",
                        success: function (data) {
                            alert("添加成功");
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert(errorThrown);
                        }
                    });
                });

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
    </body>
</html>
