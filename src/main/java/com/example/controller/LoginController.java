package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
	
	@RequestMapping("/")
	public String login() {
		return "admin/login2";
	}

	@RequestMapping("/index2")
	public ModelAndView index(ModelAndView modelAndView, HttpServletRequest request) {
		Cookie[] cookies=request.getCookies();
		if (cookies!=null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("name")) {
					modelAndView.setViewName("person/index2");
				}
			}
		}
		return modelAndView;
	}
}
