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
<script src="/resources/admin/js/lib/jquery-2.2.4.min.js"></script>
<!-- 컨텐츠 -->
<tiles:insertAttribute name="contents" flush="true" />
<!-- commonJs -->
<tiles:insertAttribute name="commonJs" flush="true" />
<!-- moduleJs -->
<tiles:insertAttribute name="moduleJs" flush="true" />
<!-- 경로 끝 -->
</body>
</html>
