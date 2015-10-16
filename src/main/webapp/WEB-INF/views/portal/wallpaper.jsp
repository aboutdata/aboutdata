<%-- 
    Document   : wallpaper
    Created on : 2015-8-22, 11:02:53
    Author     : youyou
--%>
<%-- 
    Document   : latest
    Created on : 2015-8-16, 13:41:17
    Author     : youyou
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh">
    <head>  
        <meta charset="utf-8"/>
        <title>查看壁纸 - 更多壁纸，更多分享</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
          <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/tag/css/bootstrap-tag.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/vegas/vegas.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css" type="text/css" />  
        <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/assets/${pageContext.request.contextPath}/assets/js/ie/html5shiv.js"></script>
        <script src="${pageContext.request.contextPath}/assets/${pageContext.request.contextPath}/assets/js/ie/respond.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/${pageContext.request.contextPath}/assets/js/ie/excanvas.js"></script>
      <![endif]-->
       <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <body>
        <section class="vbox">
            <header class="bg-black dk header header-md navbar navbar-fixed-top">
              <jsp:include page="/WEB-INF/views/portal/common/header.jsp"></jsp:include>
            </header>
            <!--main page-->
            <section id="content">
              <section class="hbox">
             <aside class="aside animated fadeInLeftBig">
			      <section class="vbox">
			        <section class="scrollable wrapper">
			        <h4 class="font-thin m-b">Wallpaper Colors</h4>
			         <div>
		                <a href="#" class="btn btn-block btn-primary">Primary</a>
		                <a href="#" class="btn btn-block btn-success">Success</a>
		                <a href="#" class="btn btn-block btn-info">Info</a>
		                <a href="#" class="btn btn-block btn-warning">Warning</a>
		                <a href="#" class="btn btn-block btn-danger">Danger</a>
		                <a href="#" class="btn btn-block btn-dark">Dark</a>
		              </div>
		              
		               <!-- Properties start-->
		             <h4 class="font-thin m-b">Properties</h4>
		             <div class="bg-black">
	                    <h5 class="lter m-n wrapper">Category ==</h5>
	                    <h5 class="lt m-n wrapper">Resolution ==</h5>
	                    <h5 class="m-n wrapper">Size 335.88 KB</h5>
	                    <h5 class="dk m-n wrapper">Type image/jpeg</h5>
	                    <h5 class="dker m-n wrapper">Uploaded by john3</h5>
	                    <h5 class="dk m-n wrapper">Posted 1 year ago</h5>
	                    <h5 class="m-n wrapper">Views 14</h5>
	                    <h5 class="lt m-n wrapper">Comments 1</h5>
	                    <h5 class="lter m-n wrapper">Downloads 1</h5>
	                  </div>
		             
		             <!-- Properties end// -->
                  
                </ul>
		             
		             <h4 class="font-thin m-b">Tags</h4>
					<div class="m-b-lg l-h-2x">
                      <a href="#" class="label bg-primary">Bootstrap</a>
                      <a href="#" class="label bg-primary">Application</a>
                      <a href="#" class="label bg-primary">Apple</a> 
                      <a href="#" class="label bg-primary">Less</a> 
                      <a href="#" class="label bg-primary">Theme</a> 
                      <a href="#" class="label bg-primary">Wordpress</a>
                    </div>			            
			        
			        </section>
			      </section>
    			</aside>
              <section>
              
              
              <section class="scrollable wrapper">
               <h4 class="font-thin m-b">Random Wallpapers</h4>
               
               <div class="row wrapper r r-2x ">
               	<a href="${photos.storageHost}/${photos.large}" target="_blank" >
                	<img src="${photos.storageHost}/${photos.large}" class="r r-2x img-full" style="cursor: zoom-in">
                </a>
               </div>
               <div class="row">
                <div class="col-sm-6">
                  <h4 class="m-t-lg m-b">Wallpapers Comments</h4>
                  <section class="comment-list block">
                    <article id="comment-id-1" class="comment-item">
                      <a class="pull-left thumb-sm">
                        <img src="${pageContext.request.contextPath}/assets/images/a0.png" class="img-circle">
                      </a>
                      <section class="comment-body m-b">
                        <header>
                          <a href="#"><strong>John smith</strong></a>
                          <label class="label bg-info m-l-xs">Editor</label> 
                          <span class="text-muted text-xs block m-t-xs">
                            24 minutes ago
                          </span>
                        </header>
                        <div class="m-t-sm">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id neque quam. Aliquam sollicitudin venenatis ipsum ac feugiat. Vestibulum.</div>
                      </section>
                    </article>
                    <!-- .comment-reply -->
                    <article id="comment-id-2" class="comment-item comment-reply">
                      <a class="pull-left thumb-sm">
                        <img src="${pageContext.request.contextPath}/assets/images/a1.png" class="img-circle">
                      </a>
                      <section class="comment-body m-b">
                        <header>
                          <a href="#"><strong>John smith</strong></a>
                          <label class="label bg-dark m-l-xs">Admin</label> 
                          <span class="text-muted text-xs block m-t-xs">
                            26 minutes ago
                          </span>
                        </header>
                        <div class="m-t-sm">Lorem ipsum dolor sit amet, consecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</div>
                      </section>
                    </article>
                    <!-- / .comment-reply -->
                    <article id="comment-id-2" class="comment-item">
                      <a class="pull-left thumb-sm">
                        <img src="${pageContext.request.contextPath}/assets/images/a2.png" class="img-circle">
                      </a>
                      <section class="comment-body m-b">
                        <header>
                          <a href="#"><strong>John smith</strong></a>
                          <label class="label bg-dark m-l-xs">Admin</label> 
                          <span class="text-muted text-xs block m-t-xs">
                            26 minutes ago
                          </span>
                        </header>
                        <blockquote class="m-t">
                          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                          <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
                        </blockquote>
                        <div class="m-t-sm">Lorem ipsum dolor sit amet, consecteter adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</div>
                      </section>
                    </article>
                  </section>
                  <form>
                    <div class="form-group">
                      <label>Comment</label>
                      <textarea class="form-control" rows="5" placeholder="Type your comment"></textarea>
                    </div>
                    <div class="form-group">
                      <button type="submit" class="btn btn-success">Submit comment</button>
                    </div>
                  </form>
                </div>
                <div class="col-lg-6">
               	 <h4 class="m-t-lg m-b">You might also like</h4>
               	 
                </div>
              </div>
               
                                    
              </section>
              
              </section>
              </section>
                        
            </section>
            <!--main page //END-->
        </section>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
         <script src="${pageContext.request.contextPath}/assets/js/elements.typeahead.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/tag/js/bootstrap-tag.min.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/jquery.infinitescroll.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function (){
            	 $("#search").click(function () {
                     $("#searchbar").toggle("slow");
                 });
                 $('body').vegas({
                     timer: false,
                     slides: [
                         {src: '${pageContext.request.contextPath}/assets/images/background1.jpg'}
                     ]
                 });
            	
            	var tag_input = $('#form-field-tags');
                try {
                    tag_input.tag(
                            {
                                placeholder: tag_input.attr('placeholder'),
                                //enable typeahead by specifying the source array
                                //source: mycars //defined in ace.js >> ace.enable_search_ahead
                                //or fetch data from database, fetch those that match "query"
                                source: function (query, process) {
                                    $.ajax({
                                        url: '${pageContext.request.contextPath}/tags/source?name=' + encodeURIComponent(query)
                                    }).done(function (result_items) {
                                        process(result_items);
                                    });
                                }

                            }
                    );
                }
                catch (e) {

                }
                $("#save-tags-btn").click(function () {
                    var id = $(this).data("id");
                    $.ajax({
                        type: "POST",
                        url: '${pageContext.request.contextPath}/member/photos/addTags',
                        data: {id: id, tags: tag_input.val()}
                    }).done(function (data) {
                        alert("添加成功");
                        location.reload();
                    });
                });
            });
        </script>

    </body>
</html>

