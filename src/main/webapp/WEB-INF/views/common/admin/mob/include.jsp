<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- Jstl Tag --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- Spring Tag --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%-- Jstl Tag 전역 변수 --%>
<c:set var="jsPath" value="${pageContext.request.contextPath}/resources/admin/mob/js"/>
<c:set var="cssPath" value="${pageContext.request.contextPath}/resources/admin/mob/css"/>
<c:set var="imagePath" value="${pageContext.request.contextPath}/resources/admin/mob/images"/>
<c:set var="updateTimeCss" value="<%= System.currentTimeMillis()/100000000 %>"/>