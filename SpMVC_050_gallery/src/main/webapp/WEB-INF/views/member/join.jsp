<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<style>
	div.msg {
		font-size: 10px;
		color: red;
	}
</style>
<form method="POST">
	<div>
		<label>사용자 Email</label>
		<input name="m_userid" type="email">
		<div class="msg join id">
			
		</div>
	</div>
	<div>
		<label>비밀번호</label>
		<input name="m_password" type="password">
	</div>
	<div>
		<label>비밀번호 확인</label>
		<input name="re_password" type="password">
	</div>
	<div>
		<label>닉네임</label>
		<input name="m_nick">
	</div>
	<div>
		<label>전화번호</label>
		<input name="m_tel" type="tel">
	</div>
	<div>
		<button>가입신청</button>
	</div>	
</form>
<script>
// 아이디가 있을 경우는 .querySelector("input#user_id")
let user_id = document.querySelector("input[name='m_userid']")
let msg_user_id = document.querySelector("div.join.id")
if(user_id) {
	
	msg_user_id.innerText = ""
	msg_user_id.style.padding = "0"
	// lost focus "blur"
	// input tag에 입력하는 도중 다른 tag로 focus가 이동되는 경우 발생하는 ...
	// blur, focusout event 코드에서 alert을 사용하면 
	// lost focus와 alert 사이에서 무한반복이 일어나는 현상이 발생한다
	// lost focus가 되었을때 메세지를 사용자에게 보이고 싶을때는 
	//		 alert을 사용하지 않고 다른 방법을 강구해야 한다.
	// 		 비어있는 div box를 하나 만들고 그곳에 메세지를 표시하는 방법으로 사용한 것
	user_id.addEventListener("blur",(e)=>{
		let m_userid = e.currentTarget.value
		
		// m_userid box에 사용자 ID를 입력한 상태로 
		//		 tab키를 누르거나, 다른 값을 입력하기 위하여 focus를 이동하면 
		// 		 m_userid box에 입력된 값으로 id 중복검사를 수행하기 
		if(m_userid === "") {
			msg_user_id.innerText = "* 사용자 ID는 반드시 입력하세요"
			msg_user_id.style.padding = "5px";
			 user_id.focus()
			return false
		}
		
		fetch("${rootPath}/member/id_check?m_userid=" + m_userid)
		//.then( (response)=>{
		//	return response.text()
		// })
		.then(response=>response.text())
		.then(result=>{
			if(result === "USE_ID"){
				msg_user_id.innerText = "* 이미 가입된 아이디 입니다."
				userid.focus()
				return false
			} else if(result === "NOT_USE_ID") {
				msg_user_id.innerText = "* 가입 가능한 아이디 입니다."
				msg_user_id.style.color = "#00ff00"
				
				document.querySelector("input[name='m_password']").focus()
				
			} else {
				msg_user_id.innerText = "* 알 수 없는 결과를 수신함"
			}
		})
		
	})	
}











</script>