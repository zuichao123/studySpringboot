package com.example.controller;

import com.example.dto.PageRel;
import com.example.entry.Person;
import com.example.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@ResponseBody
public class PersonController {
	@Resource
	private PersonService personService;

	/**
	 * 查询人员信息
	 * @param page 页数
	 * @param limit 条数
	 * @param keyWord 姓名的关键字
	 * @return
	 */
	@RequestMapping(value="showTable",method= RequestMethod.POST)
	public Map<String, Object> getTable(@RequestParam(required=false,defaultValue="1") int page,
										@RequestParam(required=false,defaultValue="15") int limit,
										String keyWord) {

		System.out.printf("page:"+page+",limit:"+limit+",keyWord:"+keyWord);

		List<Person> datas=personService.queryAllDataFromTable(page,limit,keyWord);
		int countx=  personService.queryAllCount(keyWord);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("code",0);
		map.put("msg","");
		map.put("count",countx);
		map.put("data",datas);

		return map;
	}

	/*根据人员id查找到人员后跳转到编辑界面*/
	@RequestMapping(value = "/person/editUI")
	public ModelAndView editUI(ModelAndView modelAndView, String id){
		modelAndView.setViewName("person/edit");
		Person person = personService.selectById(id);
		modelAndView.addObject(person);
		return modelAndView;
	}
	/*跳转到添加人员界面*/
	@RequestMapping(value = "/person/addUI")
	public ModelAndView addUI(ModelAndView modelAndView){
		modelAndView.setViewName("person/add");
		return modelAndView;
	}

	/**
	 * 编辑人员信息
	 * @param person
	 * @return 1 成功  -1 失败
	 */
	@RequestMapping(value = "/person/edit")
	@ResponseBody
	public PageRel edit(Person person){
		try {
			PageRel pageRel = personService.edit(person);
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
	 * @param person
	 * @return
	 */
	@RequestMapping(value = "/person/add")
	@ResponseBody
	public PageRel add(Person person){
		try{
			PageRel pageRel = personService.addPerson(person);
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
	@RequestMapping(value = "/person/del", method = RequestMethod.POST)
	@ResponseBody
	public int del(@RequestParam String id){
		return personService.delPerson(id);
	}

}
