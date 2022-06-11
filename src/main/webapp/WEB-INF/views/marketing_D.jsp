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
    <c:if test="${data.GOOGLE_META != null}">
        <meta name="google-site-verification" content="${data.GOOGLE_META}" />
    </c:if>
    <c:if test="${data.NAVER_META != null}">
        <meta name="naver-site-verification" content="${data.NAVER_META}" />
    </c:if>

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
    <style>
        .mob_footer {
            position: fixed;
            text-decoration: none;
            z-index: 2147483647;
            width: 100%;
            left: 0;
            bottom: 0;
            height: 60px;
            text-align: center;
            color: #fff;
            font-weight: 600;
            font-size: 120%;
            overflow: hidden;
            background: #48ca95;
            display: flex;
            justify-content: center;
            align-items: center;
            text-shadow: 0 1px 0px rgb(0 0 0 / 18%);
        }
        footer{
            padding-bottom: 60px;
        }
    </style>
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
                                <a href="javascript:void(0);">${data.HOMEPAGE_NAME}</a>
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
                                <c:if test="${data.USE_YN1 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top1">${data.TITLE1}</a></li></c:if>
                                <c:if test="${data.USE_YN2 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top2">${data.TITLE2}</a></li></c:if>
                                <c:if test="${data.USE_YN3 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top3">${data.TITLE3}</a></li></c:if>
                                <c:if test="${data.USE_YN4 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top4">${data.TITLE4}</a></li></c:if>
                                <c:if test="${data.USE_YN5 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top5">${data.TITLE5}</a></li></c:if>
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
<style>
    .banner_main {
        background-image: url(${data.MAIN_IMG_PATH});
    }
</style>
<section class="banner_main">
    <div id="banner1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="text_img">
                                    <figure></figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end banner -->
<!-- products -->
<div  class="products">
    <div class="container">
        <c:if test="${data.USE_YN1 == 'Y'}">
            <div class="row" id="top1">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>${data.TITLE1}</h2>
                    </div>
                </div>
            </div>
            <c:if test="${data.D1_USE_YN1 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH1}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEMO1}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN2 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH2}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEMO2}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN3 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH3}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEMO3}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN4 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH4}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEMO4}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN5 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH5}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEMO5}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN6 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH6}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEMO6}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN7 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH7}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEMO7}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN8 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH8}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEMO8}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN9 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH9}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEMO9}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN10 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH10}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D1_MEM10}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
        </c:if>
        <c:if test="${data.USE_YN2 == 'Y'}">
            <div class="row" id="top2">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>${data.TITLE2}</h2>
                    </div>
                </div>
            </div>
            <c:if test="${data.D2_USE_YN1 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH1}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEMO1}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN2 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH2}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEMO2}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN3 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH3}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEMO3}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN4 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH4}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEMO4}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN5 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH5}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEMO5}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN6 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH6}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEMO6}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN7 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH7}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEMO7}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN8 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH8}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEMO8}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN9 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH9}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEMO9}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN10 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH10}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D2_MEM10}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
        </c:if>
        <c:if test="${data.USE_YN3 == 'Y'}">
            <div class="row" id="top3">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>${data.TITLE3}</h2>
                    </div>
                </div>
            </div>
            <c:if test="${data.D3_USE_YN1 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH1}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEMO1}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN2 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH2}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEMO2}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN3 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH3}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEMO3}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN4 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH4}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEMO4}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN5 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH5}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEMO5}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN6 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH6}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEMO6}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN7 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH7}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEMO7}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN8 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH8}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEMO8}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN9 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH9}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEMO9}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN10 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH10}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D3_MEM10}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
        </c:if>
        <c:if test="${data.USE_YN4 == 'Y'}">
            <div class="row" id="top4">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>${data.TITLE4}</h2>
                    </div>
                </div>
            </div>
            <c:if test="${data.D4_USE_YN1 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH1}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEMO1}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN2 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH2}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEMO2}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN3 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH3}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEMO3}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN4 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH4}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEMO4}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN5 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH5}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEMO5}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN6 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH6}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEMO6}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN7 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH7}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEMO7}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN8 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH8}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEMO8}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN9 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH9}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEMO9}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN10 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH10}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D4_MEM10}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
        </c:if>
        <c:if test="${data.USE_YN5 == 'Y'}">
            <div class="row" id="top5">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>${data.TITLE5}</h2>
                    </div>
                </div>
            </div>
            <c:if test="${data.D5_USE_YN1 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH1}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEMO1}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN2 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH2}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEMO2}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN3 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH3}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEMO3}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN4 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH4}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEMO4}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN5 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH5}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEMO5}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN6 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH6}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEMO6}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN7 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH7}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEMO7}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN8 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH8}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEMO8}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN9 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH9}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEMO9}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN10 == 'Y'}">
                <div class="row">
                    <div class="col-md-12">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH10}">
                        </div>
                        <div class="box_text">
                            <h3>${data.D5_MEM10}</h3>
                        </div>
                    </div>
                </div>
            </c:if>
        </c:if>
    </div>
</div>
<!-- end products -->

<!-- 모바일 전화하기 영역 -->
<a href="tel:${data.CONNECT_TEL}" class="mob_footer">
    <img alt="Call Now Button" src="/resources/front/img/cell.png" width="40">
    <span class="tel" style="color:#eeee22">상담문의 ${data.VIEW_TEL}</span>
</a>

<!--  footer -->
<footer>
    <div class="footer" style="margin-top: 0; padding-top: 0;">
        <div class="copyright" style="margin-top: 0;">
            <div class="container" style="margin-top: 0;">
                <div class="row">
                    <div class="col-md-12">
                        <p>사업자명:트루코드|대표자명:박진성|사업자번호:573-32-01264</p>
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
<script>

    let flag = false;
    const color1 = '#ffffff';
    const color2 = '#ffd400';

    setInterval(function() {
        if(flag) {
            $('.tel').css('color', color1);
        } else {
            $('.tel').css('color', color2);
        }
        flag = !flag;
    }, 1000);

</script>
</body>
</html>