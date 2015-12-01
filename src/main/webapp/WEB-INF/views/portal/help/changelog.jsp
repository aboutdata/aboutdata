<%-- 
    Document   : changelog
    Created on : 2015-11-19, 15:43:27
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
    <body class="">
        <section class="hbox stretch">
            <!-- .aside -->
            <aside class="bg-light aside b-r animated fadeInLeftBig">
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
                                <li class="dropdown-header b-b b-light"><em>系统更新日志</em></li>
                            </ul>
                        </nav>
                    </section>
                </section>
            </aside>
            <!-- /.aside -->
            <section id="content">
                <section class="vbox">
                    <section class="scrollable bg-light lter" data-spy="scroll" data-target=".nav-primary">
                        <section  id="docs">
                            <div class="clearfix padder">
                                <h3 id="arch">概述</h3>
                                <h5 class="m-t-lg"><strong><a href="http://lockbur.com/" target="_blank">http://lockbur.com</a></strong>是我业余时间开发设计,目前来说,有很多计划和功能都无法达到预期,SO 如果您认为您能帮助到我们,请与我们联系,我们也会非常其期待您加入.</h5>
                                <h3 class="text-success">网站所使用的技术架构</h3>
                                <p id="bootstrap">该网站是使用java语言开发,使用mysql社区版数据库作为系统的数据持久化存储系统</p>

                                <p id="bootstrap">2015年12月 更新内容</p>
                                <ul class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">1.添加用户投稿(上传图片)</span>
                                        </div>
                                    </li>
                                </ul>
                                <p id="bootstrap">2015年11月 更新内容</p>
                                <ul class="list-group list-group-lg no-radius no-border no-bg m-t-n-xxs m-b-none auto">
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">6、使用新浪微博登录(账户审核中...).</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">5、完成使用GITHUB登录.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">4、使用sribe-java来做第三方登录.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">3、用户登陆可以为wallpaper添加自定义标签.</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">2、添加标签展示功能</span>
                                        </div>
                                    </li>
                                    <li class="list-group-item">
                                        <div class="clear text-ellipsis">
                                            <span class="text-muted">1、添加搜索引擎,修改分词工具,搜索结果更准确.</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </section>
                    </section>
                </section>
            </section>
        </section>
        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.js"></script>
        <!-- App -->
        <script src="js/app.plugin.js"></script>
        <script src="js/app.js"></script>  
    </body>
</html>
