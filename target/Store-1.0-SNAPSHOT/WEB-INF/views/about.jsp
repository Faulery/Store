<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<html>
<head>
    <meta charset="utf-8">
    <title>F&B | About</title>
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
                        <h2 class="pull-left">About Our Project</h2>
                        <ol class="pull-right breadcrumb">
                            <li><a href="/">Home</a></li>
                            <li><a href="/about">About</a></li>
                        </ol>
                    </div>
                </div><!-- //CONTAINER -->
                <div class="overlay"></div>
                <div class="overlay_black"></div>
            </section><!-- //BREADCRUMBS -->


            <!-- OUR VISION -->
            <section class="our_vision">

                <!-- CONTAINER -->
                <div class="container">
                    <div class="row" data-animated="fadeIn">
                        <div class="col-lg-6 col-md-6 col-sm-7 padbot20">
                            <div class="flexslider vision_slider">
                                <ul class="slides">
                                    <li class="slide1">
                                        <img src="images/projects/1.jpg" />
                                    </li>
                                    <li class="slide2">
                                        <img src="images/projects/2.jpg" />
                                    </li>
                                    <li class="slide3">
                                        <img src="images/projects/3.jpg" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-5">
                            <h2>Our Vision</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat veniam aut perferendis eos quidem ratione consequuntur quod dolorum magnam inventore delectus dolor possimus! Non animi doloribus rem quos vero deleniti veniam rerum architecto hic earum. <span class="color_text">Quidem debitis quia ducimus temporibus</span> mollitia culpa cupiditate odit et repellat fugit!</p>
                            <p>Similique magni iusto dolor soluta sint culpa sit dolorem ad perspiciatis sapiente ut quis exercitationem distinctio! Natus voluptate odio maiores in soluta quam quidem ut aliquid aliquam laborum esse voluptatibus reiciendis! <span class="color_text">Optio eaque quasi vel necessitatibus</span> rerum maiores molestiae ab maxime fugiat saepe placeat exercitationem eveniet dolorem incidunt quia ipsum obcaecati voluptates voluptate neque accusantium ea nihil adipisci.</p>
                        </div>
                    </div>
                </div><!-- //CONTAINER -->
            </section><!-- //OUR VISION -->


            <!-- OUR MISSION -->
            <section class="our_mission padtop0">

                <!-- CONTAINER -->
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 padbot20" data-animated="fadeIn">
                            <h2>Our Skills</h2>

                            <!-- OUR SKILLS -->
                            <div class="our-skills">
                                <div class="skill_item">
                                    <span>Wordpress Development</span>
                                    <div class="skill-bar" href="javascript:void(0);" alt="">
                                        <i>80%</i>
                                        <div class="progress-complete" data-width="80%"></div>
                                    </div>
                                </div>
                                <div class="skill_item">
                                    <span>WEB DESIGN</span>
                                    <div class="skill-bar" href="javascript:void(0);" alt="">
                                        <i>40%</i>
                                        <div class="progress-complete" data-width="40%"></div>
                                    </div>
                                </div>
                                <div class="skill_item">
                                    <span>GAME DEVELOPMENT</span>
                                    <div class="skill-bar" href="javascript:void(0);" alt="">
                                        <i>100%</i>
                                        <div class="progress-complete" data-width="100%"></div>
                                    </div>
                                </div>
                                <div class="skill_item">
                                    <span>graphic design</span>
                                    <div class="skill-bar" href="javascript:void(0);" alt="">
                                        <i>75%</i>
                                        <div class="progress-complete" data-width="75%"></div>
                                    </div>
                                </div>
                            </div><!-- //OUR SKILLS -->
                        </div>
                        <div class="col-lg-6 col-sm-6" data-animated="fadeIn">
                            <h2>Our Mission</h2>

                            <!-- ACCORDION -->
                            <div id="accordion">
                                <h4>Section 1</h4>
                                <div>
                                    <p>Mauris mauris ante, blandit et, ultrices a, susceros. Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate. fugiat saepe placeat.</p>
                                </div>
                                <h4>Section 2</h4>
                                <div>
                                    <p>Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus.</p>
                                </div>
                                <h4>Section 3</h4>
                                <div>
                                    <p>Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus.</p>
                                </div>
                            </div><!-- //ACCORDION -->
                        </div>
                    </div>
                </div><!-- //CONTAINER -->
            </section><!-- //OUR MISSION -->

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
