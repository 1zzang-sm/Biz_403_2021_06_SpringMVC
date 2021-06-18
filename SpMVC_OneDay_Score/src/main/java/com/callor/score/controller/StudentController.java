package com.callor.score.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping(value="/student")
public class StudentController {
	
	
	@RequestMapping(value="/select", method=RequestMethod.GET)
	public String select() {
		// localhost:8080/jdbc/student/select 로 열릴거임 
		return "/student/list";
	}
	
	
	

}
