<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
<style>
	* {
		padding: 0;
		margin : 0;
	}
	form {
		width:80%;
		margin:15px auto;
	}
	fieldset {
		border: 1px solid black;
		border-radius : 15px;
	}
	legend {
		text-align: center;
		padding: 10px 20px;
		background-color:#87ceeb;
	}
	form div {
		width:80%;
		margin: 5px auto;
	}
	form label {
		display:inline-block;
		width:20%;
		text-align:right;
		margin:8px 5px;
		padding:8px	;
		color: rgba(0,0,255,0.5);
		font-weight: bold;
	}
	form input {
		width:70%;
		margin:8px 5px;
		padding: 8px 12px;
		border-radius: 25px;
		outline: 0;
		border-color:rgba(0,0,255,0.5);
	}
	form input:focus {
		border-color:#999;
	}
	form input:hover {
		background-color:#ddd;
	}
	
	div.btn_box {
	width:90%;
	margin:5px auto;
	text-align:right;
}

button {
	padding:10px 20px;
	outline: 0;
	border:0;
	background-color:#89ceeb;	
	
}
button:hover{
	box-shadow:2px 2px 2px rgba(0,0,0,0.7);
	cursor:pointer;
}

	
	
	
</style>
</head>
<body>
	<form method="POST">
		<fieldset>
			<legend>저자정보 등록</legend>
			
				<div>
					<label>저 자코드</label> <input name="au_code" id="au_code" placeholder="C0002"/>
				</div>
				<div>
					<label>저자이름</label> <input name="au_name" id="au_name" placeholder="셜록홈즈" />
				</div>
				<div>
					<label>전화번호</label> <input name="au_tel" id="au_tel" placeholder="010-2233-4455"/>
				</div>
				<div>
					<label>저자주소</label> <input name="au_addr" id="au_addr" placeholder="서울시 해운대구"/>
				</div>
			
		</fieldset>
		<div class="btn_box">
			<button type="button" class="btn_author_insert">저자등록</button>
			<button type="reset" class="btn_author_reset">새로작성</button>
			<button type="button" class="btn_author_list">리스트로</button>
		</div>
	</form>
</body>
<%@ include file="/WEB-INF/views/include/include_footer.jspf" %>
</html>