<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ include file="/WEB-INF/views/common/admin/mob/include.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- head start -->
	<tiles:insertAttribute name ="head"/>
	<!-- head end -->
</head>
<body>
	<script src="${jsPath}/jquery-2.1.1.js"></script>
	<!-- header start -->
    <tiles:insertAttribute name ="header"/>
	<!-- header end -->
	<!-- contents start -->
    <tiles:insertAttribute name ="contents"/>
	<!-- contents end -->
	<!-- footer start -->
	<tiles:insertAttribute name ="footer"/>
	<!-- footer end -->
	<!-- commonJs start -->
	<tiles:insertAttribute name="commonJs"/>
	<!-- commonJs end -->
</body>
</html>