package com.callor.score.model;

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
public class StudentVO {
	
	private String st_num;
	private String st_name;
	private String st_dept;
	private Integer st_grade;
	private Integer st_sub;
}
