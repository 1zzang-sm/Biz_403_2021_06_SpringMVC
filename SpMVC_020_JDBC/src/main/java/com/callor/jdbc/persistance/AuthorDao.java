package com.callor.jdbc.persistance;

import java.util.List;

import com.callor.jdbc.model.AuthorVO;

public interface AuthorDao extends GenericDao<AuthorVO, String>{

	// 저자이름으로 조회
	public List<AuthorVO> findByAname(String aname);
	// 저자번호로 조회
	public List<AuthorVO> findByTel(String atel);
	
	
}
