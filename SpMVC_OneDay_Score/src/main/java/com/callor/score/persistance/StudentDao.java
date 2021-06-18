package com.callor.score.persistance;

import java.util.List;

import com.callor.score.model.StudentVO;

public interface StudentDao extends GenericDao<StudentVO, String> {
	
	public String findByMaxCode();
	// 학년으로 조회
	public List<StudentVO> findByGrade(String st_grade);
	// 학과로 조회 
	public List<StudentVO> findByDept(String st_dept);

}
