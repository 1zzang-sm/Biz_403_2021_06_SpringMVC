package com.callor.jdbc.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CompVO {
	private String cp_code; // CHAR(5)
	private String cp_title; //VARCHAR(125)
	private String cp_ceo; // VARCHAR(20)
	private String cp_tel; 
	private String cp_addr;
	private String cp_genre;

}
