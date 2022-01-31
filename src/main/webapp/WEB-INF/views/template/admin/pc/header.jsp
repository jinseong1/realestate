<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>
<script type="text/javascript" src="${jsPath}/lib/baseScript.js?v=${updateTimeCss}"></script>
<script src="${jsPath}/lib/jquery-2.2.4.min.js"></script>
<script type="text/javascript">

    $(document).ready(function(){
        jsMenuList();
    });

    function jsMenuList() {
        // 상단 메뉴 세팅
        var ajax_data = {};
        $.ajax({
            url:'/admin/getMenu',
            type:'post',
            data:ajax_data,
            success: function(data) {
                $(".menu").append(data);
            },
            error: function(err) {
                console.log(err);
            }
        });

    }

    function jsUserModForm(){
        location.href = '/admin/user/user_change';
    }

    function jsClosePasswordModal() {
        $('.password_alarm_popup').fadeOut(300);
    }

    function setTodayCookie(name, value) {
        var date = new Date();
        date.setHours(0,0,0,0);
        date.setDate(date.getDate() + 1);
        document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
    }

    function getCookie(name) {
        var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
        return value ? value[2] : null;
    }

</script>
<header id="header">
	<div class="top_header">
		<div class="top_header_inner">
			<div class="logo_wrap">
				<%--
				<h1><a href="/admin/member/allMember"><img src="${imagePath}/layout/logo_g.png" alt=""></a></h1>
				--%>
			</div>
			<div class="util_menu_wrap">
				<div class="admin_menu_wrap">
					<h4><%=session.getAttribute("admin_name")%> 님</h4>
					<div class="admin_menu">
						<ul>
							<li><a href="/admin/user/user_change">사용자 정보</a></li>
							<li><a href="/admin/user/logout">로그아웃</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom_header">
		<div class="bottom_header_inner">
			<div class="gnb">
				<nav>
					<ul class="menu" style="height:51px;">
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>