<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Eroor</title>
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

            <!-- BREADCRUMBS -->
            <section class="full_width breadcrumbs_block clearfix">

                <!-- CONTAINER -->
                <div class="container">

                    <div class="breadcrumbs_content">
                        <h2 class="pull-left">404 Error</h2>
                        <ol class="pull-right breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="javascript:void(0);">Pages</a></li>
                            <li><a href="javascript:void(0);">404 Error</a></li>
                        </ol>
                    </div>
                </div><!-- CONTAINER -->
                <div class="overlay"></div>
                <div class="overlay_black"></div>
            </section><!-- //BREADCRUMBS -->


            <!-- 404 ERROR -->
            <section class="block_404 center">

                <!-- CONTAINER -->
                <div class="container">

                    <div class="wrapper404" data-animated="fadeIn">
                        <h1 class="margbot0">OOPS! NOT FOUND :(</h1>
                        <h4>Apologies, but we were unable to find what you were looking for.</h4>
                        <form class="search_form" action="#" method="" name="">
                            <input type="text" name="Search the site..." value="Search the site..." onFocus="if (this.value == 'Search the site...') this.value = '';" onBlur="if (this.value == '') this.value = 'Search the site...';" />
                        </form>
                    </div>
                </div><!-- //CONTAINER -->
            </section><!-- //404 ERROR -->

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
