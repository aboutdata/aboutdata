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
        <title>搜索结果 - 更多壁纸，更多分享</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/vegas/vegas.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css" type="text/css" />  
        <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/assets/js/ie/html5shiv.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/ie/respond.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/ie/excanvas.js"></script>
      <![endif]-->
        <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <body>
        <section class="vbox">
            <jsp:include page="/WEB-INF/views/portal/common/header.jsp"></jsp:include>
                <!--main page-->
                <section>
                    <div class="m-t-xxs">
                        <div class="modal-center animated fadeInUp text-center" style="width:200px;margin:-80px 0 0 -100px;">
                            <div class="thumb-md"><img src="${pageContext.request.contextPath}/assets/images/logo.png" class="img-circle"></div>
                        <p class="text-white h4 m-t m-b">lockbur.com</p>
                        <div class="input-group">
                            <input type="text" id="keywords" class="form-control text-sm btn-rounded" placeholder="keywords">
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
    <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('body').vegas({
                timer: false,
                slides: [
                    {src: '${pageContext.request.contextPath}/assets/images/background1.jpg'}
                ]
            });
            $("#search").click(function () {
                var keywords = $("#keywords").val();
                location.href = "${pageContext.request.contextPath}/search?keywords=" + keywords;
            });
        });
    </script>

</body>
</html>

