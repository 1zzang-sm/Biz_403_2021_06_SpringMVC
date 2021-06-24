package com.callor.score.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.score.model.ScoreDTO;
import com.callor.score.service.ScoreService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
// view를 보여주기위해선 무조건 return type string
@RequiredArgsConstructor
@Slf4j
@Controller
@RequestMapping(value="/score")
public class ScoreController {

	protected final ScoreService scService;
	
	@RequestMapping(value={"/" , ""}, method=RequestMethod.GET)
	public String Score(Locale locale, Model model){
		
		List<ScoreDTO> scList = scService.selectViewAll();
		log.debug("Score {}", scList.toString());
		model.addAttribute("SC", scList);
		model.addAttribute("BODY", "SCORE_VIEW");
		return "home";
	}

}
