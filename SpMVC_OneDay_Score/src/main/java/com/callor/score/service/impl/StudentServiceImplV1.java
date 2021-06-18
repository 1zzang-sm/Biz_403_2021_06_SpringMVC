package com.callor.score.service.impl;

import org.springframework.stereotype.Service;

import com.callor.score.model.StudentVO;
import com.callor.score.persistance.StudentDao;
import com.callor.score.service.StudentService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("StudentService")
public class StudentServiceImplV1 implements StudentService{

	protected final StudentDao studentDao;
	public StudentServiceImplV1(StudentDao studentDao) {
		this.studentDao = studentDao;
	}
	@Override
	public int insert(StudentVO stVO) {
//		String st_num = studentDao.findByMaxCode();
//		log.debug("st_num {} ", st_num);
//		
//		if(st_num == null || st_num.equals("")) {
//			st_num = String.format("C%04d", 1);
//		}else {
//			String _num = st_num.substring(1);
//			Integer intNum = Integer.valueOf(_num) + 1;
//			st_num = String.format("C%04d", intNum);
//		}
//		
//		stVO.setSt_num(st_num);
//		studentDao.insert(stVO);
		return 0;
	}
}
