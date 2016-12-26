<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<html>
<head>
    <meta charset="utf-8">
    <title>F&B | Blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="images/favicon.ico">

    <!-- CSS STYLES -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/flexslider.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merienda:400,700' rel='stylesheet' type='text/css'>

    <!-- Scripts -->
    <!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if IE]><html class="ie" lang="en"> <![endif]-->

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/parallax.js" type="text/javascript"></script>
    <script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="js/jquery.twitter.js" type="text/javascript"></script>
    <script src="js/superfish.min.js" type="text/javascript"></script>
    <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="js/animate.js" type="text/javascript"></script>
    <script src="js/myscript.js" type="text/javascript"></script>

</head>
<body>
<div id="preloader"><img src="images/preloader.gif" alt="" /></div>

<!-- Головна сторінка -->
<div id="page">

    <!-- Кінець презагрузки -->
    <div class="preloader_hide">

        <!-- Блок головної сторінки -->
        <div class="page_block">

            <!-- Хедер -->
            <header>

                <!-- Головне меню -->
                <div class="menu_block clearfix">

                    <!-- Контейнер -->
                    <div class="container clearfix">

                        <!-- Лого -->
                        <div class="logo">
                            <a href="/" >F<span>&amp;</span>B</a>
                        </div>

                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <em></em><em></em><em></em><em></em>
                            </button>
                        </div>

                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="first active"><a href="/" >Home</a></li>

                                <li class="sub-menu menu_middle" style="margin-right: 185px"><a href="/about" >About</a>
                                    <ul>
                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                                            <li><a href="/addLaptop" ><span>-</span>Add Laptop</a></li>
                                        </sec:authorize>
                                    </ul>
                                <li class="sub-menu" style="margin-left: -155px"><a href="/shop" >Shop</a></li>

                                </li>

                                <li class="sub-menu" style="margin-left: 200px"><a href="/blog" >Blog</a></li>
                                <li class="sub-menu"><a href="/contacts" >Contacts</a></li>
                                <li><a href="/signIn">Sign In</a></li>

                            </ul>
                        </div>
                    </div><!-- //Конейтер -->
                </div><!-- //Головне меню -->
            </header><!-- //Хедер -->

            <!-- BREADCRUMBS -->
            <section class="full_width breadcrumbs_block clearfix">

                <!-- CONTAINER -->
                <div class="container">
                    <div class="breadcrumbs_content">
                        <h2 class="pull-left">Our Blog</h2>
                        <ol class="pull-right breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="javascript:void(0);">Blog</a></li>
                            <li><a href="javascript:void(0);">Blog with sidebar</a></li>
                        </ol>
                    </div>
                </div><!-- //CONTAINER -->
                <div class="overlay"></div>
                <div class="overlay_black"></div>
            </section><!-- //BREADCRUMBS -->


            <!-- BLOG CONTENT -->
            <section class="our_vision">

                <!-- CONTAINER -->
                <div class="container">
                    <div class="row">
                        <!-- Blog Posts -->
                        <div class="col-lg-9 col-sm-9 padbot20">
                            <div class="post">
                                <h2><span class="glyphicon glyphicon-picture"></span><a href="blog-post.html" alt="">Pretium ultricies</a></h2>
                                <div class="post_meta">Posted by <a href="javascript:void(0);">John White</a><span class="sep">|</span>25 apr 2019<span class="sep">|</span><a href="javascript:void(0);">3 comments</a><span class="sep">|</span>Tags: <a href="javascript:void(0);">lorem,</a> <a href="javascript:void(0);">ipsum,</a> <a href="javascript:void(0);">dolor,</a> <a href="javascript:void(0);">amet</a></div>
                                <div class="post_img">
                                    <!-- slider -->
                                    <div class="flexslider post_slider">
                                        <ul class="slides">
                                            <li class="slide1">
                                                <img src="images/blog/1.jpg" />
                                            </li>
                                            <li class="slide2">
                                                <img src="images/blog/2.jpg" />
                                            </li>
                                            <li class="slide3">
                                                <img src="images/blog/3.jpg" />
                                            </li>
                                        </ul>
                                    </div>
                                    <!-- //slider -->
                                </div>
                                <p>Egestas pretium euismod malesuadas Vivamus orci ligulaer, iacul es dapibus. Praesent convallis eleifend lacus, eu lorem volutpat metus malesuada bibendum. Nullam varius leo quis nulla porta lacinia eget a augue. Sed vitae eros nibh, in aliquet arcu. Nunc fermentum, ante eget tempor viverra, erat diam condimentum lacus, a ullamcorper nisl est at enim. Fusce tincidunt mattis semper. Nunc aliquet, leo vel adipiscing pretium, enim erat placerat risus, at tristique augue risus ut estercot. Morbi vulputate ultricies nisl quis scelerisque. <a href="blog-post.html">Read more...</a></p>
                            </div>
                            <div class="post">
                                <h2><span class="glyphicon glyphicon-play"></span><a href="blog-post.html" alt="">Egestas aliquam ridiculus eget mauris!</a></h2>
                                <div class="post_meta">Posted by <a href="javascript:void(0);">John White</a><span class="sep">|</span>25 apr 2019<span class="sep">|</span><a href="javascript:void(0);">3 comments</a><span class="sep">|</span>Tags: <a href="javascript:void(0);">lorem,</a> <a href="javascript:void(0);">ipsum,</a> <a href="javascript:void(0);">dolor,</a> <a href="javascript:void(0);">amet</a></div>
                                <div class="post_img">
                                    <!-- Video -->
                                    <iframe src="http://player.vimeo.com/video/29298709?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="100%" height="100%" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen ></iframe>
                                    <!-- //Video -->
                                </div>
                                <p>Praesent convallis eleifend lacus, eu loem volutpat metus malesuada bibendum. Nullam varius leo quis nulla porta lacinia eget a augue. Sed vitae eros nibh, in aliquet arcu. Nunc fermentum, ante eget tempor viverra.</p>
                                <p>Erat diam condimentum lacus, a ullamcorper nisl est at enim. Fusce tincidunt mattis semper. Nunc aliquet leo vel adipiscing pretium, enim erat placerat risus, at tristique augue risus ut estercot. Morbi vulputate ultricies nisl quis scelerisque. Sed viverra dui sit amet elit dignissim elementum. Aliquam erat volutpat. In sed orci id quam condimentum viverra. Integer a libero interdum porttitor. Morbi vel metus vitae enim rhoncus sodales. Donec nulla mauris, ultrices ac mollis id. <a href="simple_post.html">Read more...</a></p>
                            </div>
                            <div class="post">
                                <h2><span class="glyphicon glyphicon-pencil"></span><a href="blog-post.html" alt="">Fusce tincidunt mattis</a></h2>
                                <div class="post_meta">Posted by <a href="javascript:void(0);">John White</a><span class="sep">|</span>25 apr 2019<span class="sep">|</span><a href="javascript:void(0);">3 comments</a><span class="sep">|</span>Tags: <a href="javascript:void(0);">lorem,</a> <a href="javascript:void(0);">ipsum,</a> <a href="javascript:void(0);">dolor,</a> <a href="javascript:void(0);">amet</a></div>
                                <p>Convallis eleifend lacus, eu loem volutpat metus malesuada bibendum. Nullam varius leo quis nulla porta lacinia eget cras augue. Sed vitae eros nibh, in aliquet arcu. Nunc fermentum, ante eget tempor viverra.</p>
                                <p>Diam condimentum lacus, a ullamcorper nisl est at enim. Fusce tincidunt mattis semper. Nunc aliquet leo vel adipiscing viverra dui sit amet elit dignissim elementum. Aliquam erat volutpat. In sed orci id quam condimentum viverra. Integer a libero interdum porttitor. Morbi vel metus vitae enim rhoncus sodales. <a href="simple_post.html">Read more...</a></p>
                            </div>

                            <!-- Pagination -->
                            <ul class="pagination">
                                <li class="next"><a href="javascript:void(0);">← Next</a></li>
                                <li><a href="javascript:void(0);">1</a></li>
                                <li class="active"><a href="javascript:void(0);">2</a></li>
                                <li><a href="javascript:void(0);">3</a></li>
                                <li><a href="javascript:void(0);">4</a></li>
                                <li class="prev"><a href="javascript:void(0);">Previous →</a></li>
                            </ul><!-- //Pagination -->

                        </div><!-- //Blog Posts -->

                        <!-- Sidebar -->
                        <div id="sidebar" class="col-lg-3 col-sm-3">
                            <div class="sidepanel widget_search">
                                <form class="search_form" action="#" method="" name="">
                                    <input type="text" name="Search the site..." value="Search the site..." onFocus="if (this.value == 'Search the site...') this.value = '';" onBlur="if (this.value == '') this.value = 'Search the site...';" />
                                </form>
                            </div>

                            <div class="sidepanel widget_text">
                                <h4 class="sidebar_header">Text Widget</h4>
                                <p>Praesent vestibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta. Fusce suscipit varius mi nascetur ridiculus</p> <p>Nulla dui. Fusce feugiat malesuada odio. Morbi nunc odio, gravida at, cursus nec, luctus a, lorem. Maecenas tristique orci ac sem. Duis ultricies pharetra magna donec.</p>
                            </div><!-- .sidepanel -->

                            <div class="sidepanel widget_posts">
                                <h4 class="sidebar_header">Latest Posts</h4>
                                <ul class="recent_posts">
                                    <li>
                                        <div class="pull-left recent_posts_img">
                                            <img src="images/blog/recent1.jpg" width="70" height="70" alt="" />
                                        </div>
                                        <div class="recent_posts_content">
                                            <a class="post_title" href="blog-post.html">Pellentesque consequat</a>
                                            Aptent taciti sociosqu litoran torquente per vestibulum ac.
                                        </div>
                                        <div class="clear"></div>
                                    </li>
                                    <li>
                                        <div class="pull-left recent_posts_img">
                                            <img src="images/blog/recent2.jpg" width="70" height="70" alt="" />
                                        </div>
                                        <div class="recent_posts_content">
                                            <a class="post_title" href="blog-post.html">Lorem Ipsum dolor</a>
                                            Sociosqu litoran a torquente per vestibulum ac eget eget.
                                        </div>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </div><!-- .sidepanel -->

                            <div class="sidepanel widget_twitter">
                                <h4 class="sidebar_header">Latest Tweets</h4>
                                <ul class="twitter_list tweet_module sidebar"></ul>
                            </div><!-- .widget_twitter -->

                            <div class="sidepanel widget_dribbble">
                                <h4 class="sidebar_header">Flickr Photostream</h4>
                                <div class="flickrs">
                                    <div class="FlickrImages sidebar">
                                        <ul></ul>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div><!-- .sidepanel -->

                            <div class="sidepanel widget_tag_cloud">
                                <h4 class="sidebar_header">Tags</h4>
                                <div class="tags">
                                    <a href="javascript:void(0);">960gs</a>
                                    <a href="javascript:void(0);">Responsive</a>
                                    <a href="javascript:void(0);">Blog</a>
                                    <a href="javascript:void(0);">960gs</a>
                                    <a href="javascript:void(0);">HTML5</a>
                                    <a href="javascript:void(0);">Modern Design</a>
                                    <a href="javascript:void(0);">HTML5</a>
                                    <a href="javascript:void(0);">Picasa</a>
                                    <a href="javascript:void(0);">Pinterest</a>
                                    <a href="javascript:void(0);">Picasa</a>
                                    <a href="javascript:void(0);">Blog</a>
                                    <a href="javascript:void(0);">Clean Design</a>
                                    <a href="javascript:void(0);">HTML5</a>
                                    <a href="javascript:void(0);">Pinterest</a>
                                    <a href="javascript:void(0);">Blog</a>
                                    <a href="javascript:void(0);">960gs</a>
                                    <a href="javascript:void(0);">Dolore</a>
                                    <a href="javascript:void(0);">960gs</a>
                                </div>
                            </div><!-- .sidepanel -->
                        </div><!-- //Sidebar -->
                    </div>
                </div><!-- //CONTAINER -->
            </section><!-- //BLOG CONTENT -->

            <!-- FOOTER -->
            <footer class="full_width footer_block">

                <!-- CONTAINER -->
                <div class="container">

                    <!-- ROW -->
                    <div class="row" data-animated="fadeInUp">

                        <!-- ABOUT US -->
                        <div class="col-lg-3 col-md-3 col-sm-6 padbot20">
                            <h2>About Us</h2>
                            <p>Vestibulum sem nulla, euismod ac facilisis in, condimentum adipiscing urna. Ut at diam mi.</p>
                            <p>Vivamus sed ligula odio. Vivamus mattis, justo at suscipit malesuada, tortor risus</p>

                            <!-- SOCIAL -->
                            <ul class="social">
                                <li class="icon3"><a href="https://www.facebook.com/yura.comercial" ></a></li>
                                <li class="icon4"><a href="https://twitter.com/ilnytskyi1" ></a></li>
                                <li class="icon5"><a href="https://vk.com/yurii_ilnytskyi" ></a></li>
                            </ul><!-- //SOCIALS -->
                        </div><!-- //ABOUT US -->

                        <div class="respon_clear"></div>

                        <!-- LATEST NEWS -->
                        <div class="col-lg-3 col-md-3 col-sm-6">
                            <h2>Latest News</h2>
                            <ul class="recent_posts">
                                <li>
                                    <div class="pull-left recent_posts_img">
                                        <img src="images/blog/recent1.jpg" alt="" />
                                    </div>
                                    <div class="recent_posts_content">
                                        <a class="post_title" href="blog-post.html">Mauris ut mauris sit amet nisi lobortis</a>
                                        <div class="date_block">October 22, 2020</div>
                                    </div>
                                    <div class="clear"></div>
                                </li>
                                <li>
                                    <div class="pull-left recent_posts_img">
                                        <img src="images/blog/recent2.jpg" alt="" />
                                    </div>
                                    <div class="recent_posts_content">
                                        <a class="post_title" href="blog-post.html">Mauris ut mauris sit amet</a>
                                        <div class="date_block">October 22, 2020</div>
                                    </div>
                                    <div class="clear"></div>
                                </li>
                            </ul>
                        </div><!-- //LATEST NEWS -->

                        <!-- NEWSLETTER -->
                        <div class="col-lg-3 col-md-3 col-sm-6 padbot20">
                            <h2>Newsletter</h2>
                            <p>Vestibulum sem nulla, euismod ac facilisis in, condimentum adipiscing urna.</p>
                            <p>Ut at diam mi. Vivamus sed ligula odio.</p>

                            <!-- NEWSLETTER-FORM -->
                            <form id="newsletter-form" action="">
                                <input type="text" name="Enter your Email..." value="Enter your Email..." onFocus="if (this.value == 'Enter your Email...') this.value = '';" onBlur="if (this.value == '') this.value = 'Enter your Email...';" />
                                <input class="contact_btn" type="submit" value="" />
                            </form><!-- //NEWSLETTER-FORM -->
                        </div><!-- //NEWSLETTER -->
                    </div><!-- //ROW -->
                </div><!-- //CONTAINER -->


                <!-- COPYRIGHT -->
                <div class="copyright">

                    <!-- CONTAINER -->
                    <div class="container clearfix">
                        <div class="pull-left">
                            <a class="copyright_logo" href="javascript:void(0);">F&amp;B</a> <span> &copy; Copyright 2020</span>
                        </div>

                        <div class="pull-right">

                            <!-- FOOT MENU -->
                            <ul class="foot_menu">
                                <li class="active"><a href="/" >Home</a></li>
                                <li><a href="/blog" >Blog</a></li>
                                <li><a href="/contacts" >Contacts</a></li>
                            </ul><!-- //FOOT MENU -->
                        </div>
                    </div><!-- //CONTAINER -->
                </div><!-- //COPYRIGHT -->
            </footer><!-- //FOOTER -->
        </div><!-- //PAGE BLOCK -->
    </div><!-- //PRELOADER HIDE -->
</div><!-- //PAGE -->
</body>
</html>
