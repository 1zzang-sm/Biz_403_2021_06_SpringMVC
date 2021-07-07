<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<div id="gallery_info">
	<h3>제목 : ${GFLIST[0].g_subject}</h3>
	<p>작성일 : ${GFLIST[0].g_date}</p>
	<p>작성시각 : ${GFLIST[0].g_time}</p>
	<p>작성자 : ${GFLIST[0].g_writer}</p>
	<p>내용 : ${GFLIST[0].g_content}</p>
</div>
<style>
	* {
		margin:0;
		padding:0;
	}
	
	div#gallery_info {
		padding: 10px;
		text-align:center;
		border-bottom: 1px solid black;
		background-color:#89CEEB;
		color: white;
	}
	div#gallery_files {
		display:flex;
		flex-wrap: wrap;
	}
	div#gallery_files img {
		margin:2px;
	}
</style>
<div id="gallery_files">
	<c:forEach items="${GFLIST}" var="FILE">
		<img src="${rootPath}/files/${FILE.f_upname}" height="100px" />
	</c:forEach>
</div>