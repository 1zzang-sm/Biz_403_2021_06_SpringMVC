package com.callor.score.persistance;

import java.util.List;

import com.callor.score.model.ScoreVO;

public interface ScoreDao extends GenericDao<ScoreVO, String>{
	
	// 총점으로 찾기
	public List<ScoreVO> findBySum(String sc_sum);
	// 평균으로 찾기 
	public List<ScoreVO> findByAvg(String sc_avg);
	

}
