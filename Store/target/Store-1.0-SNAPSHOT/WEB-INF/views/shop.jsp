<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<html>
<head>
    <title>Shop</title>
    <meta charset="utf-8">
    <title>F&B | Shop</title>
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
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
    <script src="js/sorting.js" type="text/javascript"></script>
    <script src="js/jquery.twitter.js" type="text/javascript"></script>
    <script src="js/superfish.min.js" type="text/javascript"></script>
    <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="js/animate.js" type="text/javascript"></script>
    <script src="js/myscript.js" type="text/javascript"></script>

</head>
<body>



<div id="preloader"><img src="images/preloader.gif" alt="" /></div>

<c:forEach var="laptop" items="${laptops}">
    <div>
        ${laptop.id} ${laptop.brand} ${laptop.prise} ${laptop.quantity}
        <a href="deleteLaptop/${laptop.id}">Delete</a>
    </div>
    <br>
</c:forEach>

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
                                    </ul>
                                </li>

                                <li class="sub-menu"><a href="/blog" >Blog</a</li>
                                <li class="last"><a href="/contacts" >Contacts</a></li>
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
                        <h2 class="pull-left">Welcome to our Shop</h2>
                        <ol class="pull-right breadcrumb">
                            <li><a href="/">Home</a></li>
                            <li><a href="#">Shop</a></li>
                        </ol>
                    </div>
                </div><!-- //CONTAINER -->
                <div class="overlay"></div>
                <div class="overlay_black"></div>
            </section><!-- //BREADCRUMBS -->


            <!-- SHOP -->
            <section class="shop">

                <!-- CONTAINER -->
                <div class="container">

                    <!-- ROW -->
                    <div class="row">

                        <!-- Shop Products -->
                        <div class="col-lg-9 col-sm-9 padbot20">

                            <div class="sorting_options clearfix">
                                <a class="btn-compare" href="javascript:void(0);" alt="">Compare</a>
                                <!-- filter_block -->
                                <div id="options" class="product_sort">
                                    <div class="filter_btn"><span class="sorting_options_text">Sort by</span><span class="pull-right glyphicon glyphicon-chevron-down"></span><div class="clear"></div></div>
                                    <ul id="filter" class="option-set" data-option-key="filter">
                                        <li><a class="selected" href="#filter" data-option-value="*">Default sorting</a></li>
                                        <li><a class="" href="#filter" data-option-value=".category1">Popularity</a></li>
                                        <li><a class="" href="#filter" data-option-value=".category2">Average Rating</a></li>
                                        <li><a class="" href="#filter" data-option-value=".category3">Newness</a></li>
                                        <li><a class="" href="#filter" data-option-value=".category4">Low to High</a></li>
                                        <li><a class="" href="#filter" data-option-value=".category5">High to Low</a></li>
                                    </ul>
                                </div>
                                <script>
                                    $("#filter").hide();
                                    $(".filter_btn, #filter li a").click(function() {
                                        $("#filter").slideToggle("fast");
                                    });
                                </script>
                                <!-- //filter_block -->

                                <!-- Produc Size -->
                                <div id="toggle-sizes">
                                    <a class="view_full" href="javascript:void(0);"><span class="glyphicon glyphicon-th-list"></span></a>
                                    <a class="view_box" href="javascript:void(0);"><span class="glyphicon glyphicon-th-large"></span></a>
                                </div>
                                <!-- //Produc Size -->

                                <!-- Pagination -->
                                <ul class="pull-right pagination">
                                    <li><a href="#">&laquo;</a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">&raquo;</a></li>
                                </ul><!-- //Pagination -->

                            </div>

                            <div class="row shop_block">
                                <div class="element category1 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12">
                                    <div class="product_item center margbot30">
                                        <div class="hover_img">
                                            <img src="images/products/1.jpg" alt="" />
                                        </div>
                                        <div class="item_btn_in center">
                                            <a class="tovar_add" href="javascript:void(0);" alt="">Add to Cart</a>
                                            <a class="tovar_open" href="product-page.html" alt="">Open</a>
                                        </div>
                                        <div class="project_descr">
                                            <h4><a href="/product" alt="">Nullam turpis quam</a></h4>
                                            <span class="price">$100</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit.</p>
                                            <p>Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="element category2 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12">
                                    <div class="product_item center margbot30">
                                        <div class="hover_img">
                                            <img src="images/products/2.jpg" alt="" />
                                        </div>
                                        <div class="item_btn_in center">
                                            <a class="tovar_add" href="javascript:void(0);" alt="">Add to Cart</a>
                                            <a class="tovar_open" href="product-page.html" alt="">Open</a>
                                        </div>
                                        <div class="project_descr">
                                            <h4><a href="product-page.html" alt="">Nullam turpis quam</a></h4>
                                            <span class="price">$100</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit.</p>
                                            <p>Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="element category3 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12">
                                    <div class="product_item center margbot30">
                                        <div class="hover_img">
                                            <img src="images/products/3.jpg" alt="" />
                                        </div>
                                        <div class="item_btn_in center">
                                            <a class="tovar_add" href="javascript:void(0);" alt="">Add to Cart</a>
                                            <a class="tovar_open" href="product-page.html" alt="">Open</a>
                                        </div>
                                        <div class="project_descr">
                                            <h4><a href="product-page.html" alt="">Nullam turpis quam</a></h4>
                                            <span class="price">$100</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit.</p>
                                            <p>Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="element category4 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12">
                                    <div class="product_item center margbot30">
                                        <div class="hover_img">
                                            <img src="images/products/4.jpg" alt="" />
                                        </div>
                                        <div class="item_btn_in center">
                                            <a class="tovar_add" href="javascript:void(0);" alt="">Add to Cart</a>
                                            <a class="tovar_open" href="product-page.html" alt="">Open</a>
                                        </div>
                                        <div class="project_descr">
                                            <h4><a href="product-page.html" alt="">Nullam turpis quam</a></h4>
                                            <span class="price">$100</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit.</p>
                                            <p>Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="element category5 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12">
                                    <div class="product_item center margbot30">
                                        <div class="hover_img">
                                            <img src="images/products/5.jpg" alt="" />
                                        </div>
                                        <div class="item_btn_in center">
                                            <a class="tovar_add" href="javascript:void(0);" alt="">Add to Cart</a>
                                            <a class="tovar_open" href="product-page.html" alt="">Open</a>
                                        </div>
                                        <div class="project_descr">
                                            <h4><a href="product-page.html" alt="">Nullam turpis quam</a></h4>
                                            <span class="price">$100</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit.</p>
                                            <p>Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="element category1 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12">
                                    <div class="product_item center margbot30">
                                        <div class="hover_img">
                                            <img src="images/products/6.jpg" alt="" />
                                        </div>
                                        <div class="item_btn_in center">
                                            <a class="tovar_add" href="javascript:void(0);" alt="">Add to Cart</a>
                                            <a class="tovar_open" href="product-page.html" alt="">Open</a>
                                        </div>
                                        <div class="project_descr">
                                            <h4><a href="product-page.html" alt="">Nullam turpis quam</a></h4>
                                            <span class="price">$100</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit.</p>
                                            <p>Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="element category2 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12">
                                    <div class="product_item center margbot30">
                                        <div class="hover_img">
                                            <img src="images/products/7.jpg" alt="" />
                                        </div>
                                        <div class="item_btn_in center">
                                            <a class="tovar_add" href="javascript:void(0);" alt="">Add to Cart</a>
                                            <a class="tovar_open" href="product-page.html" alt="">Open</a>
                                        </div>
                                        <div class="project_descr">
                                            <h4><a href="product-page.html" alt="">Nullam turpis quam</a></h4>
                                            <span class="price">$100</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit.</p>
                                            <p>Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="element category3 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12">
                                    <div class="product_item center margbot30">
                                        <div class="hover_img">
                                            <img src="images/products/8.jpg" alt="" />
                                        </div>
                                        <div class="item_btn_in center">
                                            <a class="tovar_add" href="javascript:void(0);" alt="">Add to Cart</a>
                                            <a class="tovar_open" href="product-page.html" alt="">Open</a>
                                        </div>
                                        <div class="project_descr">
                                            <h4><a href="product-page.html" alt="">Nullam turpis quam</a></h4>
                                            <span class="price">$100</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit.</p>
                                            <p>Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="element category4 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-ss-12">
                                    <div class="product_item center margbot30">
                                        <div class="hover_img">
                                            <img src="images/products/9.jpg" alt="" />
                                        </div>
                                        <div class="item_btn_in center">
                                            <a class="tovar_add" href="javascript:void(0);" alt="">Add to Cart</a>
                                            <a class="tovar_open" href="product-page.html" alt="">Open</a>
                                        </div>
                                        <div class="project_descr">
                                            <h4><a href="product-page.html" alt="">Nullam turpis quam</a></h4>
                                            <span class="price">$100</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi archi tecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit.</p>
                                            <p>Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Pagination -->
                            <ul class="pagination">
                                <li><a href="#">&laquo;</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">&raquo;</a></li>
                            </ul><!-- //Pagination -->

                        </div><!-- //Shop Products -->

                        <!-- Sidebar -->
                        <div id="sidebar" class="col-lg-3 col-sm-3">
                            <!-- Search -->
                            <div class="sidepanel widget_search">
                                <form class="search_form" action="#" method="" name="">
                                    <input type="text" name="Search the site..." value="Search the site..." onFocus="if (this.value == 'Search the site...') this.value = '';" onBlur="if (this.value == '') this.value = 'Search the site...';" />
                                </form>
                            </div><!-- //Search -->

                            <!-- Shop Cart -->
                            <div class="sidepanel widget_shopcart">
                                <h4>Shopping Cart</h4>
                                <div id="cart">
                                    <ul class="cart-items">
                                        <li>
                                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            <a href="product-page.html" class="cart-item-title">Nullam turpis quam</a>
                                            <span class="cart-item-amount"><a class="item-remove" href=""></a> 2 x $100</span>
                                        </li>
                                        <li>
                                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            <a href="product-page.html" class="cart-item-title">Nullam turpis quam</a>
                                            <span class="cart-item-amount"><a class="item-remove" href=""></a> 1 x $100</span>
                                        </li>
                                    </ul>
                                    <span class="cart-subtotal">Subtotal: <strong>$300</strong></span>
                                    <div class="right">
                                        <a class="btn btn-xs margbot5" href="javascript:void(0);">View Cart</a>
                                        <a class="btn btn-xs margbot5" href="javascript:void(0);">Checkout</a>
                                    </div>
                                </div>
                            </div><!-- //Shop Cart -->

                            <!-- Price Range -->
                            <div class="sidepanel widget_pricefilter">
                                <h4>Filter by Price</h4>
                                <div id="price-range">
                                    <div class="padding-range"><div id="slider-range"></div></div>
                                    <label for="amount">Price:</label>
                                    <input type="text" id="amount"/>
                                    <a class="pull-right btn btn-xs" href="javascript:void(0);">Filter</a>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>

                            <!-- Categories -->
                            <div class="sidepanel widget_categories">
                                <h4>Product Categories</h4>
                                <ul class="list4">
                                    <li><b class="glyphicon glyphicon-ok"></b><a href="javascript:void(0);">Vestibulum molestie</a></li>
                                    <li><b class="glyphicon glyphicon-ok"></b><a href="javascript:void(0);">Aenean nonummy</a></li>
                                    <li><b class="glyphicon glyphicon-ok"></b><a href="javascript:void(0);">Hendrerit </a></li>
                                    <li><b class="glyphicon glyphicon-ok"></b><a href="javascript:void(0);">Phasellus porta</a></li>
                                </ul>
                            </div>

                            <div class="sidepanel widget_products">
                                <h4>Popular Products</h4>
                                <ul class="popular_products">
                                    <li>
                                        <div class="pull-left popular_product_img">
                                            <img src="images/products/1.jpg" width="70" height="70" alt="" />
                                        </div>
                                        <div class="popular_product_descr">
                                            <a class="title" href="product-page.html">Pellentesque consequat</a>
                                            Aptent taciti sociosqu litoran torquente per
                                            <span class="price color_text">$150</span>
                                        </div>
                                        <div class="clear"></div>
                                    </li>
                                    <li>
                                        <div class="pull-left popular_product_img">
                                            <img src="images/products/2.jpg" width="70" height="70" alt="" />
                                        </div>
                                        <div class="popular_product_descr">
                                            <a class="title" href="product-page.html">Lorem Ipsum Dolor</a>
                                            Sociosqu litoran a torquente per vestibulum
                                            <span class="price color_text">$99</span>
                                        </div>
                                        <div class="clear"></div>
                                    </li>
                                </ul>
                            </div><!-- .sidepanel -->

                        </div><!-- //Sidebar -->
                    </div><!-- //ROW -->
                </div><!-- //CONTAINER -->
            </section><!-- //SHOP -->

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
