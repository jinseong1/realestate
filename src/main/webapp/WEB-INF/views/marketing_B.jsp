<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <!-- Meta -->
    <title>${data.HOMEPAGE_NAME}</title>
    <meta charset="UTF-8">

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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Styles -->
    <link href="/resources/front/B/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/front/B/vendor/animate/animate.css" rel="stylesheet" type="text/css"/>
    <link href="/resources/front/B/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<!-- Navbar -->
<div class="navigation container-fluid">
    <div class="row justify-content-md-center ">
        <div class="col-md-10 col-sm-12">
            <nav class="navbar navbar-default">
                <a class="navbar-brand" href="/">
                    <img src="/resources/front/B/img/logo-black.png" height="22" alt="Logo">
                </a>
                <div class="button_container" id="toggle">
                    <span class="black top"></span>
                    <span class="black middle"></span>
                    <span class="black bottom"></span>
                </div>
                <div class="overlay" id="overlay">
                    <nav class="overlay-menu">
                        <ul>
                            <li> <a href="/">About</a></li>
                            <li> <a href="/">Story</a></li>
                            <li> <a href="/">Services</a></li>
                            <li> <a href="/">Contacts</a></li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- End Navbar -->
<!-- Portfolio-Text -->
<div class="container-fluid pb-5 portfolio-text">
    <div class="row">
        <div class="col-md-7 offset-md-1 col-sm-12">
            <h2>Donec rutrum congue leo eget malesuada lacinia eget consectetur.
            </h2>
        </div>
    </div>
    <div class="row">
        <div class="col-md-7 offset-md-1 col-sm-12">
            <p class="pb-5 pt-5">
                Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna convallis at tellus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.
            </p>
        </div>
    </div>
</div>
<!-- End Portfolio-Text -->
<!-- Gallery -->
<div class="scrollblock">
    <div class="container-fluid pt-10">
        <div class="row justify-content-md-center ">
            <div class="col-md-10 col-sm-12">
                <div class="card-columns">
                    <div class="card card-hover h-100" >
                        <div class="card-body">
                            <a href="/">
                                <img class="card-img-top" src="/resources/front/B/img/photo-1.jpg" alt="Card image cap">
                                <div class="reveal h-100 p-2 d-flex ">
                                    <div class="w-100 align-self-center">
                                        <p> Curabitur non nulla</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="card card-hover h-100" >
                        <div class="card-body">
                            <a href="/">
                                <img class="card-img-top" src="/resources/front/B/img/photo-2.jpg" alt="Card image cap">
                                <div class="reveal h-100 p-2 d-flex ">
                                    <div class="w-100 align-self-center">
                                        <p>Vivamus magna convallis</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="card card-hover h-100">
                        <div class="card-body">
                            <a href="/">
                                <img class="card-img-top" src="/resources/front/B/img/photo-3.jpg" alt="Card image cap">
                                <div class="reveal h-100 p-2 d-flex ">
                                    <div class="w-100 align-self-center">
                                        <p>Lacinia eget consectetur</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="card card-hover h-100">
                        <div class="card-body">
                            <a href="/">
                                <img class="card-img-top" src="/resources/front/B/img/photo-4.jpg" alt="Card image cap">
                                <div class="reveal h-100 p-2 d-flex ">
                                    <div class="w-100 align-self-center">
                                        <p>Convallis a pellentesque</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="card card-hover h-100">
                        <div class="card-body">
                            <a href="/">
                                <img class="card-img-top" src="/resources/front/B/img/photo-5.jpg" alt="Card image cap">
                                <div class="reveal h-100 p-2 d-flex ">
                                    <div class="w-100 align-self-center">
                                        <p>Egestas non nisi</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="card card-hover h-100">
                        <div class="card-body">
                            <a href="/">
                                <img class="card-img-top" src="/resources/front/B/img/photo-6.jpg" alt="Card image cap">
                                <div class="reveal h-100 p-2 d-flex ">
                                    <div class="w-100 align-self-center">
                                        <p>Vivamus magna convallis</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="card card-hover h-100">
                        <div class="card-body">
                            <a href="/">
                                <img class="card-img-top" src="/resources/front/B/img/photo-7.jpg" alt="Card image cap">
                                <div class="reveal h-100 p-2 d-flex ">
                                    <div class="w-100 align-self-center">
                                        <p>Eget malesuada lacinia</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="card card-hover h-100">
                        <div class="card-body">
                            <a href="/">
                                <img class="card-img-top" src="/resources/front/B/img/photo-8.jpg" alt="Card image cap">
                                <div class="reveal h-100 p-2 d-flex ">
                                    <div class="w-100 align-self-center">
                                        <p>Donec rutrum congue</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="card card-hover h-100">
                        <div class="card-body">
                            <a href="/">
                                <img class="card-img-top" src="/resources/front/B/img/photo-9.jpg" alt="Card image cap">
                                <div class="reveal h-100 p-2 d-flex ">
                                    <div class="w-100 align-self-center">
                                        <p>Magna eget rutrum</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Gallery -->
<!-- Footer -->
<div class="container-fluid footer ">
    <div class="row">
        <div class="col-xl-2 col-md-8 offset-md-1 col-sm-12 ">
            <p>
                <a href="/">About</a><br>
                <a href="/">Story</a><br>
                <a href="/">Services</a><br>
                <a href="/">Contacts</a><br>
            </p>
        </div>
        <div class="col-xl-2 col-md-8 offset-md-1 col-sm-12 ">
            <p>
                <a href="/">Privacy</a><br>
                <a href="/">Termini di utilizzo </a><br>
                <a href="/">Note legali </a><br>
                <a href="/">Credits</a><br>
            </p>
        </div>
        <div class="col-xl-2 col-md-8 offset-md-1 col-sm-12">
            <p>사업자명:트루코드|대표자명:박진성|사업자번호:573-32-01264</p>
        </div>
    </div>
</div>
<!-- End Footer -->
<!-- Javascript -->
<script src="/resources/front/B/vendor/jquery.min.js"></script>
<script src="/resources/front/B/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/resources/front/B/vendor/wow/wow.js"></script>
<script src="/resources/front/B/js/script.js"></script>
<script>
    // new WOW().init();
</script>
<!-- End Javascript -->
</body>
</html>