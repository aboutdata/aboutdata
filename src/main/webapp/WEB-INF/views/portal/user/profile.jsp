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
        <meta property="qc:admins" content="001022565332526375" />
        <meta property="wb:webmaster" content="b4ce7bb18f09c6bc"/>
        <meta name="baidu-site-verification" content="bB5uKKGWVi" />
        <meta name="msvalidate.01" content="1E5396A70FFDF1DD629CEAAD96CCEE15" />
        <meta name="alexaVerifyID" content="wdV1JUI4A1-05aTdniAVHICFPMI"/>
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
                <!--头像部分和背景-->
                <section class="bg-black dk m-t">
                    <div class="container">
                        <div class="row m-t-lg">
                            <div class="bg-white" style="height:240px;"></div>
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
                                        <p>
                                            solr4.3版本出了，支持分片拆分功能，就是可以把一个分片切分成两个小分片。比如shard1，切分后就变成shard1_0和shard1_1，以后对shard1的索引和搜索操作会路由到这两个分片。
                                        </p>
                                    </div>
                                </section>

                                <section class="panel panel-default">
                                    <header class="panel-heading font-bold">给我留言</header>
                                    <div class="panel-body">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label class="col-sm-1 control-label">留言信息</label>
                                                <textarea cols="50" rows="5" class="col-sm-8"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-lg-offset-1 col-lg-10">
                                                    <button type="submit" class="btn btn-sm btn-default">留言提交</button>
                                                </div>
                                            </div>
                                        </form>
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
                                                    <a href="#" class="btn btn-dark">上传</a>
                                                    <a href="#" class="btn btn-default">130</a>
                                                </div>
                                                <div class="line line-dashed b-b pull-in"></div>
                                                <div class="btn-group btn-group-justified">
                                                    <a href="#" class="btn btn-dark">注册时间</a>
                                                    <a href="#" class="btn btn-default">1年前</a>
                                                </div>
                                                <div class="line line-dashed b-b pull-in"></div>
                                                <div class="btn-group btn-group-justified">
                                                    <a href="#" class="btn btn-dark">Left</a>
                                                    <a href="#" class="btn btn-default">Middle</a>
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
                            </div>

                        </div>   
                    </div>
                </section>
                <!--个人用户详细资料-->
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

            });
    </script>

</html>

