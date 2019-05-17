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
		return "admin/login";
	}

	//	@RequestMapping("/")
//	public ModelAndView login(ModelAndView modelAndView) {
//		modelAndView.setViewName("admin/login");
//		return modelAndView;
//	}

//	@RequestMapping("/index")
//	public String index(HttpServletRequest request) {
//		Cookie[] cookies=request.getCookies();
//		if (cookies!=null) {
//			for (Cookie cookie : cookies) {
////				System.out.printf("cokie----"+cookie.getValue());
//				if (cookie.getName().equals("id")) {
//					return "student/index";
//				}
//			}
//		}
//		return "login";
//	}

	@RequestMapping("/index")
	public ModelAndView index(ModelAndView modelAndView, HttpServletRequest request) {
		Cookie[] cookies=request.getCookies();
		if (cookies!=null) {
			for (Cookie cookie : cookies) {
//				System.out.printf("cokie----"+cookie.getValue());
				if (cookie.getName().equals("id")) {
					modelAndView.setViewName("student/index");
				}
			}
		}
		return modelAndView;
	}
}
