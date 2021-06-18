package com.callor.score.persistance.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.callor.score.model.StudentVO;
import com.callor.score.persistance.StudentDao;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Repository("StudentDaoV1")
public class StudentDaoImplV1 implements StudentDao{
	
	protected final JdbcTemplate jdbcTemplate;
	@Autowired
	public StudentDaoImplV1(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public List<StudentVO> selectAll() {
//		String sql = " SELECT * FROM tbl_student ";
//		List<StudentVO> student =
//				jdbcTemplate.query(sql, new BeanPropertyRowMapper<StudentVO>(StudentVO.class));
//		
		return null;
	}

	@Override
	public StudentVO findById(String pk) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(StudentVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(StudentVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String pk) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<StudentVO> findByGrade(String st_grade) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudentVO> findByDept(String st_dept) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findByMaxCode() {
		// TODO Auto-generated method stub
		return null;
	}

}
