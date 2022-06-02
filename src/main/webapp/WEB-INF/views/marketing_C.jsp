<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
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

    <title>${data.HOMEPAGE_NAME}</title>

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="/resources/front/C/css/bootstrap.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/front/C/css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="/resources/front/C/css/responsive.css" rel="stylesheet" />
</head>

<body>

<div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-11 offset-lg-1">
                    <nav class="navbar navbar-expand-lg custom_nav-container ">
                        <a class="navbar-brand" href="index.html">
                            <span>Uliya</span>
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
                                <ul class="navbar-nav  ">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="about.html"> About</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="portfolio.html"> Portfolio </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="contact.html">Contact Us</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-5 offset-md-1 ">
                                <div class="detail_box">
                                    <h1>
                                        photography <br>
                                        studio
                                    </h1>
                                    <p>
                                        It is a long established fact that a reader will be distracted by the readable content
                                    </p>
                                    <div class="btn-box">
                                        <a href="" class="btn-1">
                                            About Us
                                        </a>
                                        <a href="" class="btn-2">
                                            Get A Quote
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 px-0">
                                <div class="img-box">
                                    <img src="/resources/front/C/images/slider-img.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-5 offset-md-1">
                                <div class="detail_box">
                                    <h1>
                                        photography <br>
                                        studio
                                    </h1>
                                    <p>
                                        It is a long established fact that a reader will be distracted by the readable content
                                    </p>
                                    <div class="btn-box">
                                        <a href="" class="btn-1">
                                            About Us
                                        </a>
                                        <a href="" class="btn-2">
                                            Get A Quote
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 px-0">
                                <div class="img-box">
                                    <img src="/resources/front/C/images/slider-img.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-5 offset-md-1">
                                <div class="detail_box">
                                    <h1>
                                        photography <br>
                                        studio
                                    </h1>
                                    <p>
                                        It is a long established fact that a reader will be distracted by the readable content
                                    </p>
                                    <div class="btn-box">
                                        <a href="" class="btn-1">
                                            About Us
                                        </a>
                                        <a href="" class="btn-2">
                                            Get A Quote
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 px-0">
                                <div class="img-box">
                                    <img src="/resources/front/C/images/slider-img.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel_btn-container">
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

    </section>
    <!-- end slider section -->
</div>

<!-- about section -->

<section class="about_section layout_padding">
    <div class="container">
        <div class="heading_container">
            <h2>
                About Studio
            </h2>
        </div>
        <div class="box">
            <div class="img-box">
                <img src="/resources/front/C/images/about-img.jpg" alt="">
                <div class="about_img-bg">
                    <img src="/resources/front/C/images/about-img-bg.png" alt="">
                </div>
            </div>
            <div class="detail-box">
                <p>
                    It is a long established fact that a reader will be distracted by the readable content of a page when
                    looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of
                    letters,
                </p>
                <div>
                    <a href="">
                        about More
                    </a>
                </div>
            </div>
        </div>
    </div>

</section>

<!-- end about section -->

<!-- portfolio section -->

<section class="portfolio_section layout_padding">
    <div class="container">
        <div class="heading_container">
            <h2>
                Our portfolio
            </h2>
            <p>
                minim veniam, quis nostrud exercitation ullamco laboris nisi
            </p>
        </div>
        <div class="portfolio_container layout_padding2">
            <div class="box-1">
                <div class="img-box b-1">
                    <img src="/resources/front/C/images/p-1.jpg" alt="">
                    <div class="btn-box">
                        <a href="" class="btn-1">

                        </a>
                    </div>
                </div>
                <div class="img-box b-2">
                    <img src="/resources/front/C/images/p-2.jpg" alt="">
                    <div class="btn-box">
                        <a href="" class="btn-1">

                        </a>
                    </div>
                </div>
            </div>
            <div class="box-2">
                <div class="box-2-top">
                    <div class="img-box b-3">
                        <img src="/resources/front/C/images/p-3.jpg" alt="">
                        <div class="btn-box">
                            <a href="" class="btn-1">

                            </a>
                        </div>
                    </div>
                </div>
                <div class="box-2-top2">
                    <div class="img-box b-4">
                        <img src="/resources/front/C/images/p-4.jpg" alt="">
                        <div class="btn-box">
                            <a href="" class="btn-1">

                            </a>
                        </div>
                    </div>
                </div>
                <div class="box-2-btm">
                    <div class="img-box b-5">
                        <img src="/resources/front/C/images/p-5.jpg" alt="">
                        <div class="btn-box">
                            <a href="" class="btn-1">

                            </a>
                        </div>
                    </div>
                    <div class="img-box b-6">
                        <img src="/resources/front/C/images/p-6.jpg" alt="">
                        <div class="btn-box">
                            <a href="" class="btn-1">

                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="see_btn">
            <a href="">
                See More
            </a>
        </div>
    </div>

</section>

<!-- end about section -->

<!-- achieve section -->

<section class="achieve_section layout_padding">
    <div class="container">
        <div class="heading_container">
            <h2>
                ACHIEVEMENTS
            </h2>
            <p>
                minim veniam, quis nostrud exercitation ullamco laboris nisi
            </p>
        </div>
        <div class="achieve_container">
            <div class="box">
                <div class="img-box">
                    <img src="/resources/front/C/images/a-1.png" alt="">
                </div>
                <div class="detail-box">
                    <h2>
                        1000+
                    </h2>
                    <h6>
                        Photo Session
                    </h6>
                </div>
            </div>
            <div class="box">
                <div class="img-box">
                    <img src="/resources/front/C/images/a-2.png" alt="">
                </div>
                <div class="detail-box">
                    <h2>
                        9000+
                    </h2>
                    <h6>
                        Happy Customers
                    </h6>
                </div>
            </div>
            <div class="box">
                <div class="img-box">
                    <img src="/resources/front/C/images/a-3.png" alt="">
                </div>
                <div class="detail-box">
                    <h2>
                        1000+
                    </h2>
                    <h6>
                        Archive Photographs
                    </h6>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end achieve section -->

<!-- client section -->

<section class="client_section layout_padding-bottom">
    <div class="container">
        <div class="heading_container">
            <h2>
                Testimonial
            </h2>
            <p>
                minim veniam, quis nostrud exercitation ullamco laboris nisi
            </p>
        </div>
        <div class="layout_padding2-top">
            <div id="carouselExample2Controls" class="carousel slide" data-ride="carousel">
                <div class="row">
                    <div class="col-md-3">
                        <div class="btn_container">
                            <a class="carousel-control-prev" href="#carouselExample2Controls" role="button" data-slide="prev">
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExample2Controls" role="button" data-slide="next">
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-9 col-lg-8">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="detail-box">
                                    <h4>
                                        Aloz den
                                    </h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                        labore
                                        et
                                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum
                                    </p>
                                </div>
                            </div>
                            <div class="carousel-item ">
                                <div class="detail-box">
                                    <h4>
                                        Aloz den
                                    </h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                        labore
                                        et
                                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum
                                    </p>
                                </div>
                            </div>
                            <div class="carousel-item ">
                                <div class="detail-box">
                                    <h4>
                                        Aloz den
                                    </h4>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                                        labore
                                        et
                                        dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</section>


<!-- end client section -->

<!-- contact section -->

<section class="contact_section layout_padding">
    <div class="bg-img1">
        <img src="/resources/front/C/images/bg-img-1.png" alt="">
    </div>
    <div class="bg-img2">
        <img src="/resources/front/C/images/bg-img-2.png" alt="">
    </div>
    <div class="container">
        <div class="heading_container">
            <h2>
                Contact Us
            </h2>
        </div>
        <div class="">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <form action="">
                        <div class="contact_form-container">
                            <div>
                                <div>
                                    <input type="text" placeholder="Name">
                                </div>
                                <div>
                                    <input type="text" placeholder="Phone Number">
                                </div>
                                <div>
                                    <input type="email" placeholder="Email">
                                </div>
                                <div class="">
                                    <input type="text" placeholder="Message" class="message_input">
                                </div>
                                <div class=" d-flex justify-content-center ">
                                    <button type="submit">
                                        Send
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- end contact section -->


<!-- info section -->
<section class="info_section ">

</section>

<!-- end info_section -->

<!-- footer section -->
<section class="container-fluid footer_section">
    <div class="container">
        <p>사업자명:트루코드|대표자명:박진성|사업자번호:573-32-01264</p>
    </div>
</section>
<!-- footer section -->

<script type="text/javascript" src="/resources/front/C/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/resources/front/C/js/bootstrap.js"></script>

</body>

</html>