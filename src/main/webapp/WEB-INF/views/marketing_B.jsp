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
    <style>
        .font-black {
            color: black !important;
            font-weight: bold !important;
        }
        .auto-img {
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
            background: teal;
            display: flex;
            justify-content: center;
            align-items: center;
            text-shadow: 0 1px 0px rgb(0 0 0 / 18%);
        }
    </style>
</head>
<body>
<!-- Navbar -->
<div class="navigation container-fluid">
    <div class="row justify-content-md-center ">
        <div class="col-md-10 col-sm-12">
            <nav class="navbar navbar-default">
                <a class="navbar-brand font-black" href="javascript:void(0);">${data.HOMEPAGE_NAME}</a>
                <div class="button_container" id="toggle">
                    <span class="black top"></span>
                    <span class="black middle"></span>
                    <span class="black bottom"></span>
                </div>
                <div class="overlay" id="overlay">
                    <nav class="overlay-menu">
                        <ul>
                            <c:if test="${data.USE_YN1 == 'Y'}"><li><a href="#top1" onclick="$('#toggle').click();">${data.TITLE1}</a></li></c:if>
                            <c:if test="${data.USE_YN2 == 'Y'}"><li><a href="#top2" onclick="$('#toggle').click();">${data.TITLE2}</a></li></c:if>
                            <c:if test="${data.USE_YN3 == 'Y'}"><li><a href="#top3" onclick="$('#toggle').click();">${data.TITLE3}</a></li></c:if>
                            <c:if test="${data.USE_YN4 == 'Y'}"><li><a href="#top4" onclick="$('#toggle').click();">${data.TITLE4}</a></li></c:if>
                            <c:if test="${data.USE_YN5 == 'Y'}"><li><a href="#top5" onclick="$('#toggle').click();">${data.TITLE5}</a></li></c:if>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- End Navbar -->
<div class="container-fluid" style="padding-bottom: 100px;">

</div>
<!-- Gallery -->
<div class="scrollblock">
    <div class="container-fluid pt-10">
        <div class="row justify-content-md-center ">
            <div class="col-md-10 col-sm-12">
                <img class="auto-img" src="${data.MAIN_IMG_PATH}">
                <c:if test="${data.USE_YN1 == 'Y'}">
                    <h2 class="align-middle text-center" id="top1">${data.TITLE1}</h2>
                    <c:if test="${data.D1_USE_YN1 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH1}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEMO1}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D1_USE_YN2 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH2}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEMO2}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D1_USE_YN3 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH3}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEMO3}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D1_USE_YN4 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH4}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEMO4}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D1_USE_YN5 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH5}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEMO5}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D1_USE_YN6 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH6}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEMO6}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D1_USE_YN7 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH7}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEMO7}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D1_USE_YN8 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH8}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEMO8}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D1_USE_YN9 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH9}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEMO9}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D1_USE_YN10 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D1_IMG_PATH10}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D1_MEM10}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:if>
                <c:if test="${data.USE_YN2 == 'Y'}">
                    <h2 class="align-middle text-center" id="top2">${data.TITLE2}</h2>
                    <c:if test="${data.D2_USE_YN1 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH1}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEMO1}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D2_USE_YN2 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH2}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEMO2}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D2_USE_YN3 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH3}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEMO3}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D2_USE_YN4 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH4}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEMO4}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D2_USE_YN5 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH5}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEMO5}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D2_USE_YN6 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH6}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEMO6}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D2_USE_YN7 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH7}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEMO7}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D2_USE_YN8 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH8}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEMO8}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D2_USE_YN9 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH9}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEMO9}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D2_USE_YN10 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D2_IMG_PATH10}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D2_MEM10}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:if>
                <c:if test="${data.USE_YN3 == 'Y'}">
                    <h2 class="align-middle text-center" id="top3">${data.TITLE3}</h2>
                    <c:if test="${data.D3_USE_YN1 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH1}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEMO1}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D3_USE_YN2 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH2}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEMO2}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D3_USE_YN3 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH3}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEMO3}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D3_USE_YN4 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH4}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEMO4}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D3_USE_YN5 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH5}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEMO5}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D3_USE_YN6 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH6}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEMO6}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D3_USE_YN7 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH7}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEMO7}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D3_USE_YN8 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH8}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEMO8}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D3_USE_YN9 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH9}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEMO9}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D3_USE_YN10 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D3_IMG_PATH10}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D3_MEM10}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:if>
                <c:if test="${data.USE_YN4 == 'Y'}">
                    <h2 class="align-middle text-center"  id="top4">${data.TITLE4}</h2>
                    <c:if test="${data.D4_USE_YN1 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH1}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEMO1}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D4_USE_YN2 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH2}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEMO2}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D4_USE_YN3 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH3}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEMO3}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D4_USE_YN4 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH4}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEMO4}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D4_USE_YN5 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH5}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEMO5}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D4_USE_YN6 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH6}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEMO6}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D4_USE_YN7 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH7}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEMO7}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D4_USE_YN8 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH8}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEMO8}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D4_USE_YN9 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH9}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEMO9}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D4_USE_YN10 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D4_IMG_PATH10}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D4_MEM10}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:if>
                <c:if test="${data.USE_YN5 == 'Y'}">
                    <h2 class="align-middle text-center" id="top5">${data.TITLE5}</h2>
                    <c:if test="${data.D5_USE_YN1 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH1}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEMO1}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D5_USE_YN2 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH2}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEMO2}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D5_USE_YN3 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH3}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEMO3}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D5_USE_YN4 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH4}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEMO4}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D5_USE_YN5 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH5}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEMO5}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D5_USE_YN6 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH6}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEMO6}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D5_USE_YN7 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH7}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEMO7}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D5_USE_YN8 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH8}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEMO8}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D5_USE_YN9 == 'Y'}">
                        <div>
                            <img class="auto-img text-memo" src="${data.D5_IMG_PATH9}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEMO9}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${data.D5_USE_YN10 == 'Y'}">
                        <div>
                            <img class="auto-img" src="${data.D5_IMG_PATH10}">
                        </div>
                        <div class="portfolio-text" style="padding-top: 20px; padding-bottom: 20px;">
                            <div class="row">
                                <div class="col-md-7 offset-md-1 col-sm-12">
                                    <p>${data.D5_MEM10}</p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:if>
            </div>
        </div>
    </div>
</div>
<!-- End Gallery -->
<!-- 모바일 전화하기 영역 -->
<a href="tel:${data.CONNECT_TEL}" class="mob_footer">
    <img alt="Call Now Button" src="/resources/front/img/cell.png" width="40">
    <span class="tel" style="color:#eeee22">상담문의 ${data.VIEW_TEL}</span>
</a>
<!-- Footer -->
<div class="container-fluid footer ">
    <div class="row">
        <div class="col-xl-2 col-md-8 offset-md-1 col-sm-12 ">
            <p>
                <c:if test="${data.USE_YN1 == 'Y'}"><a href="#top1">${data.TITLE1}</a><br></c:if>
                <c:if test="${data.USE_YN2 == 'Y'}"><a href="#top2">${data.TITLE2}</a><br></c:if>
                <c:if test="${data.USE_YN3 == 'Y'}"><a href="#top3">${data.TITLE3}</a><br></c:if>
                <c:if test="${data.USE_YN4 == 'Y'}"><a href="#top4">${data.TITLE4}</a><br></c:if>
                <c:if test="${data.USE_YN5 == 'Y'}"><a href="#top5">${data.TITLE5}</a><br></c:if>
            </p>
        </div>
        <div class="col-xl-2 col-md-8 offset-md-1 col-sm-12 ">
            <p>
                <a href="tel:${data.CONNECT_TEL}">상담문의 ${data.VIEW_TEL}</a><br>
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

<!-- End Javascript -->
</body>
</html>