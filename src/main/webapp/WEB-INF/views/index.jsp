<%-- 
    Document   : index
    Created on : 2015-8-16, 13:41:17
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
        <meta name="description" content="高清壁纸,桌面壁纸" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
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
    </head>
    <body class="container">
        <section class="vbox">
            <header class="bg-black dk header header-md navbar navbar-fixed-top">
                <div>
                    <div class="navbar-header b-r">
                        <a href="index.html" class="navbar-brand text-lt">
                            <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=".">
                        </a>
                    </div>  
                    <ul class="nav navbar-nav hidden-xs">
                        <li>
                            <a href="genres.html">
                                <i class="icon-disc text-success"></i>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="genres.html">
                                <i class="icon-music-tone-alt text-info"></i>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="events.html">
                                <i class="icon-drawer text-primary-lter"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" id="search" title="搜索">
                                <i class="fa fa-search text-info-lter"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- nav -->  
                    <div class="navbar-right ">
                        <ul class="nav navbar-nav m-n hidden-xs nav-user user">
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
                                    John.Smith <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu animated fadeInRight">            
                                    <li>
                                        <span class="arrow top"></span>
                                        <a href="#">Settings</a>
                                    </li>
                                    <li>
                                        <a href="profile.html">Profile</a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="badge bg-danger pull-right">3</span>
                                            Notifications
                                        </a>
                                    </li>
                                    <li>
                                        <a href="docs.html">Help</a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="modal.lockme.html" data-toggle="ajaxModal" >Logout</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>  
                </div>
                <!--search bar-->
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
            </header>

            <section>
                <section class="hbox stretch">
                    <section id="content" >
                        <section class="vbox">
                            <section>
                            <h2 class="font-thin m-b">Discover
                                    <span class="musicbar animate inline m-l-sm" style="width:20px;height:20px">
                                        <span class="bar1 a1 bg-primary lter"></span>
                                        <span class="bar2 a2 bg-info lt"></span>
                                        <span class="bar3 a3 bg-success"></span>
                                        <span class="bar4 a4 bg-warning dk"></span>
                                        <span class="bar5 a5 bg-danger dker"></span>
                                    </span>
                                </h2>
                                <div id="masonry" class="pos-rlt animated fadeInUpBig">
                                    <div class="item">
                                        <div class="carousel slide auto" data-interval="3000">
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <div class="item-overlay opacity animated fadeInDown wrapper bg-info">
                                                        <p class="text-white">N.01</p>
                                                        <div class="center text-center m-t-n">
                                                            <a href="#"><i class="icon-control-play i-2x"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="bottom wrapper bg-info gd">
                                                        <div class="m-t m-b"><a href="#" class="b-b b-danger h2 text-u-c text-lt font-bold">Teideal</a></div>
                                                        <p class="hidden-xs">Morbi nec nunc condimentum, egestas dui nec, fermentum diam. Vivamus vel tincidunt libero, vitae elementum ligula</p>
                                                    </div>
                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m20.jpg" alt="" class="img-full"></a>
                                                </div>
                                                <div class="item">
                                                    <div class="item-overlay opacity animated fadeInDown wrapper bg-info">
                                                        <p class="text-white">N.02</p>
                                                        <div class="center text-center m-t-n">
                                                            <a href="#"><i class="icon-control-play i-2x"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="bottom wrapper bg-info gd">
                                                        <div class="m-t m-b"><a href="#" class="b-b b-warning h2 text-u-c text-lt font-bold">Tincidunt</a></div>
                                                        <p class="hidden-xs">Gestas dui nec, fermentum diam. Vivamus vel tincidunt libero, vitae ligula elementum</p>
                                                    </div>
                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m22.jpg" alt="" class="img-full"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-overlay gd animated fadeInUp wrapper bg-info">
                                            <p class="text-white">Watch later</p>
                                            <div class="center text-center m-t-n">
                                                <a href="#"><i class="icon-control-play i-2x"></i></a>
                                            </div>
                                        </div>
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Tincidunt</a></div>
                                            <p class="hidden-xs">Vivamus vel tincidunt libero, lementum ligula vitae</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m31.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-warning h4 text-u-c text-lt font-bold">Duis</a></div>
                                            <p class="hidden-xs">Tincidunt libero vitae elementum</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m10.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="item-overlay active bg-primary dker wrapper text-center">
                                            <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">lementum</a></div>
                                            <p class="hidden-xs">lementum ligula vitae est quis congue ero</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Diam</a></div>
                                            <p class="hidden-xs">Con malesuada est, quis congue nibhs</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m4.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="carousel carousel-fade bg-info slide auto" data-interval="6000">
                                            <div class="carousel-inner">
                                                <div class="item active">
                                                    <div class="item-overlay active dker wrapper text-center">
                                                        <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Cosies</a></div>
                                                        <p class="hidden-xs">Duis non malesuada est, quis congue nibh</p>
                                                    </div>
                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m4.jpg" alt="" class="img-full"></a>
                                                </div>
                                                <div class="item">
                                                    <div class="item-overlay active dk wrapper text-center">
                                                        <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Malesuada</a></div>
                                                        <p class="hidden-xs">Aliquam sollicitudin venenatis congue nibh</p>
                                                    </div>
                                                    <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m4.jpg" alt="" class="img-full"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Vivamus</a></div>
                                            <p class="hidden-xs">Morbi id neque quam. Aliquam sollicitudin venenatis ipsum</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m13.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-warning h4 text-u-c text-lt font-bold">Libero</a></div>
                                            <p class="hidden-xs">Aliquam sollicitudin venenatis ipsum</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/082.jpeg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">habitant</a></div>
                                            <p class="hidden-xs">Vel tincidunt libero, vitae ligula tristique</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m19.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="item-overlay active bg-success dker wrapper text-center">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Ligula</a></div>
                                            <p class="hidden-xs">Sesuada est, quis congue tincidunt libero nibh ligula</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Malesuada</a></div>
                                            <p class="hidden-xs">Pellentesque habitant morbi tristique sodales</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m7.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Donec</a></div>
                                            <p class="hidden-xs">Vestibulum ullamcorper</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m18.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-primary h4 text-u-c text-lt font-bold">Eleifend</a></div>
                                            <p class="hidden-xs">Malesuada augue. Donec eleifend condimentum</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m32.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Sollicitudin </a></div>
                                            <p class="hidden-xs">Mauris convallis mauris at pellentesque volutpat</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m40.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-warning h2 text-u-c text-lt font-bold">Senectus </a></div>
                                            <p class="hidden-xs">Fermentum diam. Vivamus vel tincidunt libero, vitae elementum ligula</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m21.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Phasellus</a></div>
                                            <p class="hidden-xs">Senectus et netus et malesuada fames</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m5.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Neque</a></div>
                                            <p class="hidden-xs">Consectetur adipiscing elit. Morbi id neque quam</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/a10.png" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Nisi ne</a></div>
                                            <p class="hidden-xs">Orbi tristique senectus et netus et malesuada</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m4.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="item-overlay active bg-warning dker wrapper text-center">
                                            <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Morbi</a></div>
                                            <p class="hidden-xs">Dolor sit amet, consectetur adipiscing elit.</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Congue</a></div>
                                            <p class="hidden-xs">Malesuada est, quis congue nibh</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m6.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="item-overlay active bg-info lt wrapper text-center">
                                            <div class="m-t m-b"><a href="#" class="b-b b-white h4 text-u-c text-lt font-bold">Csesoi</a></div>
                                            <p class="hidden-xs">Dolor sit ectetur elit senectus et malesuada</p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Consectetur</a></div>
                                            <p class="hidden-xs">Adipiscing elit senectus et netus mal.</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m42.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Morbi</a></div>
                                            <p class="hidden-xs">Dolor sit amet, consectetur adipiscing elit.</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m9.jpg" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Soesle</a></div>
                                            <p class="hidden-xs">Adipiscing elituis congue</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/a7.png" alt="" class="img-full"></a>
                                    </div>
                                    <div class="item">
                                        <div class="bottom gd bg-info wrapper">
                                            <div class="m-t m-b"><a href="#" class="b-b b-info h4 text-u-c text-lt font-bold">Congue</a></div>
                                            <p class="hidden-xs">Malesuada est, congue nibh quis elituis</p>
                                        </div>
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m12.jpg" alt="" class="img-full"></a>
                                    </div>
                                </div>
                            </section>
                        </section>
                        <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen,open" data-target="#nav,html"></a>
                    </section>
                </section>
            </section>    
        </section>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
        <!-- App -->
        <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>  
        <script src="${pageContext.request.contextPath}/assets/js/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/tiles.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/masonry/demo.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/vegas/vegas.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#search").click(function () {
                    $("#searchbar").toggle("slow");
                });
                $('body').vegas({
                    timer: false,
                    slides: [
                          {src: '${pageContext.request.contextPath}/assets/images/background1.jpg'},
                          {src: '${pageContext.request.contextPath}/assets/images/background2.jpg'}
                    ]
                });
                $("img").error(function () {
                    $(this).attr("src", "${pageContext.request.contextPath}/assets/images/image20.jpg");
                });
            });
        </script>
    </body>
</html>
