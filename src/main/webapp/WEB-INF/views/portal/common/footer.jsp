<%-- 
    Document   : footer
    Created on : 2015-11-17, 21:26:47
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
    <div class="row">
        <div class="col-xs-6 col-sm-4 col-md-3">
            <h4>网站介绍</h4>
            <p>
                <a href="${pageContext.request.contextPath}/tags" target="_blank">标签</a><br>
                <a href="${pageContext.request.contextPath}/help" target="_blank">帮助中心</a><br>
                <a href="${pageContext.request.contextPath}/help/join" target="_blank">加入我们</a><br>
                <a href="${pageContext.request.contextPath}/help/changelog" target="_blank">更新日志</a><br>
                #路线图<br>
                所有图片同步于<a href="http://alpha.wallhaven.cc/" target="_blank">alpha.wallhaven.cc</a><br>
            </p>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-3">
            <h4>联系我</h4>
            <p>
                未知(X)<br>
                北京市 中国<br>
                版权2015©lockbur.com<br>
                京ICP备15054053号<br>
                电话: 13661014724<br>
                Email: 2900196090#qq.com OR wangko27#gmail.com<br>
            </p>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-3">
            <h4>微信关注我</h4>
            <p>
                <a class="thumb-lg m-t-xs">
                    <img src="${pageContext.request.contextPath}/assets/images/weixin.png">
                </a>
            </p>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-3">
            <h4>友情链接</h4>
            <p>
                <a href="http://github.com/lockbur" target="_blank">
                    <i class="fa fa-github"></i> GitHub Fork Me
                </a>
            </p>
            <p>
                <a href="http://www.userinterface.com.cn" target="_blank">
                    <i class="fa fa-hand-o-right"></i> 设计师网址导航    
                </a>
            </p>
        </div>
    </div>
</div>
