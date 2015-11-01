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
    </head>
    <body>
        <section class="vbox">
            <!---header-->
            <jsp:include page="/WEB-INF/views/portal/common/header.jsp"></jsp:include>
                <!---header //END-->
                <section>
                    <section class="container scrollable padder-lg">
                        <h2 class="font-thin m-b">你访问的路径不正确</h2>
                        <div class="row m-n">
                            <div class="col-sm-4 col-sm-offset-4">
                                <div class="text-center m-b-lg">
                                    <h1 class="h text-white animated fadeInDownBig">404</h1>
                                </div>
                                <div class="list-group auto m-b-sm m-b-lg">
                                    <a href="index.html" class="list-group-item">
                                        <i class="fa fa-chevron-right icon-muted"></i>
                                        <i class="fa fa-fw fa-home icon-muted"></i> Goto homepage
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-chevron-right icon-muted"></i>
                                        <i class="fa fa-fw fa-question icon-muted"></i> Send us a tip
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-chevron-right icon-muted"></i>
                                        <span class="badge bg-info lt">021-215-584</span>
                                        <i class="fa fa-fw fa-phone icon-muted"></i> Call us
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
                $(".addFavorite").click(function() {
                    var _photo_id = $(this).data("photos-id");
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/member/favorite/add",
                        data: {photosId: _photo_id},
                        dataType: "json",
                        success: function(data) {
                            alert("添加成功");
                        },
                        error: function(XMLHttpRequest, textStatus, errorThrown) {
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
                $("img").error(function() {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });
            });
        </script>
    </body>
</html>

