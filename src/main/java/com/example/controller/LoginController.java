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

	@RequestMapping(value = {"/login","/"})
	public ModelAndView login(ModelAndView modelAndView) {
		modelAndView.setViewName("login/login");
		return modelAndView;
	}

	@RequestMapping("/home")
	public ModelAndView home(ModelAndView modelAndView) {
		modelAndView.setViewName("first/home");
		return modelAndView;
	}

	@RequestMapping("/all")
	public ModelAndView index(ModelAndView modelAndView) {
		modelAndView.setViewName("person/allPerson");
		return modelAndView;
	}

	@RequestMapping("/serror")
	public ModelAndView error(ModelAndView modelAndView) {
		modelAndView.setViewName("first/error");
		return modelAndView;
	}

    @RequestMapping(value = "/first")
    @ResponseBody
    public ModelAndView first(ModelAndView modelAndView, HttpServletRequest request) {
		try {
			Admin admin = (Admin) request.getSession().getAttribute("admin");
			if (admin == null){
				modelAndView.setViewName("first/error");
				return modelAndView;
			}
			modelAndView.addObject("message", adminService.selectAdminByName(admin.getName()).getXingming());
			modelAndView.setViewName("first/first");
		}catch (Exception e){
			e.printStackTrace();
			modelAndView.setViewName("first/error");
			return modelAndView;
		}
        return modelAndView;
    }
}
