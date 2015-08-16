<%-- 
    Document   : index
    Created on : 2015-8-16, 13:41:17
    Author     : youyou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="app">
    <head>  
        <meta charset="utf-8" />
        <title>Musik | Web Application</title>
        <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/js/jPlayer/jplayer.flat.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/simple-line-icons.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font.css" type="text/css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css" type="text/css" />  
        <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/assets/js/ie/html5shiv.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/ie/respond.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/ie/excanvas.js"></script>
      <![endif]-->
    </head>
    <body class="">
        <section class="vbox">
            <header class="bg-white-only header header-md navbar navbar-fixed-top-xs">
                <div class="navbar-header aside bg-primary nav-xs">
                    <a class="btn btn-link visible-xs" data-toggle="class:nav-off-screen,open" data-target="#nav,html">
                        <i class="icon-list"></i>
                    </a>
                    <a href="index.html" class="navbar-brand text-lt">
                        <i class="icon-earphones"></i>
                        <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="." class="hide">
                        <span class="hidden-nav-xs m-l-sm">Musik</span>
                    </a>
                    <a class="btn btn-link visible-xs" data-toggle="dropdown" data-target=".user">
                        <i class="icon-settings"></i>
                    </a>
                </div>      <ul class="nav navbar-nav hidden-xs">
                    <li>
                        <a href="#nav,.navbar-header" data-toggle="class:nav-xs,nav-xs" class="text-muted">
                            <i class="fa fa-indent text"></i>
                            <i class="fa fa-dedent text-active"></i>
                        </a>
                    </li>
                </ul>
                <form class="navbar-form navbar-left input-s-lg m-t m-l-n-xs hidden-xs" role="search">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-sm bg-white btn-icon rounded"><i class="fa fa-search"></i></button>
                            </span>
                            <input type="text" class="form-control input-sm no-border rounded" placeholder="Search songs, albums...">
                        </div>
                    </div>
                </form>
            </header>
            <section>
                <section class="hbox stretch">
                    <!-- .aside -->
                    <aside class="bg-black dk nav-xs aside hidden-print" id="nav">          
                        <section class="vbox">
                            <section class="w-f-md scrollable">
                                <div class="slim-scroll" data-height="auto" data-disable-fade-out="true" data-distance="0" data-size="10px" data-railOpacity="0.2">



                                    <!-- nav -->                 
                                    <nav class="nav-primary hidden-xs">
                                        <ul class="nav bg clearfix">
                                            <li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted">
                                                Discover
                                            </li>
                                            <li>
                                                <a href="index.html">
                                                    <i class="icon-disc icon text-success"></i>
                                                    <span class="font-bold">What's new</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="genres.html">
                                                    <i class="icon-music-tone-alt icon text-info"></i>
                                                    <span class="font-bold">Genres</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="events.html">
                                                    <i class="icon-drawer icon text-primary-lter"></i>
                                                    <b class="badge bg-primary pull-right">6</b>
                                                    <span class="font-bold">Events</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="listen.html">
                                                    <i class="icon-list icon  text-info-dker"></i>
                                                    <span class="font-bold">Listen</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                    <!-- / nav -->
                                </div>
                            </section>
                    </aside>
                    <!-- /.aside -->
                    <section id="content">
                        <section class="vbox">
                            <section class="scrollable">
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
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m30.jpg" alt="" class="img-full"></a>
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
                                        <a href="#"><img src="${pageContext.request.contextPath}/assets/images/m21.jpg" alt="" class="img-full"></a>
                                    </div>
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
        <script src="${pageContext.request.contextPath}/assets/js/app.plugin.js"></script>
    </body>
</html>
