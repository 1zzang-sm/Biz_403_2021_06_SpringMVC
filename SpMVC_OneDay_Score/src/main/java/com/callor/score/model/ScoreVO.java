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

public class ScoreVO {
	
	private Long sc_seq;
	private Integer sc_kor;
	private Integer sc_eng;
	private Integer sc_math;
	private Integer sc_sum;
	private Float sc_avg;

}
