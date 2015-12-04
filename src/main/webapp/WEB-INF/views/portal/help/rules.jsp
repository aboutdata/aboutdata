<%-- 
    Document   : rules
    Created on : 2015-10-19, 11:19:17
    Author     : Administrator
--%>
<%-- 
    Document   : team
    Created on : 2015-10-19, 11:37:09
    Author     : Administrator
--%>
<%-- 
    Document   : contact
    Created on : 2015-11-1, 15:48:00
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            <!---header-->
            <%--<jsp:include page="/WEB-INF/views/portal/common/header.jsp"/>--%>
            <!---header //END-->
            <section class="w-f-md">
                <section class="container scrollable padder-v">
                    <section class="hbox stretch">
                        <!-- .aside -->
                        <aside class="aside b-r b-dark">
                            <section class="vbox">
                                <header class="header b-b navbar">
                                    <a class="btn btn-link pull-right visible-xs" data-toggle="class:show" data-target=".nav-primary">
                                        <i class="fa fa-bars"></i>
                                    </a>
                                    <a href="${pageContext.request.contextPath}/help" class="navbar-brand">帮助中心</a>
                                </header>
                                <section class="scrollable">
                                    <nav class="nav-primary hidden-xs nav-docs">
                                        <ul class="nav">
                                            <li><a href="${pageContext.request.contextPath}/help/rules">使用规则</a></li>
                                            <li><a href="${pageContext.request.contextPath}/help/contact">联系我们</a></li>
                                            <li><a href="#">服务条款</a></li>
                                            <li><a href="${pageContext.request.contextPath}/help/team">团队成员</a></li>
                                            <li><a href="${pageContext.request.contextPath}/help/join">加入我们</a></li>
                                        </ul>
                                    </nav>
                                </section>
                            </section>
                        </aside>
                        <!-- /.aside -->
                        <section id="content">
                            <section class="vbox">
                                <section class="scrollable">
                                    <section  id="docs">
                                        <div class="clearfix padder">
                                            <h3 id="arch">使用规则</h3>
                                            <h3 class="text-success">图片上传规则</h3>
                                            <h3 class="text-success">网站使用规则</h3>
                                            <h3 class="text-success">评论规则</h3>
                                            <h3 class="text-success">论坛使用规则</h3>
                                        </div>
                                    </section>
                                </section>
                            </section>
                        </section>
                    </section>         
                </section>    
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
    <script type="text/javascript">
            $(document).ready(function () {
                //背景图片
                $('body').vegas({
                    timer: false,
                    slides: [
                        {src: '${appBean.assetsUrl}/assets/images/background4.jpg'}
                    ]
                });
            });
    </script>
</html>