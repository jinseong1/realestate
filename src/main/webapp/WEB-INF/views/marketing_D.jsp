<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>${data.HOMEPAGE_NAME}</title>
    <meta name="description" content="${data.HOMEPAGE_NAME} 오피스텔 상가 아파트 분양 ${data.VIEW_TEL}"/>
    <meta name="keywords" content="부동산, 프로그램, 홍보, 분양, 아파트, 오피스텔, 상가, 토지, 트루코드, TRUECODE, 아파텔, 오피스, 사무실"/>
    <meta name="author" content="트루코드">

    <link rel="canonical" href="${data.URL}">

    <meta name="robots" content="all">
    <meta name="google-site-verification" content="${data.GOOGLE_META}" />
    <meta name="naver-site-verification" content="${data.NAVER_META}" />

    <meta name="NaverBot" content="All"/>
    <meta name="NaverBot" content="index, follow"/>
    <meta name="Yeti" content="All"/>
    <meta name="Yeti" content="index, follow"/>

    <meta property="og:locale" content="ko_KR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="${data.HOMEPAGE_NAME}" />
    <meta property="og:description" content="분양홍보관 ${data.VIEW_TEL}" />
    <meta property="og:url" content="${data.URL}" />
    <meta property="og:site_name" content="${data.HOMEPAGE_NAME}" />
    <meta property="og:image" content="${data.URL}${data.MAIN_IMG_PATH}" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="700" />
    <meta property="og:image:type" content="image/jpeg" />

    <meta name="twitter:card" content="photo">
    <meta name="twitter:site" content="${data.HOMEPAGE_NAME}">
    <meta name="twitter:url" content="${data.URL}">
    <meta name="twitter:title" content="${data.HOMEPAGE_NAME}">
    <meta name="twitter:description" content="${data.HOMEPAGE_NAME} 오피스텔 상가 아파트 분양 ${data.VIEW_TEL}">
    <meta name="twitter:image" content="${data.URL}${data.MAIN_IMG_PATH}">
    <meta name="twitter:image:width" content="500">
    <meta name="twitter:image:height" content="500">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="/resources/front/D/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="/resources/front/D/css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="/resources/front/D/css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="/resources/front/D/images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="/resources/front/D/css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->
<body class="main-layout">
<!-- loader  -->
<div class="loader_bg">
    <div class="loader"><img src="/resources/front/D/images/loading.gif" alt="#" /></div>
</div>
<!-- end loader -->
<!-- header -->
<header>
    <!-- header inner -->
    <div class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo">
                                <a href="index.html">샘플페이지</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                    <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="index.html">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="about.html">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="computer.html">Computer</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="laptop.html">Laptop</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="product.html">Products</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">Contact Us</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- end header inner -->
<!-- end header -->
<!-- banner -->
<section class="banner_main">
    <div id="banner1" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#banner1" data-slide-to="0" class="active"></li>
            <li data-target="#banner1" data-slide-to="1"></li>
            <li data-target="#banner1" data-slide-to="2"></li>
            <li data-target="#banner1" data-slide-to="3"></li>
            <li data-target="#banner1" data-slide-to="4"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text-bg">
                                    <span>Computer And Laptop</span>
                                    <h1>Accessories</h1>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or </p>
                                    <a href="#">Buy Now </a> <a href="contact.html">Contact </a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text_img">
                                    <figure><img src="/resources/front/D/images/pct.png" alt="#"/></figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text-bg">
                                    <span>Computer And Laptop</span>
                                    <h1>Accessories</h1>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or </p>
                                    <a href="#">Buy Now </a> <a href="contact.html">Contact </a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text_img">
                                    <figure><img src="/resources/front/D/images/pct.png" alt="#"/></figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text-bg">
                                    <span>Computer And Laptop</span>
                                    <h1>Accessories</h1>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or </p>
                                    <a href="#">Buy Now </a> <a href="contact.html">Contact </a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text_img">
                                    <figure><img src="/resources/front/D/images/pct.png" alt="#"/></figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text-bg">
                                    <span>Computer And Laptop</span>
                                    <h1>Accessories</h1>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or </p>
                                    <a href="#">Buy Now </a> <a href="contact.html">Contact </a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text_img">
                                    <figure><img src="/resources/front/D/images/pct.png" alt="#"/></figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text-bg">
                                    <span>Computer And Laptop</span>
                                    <h1>Accessories</h1>
                                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or </p>
                                    <a href="#">Buy Now </a> <a href="contact.html">Contact </a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text_img">
                                    <figure><img src="/resources/front/D/images/pct.png" alt="#"/></figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#banner1" role="button" data-slide="prev">
            <i class="fa fa-chevron-left" aria-hidden="true"></i>
        </a>
        <a class="carousel-control-next" href="#banner1" role="button" data-slide="next">
            <i class="fa fa-chevron-right" aria-hidden="true"></i>
        </a>
    </div>
</section>
<!-- end banner -->
<!-- three_box -->
<div class="three_box">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="box_text">
                    <i><img src="/resources/front/D/images/thr.png" alt="#"/></i>
                    <h3>Computer</h3>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. </p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="box_text">
                    <i><img src="/resources/front/D/images/thr1.png" alt="#"/></i>
                    <h3>Laptop</h3>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. </p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="box_text">
                    <i><img src="/resources/front/D/images/thr2.png" alt="#"/></i>
                    <h3>Tablet</h3>
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- three_box -->
<!-- products -->
<div  class="products">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">
                    <h2>Our Products</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="our_products">
                    <div class="row">
                        <div class="col-md-4 margin_bottom1">
                            <div class="product_box">
                                <figure><img src="/resources/front/D/images/product1.png" alt="#"/></figure>
                                <h3>Computer</h3>
                            </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                            <div class="product_box">
                                <figure><img src="/resources/front/D/images/product2.png" alt="#"/></figure>
                                <h3>Laptop</h3>
                            </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                            <div class="product_box">
                                <figure><img src="/resources/front/D/images/product3.png" alt="#"/></figure>
                                <h3>Tablet</h3>
                            </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                            <div class="product_box">
                                <figure><img src="/resources/front/D/images/product4.png" alt="#"/></figure>
                                <h3>Speakers</h3>
                            </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                            <div class="product_box">
                                <figure><img src="/resources/front/D/images/product5.png" alt="#"/></figure>
                                <h3>internet</h3>
                            </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                            <div class="product_box">
                                <figure><img src="/resources/front/D/images/product6.png" alt="#"/></figure>
                                <h3>Hardisk</h3>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product_box">
                                <figure><img src="/resources/front/D/images/product7.png" alt="#"/></figure>
                                <h3>Rams</h3>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product_box">
                                <figure><img src="/resources/front/D/images/product8.png" alt="#"/></figure>
                                <h3>Bettery</h3>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="product_box">
                                <figure><img src="/resources/front/D/images/product9.png" alt="#"/></figure>
                                <h3>Drive</h3>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <a class="read_more" href="#">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end products -->
<!-- laptop  section -->
<div class="laptop">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="titlepage">
                    <p>Every Computer and laptop</p>
                    <h2>Up to 40% off !</h2>
                    <a class="read_more" href="#">Shop Now</a>
                </div>
            </div>
            <div class="col-md-6">
                <div class="laptop_box">
                    <figure><img src="/resources/front/D/images/pc.png" alt="#"/></figure>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- end laptop  section -->
<!-- customer -->
<div class="customer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">
                    <h2>Customer Review</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div id="myCarousel" class="carousel slide customer_Carousel " data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container">
                                <div class="carousel-caption ">
                                    <div class="row">
                                        <div class="col-md-9 offset-md-3">
                                            <div class="test_box">
                                                <i><img src="/resources/front/D/images/cos.png" alt="#"/></i>
                                                <h4>Sandy Miller</h4>
                                                <p>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption">
                                    <div class="row">
                                        <div class="col-md-9 offset-md-3">
                                            <div class="test_box">
                                                <i><img src="/resources/front/D/images/cos.png" alt="#"/></i>
                                                <h4>Sandy Miller</h4>
                                                <p>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption">
                                    <div class="row">
                                        <div class="col-md-9 offset-md-3">
                                            <div class="test_box">
                                                <i><img src="/resources/front/D/images/cos.png" alt="#"/></i>
                                                <h4>Sandy Miller</h4>
                                                <p>ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end customer -->

<!--  contact -->
<div class="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="titlepage">
                    <h2>Contact Now</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-10 offset-md-1">
                <form id="request" class="main_form">
                    <div class="row">
                        <div class="col-md-12 ">
                            <input class="contactus" placeholder="Name" type="type" name="Name">
                        </div>
                        <div class="col-md-12">
                            <input class="contactus" placeholder="Email" type="type" name="Email">
                        </div>
                        <div class="col-md-12">
                            <input class="contactus" placeholder="Phone Number" type="type" name="Phone Number">
                        </div>
                        <div class="col-md-12">
                            <textarea class="textarea" placeholder="Message" type="type" Message="Name">Message </textarea>
                        </div>
                        <div class="col-md-12">
                            <button class="send_btn">Send</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- end contact -->
<!--  footer -->
<footer>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <img class="logo1" src="/resources/front/D/images/logo1.png" alt="#"/>
                    <ul class="social_icon">
                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <h3>About Us</h3>
                    <ul class="about_us">
                        <li>dolor sit amet, consectetur<br> magna aliqua. Ut enim ad <br>minim veniam, <br> quisdotempor incididunt r</li>
                    </ul>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <h3>Contact Us</h3>
                    <ul class="conta">
                        <li>dolor sit amet,<br> consectetur <br>magna aliqua.<br> quisdotempor <br>incididunt ut e </li>
                    </ul>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                    <form class="bottom_form">
                        <h3>Newsletter</h3>
                        <input class="enter" placeholder="Enter your email" type="text" name="Enter your email">
                        <button class="sub_btn">subscribe</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p>© 2019 All Rights Reserved. Design by<a href="https://html.design/"> Free Html Templates</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
<!-- Javascript files-->
<script src="/resources/front/D/js/jquery.min.js"></script>
<script src="/resources/front/D/js/popper.min.js"></script>
<script src="/resources/front/D/js/bootstrap.bundle.min.js"></script>
<script src="/resources/front/D/js/jquery-3.0.0.min.js"></script>
<!-- sidebar -->
<script src="/resources/front/D/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="/resources/front/D/js/custom.js"></script>
</body>
</html>