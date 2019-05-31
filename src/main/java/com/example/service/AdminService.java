package com.example.service;

import com.example.dto.PageRel;
import com.example.entry.Admin;

import java.util.List;

public interface AdminService {
    //登录时根据输入的用户名查询密码
    Admin checkLogin(String name);

    //根据传入的参数模糊查询所有的人员信息
    List<Admin> queryAllDataFromTable(int page, int limit, String name) ;

    //模糊查询条数
    int queryAllCount(String name) ;

    //添加操作员
    PageRel addAdmin(Admin admin) ;

    //删除操作员
    int delAdmin(String id);

    //根据前端页面点击“编辑”按钮时的人员id参数，请求查找到该人员，返回到界面中显示
    Admin selectAdminById(String id) ;

    //编辑人员
    PageRel edit(Admin admin);

    //根据完整的姓名查询操作员
    Admin selectAdminByName(String name);

    //修改密码
    PageRel editPassword(String id, String newPassword);

}
