<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>
<title>TRUE CODE</title>
<link rel="stylesheet" type="text/css" href="${cssPath}/login.css">
<script type="text/javascript" src="${jsPath}/lib/baseScript.js?v=${updateTimeCss}"></script>

<body>
<main id="main">
    <div class="login">
        <div class="login_wrap" style="height: 650px;">
            <div class="title">
                <a href="/admin/user/login">←</a><h1 style="text-align: center">회원가입신청</h1>
            </div>
            <form id="form" class="m-t" role="form" action="/admin/user/singUpAction" method="post">
                <div class="input_wrap">
                    <input type="text" id="name" name="name" class="form-control" autocomplete=off placeholder="이름을 입력하여 주세요." value="${param.name}">
                    <input type="text" id="id" name="id" class="form-control" autocomplete=off placeholder="아이디를 입력하여 주세요." value="${param.id}">
                    <input type="password" id="password1" name="password1" class="form-control" autocomplete=off placeholder="비밀번호를 입력하여 주세요." value="${param.password1}">
                    <input type="password" id="password2" name="password2" class="form-control" autocomplete=off placeholder="비밀번호를 다시 입력하여 주세요." value="${param.password2}">
                    <input type="text" id="tel" name="tel" class="form-control" autocomplete=off placeholder="전화번호를 입력하여 주세요." oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');" value="${param.tel}">
                </div>
                <div style="margin-top: -20px; text-align: left;">
                    <input id="chk1" name="chk1" type="checkbox" value="Y">
                    <span>개인정보처리방침 <a href="/admin/user/chk1" target="_blank">[보기]</a></span>
                </div>
                <div style="text-align: left;" class="mb10">
                    <input id="chk2" name="chk2" type="checkbox" value="Y">
                    <span>이용약관 <a href="/admin/user/chk2" target="_blank">[보기]</a></span>
                </div>
                <div class="login_btn">
                    <a href="javascript:void(0);" id="btnSingUp">가입신청하기</a>
                </div>
            </form>
        </div>
    </div>
</main>
</body>
<script type="text/javascript">
    $(window).load(function() {

        if('${code}' == 'S'){
            alert('${msg}');
            location.href = '/admin/user/login';
        } else if('${code}' == 'F'){
            alert('${msg}');
        }
    });
</script>
