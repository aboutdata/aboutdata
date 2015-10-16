<%-- 
    Document   : random next page
    Created on : 2015-9-6, 12:10:46
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="row row-sm">
	<c:forEach items="${list}" var="photos" varStatus="idx">
		<div class="col-xs-6 col-sm-4 col-md-3">
			<div class="item">
				<div class="pos-rlt">
					<div class="item-overlay opacity r r-2x bg-black">
						<div class="text-info padder m-t-sm text-sm">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> 
							<i class="fa fa-star-o text-muted"></i>
						</div>
						<div class="center text-center m-t-n">
							<a href="${pageContext.request.contextPath}/wallpaper/${photos.id}"><i class="icon-screen-smartphone i-2x"></i></a>
						</div>
					</div>

					<a href="${pageContext.request.contextPath}/wallpaper/${photos.id}">
					<img src="${photos.storageHost}/${photos.thumbnail}" alt="" class="r r- img-full"></a>
				</div>
				<div class="wrapper-sm"></div>
			</div>
		</div>
		<!--gallery end first// old-->
	</c:forEach>
</div>


