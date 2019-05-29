package com.example.controller;

import com.example.dao.AdminDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

	@Resource
	private AdminDao adminDao;
	
	@RequestMapping("/")
	public String login() {
		return "login/login";
	}

	@RequestMapping("/all")
	public ModelAndView index(ModelAndView modelAndView) {
		modelAndView.setViewName("person/allPerson");
		return modelAndView;
	}

	@RequestMapping("/first")
	public ModelAndView first(ModelAndView modelAndView, HttpServletRequest request) {
		Cookie[] cookies=request.getCookies();
		if (cookies!=null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("name")) {

					modelAndView.addObject("message",adminDao.selectAdminByName(cookie.getValue()).getXingming());
					modelAndView.setViewName("first/first");
				}
			}
		}
		return modelAndView;
	}
}
