package com.example.service.impl;

import com.example.dao.PersonDao;
import com.example.dto.PageRel;
import com.example.entry.Person;
import com.example.service.PersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {
    @Resource
    private PersonDao personDao;

    /**
     * 查找所有人员
     * @param page
     * @param limit
     * @param keyWord
     * @return 人员列表
     */
    @Override
    public List<Person> queryAllDataFromTable(int page, int limit, String keyWord) {
        page=(page-1)*limit;
        return personDao.queryAllDataFromTable(page, limit, "%"+keyWord+"%");
    }

    /**
     * 精确查找
     * @param keyWord 姓名
     * @return 数量
     */
    @Override
    public int queryAllCount(String keyWord) {
        return personDao.queryAllCount("%"+keyWord+"%");
    }

    /**
     * 根据id查找
     * @param id
     * @return
     */
    @Override
    public Person selectById(String id) {
        return personDao.selectById(id);
    }

    /**
     * 编辑人员
     * @param person
     * @return
     */
    @Override
    public PageRel edit(Person person) {
        PageRel pageRel = new PageRel();
        int n = personDao.selectByName(person.getName());

//        if (n != 0){
//            pageRel.setCode(-1);
//            pageRel.setMessage("该人员已存在");
//            return pageRel;
//        }

        int ns = personDao.updatePerson(person);
        if (ns > 0){
            pageRel.setCode(1);
            pageRel.setMessage("编辑成功");
        }
        return pageRel;
    }

    /**
     * 添加人员
     * @param person
     * @return
     */
    @Override
    public PageRel addPerson(Person person) {
        PageRel pageRel = new PageRel();
        int n = personDao.selectByName(person.getName());
        if (n != 0){
            pageRel.setCode(-1);
            pageRel.setMessage("该人员已存在");
            return pageRel;
        }

        int ns = personDao.addPerson(person);
        pageRel.setCode(1);
        pageRel.setMessage("添加成功");
        return pageRel;
    }

    @Override
    public int delPerson(String id) {
        personDao.delPerson(id);
        return 1;
    }

}
