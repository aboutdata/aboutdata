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
                <section class="hbox">
                    <aside class="aside-md b-r b-black">
                        <section class="scrollable wrapper">
                            <h4 class="font-thin m-b">颜色</h4>
                            <div>
                                <c:if test="${empty colors}">
                                    <a href="#" class="btn btn-block btn-primary"></a>
                                    <a href="#" class="btn btn-block btn-success"></a>
                                    <a href="#" class="btn btn-block btn-info"></a>
                                    <a href="#" class="btn btn-block btn-warning"></a>
                                    <a href="#" class="btn btn-block btn-danger"></a>
                                    <a href="#" class="btn btn-block btn-dark"></a>
                                </c:if>
                                <c:if test="${not empty colors}">
                                    <c:forEach items="${colors}" var="color">
                                        <a href="#" class="btn btn-block" style="background-color: ${color.color}"></a>
                                    </c:forEach>
                                </c:if>
                            </div>
                            <h4 class="font-thin m-b">属性</h4>
                            <div class="row">
                                <div class="col-xs-6 text-right">栏目</div>
                                <div class="col-xs-6 text-left">Variables</div>

                                <div class="col-xs-6 text-right">分辨率</div>
                                <div class="col-xs-6 text-left">${photos.width}x${photos.height}</div>

                                <div class="col-xs-6 text-right">大小</div>
                                <div class="col-xs-6 text-left">${photos.size} KB</div>

                                <div class="col-xs-6 text-right">类型</div>
                                <div class="col-xs-6 text-left">image/jpeg</div>

                                <div class="col-xs-6 text-right">上传者</div>
                                <div class="col-xs-6 text-left"><a>${photos.member.username}</a></div>

                                <div class="col-xs-6 text-right">上传时间</div>
                                <div class="col-xs-6 text-left">${photos.createDate}</div>

                                <div class="col-xs-6 text-right">查看次数</div>
                                <div class="col-xs-6 text-left">${photos.order}</div>

                                <div class="col-xs-6 text-right">评论数</div>
                                <div class="col-xs-6 text-left">1</div>

                                <div class="col-xs-6 text-right">下载次数</div>
                                <div class="col-xs-6 text-left">1</div>
                            </div>
                            <!-- Properties end// -->
                            <h4 class="font-thin m-b">标签</h4>
                            <div class="m-b-lg l-h-2x">
                                <c:if test="${appBean.getCurrentUser() != null}">
                                    <div class="input-group">
                                        <input type="text" id="typeahead"class="form-control bg-dark b-dark" placeholder="添加标签">
                                        <span class="input-group-btn">
                                            <button class="btn btn-dark dker" id="add-tags-btn" data-photos-id="${photos.id}" type="button">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </span>
                                    </div>
                                </c:if>
                                <div id="tags-content">

                                    <c:forEach items="${photos.tags}" var="tag">
                                        <div class="btn-group">
                                            <a href="${pageContext.request.contextPath}/tags/s/${tag.name}" class="btn btn-dark btn-xs">${tag.name}</a>
                                            <c:if test="${appBean.getCurrentUser() != null}">
                                                <a href="#" class="btn btn-danger btn-xs" data-provider="remove-tag" data-photos-id="${photos.id}" data-tag-id="${tag.id}">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </c:if>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>	
                        </section>
                    </aside>
                    <!--主题类容-->
                    <section class="wrapper">    
                        <h4 class="font-thin m-b">壁纸原图</h4>
                        <div class="row wrapper r r-2x ">
                            <a href="${photos.storageHost}/${photos.large}" target="_blank" >
                                <img src="${photos.storageHost}/${photos.large}" 
                                     alt="<c:forEach items="${photos.tags}" var="tag">${tag.name} </c:forEach>"
                                         class="r r-2x img-full" style="cursor: zoom-in"/>
                                </a>
                            </div>
                            <div>
                                <h4 class="font-thin m-b">描述信息</h4>
                                <p> ${photos.description}</p>
                        </div>
                    </section>  <!--main end-->

                </section>    
            </section>
            <!--main page //END-->
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


    <script src="${appBean.assetsUrl}/assets/js/bootstrap/typeahead/bootstrap3-typeahead.min.js"></script>
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
    <script type="text/javascript">
            $(document).ready(function () {
                var $input = $('#typeahead');
                $input.typeahead({
                    items: 20,
                    source: function (query, process) {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/tags/source",
                            data: {name: query},
                            type: "GET",
                            dataType: 'json',
                            success: function (result) {
                                console.log(result);
                                process(result);
                            },
                            error: function (er) {

                            }
                        });
                    }
                });//typeahead end
                //addtags 添加标签操作
        <c:if test="${appBean.getCurrentUser() != null}">
                $("#add-tags-btn").click(function () {
                    var $that = $(this);
                    $that.html("<i class=\"fa fa-spinner fa fa-spin fa\"></i>");
                    var _id = $that.data("photos-id");
                    var tagName = $input.val();
                    $.ajax({
                        url: "${pageContext.request.contextPath}/member/photos/addTags",
                        data: {id: _id, tagName: tagName},
                        type: "POST",
                        dataType: 'json',
                        success: function (result) {
                            $input.val("");
                            $that.html("<i class=\"fa fa-plus\"></i>");
                            $("#tags-content").append("<lable class=\"label bg-primary\">" + tagName + "</lable> ")
                            console.log(result);
                        },
                        error: function (er) {
                            console.log(er);
                        }
                    });
                }); //addtags btn end

                //移除标签操作
                $("a[data-provider=remove-tag]").click(function () {
                    var _self = $(this);

                    var _photos_id = _self.data("photos-id");
                    var _tag_id = _self.data("tag-id");

                    $.ajax({
                        url: "${pageContext.request.contextPath}/member/photos/removeTags",
                        data: {id: _photos_id, tagId: _tag_id},
                        type: "POST",
                        dataType: 'json',
                        success: function (result) {
                            _self.parent("div").hide();
                            console.log(result);
                        },
                        error: function (er) {
                            console.log(er);
                        }
                    });
                    return false;//阻止链接跳转
                });//remove tag end
        </c:if>
            });
    </script>
</html>

