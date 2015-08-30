<%-- 
    Document   : wallpaper
    Created on : 2015-8-22, 11:02:53
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" class="app">
    <head>  
        <meta charset="utf-8" />
        <title>Musik | Web Application</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/jPlayer/jplayer.flat.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/tag/css/bootstrap-tag.css" type="text/css" />
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
                            <section class="vbox">
                                <section class="scrollable wrapper-lg">
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <div class="blog-post">                   
                                                <div class="post-item">
                                                    <div class="post-media">
                                                        <img src="${photos.medium}" class="img-full">
                                                </div>
                                                <div class="caption wrapper-lg">
                                                    <a href="#" class="thumb pull-left avatar">
                                                        <img src="${pageContext.request.contextPath}/assets/images/a4.png" alt="...">
                                                        <i class="on md b-white bottom"></i>
                                                    </a>

                                                    <h2 class="post-title"> ${photos.title}</h2>
                                                    <small class="block">
                                                        <i class="icon-pointer"></i>
                                                        <span class="text-dark">neuxs 4 by LG</span>
                                                    </small>
                                                    <div class="post-sum">
                                                        <p><br>
                                                            Phasellus at ultricies neque, quis malesuada augue. Donec eleifend condimentum nisl eu consectetur. Integer eleifend, nisl venenatis consequat iaculis, lectus arcu malesuada sem, dapibus porta quam lacus eu neque.</p>
                                                    </div>
                                                    <div class="line line-lg"></div>
                                                    <div class="text-muted">
                                                        <i class="fa fa-user icon-muted"></i><a href="#" class="m-r-sm text-info"> ${photos.member.username}</a>
                                                        <i class="fa fa-clock-o icon-muted"></i>${photos.createDate}
                                                        <a href="#" class="m-l-sm">
                                                            <i class="fa fa-comment-o icon-muted"></i>
                                                            <span class="badge badge-sm up bg-danger count" style="display: inline-block;">3</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                        <h4 class="m-t-lg m-b">3 Comments</h4>
                                        <section class="comment-list block">
                                            <article id="comment-id-1" class="comment-item">
                                                <a class="pull-left thumb-sm">
                                                    <img src="${pageContext.request.contextPath}/assets/images/a0.png" class="img-circle">
                                                </a>
                                                <section class="comment-body m-b">
                                                    <header>
                                                        <a href="#"><strong>John smith</strong></a>
                                                        <label class="label bg-info m-l-xs">Editor</label> 
                                                        <span class="text-muted text-xs block m-t-xs">
                                                            24 minutes ago
                                                        </span>
                                                    </header>
                                                    <div class="m-t-sm">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id neque quam. Aliquam sollicitudin venenatis ipsum ac feugiat. Vestibulum.</div>
                                                </section>
                                            </article>
                                            <!-- .comment-reply -->
                                            <article id="comment-id-2" class="comment-item comment-reply">
                                                <a class="pull-left thumb-sm">
                                                    <img src="${pageContext.request.contextPath}/assets/images/a1.png" class="img-circle">
                                                </a>
                                                <section class="comment-body m-b">
                                                    <header>
                                                        <a href="#"><strong>John smith</strong></a>
                                                        <label class="label bg-dark m-l-xs">Admin</label> 
                                                        <span class="text-muted text-xs block m-t-xs">
                                                            26 minutes ago
                                                        </span>
                                                    </header>
                                                    <div class="m-t-sm">Lorem ipsum dolor sit amet, consecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</div>
                                                </section>
                                            </article>
                                            <!-- / .comment-reply -->
                                            <article id="comment-id-2" class="comment-item">
                                                <a class="pull-left thumb-sm">
                                                    <img src="${pageContext.request.contextPath}/assets/images/a2.png" class="img-circle">
                                                </a>
                                                <section class="comment-body m-b">
                                                    <header>
                                                        <a href="#"><strong>John smith</strong></a>
                                                        <label class="label bg-dark m-l-xs">Admin</label> 
                                                        <span class="text-muted text-xs block m-t-xs">
                                                            26 minutes ago
                                                        </span>
                                                    </header>
                                                    <blockquote class="m-t">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                                                        <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                                                    </blockquote>
                                                    <div class="m-t-sm">Lorem ipsum dolor sit amet, consecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</div>
                                                </section>
                                            </article>
                                        </section>
                                        <h4 class="m-t-lg m-b">Leave a comment</h4>
                                        <form>
                                            <div class="form-group pull-in clearfix">
                                                <div class="col-sm-6">
                                                    <label>Your name</label>
                                                    <input type="text" class="form-control" placeholder="Name">
                                                </div>
                                                <div class="col-sm-6">
                                                    <label >Email</label>
                                                    <input type="email" class="form-control" placeholder="Enter email">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Comment</label>
                                                <textarea class="form-control" rows="5" placeholder="Type your comment"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-success">Submit comment</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-sm-3">
                                        <section class="panel panel-default pos-rlt clearfix">
                                            <header class="panel-heading">
                                                <ul class="nav nav-pills pull-right">
                                                    <li>
                                                        <a href="#" data-id="${photos.id}" id="save-tags-btn" class="text-muted">
                                                            <i class="fa fa-save text"></i>
                                                            <span class="text">保存</span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="panel-toggle text-muted"><i class="fa fa-caret-down text-active"></i><i class="fa fa-caret-up text"></i></a>
                                                    </li>
                                                </ul>
                                                标签
                                            </header>
                                            <div class="panel-body clearfix">
                                                <div class="inline">
                                                    <input type="text" name="tags" id="form-field-tags" value="${tagString}" placeholder="添加新标签 ..." />
                                                </div>
                                            </div>
                                        </section>
                                        <c:forEach items="${photos.tags}" var="tag">
                                            <a href="#" class="label bg-primary">${tag.name}</a> 
                                        </c:forEach>
                                        <h5 class="font-bold">Recent Posts</h5>
                                        <div>
                                            <article class="media">
                                                <a class="pull-left thumb thumb-wrapper m-t-xs">
                                                    <img src="${pageContext.request.contextPath}/assets/images/m1.jpg">
                                                </a>
                                                <div class="media-body">                        
                                                    <a href="#" class="font-semibold">Bootstrap 3: What you need to know</a>
                                                    <div class="text-xs block m-t-xs"><a href="#">Travel</a> 2 minutes ago</div>
                                                </div>
                                            </article>
                                            <div class="line"></div>
                                            <article class="media m-t-none">
                                                <a class="pull-left thumb thumb-wrapper m-t-xs">
                                                    <img src="${pageContext.request.contextPath}/assets/images/m2.jpg">
                                                </a>
                                                <div class="media-body">                        
                                                    <a href="#" class="font-semibold">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
                                                    <div class="text-xs block m-t-xs"><a href="#">Design</a> 2 hours ago</div>
                                                </div>
                                            </article>
                                            <div class="line"></div>
                                            <article class="media m-t-none">
                                                <a class="pull-left thumb thumb-wrapper m-t-xs">
                                                    <img src="${pageContext.request.contextPath}/assets/images/m3.jpg">
                                                </a>
                                                <div class="media-body">                        
                                                    <a href="#" class="font-semibold">Sed diam nonummy nibh euismod tincidunt ut laoreet</a>
                                                    <div class="text-xs block m-t-xs"><a href="#">MFC</a> 1 week ago</div>
                                                </div>
                                            </article>
                                        </div>
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
                            <h3 class="m-t-none m-b">创建新相册</h3>
                            <p>创建新相册更好管理你的图片.</p>
                            <div class="form-group">
                                <label>相册名称</label>
                                <input type="email" class="form-control" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-success text-uc"><strong>保存相册</strong></button>
                            </div>                
                        </div>          
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div>

        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/elements.typeahead.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/tag/js/bootstrap-tag.min.js"></script>
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
                var tag_input = $('#form-field-tags');
                try {
                    tag_input.tag(
                            {
                                placeholder: tag_input.attr('placeholder'),
                                //enable typeahead by specifying the source array
                                //source: mycars //defined in ace.js >> ace.enable_search_ahead
                                //or fetch data from database, fetch those that match "query"
                                source: function (query, process) {
                                    $.ajax({
                                        url: '${pageContext.request.contextPath}/tags/source?name=' + encodeURIComponent(query)
                                    }).done(function (result_items) {
                                        process(result_items);
                                    });
                                }

                            }
                    );
                }
                catch (e) {

                }
                $("#save-tags-btn").click(function () {
                    var id = $(this).data("id");
                    $.ajax({
                        type: "POST",
                        url: '${pageContext.request.contextPath}/member/photos/addTags',
                        data: {id: id, tags: tag_input.val()}
                    }).done(function (data) {
                        alert("添加成功");
                        location.reload();
                    });
                });

            });
        </script>
    </body>
</html>
