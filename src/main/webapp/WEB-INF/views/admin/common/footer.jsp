<%-- 
    Document   : footer 
    描述:共有的js组件  jquey和boostrap ace的
    Created on : 2015-5-22, 21:03:31
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='${pageContext.request.contextPath}/resources/js/jquery.min.js'>" + "<" + "/script>");</script>
<!-- <![endif]-->
<!--[if IE]>
<script type="text/javascript">
window.jQuery || document.write("<script src='${pageContext.request.contextPath}/resources/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement)
        document.write("<script src='${pageContext.request.contextPath}/resources/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");</script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<!-- ace scripts -->
<script src="${pageContext.request.contextPath}/resources/js/ace-elements.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ace.min.js"></script>

<!--这是用来控制菜单选中后高亮的
<script src="${pageContext.request.contextPath}/resources/js/mycommon/common.js" type="text/javascript"></script>-->
