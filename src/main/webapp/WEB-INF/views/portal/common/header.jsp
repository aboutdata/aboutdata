<%-- 
    Document   : header
    Created on : 2015-8-20, 21:14:35
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div>
  <div class="navbar-header b-r">
      <a href="${pageContext.request.contextPath}" class="navbar-brand text-lt">
          <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=".">
      </a>
  </div>  
  <ul class="nav navbar-nav hidden-xs">
      <li>
          <a href="${pageContext.request.contextPath}/top"  title="发现">
              <i class="icon-disc"></i>
          </a>
      </li>
      <li class="divider"></li>
      <li>
          <a href="${pageContext.request.contextPath}/random"  title="随机">
              <i class="fa fa-random"></i>
          </a>
      </li>
      <li class="divider"></li>
      <li>
          <a href="${pageContext.request.contextPath}/latest"  title="最新">
              <i class="icon-speedometer"></i>
          </a>
      </li>
      <li>
          <a href="#" id="search" title="搜索">
              <i class="fa fa-search"></i>
          </a>
      </li>
  </ul>
<!-- nav right--> 
 
<c:choose>
<c:when test="${appBean.getCurrentUser() != null}">
        <div class="navbar-right ">
            <ul class="nav navbar-nav m-n hidden-xs nav-user user">
            <li class="hidden-xs bg-dark lter">
                <a href="#" title="上传">
                    <i class="fa fa-upload"></i>
                </a>
            </li>
                <li class="hidden-xs">
                    <a href="#" class="dropdown-toggle lt" data-toggle="dropdown">
                        <i class="icon-bell"></i>
                        <span class="badge badge-sm up bg-danger count">2</span>
                    </a>
                    <section class="dropdown-menu aside-xl animated fadeInUp">
                        <section class="panel bg-white">
                            <div class="panel-heading b-light bg-light">
                                <strong>You have <span class="count">2</span> notifications</strong>
                            </div>
                            <div class="list-group list-group-alt">
                                <a href="#" class="media list-group-item">
                                    <span class="pull-left thumb-sm">
                                        <img src="${pageContext.request.contextPath}/assets/images/a0.png" alt="..." class="img-circle">
                                    </span>
                                    <span class="media-body block m-b-none">
                                        Use awesome animate.css<br>
                                        <small class="text-muted">10 minutes ago</small>
                                    </span>
                                </a>
                                <a href="#" class="media list-group-item">
                                    <span class="media-body block m-b-none">
                                        1.0 initial released<br>
                                        <small class="text-muted">1 hour ago</small>
                                    </span>
                                </a>
                            </div>
                            <div class="panel-footer text-sm">
                                <a href="#" class="pull-right"><i class="fa fa-cog"></i></a>
                                <a href="#notes" data-toggle="class:show animated fadeInRight">See all the notifications</a>
                            </div>
                        </section>
                    </section>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle bg clear" data-toggle="dropdown">
                        <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                            <img src="${pageContext.request.contextPath}/assets/images/a0.png" alt="...">
                        </span>
                        ${appBean.getCurrentUser().username} <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight">            
                        <li>
                            <span class="arrow top"></span>
                            <a href="#">设置</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/member/profile">个人资料</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/member/photos/album">
                                	我的相册
                            </a>
                        </li>
                        <li>
                            <a href="docs.html">收藏</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/logout">注销登录</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>  
    </c:when>
    <c:otherwise>
        <div class="navbar-right ">
            <ul class="nav navbar-nav m-n hidden-xs nav-user user">
                <li>
                    <a href="${pageContext.request.contextPath}/login">
                        <i class="fa fa-user"></i>
                       	登录
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/register" >
                        <i class="icon-user-follow"></i>
                       	 注册
                    </a>
                </li>
            </ul>
        </div>  
    </c:otherwise>
</c:choose>                
</div>
<!--search bar-->
 <c:if test="${appBean.features.enableSearch}">
 <div id="searchbar" class="bg-black lter">
     <div class="container">
         <form class="form-inline" role="form">
             <div class="form-group">
                 <div class="input-group">
                     <input class="form-control input-sm no-border" placeholder="Search songs, albums..." type="text">
                     <span class="input-group-btn">
                         <button type="submit" class="btn btn-sm bg-white btn-icon"><i class="fa fa-search"></i></button>
                     </span>
                 </div>
             </div>
             <div class="btn-group m-l-xs" data-toggle="buttons">
                 <label class="btn btn-sm btn-info active">
                     <input name="options" type="radio"><i class="fa fa-check text-active"></i> Male
                 </label>
                 <label class="btn btn-sm btn-success">
                     <input name="options" type="radio"><i class="fa fa-check text-active"></i> Female
                 </label>
                 <label class="btn btn-sm btn-primary">
                     <input name="options" type="radio"><i class="fa fa-check text-active"></i> N/A
                 </label>
             </div>
             <div class="btn-group m-l-xs" data-toggle="buttons">
                 <label class="btn btn-sm btn-info active">
                     <input name="options" type="radio"><i class="fa fa-check text-active"></i> Male
                 </label>
                 <label class="btn btn-sm btn-success">
                     <input name="options" type="radio"><i class="fa fa-check text-active"></i> Female
                 </label>
             </div>
             <div class="btn-group m-l">
                 <button class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                 <ul class="dropdown-menu">
                     <li><a href="#">Action</a></li>
                     <li><a href="#">Another action</a></li>
                     <li><a href="#">Something else here</a></li>
                     <li class="divider"></li>
                     <li><a href="#">Separated link</a></li>
                 </ul>
             </div>
             <div class="btn-group">
                 <button class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                 <ul class="dropdown-menu">
                     <li><a href="#">Action</a></li>
                     <li><a href="#">Another action</a></li>
                     <li><a href="#">Something else here</a></li>
                     <li class="divider"></li>
                     <li><a href="#">Separated link</a></li>
                 </ul>
             </div>
             <div class="btn-group">
                 <button class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                 <ul class="dropdown-menu">
                     <li><a href="#">Action</a></li>
                     <li><a href="#">Another action</a></li>
                     <li><a href="#">Something else here</a></li>
                     <li class="divider"></li>
                     <li><a href="#">Separated link</a></li>
                 </ul>
             </div>
         </form>
     </div>
 </div>
</c:if>

