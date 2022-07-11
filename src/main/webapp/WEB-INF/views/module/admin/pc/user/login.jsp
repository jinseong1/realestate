<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>
<title>부동산 관리</title>
<link rel="stylesheet" type="text/css" href="${cssPath}/login.css">
<script type="text/javascript" src="${jsPath}/lib/baseScript.js?v=${updateTimeCss}"></script>

<body>
<main id="main">
    <div class="login">
        <div class="title">
            <span>TRUE CODE</span>
        </div>
        <div class="login_wrap">
            <div class="title">
                <h1>로그인이<br> 필요한 서비스입니다.</h1>
            </div>
            <form id="form" class="m-t" role="form" action="/admin/user/loginAction" method="post">
                <div class="input_wrap">
                    <input type="text"     id="id"       name="id"       class="form-control" autocomplete=off placeholder="아이디">
                    <input type="password" id="password" name="password" class="form-control" autocomplete=off placeholder="비밀번호">
                </div>
                <div style="margin-top: -30px; font-size: 10px; float: left;">
                    <input id="id_save" name="id_save" type="checkbox" value="Y">
                    <span>아이디 저장</span>
                </div>
                <div id="sing_up" style="margin-top: -30px; font-size: 10px; float: right;">
                    <a href="javascript:void(0);">회원가입신청</a>
                </div>
                <div class="login_btn">
                    <a href="javascript:void(0);" id="btnLogin">로그인</a>
                </div>
                <div style="margin-top: 10px; font-size: 10px;">
                    ※ID 혹은 비밀번호가 기억이 나지 않은 경우
                        관리자에게 문의하여 주시기 바랍니다.
                </div>
            </form>
        </div>
    </div>
</main>
</body>
<script type="text/javascript">
    $(window).load(function() {
        if('null' != '<%=session.getAttribute("msg")%>'){
            alert('<%=session.getAttribute("msg")%>');
        }
    });
</script>
<script>
    $(function(){
        if(location.href == 'http://www.truecode.co.kr/admin/user/login/') {
            location.href = 'https://www.truecode.co.kr/admin/user/login/';
        }

        sessionStorage.clear();

    });
</script>
