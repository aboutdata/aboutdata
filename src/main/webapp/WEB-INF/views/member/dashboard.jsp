<%-- 
    Document   : profile
    Created on : 2015-8-30, 18:32:26
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
            <section>
                <section class="container scrollable m-b m-t">
                    <section class="hbox stretch">
                        <aside class="aside-lg bg-light lter b-r">
                            <section class="vbox">
                                <section class="scrollable">
                                    <div class="wrapper">
                                        <div class="text-center m-b m-t">
                                            <a href="#" class="thumb-lg avatar">
                                                <img src="${pageContext.request.contextPath}/avatars/${appBean.getCurrentUser().id}?t=${appBean.getCurrentUser().avatarType}&v=2" alt="${appBean.getCurrentUser().username}头像">
                                                <i class="fa fa-edit md b-white bottom"></i>
                                            </a>
                                            <div>
                                                <div class="h3 m-t-xs m-b-xs">${member.username}</div>
                                                <small class="text-muted"><i class="fa fa-map-marker"></i> 中国,北京</small>
                                            </div>                
                                        </div>
                                        <div class="panel wrapper">
                                            <div class="row text-center">
                                                <div class="col-xs-6">
                                                    <a href="${pageContext.request.contextPath}/member/settings/avatar">
                                                        <span class="m-b-xs h4 block"><i class="fa fa-camera"></i></span>
                                                        <small class="text-muted">头像</small>
                                                    </a>
                                                </div>
                                                <div class="col-xs-6">
                                                    <a href="#">
                                                        <span class="m-b-xs h4 block"><i class="fa fa-user"></i></span>
                                                        <small class="text-muted">账户</small>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="btn-group btn-group-justified">
                                            <a href="${pageContext.request.contextPath}/member/settings/account" class="btn btn-primary">
                                                <i class="fa fa-edit"></i> 修改资料
                                            </a>
                                            <a href="${pageContext.request.contextPath}/member/favorite" class="btn btn-success">
                                                <i class="fa fa-star"></i> 收藏列表
                                            </a>
                                        </div>
                                        <div>
                                            <h4 class="text-uc text-xs text-muted">用户描述信息</h4>
                                            <p>${memberInfomation.description}</p>
                                        </div>
                                        <!--                                        <div>    
                                                                                    <h4 class="text-uc text-xs text-muted">我的关注</h4> 
                                                                                    <div class="row row-sm">
                                                                                        <div class="col-xs-6 col-sm-3">
                                                                                            <div class="item">
                                                                                                <div class="pos-rlt">
                                                                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                                                                </div>
                                                                                                <div class="padder-v">
                                                                                                    <a href="#" class="text-ellipsis">Spring rain</a>
                                                                                                    <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-xs-6 col-sm-3">
                                                                                            <div class="item">
                                                                                                <div class="pos-rlt">
                                                                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                                                                </div>
                                                                                                <div class="padder-v">
                                                                                                    <a href="#" class="text-ellipsis">Hope</a>
                                                                                                    <a href="#" class="text-ellipsis text-xs text-muted">Miya</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-xs-6 col-sm-3">
                                                                                            <div class="item">
                                                                                                <div class="pos-rlt">
                                                                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                                                                </div>
                                                                                                <div class="padder-v">
                                                                                                    <a href="#" class="text-ellipsis">Listen wind</a>
                                                                                                    <a href="#" class="text-ellipsis text-xs text-muted">Soyia Jess</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-xs-6 col-sm-3">
                                                                                            <div class="item">
                                                                                                <div class="pos-rlt">
                                                                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                                                                </div>
                                                                                                <div class="padder-v">
                                                                                                    <a href="#" class="text-ellipsis">Breaking me</a>
                                                                                                    <a href="#" class="text-ellipsis text-xs text-muted">Pett JA</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-xs-6 col-sm-3">
                                                                                            <div class="item">
                                                                                                <div class="pos-rlt">
                                                                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                                                                </div>
                                                                                                <div class="padder-v">
                                                                                                    <a href="#" class="text-ellipsis">Nothing</a>
                                                                                                    <a href="#" class="text-ellipsis text-xs text-muted">Willion</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-xs-6 col-sm-3">
                                                                                            <div class="item">
                                                                                                <div class="pos-rlt">
                                                                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                                                                </div>
                                                                                                <div class="padder-v">
                                                                                                    <a href="#" class="text-ellipsis">Panda Style</a>
                                                                                                    <a href="#" class="text-ellipsis text-xs text-muted">Lionie</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-xs-6 col-sm-3">
                                                                                            <div class="item">
                                                                                                <div class="pos-rlt">
                                                                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/avatars.jpg" alt="" class="img-circle img-full"></a>
                                                                                                </div>
                                                                                                <div class="padder-v">
                                                                                                    <a href="#" class="text-ellipsis">Hook Me</a>
                                                                                                    <a href="#" class="text-ellipsis text-xs text-muted">Gossi</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-xs-6 col-sm-3">
                                                                                            <div class="item">
                                                                                                <div class="pos-rlt">
                                                                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/user.jpg" alt="" class="img-circle img-full"></a>
                                                                                                </div>
                                                                                                <div class="padder-v">
                                                                                                    <a href="#" class="text-ellipsis">Tempered Song</a>
                                                                                                    <a href="#" class="text-ellipsis text-xs text-muted">Miaow</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>-->
                                    </div>
                                </section>
                            </section>
                        </aside>
                        <aside class="bg-white">
                            <section class="vbox">
                                <header class="header bg-light lt">
                                    <ul class="nav nav-tabs nav-white">
                                        <li class="active"><a href="#activity" data-toggle="tab">最新动态</a></li>
                                    </ul>
                                </header>
                                <section class="scrollable">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="activity">
                                            <ul class="list-group no-radius m-b-none m-t-n-xxs list-group-lg no-border">
                                                <li class="list-group-item">
                                                    <a href="#" class="thumb-sm pull-left m-r-sm">
                                                        <img src="${pageContext.request.contextPath}/assets/images/user.jpg" class="img-circle">
                                                    </a>
                                                    <a href="#" class="clear">
                                                        <small class="pull-right">3 分钟以前</small>
                                                        <strong class="block">Lockbur</strong>
                                                        <small>这只是一个初步测试功能.</small>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </section>
                            </section>
                        </aside>
                    </section>
                </section>
            </section>
            <footer class="footer bg-black dker">
                <jsp:include page="/WEB-INF/views/portal/common/footer.jsp"/>
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
            });
    </script>
</html>

