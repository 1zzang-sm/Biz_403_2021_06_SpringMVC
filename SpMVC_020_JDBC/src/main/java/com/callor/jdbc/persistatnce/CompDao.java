package com.callor.jdbc.persistatnce;

import java.util.List;

import com.callor.jdbc.model.CompVO;

public interface CompDao extends GenericDao<CompVO, String>{

	// 출판사명으로 조회
	public List<CompVO> findByCname(String Cname);
	// 출판사코드으로 조회
	public List<CompVO> findByTel(String ctel);
	// 대표이름으로 조회 
	public List<CompVO> findByCeo(String ceo);
	
	
	
}
