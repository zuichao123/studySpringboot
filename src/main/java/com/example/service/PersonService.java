package com.example.service;

import com.example.dto.PageRel;
import com.example.entry.Person;

import java.util.List;

public interface PersonService {
    //根据姓名模糊查询人员信息
    List<Person> queryAllDataFromTable(int page, int limit, String name) ;

    //根据姓名模糊查询人员信息条数
    int queryAllCount(String name) ;

    //添加人员信息
    PageRel addPerson(Person person) ;

    //删除人员信息
    int delPerson(String id);

    //根据前端页面点击“编辑”按钮时的人员id参数，请求查找到该人员，返回到界面中显示
    Person selectById(String id) ;

    //编辑人员
    PageRel edit(Person person);

    //根据完整姓名查询人员信息
    Person selectPersonByName(String name);
}