package com.example.service;

import com.example.dto.PageRel;
import com.example.entry.Person;

import java.util.List;

public interface PersonService {
    List<Person> queryAllDataFromTable(int page, int limit, String keyWord) ;

    int queryAllCount(String keyWord) ;

    PageRel addPerson(Person person) ;

    int delPerson(String id);

    //根据前端页面点击“编辑”按钮时的人员id参数，请求查找到该人员，返回到界面中显示
    public Person selectById(String id) ;

    //编辑人员
    PageRel edit(Person person);
}
