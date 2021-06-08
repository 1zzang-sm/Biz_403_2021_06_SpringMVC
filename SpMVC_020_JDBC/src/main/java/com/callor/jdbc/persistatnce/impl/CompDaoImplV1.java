package com.callor.jdbc.persistatnce.impl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.callor.jdbc.model.CompVO;
import com.callor.jdbc.persistatnce.CompDao;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Repository("compDaoV1") // bean으로 등록
public class CompDaoImplV1 implements CompDao{
	
	protected final JdbcTemplate jdbcTemplate;
	public CompDaoImplV1(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	@Override
	public List<CompVO> selectAll() {
		// TODO 여기는 출판사 전체 조회 
		String sql = " SELECT * FROM tbl_company ";
		
		List<CompVO> compList = jdbcTemplate.query(sql, new BeanPropertyRowMapper<CompVO>(CompVO.class));
		log.debug("Comp SELECT {}" ,compList.toString());
		return compList;
	}

	@Override
	public CompVO findById(String pk) {
		// TODO Auto-generated method stub
		String sql = " SELECT * FROM tbl_company ";
		sql += " WHERE cp_code = ? ";
		Object[] params = new Object[] { pk } ;
		CompVO vo = (CompVO) jdbcTemplate.query(sql, params, new BeanPropertyRowMapper<CompVO>(CompVO.class));
		
		return vo;
	}

	@Override
	public int insert(CompVO vo) {
		// TODO Auto-generated method stub
		String sql = " INSERT INTO tbl_company ";
		sql += " (cp_code, cp_title, cp_ceo, cp_tel, cp_addr )";
		sql += "VALUES ( ?, ?, ?, ?, ? )";
		
		Object[] params = new Object[] {
				vo.getCp_code(), vo.getCp_title(), 
				vo.getCp_ceo(), vo.getCp_tel(), vo.getCp_addr()
				};
		
		return jdbcTemplate.update(sql, params);
		
	}

	@Override
	public int update(CompVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String pk) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<CompVO> findByCname(String Cname) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<CompVO> findByTel(String tel) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<CompVO> findByCeo(String ceo) {
		// TODO Auto-generated method stub
		return null;
	}

}
