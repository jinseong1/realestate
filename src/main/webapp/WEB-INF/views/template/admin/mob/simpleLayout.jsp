<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<tiles:insertAttribute name ="meta"/>
	<tiles:insertAttribute name ="css"/>
</head>
<body>
<!-- End Google Tag Manager (noscript) -->
<script src="/resources/admin/mob/js/jquery-2.1.1.js"></script>
<!-- 컨텐츠 -->
<tiles:insertAttribute name="contents" flush="true" />
</body>
</html>
