<%-- 
    Document   : index
    Created on : 2015-8-16, 13:41:17
    Author     : youyou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" class="app">
    <head>  
        <meta charset="utf-8" />
        <title>相册系统 | aboutdata</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/file-input/css/fileinput.css" media="all" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
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
    </head>
    <body class="">
        <section class="vbox">
            <header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
                <jsp:include page="/WEB-INF/views/member/include/header.jsp"></jsp:include>
                </header>
                <section>
                    <section class="hbox stretch">
                        <!-- .aside -->
                        <aside class="bg-black dk nav-xs aside hidden-print" id="nav">          
                            <section class="vbox">
                                <section class="w-f-md scrollable">
                                    <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-railOpacity="0.2">
                                        <!-- nav -->                 
                                        <nav class="nav-primary hidden-xs">
                                            <ul class="nav bg clearfix">
                                                <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                                                    Discover
                                                </li>
                                                <li>
                                                    <a href="index.html">
                                                        <i class="icon-disc icon text-success"></i>
                                                        <span class="font-bold">What's new</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="genres.html">
                                                        <i class="icon-music-tone-alt icon text-info"></i>
                                                        <span class="font-bold">Genres</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="events.html">
                                                        <i class="icon-drawer icon text-primary-lter"></i>
                                                        <b class="badge bg-primary pull-right">6</b>
                                                        <span class="font-bold">Events</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="listen.html">
                                                        <i class="icon-list icon  text-info-dker"></i>
                                                        <span class="font-bold">Listen</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                        <!-- / nav -->
                                    </div>
                                </section>
                        </aside>
                        <!-- /.aside -->
                        <!--content-->
                        <section id="content">
                            <section class="vbox" id="bjax-el">
                                <section class="scrollable padder-lg">
                                    <a href="#modal-form" class="pull-right text-muted m-t-lg" data-toggle="modal">
                                        <i class="fa fa-plus i-lg inline text-info"></i> 上传照片
                                    </a>
                                    <h2 class="font-thin m-b">${photosAlbum.name}</h2>
                                <div class="row row-sm">
                                    <c:forEach items="${list}" var="photos">
                                        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                                            <div class="item">
                                                <div class="pos-rlt">
                                                    <div class="item-overlay opacity r r-2x bg-black">
                                                        <div class="center text-center m-t-n">
                                                            <a href="${pageContext.request.contextPath}/member/photos/wallpaper/${photos.id}"><i class="fa fa-play-circle i-2x"></i></a>
                                                        </div>
                                                    </div>
                                                    <a href="${pageContext.request.contextPath}/member/photos/wallpaper/${photos.id}">
                                                        <img src="${photos.storageHost}/${photos.thumbnail}" alt="" class="r r-2x img-full">
                                                    </a>
                                                </div>
                                                <div class="padder-v">
                                                    <a href="${pageContext.request.contextPath}/member/photos/wallpaper/${photos.id}" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis">${photos.title}</a>
                                                    <a href="${pageContext.request.contextPath}/member/photos/wallpaper/${photos.id}" data-bjax data-target="#bjax-target" data-el="#bjax-el" data-replace="true" class="text-ellipsis text-xs text-muted">${photos.createDate}</a>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>    
                                </div>
                                </div>
                            </section>
                        </section>
                        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
                    </section>
                    <!--content//end-->
                </section>
            </section>    
        </section>
        <!--弹出-->
        <div class="modal fade" id="modal-form">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body wrapper-md">
                        <div class="row">
                            <h3 class="m-t-none m-b">上传照片</h3>
                            <p>创建新相册更好管理你的图片.</p>
                            <form action="${pageContext.request.contextPath}/member/photos/upload" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="albumId" value="${photosAlbum.id}"/>
                                <div class="form-group">
                                    <label>请选择照片</label>
                                    <input id="photos-upload-input" type="file" name="multipartFile" class="form-control file">
                                </div>
                            </form>
                        </div>          
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>

        <!--file-input-->
        <script src="${pageContext.request.contextPath}/assets/js/file-input/js/fileinput.js" type="text/javascript"></script>
        <!--<script src="${pageContext.request.contextPath}/assets/js/file-input/js/fileinput_locale_zh.js" type="text/javascript"></script>-->
        <script src="${pageContext.request.contextPath}/assets/js/tag/bootstrap-tag.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/tiles.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/demo.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>

        <script>
            $(document).ready(function () {
                $('#photos-upload-input').fileinput({
//                    uploadUrl: '${pageContext.request.contextPath}/photos/upload',
                    allowedFileExtensions: ['jpg', 'png', 'gif']
                });
            });
        </script>
    </body>
</html>
