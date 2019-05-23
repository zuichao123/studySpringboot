package com.example.service;

import com.example.dao.AdminDao;
import com.example.entry.Admin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminService {
	@Resource
	private AdminDao adminDao;
	
	public Admin checkLogin(String name) {
		Admin admin = adminDao.loginCheck(name);
		return admin;
	}
}
