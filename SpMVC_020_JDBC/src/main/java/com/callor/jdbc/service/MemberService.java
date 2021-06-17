package com.callor.jdbc.service;

import com.callor.jdbc.model.UserVO;

public interface MemberService {
	/*
	 *  login 기능은 username(id), password(pw)를 매개변수로 받아서
	 *  회원 정보를 검색한 후 유효한 회원이면 회원정보를 return하고
	 *  그렇지 않으면 null을 return하는 구조로 설계
	 */
	  
	public UserVO login(String username, String password); // 로그인
	public int join(UserVO userVO); // 가입
	
	
	public UserVO viewInfo(String username); // 정보보기
	public int updateInfo(UserVO userVO); //정보수정
	
	public int expire(String username); //회원탈퇴
}
