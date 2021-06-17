<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
</head>
<style>
	form {
		width:80%;
		margin:15px auto;
		
	}
	fieldset {
		border:1px solid black;
		border-radius:15px;
	}
	legend {
		text-align:center;
		padding:10px 20px;
		background-color:#aaa;
	}
	form div {
		width:80%;
		margin:5px auto;
	}
	
	form label {
	/* input box는 오른쪽에 가지런히 정렬이됨 */
		display: inline-block;
		width:20%;
		/* label을 input에 붙였음 */
		text-align:right;
		margin:8px 5px;
		padding:8px;
		color: rgba(0,0,255,0.5);
		font-weight:bold;
	}
	
	form input {
		width:70%;
		margin: 8px 5px;
		padding :8px 12px; 
		border-radius:25px;
		outline:0;
		border-color: rgba(0,255,0,0.5);
		
	}
	form input:focus {
		border-color:#999;
	}
	form input:hover {
		background-color: #ddd;
	}
</style>
<body>
	<h1>출판사 정보 등록</h1>
	<section class="main_sec">
	<form method="POST">
		<div><label>출판사명</label><input name="cp_title"></div>
		<div><label>대표자명</label><input name="cp_ceo"></div>
		<div><label>전화번호</label><input name="cp_tel"></div>
		<div><label>주소</label><input name="cp_addr"></div>
		<div><button>저장</button></div>
	</form>
	</section>
	<div>
	<label>삭제할 코드</label>
	<input name="cpcode" id="cpcode">
	<button class="btn_delete">삭제</button>
	</div>
	<script>
	// const : 상수를 선언하는 키워드
	// 		코드가 진행되는 동안 값이 변경되면 안되는 것
	const doc = document;
		doc.querySelector("button.btn_delete").addEventListener("click", (e)=>{
			// name으로 지정해서 할 경우 code
			// document.querySelector("input[name='cpcode']")
			
			// id를 지정해서 할 경우 code
			const cpcodeObj = doc.querySelector("input#cpcode")
			let cpcode = cpcodeObj.value
			// 삭제는 ref보단 replace함수를 많이사용한다  (뒤로가기 방지)
			if(confirm(cpcode + "를 삭제합니다!!")){
				location.replace("${rootPath}/comp/delete?cpcode=" + cpcode);
			}
			
		})
	</script>
</body>
</html>