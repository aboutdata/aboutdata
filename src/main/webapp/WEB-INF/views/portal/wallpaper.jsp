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
        <meta name="description" content="高清壁纸,桌面壁纸" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <c:choose>
            <c:when test="${appBean.developMode}">
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
                <link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/bootstrap.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.assetsUrl}/assets/js/vegas/vegas.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/animate.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/font-awesome.min.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/simple-line-icons.css" type="text/css" />
                <link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/font.css" type="text/css" />

                <link rel="stylesheet" href="${pageContext.request.contextPath}/build-${GruntVersion}/css/app.css" type="text/css" />
            </c:otherwise>
        </c:choose>
        <!--[if lt IE 9]>
        <script src="${appBean.assetsUrl}/assets/js/ie/html5shiv.js"></script>
        <script src="${appBean.assetsUrl}/assets/js/ie/respond.min.js"></script>
        <script src="${appBean.assetsUrl}/assets/js/ie/excanvas.js"></script>
        <![endif]-->
        <link rel="shortcut icon" href="favicon.ico"/>
    </head>
    <body>
        <section class="vbox">
            <jsp:include page="/WEB-INF/views/portal/common/header.jsp"></jsp:include>
                <!--main page-->
                <section class="w-f-md">
                    <section class="hbox">
                        <aside class="aside b-r b-black">
                            <section class="scrollable wrapper">
                                <h4 class="font-thin m-b">Wallpaper Colors</h4>
                                <div>
                                    <a href="#" class="btn btn-block btn-primary"></a>
                                    <a href="#" class="btn btn-block btn-success"></a>
                                    <a href="#" class="btn btn-block btn-info"></a>
                                    <a href="#" class="btn btn-block btn-warning"></a>
                                    <a href="#" class="btn btn-block btn-danger"></a>
                                    <a href="#" class="btn btn-block btn-dark"></a>
                                </div>
                                <h4 class="font-thin m-b">Properties</h4>
                                <div class="row">
                                    <div class="col-xs-6 text-right">Category</div>
                                    <div class="col-xs-6 text-left">Variables</div>

                                    <div class="col-xs-6 text-right">Resolution</div>
                                    <div class="col-xs-6 text-left">Variables</div>

                                    <div class="col-xs-6 text-right">Size</div>
                                    <div class="col-xs-6 text-left">335.88 KB</div>

                                    <div class="col-xs-6 text-right">Type</div>
                                    <div class="col-xs-6 text-left">image/jpeg</div>

                                    <div class="col-xs-6 text-right">Posted</div>
                                    <div class="col-xs-6 text-left"><a href="#">${photos.member.username}</a></div>

                                <div class="col-xs-6 text-right">Date</div>
                                <div class="col-xs-6 text-left">${photos.createDate}</div>

                                <div class="col-xs-6 text-right">Views</div>
                                <div class="col-xs-6 text-left">${photos.order}</div>

                                <div class="col-xs-6 text-right">Comments</div>
                                <div class="col-xs-6 text-left">1</div>

                                <div class="col-xs-6 text-right">Downloads</div>
                                <div class="col-xs-6 text-left">1</div>
                            </div>
                            <!-- Properties end// -->
                            <h4 class="font-thin m-b">Tags</h4>
                            <div class="m-b-lg l-h-2x">
                                <c:forEach items="${photos.tags}" var="tag">
                                    <lable class="label bg-primary">${tag.name}</lable> 
                                    </c:forEach>
                            </div>	
                        </section>
                    </aside>
                    <!--主题类容-->
                    <section class="wrapper">    
                        <h4 class="font-thin m-b">Wallpaper Source</h4>
                        <div class="row wrapper r r-2x ">
                            <a href="${photos.storageHost}/${photos.large}" target="_blank" >
                                <img src="${photos.storageHost}/${photos.large}" class="r r-2x img-full" style="cursor: zoom-in">
                            </a>
                        </div>
                        <div>
                            <h4 class="font-thin m-b">Wallpaper Descriptions</h4>
                            <p> Lorem ipsum dolor sit amet, consecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</p>
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

