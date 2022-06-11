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

    <title>${data.HOMEPAGE_NAME}</title>

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="/resources/front/C/css/bootstrap.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/front/C/css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="/resources/front/C/css/responsive.css" rel="stylesheet" />

    <style>
        .auto-img{
            width: 100%;
        }
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
            background: #0fcfdc;
            display: flex;
            justify-content: center;
            align-items: center;
            text-shadow: 0 1px 0px rgb(0 0 0 / 18%);
        }
        footer{
            height: 40px;
            position : relative;
            transform : translateY(-100%);
            text-align: center;
            background-color: whitesmoke;
        }
    </style>
</head>

<body>

<div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-11 offset-lg-1">
                    <nav class="navbar navbar-expand-lg custom_nav-container ">
                        <a class="navbar-brand" href="javascript:void(o);">
                            <span>${data.HOMEPAGE_NAME}</span>
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
                                <ul class="navbar-nav">
                                    <c:if test="${data.USE_YN1 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top1">${data.TITLE1}</a></li></c:if>
                                    <c:if test="${data.USE_YN2 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top2">${data.TITLE2}</a></li></c:if>
                                    <c:if test="${data.USE_YN3 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top3">${data.TITLE3}</a></li></c:if>
                                    <c:if test="${data.USE_YN4 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top4">${data.TITLE4}</a></li></c:if>
                                    <c:if test="${data.USE_YN5 == 'Y'}"><li class="nav-item"><a class="nav-link"href="#top5">${data.TITLE5}</a></li></c:if>
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
    <section class="slider_section position-relative">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12 px-0">
                                <div class="img-box">
                                    <img style="width: 100%;" src="${data.MAIN_IMG_PATH}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end slider section -->
</div>

<!-- about section -->

<!-- end about section -->

<!-- portfolio section -->

<section class="portfolio_section layout_padding">
    <div class="container">
        <c:if test="${data.USE_YN1 == 'Y'}">
            <div class="heading_container">
                <h2 id="top1">${data.TITLE1}</h2>
            </div>
            <c:if test="${data.D1_USE_YN1 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH1}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEMO1}</p>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN2 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH2}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEMO2}</p>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN3 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH3}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEMO3}</p>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN4 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH4}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEMO4}</p>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN5 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH5}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEMO5}</p>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN6 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH6}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEMO6}</p>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN7 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH7}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEMO7}</p>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN8 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH8}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEMO8}</p>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN9 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH9}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEMO9}</p>
                </div>
            </c:if>
            <c:if test="${data.D1_USE_YN10 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D1_IMG_PATH10}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D1_MEM10}</p>
                </div>
            </c:if>
        </c:if>
        <c:if test="${data.USE_YN2 == 'Y'}">
            <div class="heading_container">
                <h2 id="top2">${data.TITLE2}</h2>
            </div>
            <c:if test="${data.D2_USE_YN1 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH1}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEMO1}</p>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN2 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH2}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEMO2}</p>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN3 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH3}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEMO3}</p>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN4 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH4}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEMO4}</p>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN5 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH5}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEMO5}</p>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN6 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH6}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEMO6}</p>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN7 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH7}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEMO7}</p>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN8 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH8}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEMO8}</p>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN9 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH9}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEMO9}</p>
                </div>
            </c:if>
            <c:if test="${data.D2_USE_YN10 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D2_IMG_PATH10}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D2_MEM10}</p>
                </div>
            </c:if>
        </c:if>
        <c:if test="${data.USE_YN3 == 'Y'}">
            <div class="heading_container">
                <h2 id="top3">${data.TITLE3}</h2>
            </div>
            <c:if test="${data.D3_USE_YN1 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH1}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEMO1}</p>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN2 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH2}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEMO2}</p>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN3 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH3}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEMO3}</p>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN4 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH4}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEMO4}</p>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN5 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH5}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEMO5}</p>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN6 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH6}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEMO6}</p>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN7 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH7}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEMO7}</p>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN8 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH8}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEMO8}</p>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN9 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH9}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEMO9}</p>
                </div>
            </c:if>
            <c:if test="${data.D3_USE_YN10 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D3_IMG_PATH10}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D3_MEM10}</p>
                </div>
            </c:if>
        </c:if>
        <c:if test="${data.USE_YN4 == 'Y'}">
            <div class="heading_container">
                <h2 id="top4">${data.TITLE4}</h2>
            </div>
            <c:if test="${data.D4_USE_YN1 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH1}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEMO1}</p>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN2 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH2}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEMO2}</p>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN3 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH3}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEMO3}</p>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN4 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH4}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEMO4}</p>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN5 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH5}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEMO5}</p>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN6 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH6}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEMO6}</p>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN7 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH7}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEMO7}</p>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN8 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH8}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEMO8}</p>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN9 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH9}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEMO9}</p>
                </div>
            </c:if>
            <c:if test="${data.D4_USE_YN10 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D4_IMG_PATH10}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D4_MEM10}</p>
                </div>
            </c:if>
        </c:if>
        <c:if test="${data.USE_YN5 == 'Y'}">
            <div class="heading_container">
                <h2 id="top5">${data.TITLE5}</h2>
            </div>
            <c:if test="${data.D5_USE_YN1 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH1}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEMO1}</p>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN2 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH2}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEMO2}</p>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN3 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH3}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEMO3}</p>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN4 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH4}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEMO4}</p>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN5 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH5}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEMO5}</p>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN6 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH6}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEMO6}</p>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN7 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH7}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEMO7}</p>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN8 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH8}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEMO8}</p>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN9 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH9}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEMO9}</p>
                </div>
            </c:if>
            <c:if test="${data.D5_USE_YN10 == 'Y'}">
                <div class="portfolio_container layout_padding2">
                    <div>
                        <img class="auto-img" src="${data.D5_IMG_PATH10}">
                    </div>
                </div>
                <div class="heading_container">
                    <p>${data.D5_MEM10}</p>
                </div>
            </c:if>
        </c:if>
    </div>

</section>

<!-- end contact section -->


<!-- info section -->
<section class="info_section ">

</section>

<!-- 모바일 전화하기 영역 -->
<a href="tel:${data.CONNECT_TEL}" class="mob_footer">
    <img alt="Call Now Button" src="/resources/front/img/cell.png" width="40">
    <span class="tel" style="color:#eeee22">상담문의 ${data.VIEW_TEL}</span>
</a>

<!-- end info_section -->

<!-- footer section -->
<section class="container-fluid footer_section" style="padding-bottom: 60px;">
    <div class="container">
        <p>사업자명:트루코드|대표자명:박진성|사업자번호:573-32-01264</p>
    </div>
</section>
<!-- footer section -->

<script type="text/javascript" src="/resources/front/C/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/resources/front/C/js/bootstrap.js"></script>
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