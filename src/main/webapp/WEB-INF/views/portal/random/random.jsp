<%-- 
    Document   : random
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
        <title>随机显示  - 更多壁纸，更多分享</title>
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
            <!--main page-->
            <section>
                <section id="waterfall"  class="container scrollable padder-lg">
                    <h5 class="font-thin m-b m-t text-white">随机显示</h5>
                    <div class="row row-sm">
                        <c:forEach items="${list}" var="photos" varStatus="idx">
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
                                        <a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><img src="${photos.storageHost}/${photos.thumbnail}" alt="" class="r r- img-full"></a>
                                    </div>
                                    <div class="wrapper-sm" ></div>
                                </div>
                            </div>
                            <!--gallery end first// old-->
                        </c:forEach>
                        <div class="line line-dashed b-b line-lg pull-in"></div>
                    </div>

                    <div class="row row-sm">
                        <div class="loading text-center">

                        </div>
                        <div id="navigation">
                            <a href="${pageContext.request.contextPath}/random/next?page=1"></a>
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
        <script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.infinitescroll.min.js" type="text/javascript"></script>
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
                        {src: '${pageContext.request.contextPath}/assets/images/background1.jpg'}
                    ]
                });
                $('body').infinitescroll({
                    navSelector: "#navigation", //导航的选择器，会被隐藏
                    nextSelector: "#navigation a", //包含下一页链接的选择器
                    itemSelector: ".row", //你将要取回的选项(内容块)
                    debug: true, //启用调试信息
                    animate: true, //当有新数据加载进来的时候，页面是否有动画效果，默认没有
                    extraScrollPx: 150, //滚动条距离底部多少像素的时候开始加载，默认150
                    bufferPx: 40, //载入信息的显示时间，时间越大，载入信息显示时间越短
                    //maxPage: ${pages.totalPages},//公有多少页
                    errorCallback: function () {
                        alert('error');
                    }, //当出错的时候，比如404页面的时候执行的函数
                    localMode: true, //是否允许载入具有相同函数的页面，默认为false
                    dataType: 'html', //可以是json
                    loading: {
                        msgText: "",
                        finishedMsg: '没有新数据了...',
                        img: "${pageContext.request.contextPath}/assets/images/loading.gif",
                        selector: '.loading' // 显示loading信息的div
                    }
                }, function (newElems) {
                    //程序执行完的回调函数
                    var $newElems = $(newElems);
                    $('#waterfall').append($newElems);
                });

                $("img").error(function () {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });
            });
        </script>

    </body>
</html>

