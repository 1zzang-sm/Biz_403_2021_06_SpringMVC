<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	h1 {
		text-align:0;
		padding:12px 16px;
		background-color:#89CEEB;
		color:white;
		text-shadow: 1px 1px 1px rgba(0,0,0,0.5);
		text-align: center;
	}
	a {
		font-size:30px;
		background-color:black;
		color:white;
		text-decoration:none;
		
	}
	
</style>
<body>
<h1> 내 갤러리</h1>
<c:choose>
	<c:when test="${BODY eq 'GA-INPUT'}" >
		<%@ include file="/WEB-INF/views/gallery/input.jsp" %>
	</c:when>
	<c:when test="${BODY eq 'GA-LIST'}">
		<%@ include file="/WEB-INF/views/gallery/list.jsp" %>
		<a href="${rootPath}/gallery/input">이미지 등록</a>
	</c:when>
	<c:when test="${BODY eq 'GA-DETAIL'}">
		<%@ include file="/WEB-INF/views/gallery/detail.jsp" %>
		<a href="${rootPath}/gallery">리스트로</a>
	</c:when>
	<c:otherwise>
		<a href="${rootPath}/gallery/input">이미지 등록</a>
	</c:otherwise>
</c:choose>
	<c:forEach items="${FILES}" var="FILE">	
		<a href="${rootPath}/files/${FILE}" target="_NEW">
		<img src="${rootPath}/files/${FILE}" width="200px" height="200px"/>
		</a>
	</c:forEach>
	
	<img src="${rootPath}/files/title.jpg" width="200px"/>
</body>
</html>   