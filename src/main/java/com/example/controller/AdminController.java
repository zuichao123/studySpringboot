package com.example.controller;

import com.example.dto.PageRel;
import com.example.entry.Admin;
import com.example.service.impl.AdminServiceImpl;
import com.example.utils.MD5Utils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@ResponseBody
public class AdminController {
	
	@Resource
	private AdminServiceImpl adminService;

	@RequestMapping(value = "judge", method = RequestMethod.POST)
    @ResponseBody
	public String jumpPage(@RequestBody Map<String, String> map,HttpServletResponse response) {
		Admin admin = adminService.checkLogin(map.get("name"));

		if (admin == null) {
			return "0";
		}else {
			if (admin.getPassword().equals(MD5Utils.encryptMD5(map.get("password")))) {
				Cookie cookie=new Cookie("name", map.get("name"));
				cookie.setMaxAge(600);
				response.addCookie(cookie);
				return "1";
			} else {
				return "-1";
			}
		}
	}

	@RequestMapping("/allAdmin")
	public ModelAndView index(ModelAndView modelAndView) {
		modelAndView.setViewName("admin/allAdmin");
		return modelAndView;
	}

	/**
	 * 查询人员信息
	 * @param page 页数
	 * @param limit 条数
	 * @param name 姓名的关键字
	 * @return
	 */
	@RequestMapping(value="showAdminTable",method= RequestMethod.POST)
	public Map<String, Object> getTable(@RequestParam(required=false,defaultValue="1") int page,
										@RequestParam(required=false,defaultValue="15") int limit,
										String name) {

		List<Admin> datas=adminService.queryAllDataFromTable(page,limit,name);
		int countx = adminService.queryAllCount(name);

		Map<String,Object> map=new HashMap<String,Object>();
		map.put("code",0);
		map.put("msg","");
		map.put("count",countx);
		map.put("data",datas);

		return map;
	}

	/*根据人员id查找到人员后跳转到编辑界面*/
	@RequestMapping(value = "/admin/editAdminUI")
	public ModelAndView editUI(ModelAndView modelAndView, String id){
		modelAndView.setViewName("admin/editAdmin");
		Admin admin = adminService.selectAdminById(id);
		modelAndView.addObject(admin);
		return modelAndView;
	}
	/*跳转到添加人员界面*/
	@RequestMapping(value = "/admin/addAdminUI")
	public ModelAndView addUI(ModelAndView modelAndView){
		modelAndView.setViewName("admin/addAdmin");
		return modelAndView;
	}

	/**
	 * 编辑人员信息
	 * @param admin
	 * @return
	 */
	@RequestMapping(value = "/admin/editAdmin")
	@ResponseBody
	public PageRel edit(Admin admin){
		try {
			PageRel pageRel = adminService.edit(admin);
			return pageRel;
		}catch (Exception e){
			return getPageRel(e);
		}
	}

	private PageRel getPageRel(Exception e) {
		e.printStackTrace();
		PageRel pageRel = new PageRel();
		pageRel.setCode(-1);
		pageRel.setMessage("系统内部错误");
		return pageRel;
	}

	/**
	 * 添加人员信息
	 * @param admin
	 * @return
	 */
	@RequestMapping(value = "/admin/addAdmin")
	@ResponseBody
	public PageRel add(Admin admin){

		try{
			PageRel pageRel = adminService.addAdmin(admin);
			return pageRel;
		}catch (Exception e){
			return getPageRel(e);
		}

	}

	/**
	 * 删除人员
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/admin/delAdmin", method = RequestMethod.POST)
	@ResponseBody
	public int del(@RequestParam String id){
		return adminService.delAdmin(id);
	}
}
