package com.example.controller;

import com.example.entry.Admin;
import com.example.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@CrossOrigin(origins= {"http://localhost:8080","null"})
@Controller
public class AdminController {
	
	@Resource
	private AdminService adminService;

	
	@RequestMapping(value = "/judge", method = RequestMethod.POST)
	@ResponseBody
	public String jumpPage(@RequestBody Map<String, String> map,HttpServletResponse response) {
		Admin admin = adminService.checkLogin(map.get("id"));
		if (admin == null) {
			return "0";
		}else {
			if (admin.getPassword().equals(map.get("password"))) {
				Cookie cookie=new Cookie("id", map.get("id"));
				cookie.setMaxAge(600);
				response.addCookie(cookie);
				return "1";
			} else {
				return "-1";
			}
		}
	}
}
