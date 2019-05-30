package com.example.controller;

import com.example.entry.Admin;
import com.example.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

	@Resource
	private AdminService adminService;

	@RequestMapping("/")
	public String login() {
		return "login/login";
	}

	@RequestMapping("/all")
	public ModelAndView index(ModelAndView modelAndView) {
		modelAndView.setViewName("person/allPerson");
		return modelAndView;
	}

    @RequestMapping(value = "/first")
    @ResponseBody
    public ModelAndView first(ModelAndView modelAndView, HttpServletRequest request) {
        Admin admin = (Admin)request.getSession().getAttribute("admin");
        modelAndView.addObject("message", adminService.selectAdminByName(admin.getName()).getXingming());
        modelAndView.setViewName("first/first");
        return modelAndView;
    }
}
