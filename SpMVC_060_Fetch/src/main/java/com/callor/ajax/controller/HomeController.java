package com.callor.ajax.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.callor.ajax.model.UserDTO;

@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "home";
	}
	
	@RequestMapping(value="/json", method=RequestMethod.GET)
	public String json(Model model) {
		return "json";
	}
	
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public String form(Model model) {
		return "form";
	}
	
	@ResponseBody
	@RequestMapping(value="/json", method=RequestMethod.POST)
	public String json(@RequestBody String user_id, Model model) {
		return user_id;
	}
	
	@ResponseBody
	@RequestMapping(value="/json/dto", method=RequestMethod.POST)
	public UserDTO json(@RequestBody UserDTO userDTO, Model model) {
		System.out.print("WEB에서 받은 데이터 : ");
		System.out.println(userDTO.toString());
		return userDTO;
	}
	
	@ResponseBody
	@RequestMapping(value="/form", method=RequestMethod.POST)
	public UserDTO form(@RequestBody UserDTO userDTO, Model model) {
		return userDTO;
	}
}
