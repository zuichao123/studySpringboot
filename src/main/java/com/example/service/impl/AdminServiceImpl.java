package com.example.service.impl;

import com.example.dao.AdminDao;
import com.example.dto.PageRel;
import com.example.entry.Admin;
import com.example.service.AdminService;
import com.example.utils.MD5Utils;
import com.example.utils.TimeUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Resource
    private AdminDao adminDao;

    public Admin checkLogin(String name) {
        return adminDao.loginCheck(name);
    }

    @Override
    public List<Admin> queryAllDataFromTable(int page, int limit, String name) {
        page = (page - 1) * limit;
        return adminDao.queryAllDataFromTable(page, limit, "%" + name + "%");
    }

    @Override
    public int queryAllCount(String name) {
        return adminDao.queryAllCount("%" + name + "%");
    }

    @Override
    public Admin selectAdminById(String id) {
        return adminDao.selectAdminById(id);
    }

    @Override
    public PageRel addAdmin(Admin admin) {
        PageRel pageRel = new PageRel();

        Admin n = selectAdminByName(admin.getName()); //查询该人员是否存在

        if (n != null) { //如果存在
            String status = selectAdminByName(admin.getName()).getStatus(); // 查询此人的状态
            if ("1".equals(status)) { //如果是1人员正常
                pageRel.setCode(-1);
                pageRel.setMessage("该人员已存在");
            } else if ("-1".equals(status)) { //如果是-1删除状态
                try {
                    admin.setUpdateTime(TimeUtils.getCurrentTime());
                    admin.setPassword(MD5Utils.encryptMD5(admin.getPassword()));
                    adminDao.updateAdmin(admin); //修改该人员的信息，并将此人的状态改为1
                    pageRel.setCode(1);
                    pageRel.setMessage("添加成功");
                } catch (Exception e) {
                    e.printStackTrace();
                    pageRel.setCode(-1);
                    pageRel.setMessage("系统内部错误");
                }
            }
            return pageRel;
        } else { //如果不存在
            try {
                admin.setCreateTime(TimeUtils.getCurrentTime());
                admin.setPassword(MD5Utils.encryptMD5(admin.getPassword()));
                adminDao.addAdmin(admin); //直接添加
                pageRel.setCode(1);
                pageRel.setMessage("添加成功");
            } catch (Exception e) {
                e.printStackTrace();
                pageRel.setCode(-1);
                pageRel.setMessage("系统内部错误");
            }
            return pageRel;
        }
    }

    @Override
    public PageRel edit(Admin admin) {
        PageRel pageRel = new PageRel();
        Admin n = selectAdminByName(admin.getName()); //查询该姓名的人员是否存在

        if (n != null) { //如果库里存在这个人
            String id = selectAdminByName(admin.getName()).getId(); //查询这个的人员的id
            if (!id.equals(admin.getId())) { //如果不是同一个人的
                String status = selectAdminByName(admin.getName()).getStatus();//查询此人的状态
                if ("1".equals(status)) { //如果是正常的状态
                    pageRel.setCode(-1);
                    pageRel.setMessage("该人员已存在");
                } else if ("-1".equals(status)) { //如果是删除状态
                    try {
                        delAdmin(admin.getId());// 删除自己这条
                        admin.setUpdateTime(TimeUtils.getCurrentTime());
                        adminDao.updateAdmin(admin); //修改该人员的信息，并将此人的状态改为1
                        pageRel.setCode(1);
                        pageRel.setMessage("编辑成功");
                    } catch (Exception e) {
                        e.printStackTrace();
                        pageRel.setCode(-1);
                        pageRel.setMessage("系统内部错误");
                    }
                }
                return pageRel;
            } else { //如果是同一个人
                try {
                    admin.setUpdateTime(TimeUtils.getCurrentTime());
                    adminDao.updateAdmin(admin);
                    pageRel.setCode(1);
                    pageRel.setMessage("编辑成功");
                } catch (Exception e) {
                    e.printStackTrace();
                    pageRel.setCode(-1);
                    pageRel.setMessage("系统内部错误");
                }
                return pageRel;
            }
        } else { //如果这个人不存在--直接修改
            try {
                admin.setUpdateTime(TimeUtils.getCurrentTime());
                adminDao.updateAdmin(admin);
                pageRel.setCode(1);
                pageRel.setMessage("编辑成功");
            } catch (Exception e) {
                e.printStackTrace();
                pageRel.setCode(-1);
                pageRel.setMessage("系统内部错误");
            }
            return pageRel;
        }
    }

    @Override
    public int delAdmin(String id) {
        String time = TimeUtils.getCurrentTime();
        adminDao.delAdmin(id,time);
        return 1;
    }

    @Override
    public Admin selectAdminByName(String name) {
        return adminDao.selectAdminByName(name);
    }

    @Override
    public PageRel editPassword(String id, String password) {
        PageRel pageRel = new PageRel();
        password = MD5Utils.encryptMD5(password);
        int updateCode = adminDao.updatePassword(id,password);
        if (updateCode == 1){
            pageRel.setCode(1);
            pageRel.setMessage("修改成功");
        }else {
            pageRel.setCode(-1);
            pageRel.setMessage("数据库操作失败了");
        }
        return pageRel;
    }
}