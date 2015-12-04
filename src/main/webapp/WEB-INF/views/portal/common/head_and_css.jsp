<%-- 
    Document   : head_and_css
    Created on : 2015-11-2, 9:35:17
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="Lockbur旨在为设计人员提供更高质量壁纸或者桌面壁纸,同时也提供原画设计作品分享!" />
<meta name="keywords" content="高清壁纸,壁纸,高清背景,背景,原画,桌面壁纸,最靠谱的图片分享网站,lockbur,lockbur.com,www.lockbur.com,wallbase,wallhaven,best wallpapers,best wallpaper site,iphone wallpaper,android wallpaper,mobile wallpaper,free wallpaper hd,backgrounds,desktop wallpaper,widescreen"/>
<c:choose>
    <c:when test="${appBean.systemConfig.developMode}">
        <!--<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/vegas/vegas.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css" type="text/css" />  
    </c:when>
    <c:otherwise>
        <!--生产模式 使用css和常用js直接走nginx-->
        <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <!--<link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/bootstrap.min.css" type="text/css" />-->
        <link rel="stylesheet" href="${appBean.assetsUrl}/assets/js/vegas/vegas.css" type="text/css" />
        <link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${appBean.assetsUrl}/assets/css/font.css" type="text/css" />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/build-${appBean.gruntVersion}/css/app.min.css" type="text/css" />
    </c:otherwise>
</c:choose>
        <!--[if lt IE 9]>
        <script src="${appBean.assetsUrl}/assets/js/ie/html5shiv.js"></script>
        <script src="${appBean.assetsUrl}/assets/js/ie/respond.min.js"></script>
        <script src="${appBean.assetsUrl}/assets/js/ie/excanvas.js"></script>
        <![endif]-->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" />
        <script>
            var CC = {};
            CC.host = "${pageContext.request.scheme}://${header.host}${pageContext.request.contextPath}/";
            CC.assets_url = "${appBean.assetsUrl}/";
        </script>
