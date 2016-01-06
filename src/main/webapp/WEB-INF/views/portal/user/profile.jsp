<%-- 
    Document   : profile
    Created on : 2015-12-30, 16:13:52
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur - 更多壁纸，更多分享</title>
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
            <section class="w-f-md">
                <c:if test="${user != null}">
                    <!--头像部分和背景-->
                    <section class="m-t" style="background-image:url(${pageContext.request.contextPath}/assets/images/background7.jpg); background-position: 50% -335px;">
                        <div class="container">
                            <div class="row bg-white-opacity m-t-lg r r-2x">
                                <section class="hbox stretch opacity">
                                    <aside class="aside-lg b-r">
                                        <section class="vbox">
                                            <div class="text-center m-b m-t">
                                                <a href="#" class="thumb-lg">
                                                    <img src="${pageContext.request.contextPath}/assets/images/walldevil-mascot.png">
                                                </a>
                                                <div>
                                                    <div class="h3 m-t-xs m-b-xs">${user.username}</div>
                                                    <small><i class="fa fa-map-marker"></i> 北京, 中国</small>
                                                </div>                
                                            </div>
                                        </section>
                                    </aside>
                                    <aside >

                                    </aside>
                                </section>

                            </div>   
                        </div>
                    </section> 
                    <!--头像部分和背景-->
                    <!--个人用户详细资料-->
                    <section class="m-b m-t-md">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6">
                                    <section class="panel panel-default">
                                        <header class="panel-heading font-bold">人生格言</header>
                                        <div class="panel-body">
                                            <p>${userInfomation.description}</p>
                                        </div>
                                    </section>

                                    <section class="panel panel-default">
                                        <div class="panel-body">
                                            <section class="comment-list block">
                                                <c:forEach items="${userComments}" var="comments">
                                                    <article id="comment-id-1" class="comment-item">
                                                        <a class="pull-left thumb-sm avatar">
                                                            <img src="${pageContext.request.contextPath}/assets/images/user.jpg" class="img-circle" alt="...">
                                                        </a>
                                                        <span class="arrow left"></span>
                                                        <section class="comment-body panel panel-default">
                                                            <header class="panel-heading bg-white">
                                                                <a href="#">${comments.member.username}</a>
                                                                <label class="label bg-info m-l-xs">普通用户</label> 
                                                                <span class="text-muted m-l-sm pull-right">
                                                                    <i class="fa fa-clock-o"></i>
                                                                    ${comments.createDate}
                                                                </span>
                                                            </header>
                                                            <div class="panel-body">
                                                                <div>${comments.comment}.</div>
                                                            </div>
                                                        </section>
                                                    </article>
                                                </c:forEach>
                                                <!-- comment form -->
                                                <article class="comment-item media" id="comment-form">
                                                    <a class="pull-left thumb-sm avatar"><img src="${pageContext.request.contextPath}/assets/images/user.jpg" alt="..."></a>
                                                    <section class="media-body">
                                                        <div class="input-group">
                                                            <input id="user-comment" class="form-control" placeholder="Input your comment here" type="text">
                                                            <span class="input-group-btn">
                                                                <button id="user-comments-post" class="btn btn-primary" type="button">提交</button>
                                                            </span>
                                                        </div>
                                                    </section>
                                                </article>
                                            </section>
                                        </div>
                                    </section>

                                </div>

                                <div class="col-lg-6">
                                    <section class="panel panel-warning">
                                        <header class="panel-heading font-bold">用户信息</header>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="btn-group btn-group-justified">
                                                        <a href="#" class="btn bg-black lter">收藏</a>
                                                        <a href="#" class="btn btn-default">785</a>
                                                    </div>
                                                    <div class="line line-dashed b-b pull-in"></div>
                                                    <div class="btn-group btn-group-justified">
                                                        <a class="btn btn-dark">上传</a>
                                                        <a href="#" class="btn btn-default">130</a>
                                                    </div>
                                                    <div class="line line-dashed b-b pull-in"></div>
                                                    <div class="btn-group btn-group-justified">
                                                        <a class="btn btn-dark">注册时间</a>
                                                        <a class="btn btn-default">1年前</a>
                                                    </div>
                                                    <div class="line line-dashed b-b pull-in"></div>
                                                    <div class="btn-group btn-group-justified">
                                                        <a class="btn btn-dark">最后活动时间</a>
                                                        <a class="btn btn-default">今天</a>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="btn-group btn-group-justified">
                                                        <a href="#" class="btn btn-dark">评价</a>
                                                        <a href="#" class="btn btn-default">406</a>
                                                    </div>
                                                    <div class="line line-dashed b-b pull-in"></div>
                                                    <div class="btn-group btn-group-justified">
                                                        <a href="#" class="btn btn-dark">评论</a>
                                                        <a href="#" class="btn btn-default">453</a>
                                                    </div>
                                                    <div class="line line-dashed b-b pull-in"></div>
                                                    <div class="btn-group btn-group-justified">
                                                        <a href="#" class="btn btn-dark">创建标签数</a>
                                                        <a href="#" class="btn btn-default">432</a>
                                                    </div>
                                                    <div class="line line-dashed b-b pull-in"></div>
                                                    <div class="btn-group btn-group-justified">
                                                        <a href="#" class="btn btn-dark">添加标签数</a>
                                                        <a href="#" class="btn btn-default">453</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                    <section class="panel panel-warning">
                                        <header class="panel-heading font-bold">最近上传</header>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-6 col-sm-4 col-md-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m0.jpg" alt="" class="r r-2x img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m1.jpg" alt="" class="r r-2x img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m2.jpg" alt="" class="r r-2x img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m5.jpg" alt="" class="r r-2x img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-4 col-md-3">
                                                    <div class="item">
                                                        <div class="pos-rlt">
                                                            <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m6.jpg" alt="" class="r r-2x img-full"></a>
                                                        </div>
                                                        <div class="padder-v">
                                                            <a href="#" class="text-ellipsis">Vivamus vel tincidunt libero</a>
                                                            <a href="#" class="text-ellipsis text-xs text-muted">Lauren Taylor</a>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </section>

                                </div><!--right end-->

                            </div>   
                        </div>
                    </section>
                    <!--个人用户详细资料-->
                </c:if>
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

                $("#user-comments-post").click(function () {
                    var _userId = "${user.id}";
                    var _comment = $("#user-comment").val();
                    $.ajax({
                        type: "post",
                        url: "/member/comments/user",
                        data: {userId: _userId, comment: _comment},
                        dataType: "json",
                        success: function (data) {
                            //成功后显示红星
                            //_self.siblings("span").addClass("hide");
                            // _self.siblings("a").removeClass("hide");
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert(errorThrown);
                        }
                    });
                });

            });
    </script>

</html>

