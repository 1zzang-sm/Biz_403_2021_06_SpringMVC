package com.callor.jdbc.service.impl;

import org.springframework.stereotype.Service;

import com.callor.jdbc.model.CompVO;
import com.callor.jdbc.persistance.CompDao;
import com.callor.jdbc.service.CompService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("compServiceV1")
public class CompServiceImplV1 implements CompService{

	protected final CompDao compDao;
	
	public CompServiceImplV1(CompDao compDao) {
		this.compDao = compDao;
		
	}
	// 트랜젝션 처리 
	// 동시에 같은일을 해서 유니크한 코드가 두개가 생성되버리기전에 1명을 락거는일
	@Override
	public int insert(CompVO vo) {
		// TODO Auto-generated method stub
		String cpcode = compDao.findByMaxCode();
		log.debug("cpcode {}", cpcode);
		
		if(cpcode == null || cpcode.equals("")) {
			
			// C로 시작하고 3칸뒤 1인데 빈칸에 0을 채워라 C00001
			cpcode = String.format("C%04d", 1);
		}else {
			// 영문 접두사 C를 자르고 숫자만 추출 (1부터)
			String _code = cpcode.substring(1);
			Integer intCode = Integer.valueOf(_code) + 1;
			cpcode = String.format("C%04d",intCode);
		}
		
		vo.setCp_code(cpcode);
		compDao.insert(vo);
		
		
		return 0;
	}

}
