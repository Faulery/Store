<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<sec:authentication property="name" />

<html>
<meta charset="utf-8">
<title>F&B | Find & Buy</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="Yurii Ilnytskyi" content="Store">

<link rel="shortcut icon" href="images/favicon.ico">

<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
<link href="css/flexslider.css" rel="stylesheet" type="text/css" />
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- Шрифти -->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Merienda:400,700' rel='stylesheet' type='text/css'>

<!-- Скріпти -->
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

<sec:authorize access="isAuthenticated()">
    <form:form action="/logout" method="post">
        <button>Logout</button>
    </form:form>
</sec:authorize>

<form:form action="./saveImage?${_csrf.parameterName}=${_csrf.token}"
           method="post" enctype="multipart/form-data">
    <input type="file" name="image">
    <button>save image</button>
</form:form>

<br>
<img src="${user.pathImage}" alt="add photo" width="100px" height="100px">
<br>

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

                                <li class="sub-menu menu_middle"><a href="#" >Menu</a>
                                    <ul>
                                        <li><a href="/about" ><span>-</span>About</a></li>
                                        <li><a href="/shop" ><span>-</span>Shop</a></li>
                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                                        <li><a href="/addLaptop" ><span>-</span>Add Laptop</a></li>
                                        </sec:authorize>
                                    </ul>
                                </li>

                                <li class="sub-menu"><a href="/blog" >Blog</a></li>
                                <li class="sub-menu"><a href="/contacts" >Contacts</a></li>

                            </ul>
                        </div>
                    </div><!-- //Конейтер -->
                </div><!-- //Головне меню -->
            </header><!-- //Хедер -->

            <!-- SLIDER -->
            <div class="slider_block" style="width: 1378px;">
                <div class="flexslider top_slider">
                    <ul class="slides">
                        <li class="slide1">
                            <div class="container">
                                <div class="caption_middle">
                                    <div class="flex_caption1 FromTop">
                                        <!--<img class="emblem" src="images/logo.jpg" alt="" />-->
                                        <p>Start your search with registration</p>
                                        <span>Once registered, click on the tab menu - shop and find what are you looking for</span>
                                        <a class="btn btn-white" href="/signUp" >Sign Up</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="slide2">
                            <div class="container">
                                <div class="caption_middle clearfix">
                                    <div class="flex_caption1 FromLeft">
                                        <p>say something wonderful here</p>
                                        <span>Aliquam tempus est sit amet orci porta condimentum. Quisque hendrerit velit erat, in</span>
                                        <a class="btn btn-active" href="/signIn" >Sign In</a>
                                    </div>
                                    <div class="flex_caption2 FromRight"><img src="images/slider/caption_img1.png" alt="" /></div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div><!-- //SLIDER -->

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
