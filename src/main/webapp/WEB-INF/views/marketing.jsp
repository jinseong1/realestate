<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <meta name="description" content="오피스텔 상가 아파트 분양 ${data.VIEW_TEL}"/>
    <meta name="robots" content="all">
    <meta name="naver-site-verification" content="${data.NAVER_META}" />
    <meta property="og:locale" content="ko_KR" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="${data.HOMEPAGE_NAME}" />
    <meta property="og:description" content="분양홍보관 ${data.VIEW_TEL}" />
    <meta property="og:url" content="${data.URL}" />
    <meta property="og:site_name" content="TRUE CODE 트루코드" />
    <meta property="og:image" content="${data.URL}${data.MAIN_IMG_PATH}" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="700" />
    <meta property="og:image:type" content="image/jpeg" />


    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>${data.HOMEPAGE_NAME}</title>
</head>
<style>
    .navbar-inverse .navbar-nav>li>a {
        color: #FFFFFF;
    }

    @media (min-width: 768px) {
        .navbar {
            border-radius: 0px;
        }
    }
    .navbar {
        margin-bottom: 0px;
        order-radius: 0px;
        border-color: #311f4f;
    }
    .navbar-inverse {
        background-image: none;
        background-color: #311f4f;
    }
    .navbar-inverse .navbar-toggle:focus, .navbar-inverse .navbar-toggle:hover {
        background-color: #311f4f;
    }
    .navbar-inverse .navbar-toggle {
        background-color: #311f4f;
    }
    a {
        text-decoration: none;
    }
    .main-color {
        background-color: #311f4f;
    }
    .main-font-color {
        color: #311f4f;
    }
    .main-top {
        width: 100%;
        height: 180px;
    }
    .main-top h1 {
        font-weight: 900;
    }
    .main-top-side {
        height: 100%;
        color: #FFFFFF;
    }
    .margin15 {
        margin-left: 15%;
        margin-right: 15%;
    }
    .margin10 {
        margin-left: 10%;
        margin-right: 10%;
    }
    .float-left60 {
        float: left;
        width: 60%;
    }
    .float-right40 {
        float: right;
        width: 40%;
    }
    .float-left55 {
        float: left;
        width: 55%;
    }
    .float-right45 {
        float: right;
        width: 45%;
    }
    .tel {
        font-family: bold;
    }
    .middle-text {
        margin-top: 60px;
    }
    .float-left {
        float: left;
    }
    .float-right {
        float: right;
    }

    @media (max-width: 9990px) {
        .auto-margin {
            margin-left: 15%;
            margin-right: 15%;
        }
        .auto-img {
            width: 100%;
            height: 100%;
        }
        .auto-margin h1 {
            font-size: 53px;
            font-weight: 900;
        }
        .text-memo {
            font-size: 40px;
            font-weight: 600;
        }
        .mob_footer {
            display: none;
        }
        .pc_footer {
            display: block;
            width: 100%;
            height: 99999px; /* footer의 높이 */
            position: absolute;
            bottom: 0;
            left: 0;
        }
        .auto-nav {
            font-size: 25px;
            font-weight: 600;
            color: white;
        }
        .navbar-brand {
            display: none;
        }
        .auto-nav-ul {
            display: flex;
            width: 100%;
            justify-content: center;
        }
    }
    @media (max-width: 1200px) {
        .auto-margin {
            margin-left: 10%;
            margin-right: 10%;
        }
        .auto-img {
            width: 100%;
            height: 100%;
        }
        .auto-margin h1 {
            font-size: 53px;
            font-weight: 900;
        }
        .text-memo {
            font-size: 40px;
            font-weight: 600;
        }
        .mob_footer {
            display: none;
        }
        .pc_footer {
            display: block;
            width: 100%;
            height: 99999px; /* footer의 높이 */
            position: absolute;
            bottom: 0;
            left: 0;
        }
        .auto-nav {
            font-size: 25px;
            font-weight: 600;
            color: white;
        }
        .navbar-brand {
            display: none;
        }
        .auto-nav-ul {
            display: flex;
            width: 100%;
            justify-content: center;
        }
    }
    @media (max-width: 990px) {
        .auto-margin {
            margin-left: 0%;
            margin-right: 0%;
        }
        .auto-img {
            width: 100%;
            height: 100%;
        }
        .auto-margin h1 {
            font-size: 27px;
            font-weight: 900;
        }
        .text-memo {
            font-size: 20px;
            font-weight: 600;
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
            background: #311f4f;
            display: flex;
            justify-content: center;
            align-items: center;
            text-shadow: 0 1px 0px rgb(0 0 0 / 18%);
        }
        .pc_footer {
            display: none;
        }
        .auto-nav {
            font-size: 20px;
            font-weight: 600;
            color: white;
        }
        .navbar-brand {
            display: none;
        }
        .auto-nav-ul {
            display: flex;
            width: 100%;
            justify-content: center;
        }
    }
    @media (max-width: 770px) {
        .navbar-brand {
            display: block;
            font-size: 20px;
            font-weight: 600;
            color: white;
        }
        .auto-nav-ul {
            display: block;
            width: 100%;
            justify-content: center;
        }
    }
    .navbar-inverse .navbar-brand {
        color: #FFFFFF;
    }

    #wrapper{
        height: auto;
        min-height: 100%;
        padding-bottom: 40px;
    }
    footer{
        height: 40px;
        position : relative;
        transform : translateY(-100%);
    }
</style>
<body>
<div id="wrapper">
<nav class="navbar navbar-inverse main-color">
    <div class="container main-color">
        <div class="navbar-header main-color">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="javascript:void(0);">${data.HOMEPAGE_NAME}</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse main-color">
            <ul class="nav navbar-nav auto-nav-ul">
                <c:if test="${data.USE_YN1 == 'Y'}"><li><a href="#top1" class="auto-nav">${data.TITLE1}</a></li></c:if>
                <c:if test="${data.USE_YN2 == 'Y'}"><li><a href="#top2" class="auto-nav">${data.TITLE2}</a></li></c:if>
                <c:if test="${data.USE_YN3 == 'Y'}"><li><a href="#top3" class="auto-nav">${data.TITLE3}</a></li></c:if>
                <c:if test="${data.USE_YN4 == 'Y'}"><li><a href="#top4" class="auto-nav">${data.TITLE4}</a></li></c:if>
                <c:if test="${data.USE_YN5 == 'Y'}"><li><a href="#top5" class="auto-nav">${data.TITLE5}</a></li></c:if>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="main-color main-top hidden-xs hidden-sm hidden-md">
    <a href="tel:${data.CONNECT_TEL}">
        <div class="main-top-side margin15">
            <div class="float-left55">
                <h1 class="middle-text" style="font-size: 3.5em;">${data.HOMEPAGE_NAME}</h1>
            </div>
            <div class="float-right45">
                <div class="float-left middle-text" style="font-size: 1.5em; min-width: 50px; width: 10%;">
                    <p style="margin-bottom: 0;">대표</p>
                    <p>문의</p>
                </div>
                <h1 class="tel middle-text float-right" style="font-size: 3.5em; width: 85%;">${data.VIEW_TEL}</h1>
                </span>
            </div>
        </div>
    </a>
</div>
<div class="main-color main-top hidden-xs hidden-sm hidden-lg">
    <a href="tel:${data.CONNECT_TEL}">
        <div class="main-top-side margin10">
            <div class="float-left60">
                <h1 class="middle-text" style="font-size: 2.5em;">${data.HOMEPAGE_NAME}</h1>
            </div>
            <div class="float-right40">
                <div class="float-left middle-text" style="font-size: 1.2em; width: 10%; min-width: 36px;">
                    <p>대표</p>
                    <p>문의</p>
                </div>
                <h1 class="tel middle-text" style="font-size: 2.5em; width: 100%;">${data.VIEW_TEL}</h1>
                </span>
            </div>
        </div>
    </a>
</div>
<div class="main-color main-top hidden-md hidden-lg" style="height: 150px;">
    <a href="tel:${data.CONNECT_TEL}" style="text-decoration: none;">
        <div class="main-top-side">
            <p style="text-align: center; font-size: 50px;">${data.HOMEPAGE_NAME}</p>
            <p class="tel" style="text-align: center; font-size: 50px;">${data.VIEW_TEL}</p>
        </div>
    </a>
</div>

<!-- 메인 이미지 -->
<div class="auto-margin" style="background-color: #00bf3a">
    <img class="auto-img" src="${data.MAIN_IMG_PATH}">
</div>

<!-- 디테일 내역 -->
<div class="auto-margin">
    <c:if test="${data.USE_YN1 == 'Y'}">
        <h1 class="align-middle text-center main-font-color" id="top1">${data.TITLE1}</h1>
        <c:if test="${data.D1_USE_YN1 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH1}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO1}</p>
        </c:if>
        <c:if test="${data.D1_USE_YN2 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH2}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO2}</p>
        </c:if>
        <c:if test="${data.D1_USE_YN3 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH3}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO3}</p>
        </c:if>
        <c:if test="${data.D1_USE_YN4 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH4}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO4}</p>
        </c:if>
        <c:if test="${data.D1_USE_YN5 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH5}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO5}</p>
        </c:if>
        <c:if test="${data.D1_USE_YN6 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH6}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO6}</p>
        </c:if>
        <c:if test="${data.D1_USE_YN7 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH7}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO7}</p>
        </c:if>
        <c:if test="${data.D1_USE_YN8 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH8}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO8}</p>
        </c:if>
        <c:if test="${data.D1_USE_YN9 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH9}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO9}</p>
        </c:if>
        <c:if test="${data.D1_USE_YN10 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D1_IMG_PATH10}">
            </div>
            <p class="text-center text-memo">${data.D1_MEMO10}</p>
        </c:if>
    </c:if>
    <c:if test="${data.USE_YN2 == 'Y'}">
        <h1 class="align-middle text-center main-font-color" id="top2">${data.TITLE2}</h1>
        <c:if test="${data.D2_USE_YN1 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH1}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO1}</p>
        </c:if>
        <c:if test="${data.D2_USE_YN2 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH2}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO2}</p>
        </c:if>
        <c:if test="${data.D2_USE_YN3 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH3}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO3}</p>
        </c:if>
        <c:if test="${data.D2_USE_YN4 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH4}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO4}</p>
        </c:if>
        <c:if test="${data.D2_USE_YN5 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH5}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO5}</p>
        </c:if>
        <c:if test="${data.D2_USE_YN6 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH6}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO6}</p>
        </c:if>
        <c:if test="${data.D2_USE_YN7 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH7}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO7}</p>
        </c:if>
        <c:if test="${data.D2_USE_YN8 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH8}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO8}</p>
        </c:if>
        <c:if test="${data.D2_USE_YN9 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH9}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO9}</p>
        </c:if>
        <c:if test="${data.D2_USE_YN10 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D2_IMG_PATH10}">
            </div>
            <p class="text-center text-memo">${data.D2_MEMO10}</p>
        </c:if>
    </c:if>
    <c:if test="${data.USE_YN3 == 'Y'}">
        <h1 class="align-middle text-center main-font-color" id="top3">${data.TITLE3}</h1>
        <c:if test="${data.D3_USE_YN1 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH1}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO1}</p>
        </c:if>
        <c:if test="${data.D3_USE_YN2 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH2}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO2}</p>
        </c:if>
        <c:if test="${data.D3_USE_YN3 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH3}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO3}</p>
        </c:if>
        <c:if test="${data.D3_USE_YN4 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH4}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO4}</p>
        </c:if>
        <c:if test="${data.D3_USE_YN5 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH5}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO5}</p>
        </c:if>
        <c:if test="${data.D3_USE_YN6 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH6}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO6}</p>
        </c:if>
        <c:if test="${data.D3_USE_YN7 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH7}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO7}</p>
        </c:if>
        <c:if test="${data.D3_USE_YN8 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH8}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO8}</p>
        </c:if>
        <c:if test="${data.D3_USE_YN9 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH9}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO9}</p>
        </c:if>
        <c:if test="${data.D3_USE_YN10 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D3_IMG_PATH10}">
            </div>
            <p class="text-center text-memo">${data.D3_MEMO10}</p>
        </c:if>
    </c:if>
    <c:if test="${data.USE_YN4 == 'Y'}">
        <h1 class="align-middle text-center main-font-color" id="top4">${data.TITLE4}</h1>
        <c:if test="${data.D4_USE_YN1 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH1}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO1}</p>
        </c:if>
        <c:if test="${data.D4_USE_YN2 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH2}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO2}</p>
        </c:if>
        <c:if test="${data.D4_USE_YN3 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH3}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO3}</p>
        </c:if>
        <c:if test="${data.D4_USE_YN4 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH4}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO4}</p>
        </c:if>
        <c:if test="${data.D4_USE_YN5 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH5}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO5}</p>
        </c:if>
        <c:if test="${data.D4_USE_YN6 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH6}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO6}</p>
        </c:if>
        <c:if test="${data.D4_USE_YN7 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH7}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO7}</p>
        </c:if>
        <c:if test="${data.D4_USE_YN8 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH8}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO8}</p>
        </c:if>
        <c:if test="${data.D4_USE_YN9 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH9}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO9}</p>
        </c:if>
        <c:if test="${data.D4_USE_YN10 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D4_IMG_PATH10}">
            </div>
            <p class="text-center text-memo">${data.D4_MEMO10}</p>
        </c:if>
    </c:if>
    <c:if test="${data.USE_YN5 == 'Y'}">
        <h1 class="align-middle text-center main-font-color" id="top5">${data.TITLE5}</h1>
        <c:if test="${data.D5_USE_YN1 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D5_IMG_PATH1}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO1}</p>
        </c:if>
        <c:if test="${data.D5_USE_YN2 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D5_IMG_PATH2}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO2}</p>
        </c:if>
        <c:if test="${data.D5_USE_YN3 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D5_IMG_PATH3}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO3}</p>
        </c:if>
        <c:if test="${data.D5_USE_YN4 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D5_IMG_PATH4}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO4}</p>
        </c:if>
        <c:if test="${data.D5_USE_YN5 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D5_IMG_PATH5}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO5}</p>
        </c:if>
        <c:if test="${data.D5_USE_YN6 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D5_IMG_PATH6}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO6}</p>
        </c:if>
        <c:if test="${data.D5_USE_YN7 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D5_IMG_PATH7}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO7}</p>
        </c:if>
        <c:if test="${data.D5_USE_YN8 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D5_IMG_PATH8}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO8}</p>
        </c:if>
        <c:if test="${data.D5_USE_YN9 == 'Y'}">
            <div>
                <img class="auto-img text-memo" src="${data.D5_IMG_PATH9}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO9}</p>
        </c:if>
        <c:if test="${data.D5_USE_YN10 == 'Y'}">
            <div>
                <img class="auto-img" src="${data.D5_IMG_PATH10}">
            </div>
            <p class="text-center text-memo">${data.D5_MEMO10}</p>
        </c:if>
    </c:if>
</div>

<!-- 모바일 전화하기 영역 -->
<a href="tel:${data.CONNECT_TEL}" class="mob_footer">
    <img alt="Call Now Button" src="/resources/front/img/cell.png" width="40">
    <span class="tel" style="color:#eeee22">상담문의 ${data.VIEW_TEL}</span>
</a>
</div>
<footer></footer>
</body>
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
</html>