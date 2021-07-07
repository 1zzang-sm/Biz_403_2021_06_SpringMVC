<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
	*{
		margin:0;
		padding:0;
		width:100%;
		hieght:100%;
	}
	div.ga_box {
		display: flex;
	}
	div.ga_box div:first-of-type {
		flex:1;
	}
	div.ga_box div:last-of-type {
		flex:3;
	}

</style>
<c:forEach items="${GALLERYS}" var = "GALLERY" >
<div class="ga_box">
	<div>
		<img src="${rootPath}/files/${GALLERY.g_image}">
	</div>
	<div>
		<h3>
			<a href="${rootPath}/gallery/detail/${GALLERY.g_seq}">
				${GALLERY.g_subject}
			</a>
		</h3>
		<p>${GALLERY.g_content}</p>
	</div>

</div>
</c:forEach>