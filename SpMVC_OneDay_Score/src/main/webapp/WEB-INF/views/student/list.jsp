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
	margin: 0;
	box-sizing: border-box;
}

#m_head {
	width: 100%;
	height: 30%;
	background-color: skyblue;
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
	background-color: skyblue;
	box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.7);
	cursor: pointer;
}
   #t_info {
        border-collapse: collapse;
        width: 70%;
        margin: 0 auto;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
      }
      #t_info th {
        background-color: gainsboro;
      }
      #t_info th,
      td {
        border-bottom: 1px solid black;
        padding: 5px 8px;
        text-align: center;
      }
      div {
        padding: 2rem;
      }
      #btn_all {
        display: flex;
        justify-content: flex-end;
      }
      #btn_info {
        background-color: #89ceeb;
        border: none;
        font-size: 3vh;
        width: 10%;
        height: 30%;
        text-shadow: 2px 2px 2px black;
        color: white;
        border-radius: 15px;
      }
      #btn_info:hover {
        box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.9);
      }

      #btn_insert {
        background-color: #89ceeb;
        border: none;
        border-radius: 15px;
        font-size: 3vh;
        width: 10%;
        height: 30%;
        text-shadow: 2px 2px 2px black;
        color: white;
      }
      #btn_insert:hover {
        box-shadow: 2px 2px 2px rgba(0, 0, 0, 0.9);
      }
      #sec1 {
        display: none;
      }
      #sec2 {
        position: absolute;
        top: 30%;
        left: 39%;
        width: 20%;
        height: 40%;
        background-color: #89ceeb;
        color: white;
      }
      #sec2 input {
        position: absolute;
        border-radius: 10px;
      }
      #sec2 h1 {
        position: absolute;
        top: 3%;
        left: 22%;
      }
      #sec2 button {
        width: 30%;
        height: 15%;
        border-radius: 10px;
        position: absolute;
      }
      #sec2 button:hover {
        box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.5);
      }
      #btn_2 {
        top: 68%;
        left: 50%;
      }
      #la1 {
        position: absolute;
        top: 30%;
        left: 15%;
        font-size: 2vh;
      }
      #la2 {
        font-size: 2vh;
        position: absolute;
        top: 50%;
        left: 20%;
      }

      #in1 {
        top: 29%;
        left: 35%;
        width: 50%;
        height: 11%;
      }
      #in2 {
        top: 48%;
        left: 35%;
        width: 50%;
        height: 11%;
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
    <table id="t_info">
      <tr>
        <th>학번</th>
        <th>이름</th>
        <th>전공</th>
        <th>학년</th>
      </tr>
      <tr>
        <td>20210001</td>
        <td>홍길동</td>
        <td>컴퓨터공학</td>
        <td>2</td>
      </tr>
    </table>
    <div></div>
    <table id="t_info">
      <tr>
        <th>No.</th>
        <th>과목명</th>
        <th>점수</th>
      </tr>
      <tr>
        <td>1</td>
        <td>국어</td>
        <td>90</td>
      </tr>
      <tr>
        <td>2</td>
        <td>영어</td>
        <td>80</td>
      </tr>
    </table>
    <div id="btn_all">
      <button id="btn_info">정보수정</button>

      <button id="btn_insert">성적추가</button>
    </div>

    <div id="sec1">
      <div id="sec2">
        <div><h1>성적입력 화면</h1></div>
        <div><label id="la1">과목명</label><input type="text" id="in1" /></div>
        <div><label id="la2">점수</label><input type="text" id="in2" /></div>
        <div><button id="btn_1">추가</button></div>
        <div><button id="btn_2">취소</button></div>
      </div>
    </div>
</body>
 <script>
    window.onload = function () {
      function onClick() {
        document.querySelector("#sec1").style.display = "block";
      }
      function offClick() {
        document.querySelector("#sec1").style.display = "none";
      }
      document.getElementById("btn_insert").addEventListener("click", onClick);
      document.getElementById("btn_2").addEventListener("click", offClick);
    };
  </script>
</html>