<%-- 
    Document   : list
    Created on : 2015-12-3, 10:48:39
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8" />
        <title>Lockbur-更多壁纸，更多分享</title>
        <jsp:include page="/WEB-INF/views/portal/common/head_and_css.jsp"/>
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/portal/common/navbar.jsp"/>
        <section class="vbox">
            <section>
                <section class="container scrollable m-b m-t">
                    <section class="hbox stretch">
                        <aside class="bg-white">
                            <section class="panel panel-default">
                                <header class="panel-heading bg-light">
                                    <ul class="nav nav-justified">
                                        <li class="active">
                                            <a href="#">
                                                <span class="m-b-xs h4 block"> 
                                                    <i class="fa fa-user text-muted"></i>
                                                </span>
                                                <span class="text-muted">消息中心</span>
                                            </a>
                                        </li>
                                    </ul>
                                </header>
                                <div class="panel-body">
                                    <div class="tab-pane" id="home">
                                        <!-- .comment-list -->
                                        <section class="comment-list block">
                                            <c:if test="${pages.content!= null && fn:length(pages.content) > 0}">
                                                <c:forEach items="${pages.content}" var="message">
                                                    <article id="comment-id-1" class="comment-item">
                                                        <a class="pull-left thumb-sm avatar">
                                                            <img src="${pageContext.request.contextPath}/assets/images/m0.jpg" class="img-circle" alt="...">
                                                        </a>
                                                        <span class="arrow left"></span>
                                                        <section class="comment-body panel panel-default">
                                                            <header class="panel-heading bg-white">
                                                                <a href="#">${message.title}</a>
                                                                <label class="label bg-info m-l-xs">${message.receiver.username}</label> 
                                                                <span class="text-muted m-l-sm pull-right">
                                                                    <i class="fa fa-clock-o"></i>
                                                                    ${message.createDate}
                                                                </span>
                                                            </header>
                                                            <div class="panel-body">
                                                                <div> ${message.content}</div>
                                                            </div>
                                                        </section>
                                                    </article>
                                                </c:forEach>
                                                <article class="comment-item media" id="comment-form">
                                                    <a class="pull-left thumb-sm avatar"><img src="${pageContext.request.contextPath}/assets/images/m1.jpg" alt="..."></a>
                                                    <section class="media-body">
                                                        <form action="#" class="m-b-none">
                                                            <div class="input-group">
                                                                <input class="form-control" placeholder="如有异议,请说明原因" type="text">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-primary" type="button">回复</button>
                                                                </span>
                                                            </div>
                                                        </form>
                                                    </section>
                                                </article>
                                            </c:if>
                                            <c:if test="${pages.content== null || fn:length(pages.content) == 0}">
                                                <article class="comment-item media" id="comment-form">
                                                    <p>暂时没有消息!</p>
                                                </article>
                                            </c:if>
                                        </section>
                                        <!-- / .comment-list -->
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
    <!-- App -->
    <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
</html>


