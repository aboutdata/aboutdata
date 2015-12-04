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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/summernote/summernote.css">
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
                                            <a href="#" class="thumb-lg">
                                                <img src="${pageContext.request.contextPath}/avatars/${appBean.getCurrentUser().id}?t=${appBean.getCurrentUser().avatarType}&v=2" class="img-circle" alt="${appBean.getCurrentUser().username}头像">
                                            </a>
                                            <div>
                                                <div class="h3 m-t-xs m-b-xs">${member.username}</div>
                                                <small class="text-muted"><i class="fa fa-map-marker"></i> 中国,北京</small>
                                            </div>                
                                        </div>
                                        <div class="panel wrapper">
                                            <div class="row text-center">
                                                <div class="col-xs-6">
                                                    <a href="#">
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
                                            <a href="${pageContext.request.contextPath}/member/favorite" class="btn btn-success"><i class="fa fa-star"></i> 收藏列表</a>
                                        </div>
                                        <div>
                                            <h4 class="text-uc text-xs text-muted">用户描述信息</h4>
                                            <p>${memberInfomation.description}</p>
                                        </div>
                                    </div>
                                </section>
                            </section>
                        </aside>
                        <aside class="bg-white">
                            <section class="panel panel-default">
                                <header class="panel-heading bg-light">
                                    <ul class="nav nav-justified">
                                        <li class="active">
                                            <a href="${pageContext.request.contextPath}/member/settings/profile">
                                                <span class="m-b-xs h4 block"> 
                                                    <i class="fa fa-user text-muted"></i>
                                                </span>
                                                <span class="text-muted">个人资料</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/member/settings/avatar" class="bg-light">
                                                <span class="m-b-xs h4 block"> 
                                                    <i class="icon-eyeglasses"></i>
                                                </span>
                                                <span class="text-muted">头像修改</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/member/settings/browsing">
                                                <span class="m-b-xs h4 block"> 
                                                    <i class="fa fa-cog text-muted"></i>
                                                </span>
                                                <span class="text-muted">个人设置</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/member/settings/account" class="bg-light">
                                                <span class="m-b-xs h4 block"> 
                                                    <i class="fa fa-css3"></i>
                                                </span>
                                                <span class="text-muted">账户</span>
                                            </a>
                                        </li>
                                    </ul>
                                </header>
                                <div class="panel-body">
                                    <div class="tab-pane" id="home">

                                        <section class="panel panel-default">
                                            <header class="panel-heading">
                                                <strong>个人资料(Profile)</strong>
                                            </header>
                                            <form class="form-horizontal" action="${pageContext.request.contextPath}/member/settings/profile" method="post">
                                                <div class="panel-body">

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">背景图片</label>
                                                        <div class="col-sm-6">
                                                            <select data-required="true" id="thumbsPer" name="backgroundId" class="form-control">
                                                                <option value="background1">background1</option>
                                                                <option value="background2">background2</option>
                                                                <option value="background3">background3</option>
                                                                <option value="background4">background4</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="line line-dashed b-b line-lg pull-in"></div>
                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">个人描述信息</label>
                                                        <div class="col-sm-10">
                                                            <textarea id="summernote" name="description">${memberInfomation.description}</textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                <footer class="panel-footer text-right bg-light lter">
                                                    <button type="submit" class="btn btn-success btn-s-xs">保存</button>
                                                </footer>
                                            </form>
                                        </section>
                                    </div>
                                </div>
                                </div>
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
    <script src="${appBean.assetsUrl}/assets/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <!--<script src="${appBean.assetsUrl}/assets/js/bootstrap/bootstrap.min.js"></script>-->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="${appBean.assetsUrl}/assets/js/vegas/vegas.js"></script>
    <!-- summernote -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/summernote/summernote.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/summernote/summernote-zh-CN.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script type="text/javascript">
            $(document).ready(function () {
                $("#summernote").summernote({
                    height: 150,
                    lang: 'zh-CN',
                    onImageUpload: function (files, editor, welEditable) {
                        //个人描述信息不能上传图片
                        //sendFile(files[0], editor, welEditable);
                    }
                });
                // Upload image in the editor summernote 
                function sendFile(file, editor, welEditable) {
                    data = new FormData();
                    data.append("file", file);
                    $.ajax({
                        data: data,
                        type: "POST",
                        url: 'uploadimage',
                        cache: false,
                        contentType: false,
                        processData: false,
                        success: function (response) {
                            if (/^images/.test(response)) {
                                editor.insertImage(welEditable, response);
                                $("#resp").hide();
                            } else {
                                $("#resp").text(response).show();
                            }
                        }
                    });
                }
            });
    </script>
</html>

