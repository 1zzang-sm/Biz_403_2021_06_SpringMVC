<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

p b {
	color: blue;
}
body {
	display: flex;
	flex-direction: column;
	height: 100vh;
}
nav#main_nav {
	background-color: rgba(0,255,0,0.7);
	display: flex;
	
	justify-content: center;
	align-items: center;
	
	background-size: 100% 100%;
}
nav#main_nav form{
	margin: 0.6rem;
	width:50%;
}
nav#main_nav input {
	padding:8px;
	border:0;
	outline:0;
	width:100%;
	border-radius: 10px;
}
nav#main_nav select {
	padding:8px;
	width: 20%;
	border-radius: 10px;	
}
section.content_box {
	border: 1px solid black;
	padding: 12px 16px;
	display: flex;
	flex-wrap: wrap;
	/*
	검색 결과가 표시되는 영역은 scroll 지정하고
	상단의 검색창(nav)은 화면에 고정하기
	
	1. body에 display : flex, flex-direction : column
			  height : 100vh
	2. 검색 결과창에 flex : 1, overflow: auto
	
	*/
	flex:1;
	overflow: auto;
}

section.content_box div.content {
	border: 1px solid blue;
	margin: 5px auto;
	display: flex;
	height: 30vh;
	width: 30%;
	overflow: auto;
}

section.content_box div.content img {
	flex: 1;
	width:30%;
	height:50%;
}

section.content_box div.content div {
	flex: 2;
	margin: 5px;
}
@media (min-width:1200px) {
	section.content_box div.content {
		width:20%;
		margin:5px;
	}
}
@media (max-width:700px) {
	section.content_box div.content {
		width:95%;
	}
}
a {
	text-decoration: none;
}

a:hover {
	color: green;
}
</style>
</head>
<body>
	<nav id="main_nav">
		<c:if test="${CAT == 'BOOK'}">
			<c:set var="pHolder" value="도서 검색어" />
		</c:if>
		<c:if test="${CAT == 'MOVIE'}">
			<c:set var="pHolder" value="영화 검색어" />
		</c:if>
		<c:if test="${CAT == 'NEWS'}">
			<c:set var="pHolder" value="뉴스 검색어" />
		</c:if>
		<select name="category">
			<option value="BOOK" 
			<c:if test="${CAT == 'BOOK'}">selected="selected"</c:if>> 도서검색</option>
			<option value="MOVIE" 
			<c:if test="${CAT == 'MOVIE'}">selected="selected"</c:if>>영화검색</option>	
			<option value="NEWS" 
			<c:if test="${CAT == 'NEWS'}">selected="selected"</c:if>>뉴스검색</option>	
		</select>
		<form>
			<input name="search" placeholder="${pHolder}를 입력 후 Enter...">
		</form>

	</nav>
	<section class="content_box">
		<%@ include file="/WEB-INF/views/book_list.jsp" %>
		<%@ include file="/WEB-INF/views/movie_list.jsp" %>
		<%@ include file="/WEB-INF/views/news_list.jsp" %>
	</section>
</body>
<script>
	
	let category = document.querySelector("select[name='category']")
		
	category.addEventListener("change", (e)=>{
		
		let value = category.value
	//	alert(value)
	//location.href = "${rootPath}/?category=" + value;
	location.href = "${rootPath}/naver/" + value;
	})
















</script>
</html>