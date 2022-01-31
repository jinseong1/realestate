<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/common/admin/pc/include.jsp"%>

<script type="text/javascript" src="${jsPath}/lib/baseScript.js?v=${updateTimeCss}"></script>
<script src="${jsPath}/lib/jquery-2.2.4.min.js"></script>
<script src="${jsPath}/lib/jquery-ui.min.js"></script>
<script src="${jsPath}/lib/jquery-easing-1.4.1.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<%--<script src="https://www.w3schools.com/lib/w3.js"></script>--%>
<script src="${jsPath}/layout.js"></script>
<script src="${jsPath}/lib/swiper-4.5.0.min.js"></script>
<script src="${jsPath}/lib/TweenMax.min.js"></script>
<script src="${jsPath}/lib/EasePack.min.js"></script>
<script src="${jsPath}/lib/datepicker.min.js"></script>
<script src="${jsPath}/common.js"></script>
<script src="${jsPath}/msg.js"></script>
<script src="${jsPath}/csDatepicker.js"></script>

<script>
	$(document).ready(function() {
	});
	function pageMove(page){
		location.href = page;
	}
    <%-- 로그찍기 --%>
    function putLog(k, v) {
    }
    function onMenu(id) {
        setTimeout(function(){
            $(".menu li").removeClass("on");
            $(".menu #"+id).addClass("on");
        }, 500);
    }

</script>
