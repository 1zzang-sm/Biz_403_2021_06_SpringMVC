package com.callor.jdbc.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor // super 생성자
@NoArgsConstructor // pield 생성자
@ToString
public class BookVO {
	private String bk_isbn; 
	private String bk_title;
	private String bk_ccdoe;
	private String bk_acode;
	private String bk_date;
	/*
	 * VO(DTO)를 설계할때 
	 * 숫자형 변수는 
	 * PK나 특별히 조회할때 사용하는 칼럼은
	 * class형(Integer, Long, Float)으로 선언하는 것이 좋다
	 * 이 칼럼이 null인 경우에 조건을 부여하여 연산을 하는데 유리하다
	 * 
	 *  단, class형으로 선언을 했을때는
	 *  VO(DTO)에 해당변수를 0으로 선언해주는 것이 편리할때가 있다.
	 *  
	 *  일반적인 숫자형 변수는 primitive 형으로 선언하는 것이 좋다.
	 *  
	 *  VO(DTO)클래스의 변수를 primitive로 선언하면 
	 *  자동으로 0으로 초기화가 된다.
	 *  
	 *  DB에 insert를 수행할때 해당칼럼이 not null로 되어 있을때 
	 *  별다른 처리를 하지 않아도 SQL exception이 발생하지 않는다.
	 */
	private int bk_price;
	private int bk_pages;

}
