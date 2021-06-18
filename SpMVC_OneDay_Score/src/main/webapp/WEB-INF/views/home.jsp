<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대한고교성적처리</title>
<style>
      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }
      #m_head {
        width: 100%;
        height: 30%;
        background-color: #87CEEB;
        color: white;
        padding: 3rem;
        text-align: center;
      }
      #m_menu {
        background-color: steelblue;
        color: white;
      }
      #m_menu ul {
        list-style: none;
        display: flex;
      }
      #m_menu li {
        padding: 12px 16px;
      }
      #m_menu li:nth-of-type(4) {
        margin-left: auto;
      }
      #m_menu li:hover {
        background-color: #87CEEB;
        box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.7);
        cursor: pointer;
      }
      table {
        border-collapse: collapse;
        width: 90%;
        margin: 0 auto;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
      }
      table th {
        background-color: gainsboro;
      }
      table th,
      td {
        border-bottom: 1px solid black;
        padding: 5px 8px;
        text-align: center;
      }
</style>
</head>

<body>
	
	<header id="m_head">
		<h1>대한 고교 성적처리 2021 v1</h1>
	</header>
	<nav id="m_menu">
		<ul>
			<li>Home</li>
			<li>학생정보</li>
			<li>성적알람표</li>
			<li>로그인</li>
		</ul>
	</nav>
	<table>
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>전공</th>
			<th>학년</th>
			<th>응시과목</th>
			<th>총점</th>
			<th>평균</th>
		</tr>
		<tr>
			<td>20210001</td>
			<td>홍길동</td>
			<td>컴퓨터공학</td>
			<td>2</td>
			<td>3</td>
			<td>275</td>
			<td>91.6</td>
		</tr>
	</table>
</body>
</html>