package com.example.service.impl;

import com.example.dao.PersonDao;
import com.example.dto.PageRel;
import com.example.entry.Person;
import com.example.service.PersonService;
import com.example.utils.TimeUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {
    @Resource
    private PersonDao personDao;

    /**
     * 查找所有人员
     *
     * @param page
     * @param limit
     * @param name
     * @return 人员列表
     */
    @Override
    public List<Person> queryAllDataFromTable(int page, int limit, String name) {
        page = (page - 1) * limit;
        return personDao.queryAllDataFromTable(page, limit, "%" + name + "%");
    }

    /**
     * 精确查找
     *
     * @param name 姓名
     * @return 数量
     */
    @Override
    public int queryAllCount(String name) {
        return personDao.queryAllCount("%" + name + "%");
    }

    /**
     * 根据id查找
     *
     * @param id
     * @return
     */
    @Override
    public Person selectById(String id) {
        return personDao.selectById(id);
    }

    /**
     * 编辑人员
     *
     * @param person
     * @return
     */
    @Override
    public PageRel edit(Person person) {
        PageRel pageRel = new PageRel();
        Person n = selectPersonByName(person.getName()); //查询该姓名的人员是否存在

        if (n != null) { //如果库里存在这个人
            String id = selectPersonByName(person.getName()).getId(); //查询这个的人员的id
            if (!id.equals(person.getId())) { //如果不是同一个人的
                String status = selectPersonByName(person.getName()).getStatus();//查询此人的状态
                if ("1".equals(status)) { //如果是正常的状态
                    pageRel.setCode(-1);
                    pageRel.setMessage("该人员已存在");
                } else if ("-1".equals(status)) { //如果是删除状态
                    try {
                        delPerson(person.getId());
                        person.setUpdateTime(TimeUtil.getCurrentTime());
                        personDao.updatePerson(person); //修改该人员的信息，并将此人的状态改为1
                        pageRel.setCode(1);
                        pageRel.setMessage("编辑成功");
                    } catch (Exception e) {
                        e.printStackTrace();
                        pageRel.setCode(-1);
                        pageRel.setMessage("update人员--操作数据库错误");
                    }
                }
                return pageRel;
            } else { //如果是同一个人
                try {
                    person.setUpdateTime(TimeUtil.getCurrentTime());
                    personDao.updatePerson(person);
                    pageRel.setCode(1);
                    pageRel.setMessage("编辑成功");
                } catch (Exception e) {
                    e.printStackTrace();
                    pageRel.setCode(-1);
                    pageRel.setMessage("修改人员--操作数据库错误");
                }
                return pageRel;
            }
        } else { //如果这个人不存在--直接修改了
            try {
                person.setUpdateTime(TimeUtil.getCurrentTime());
                personDao.updatePerson(person);
                pageRel.setCode(1);
                pageRel.setMessage("编辑成功");
            } catch (Exception e) {
                e.printStackTrace();
                pageRel.setCode(-1);
                pageRel.setMessage("编辑人员--操作数据库错误");
            }
            return pageRel;
        }
    }

    /**
     * 添加人员
     *
     * @param person
     * @return
     */
    @Override
    public PageRel addPerson(Person person) {
        PageRel pageRel = new PageRel();
        Person n = selectPersonByName(person.getName()); //查询该人员是否存在
        if (n != null) { //如果存在
            String status = selectPersonByName(person.getName()).getStatus(); // 查询此人的状态
            if ("1".equals(status)) { //如果是1人员正常
                pageRel.setCode(-1);
                pageRel.setMessage("该人员已存在");
            } else if ("-1".equals(status)) { //如果是-1删除状态
                try {
                    person.setUpdateTime(TimeUtil.getCurrentTime());
                    personDao.updatePerson(person); //修改该人员的信息，并将此人的状态改为1
                    pageRel.setCode(1);
                    pageRel.setMessage("添加成功");
                } catch (Exception e) {
                    e.printStackTrace();
                    pageRel.setCode(-1);
                    pageRel.setMessage("添加人员--操作数据库错误");
                }
            }
            return pageRel;
        } else { //如果不存在
            try {
                person.setCreateTime(TimeUtil.getCurrentTime());
                personDao.addPerson(person);//直接添加
                pageRel.setCode(1);
                pageRel.setMessage("添加成功");
            } catch (Exception e) {
                e.printStackTrace();
                pageRel.setCode(-1);
                pageRel.setMessage("添加人员--操作数据库错误");
            }
            return pageRel;
        }
    }

    @Override
    public int delPerson(String id) {
        String time = TimeUtil.getCurrentTime();
        personDao.delPerson(id,time);
        return 1;
    }

    @Override
    public Person selectPersonByName(String name) {
        return personDao.selectPersonByName(name);
    }

}
